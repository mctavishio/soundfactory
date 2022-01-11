const fs = require("fs");
const tools = require("../tools.js");
// echo module.exports = [ > soundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> soundfiles.js; done; echo ] >> soundfiles.js;
const rawsoundfiledata = require("./soundfiles.js");
const prefix = "thread016";
const instrument = "crow1";
const rawsoundfiles = ["crow1"];

const datetime = new Date();
const timestamp = datetime.getTime();
const datetimestr = datetime.toDateString();
const datetimeISOstr = datetime.toISOString();
const intervals = {
    lowi: basetone => { return Math.floor(basetone/4) },
    bassi: basetone => { return Math.floor(basetone/2) },
    bassIV: basetone => { return Math.floor(basetone*4/6) },
    bassV: basetone => { return Math.floor(basetone*3/2) },
    I: basetone => { return Math.floor(basetone/1) },
    II: basetone => { return Math.floor(basetone*9/8) },
    majIII: basetone => { return Math.floor(basetone*5/4) },
    miniii: basetone => { return Math.floor(basetone*6/5) },
    IV: basetone => { return Math.floor(basetone*4/3) },
    V: basetone => { return Math.floor(basetone*3/2) },
    VI: basetone => { return Math.floor(basetone*5/3) },
    majVII: basetone => { return Math.floor(basetone*15/8) },
    minvii: basetone => { return Math.floor(basetone*9/5) },
    VIII: basetone => { return Math.floor(basetone*2) },
};
const speeds = Object.entries(intervals).reduce( (acc,entry) => {
	acc[entry[0]] = entry[1](1000)/1000;
	return acc;
}, {});

const baseweights = Object.entries(speeds).reduce( (acc,entry) => {
	acc[entry[0]] = Math.floor(1000/entry[1])/1000;
	return acc;
}, {});

const harmonicweights = {
    lowi: 1,
    bassi: 1,
    bassV: 1,
    bassIV: 1,
    I: 6,
    II: 5,
    majIII: 4,
    miniii: 5,
    IV: 9,
    V: 9,
    VI: 3,
    majVII: 3,
    minvii: 5,
    VIII: 2,
};

// console.log("speeds = " + JSON.stringify(speeds));
// console.log("baseweights = " + JSON.stringify(baseweights));
// console.log("harmonicweights = " + JSON.stringify(harmonicweights));


// sox -m left.mp3 right.mp3 center.mp3 center2.mp3 typewriter1_twist0.mp3 norm -4

const weights = Object.entries(baseweights).reduce( (acc,entry) => {
  acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
  return acc;
}, {});
// console.log("weights = " + JSON.stringify(weights));


const notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
// console.log("notes = " + JSON.stringify(notes));
const nnotes = notes.length;

const nthreads = 8;
const ntones = 32;
const threadlength = 4*60;

const echos = [...Array(nthreads).keys()].map( j => {
  //gain-in gain-out <delay decay>
  let gainin = tools.randominteger(6,8)/10;
  let gainout = tools.randominteger(4,8)/10;
  let delay = [tools.randominteger(80,3800),tools.randominteger(800,6400)];
  let decay = [tools.randominteger(3,6)/10,tools.randominteger(3,6)/10];
  return `${gainin} ${gainout} ${delay[0]} ${decay[0]} ${delay[1]} ${decay[1]}`;
});
console.log("echos = " + echos);

let catalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {
  tools.shufflearray(echos);
  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
    let bendthreadstr="sox ";
    let threadstr="sox ";
    let dur = 0;
    let tones = [];
    let bendtones = [];
    while(dur < threadlength) {
      let tone = notes[tools.randominteger(0,nnotes)];
      let tonefile = rawsoundfile+"_"+tone;
      let tonepad = tools.randominteger(0,200)/100;
      tones.push( [ tone, tonefile+".mp3",  tonepad]);

      dur = dur + rawsoundfiledata.filter(f => f.id===tonefile)[0].duration + tonepad;

      let bendtone = tools.randominteger(50,140)/100;
      let bendtonefile = rawsoundfile+"_bend_" + bendtone;
      let bendpad = tools.randominteger(0,200)/100;
      // let bendtone = tools.randominteger(80,120)/100;
      // let bendtonefile = tonefile+"_bend_" + bendtone;
      bendtones.push( [ "bend_" + bendtone, bendtonefile + ".mp3", bendpad ]);

      // console.log(`dur=${dur}`);
      // console.log(`tonefile=${tonefile}`);
      
      // threadstr = threadstr + " " + tonefile + ".mp3";
      threadstr = threadstr + ` "|sox ${tonefile}.mp3 -p pad 0 ${tonepad} norm -4" `;

      bendthreadstr = bendthreadstr + ` "|sox ${rawsoundfile}.mp3 -p speed ${bendtone} pad 0 ${tonepad} norm -4" `;
      // bendthreadstr = bendthreadstr + ` "|sox ${tonefile}.mp3 -p speed ${bendtone} norm -4" `;
    }
    //with echo
    threads.push( [ tones, threadstr + " " + rawsoundfile + "_thread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );
    threads.push( [ bendtones, bendthreadstr + " " + rawsoundfile + "_bendthread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );

    // threads.push( [ tones, threadstr + " " + rawsoundfile + "_thread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );
    //no echo
    // threads.push( [ tones, threadstr + " " + rawsoundfile + "_thread_" + j.toString().padStart(3, "0") + ".mp3 norm -2"  ] );
    // threads.push( [ bendtones, bendthreadstr + " " + rawsoundfile + "_bendthread_" + j.toString().padStart(3, "0") + ".mp3 norm -2"  ] );
    return threads;
  }, []);
  return catalog;
},{});

if(rawsoundfiles.length>1) {
  catalog["mixed"] = [...Array(nthreads).keys()].reduce( (threads,j) => {
      let bendthreadstr="sox ";
      let threadstr="sox ";
      let dur = 0;
      let tones = [], tonepads = [];
      let bendtones = [], bendpads = [];
      while(dur < threadlength) {
        console.log(`${rawsoundfiles} ${rawsoundfiles.length}`);
        let rawsoundfile = rawsoundfiles[tools.randominteger(0,rawsoundfiles.length)];
        console.log(rawsoundfile);
        let tone = notes[tools.randominteger(0,nnotes)];
        let tonefile = rawsoundfile+"_"+tone;
        let tonepad = tools.randominteger(0,200)/100;
        tones.push( [ tone, tonefile+".mp3",  tonepad]);
        // console.log(`tonefile=${tonefile}`);
        dur = dur + rawsoundfiledata.filter(f => f.id===tonefile)[0].duration + tonepad;

        let bendtone = tools.randominteger(50,200)/100;
        let bendtonefile = rawsoundfile+"_bend_" + bendtone;
        let bendpad = tools.randominteger(0,200)/100;
        // let bendtone = tools.randominteger(80,120)/100;
        // let bendtonefile = tonefile+"_bend_" + bendtone;
        bendtones.push( [ "bend_" + bendtone, bendtonefile + ".mp3", bendpad ]);

        threadstr = threadstr + ` "|sox ${tonefile}.mp3 -p pad 0 ${tonepad} norm -4" `;
        bendthreadstr = bendthreadstr + ` "|sox ${rawsoundfile}.mp3 -p speed ${bendtone} pad 0 ${tonepad} norm -4" `;

        // threadstr = threadstr + " " + tonefile + ".mp3";
        // bendthreadstr = bendthreadstr + ` "|sox ${rawsoundfile}.mp3 -p speed ${bendtone} norm -4" `;
        // bendthreadstr = bendthreadstr + ` "|sox ${tonefile}.mp3 -p speed ${bendtone} norm -4" `;
      }
      //with echo
      // threads.push( [ tones, threadstr + " mixed_thread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );
      threads.push( [ tones, threadstr + " mixed_thread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );
      threads.push( [ bendtones, bendthreadstr + " mixed_bendthread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );

      //no echo
      // threads.push( [ tones, threadstr + " mixed_thread_" + j.toString().padStart(3, "0") + ".mp3 norm -2"  ] );
      // threads.push( [ bendtones, bendthreadstr + " mixed_bendthread_" + j.toString().padStart(3, "0") + ".mp3 norm -2"  ] );

      return threads;
  }, []);
}

rawsoundfiles.forEach( file => {
  let scorefilename = file+"_threadscore_"+timestamp+".js";
  let score = `module.exports = {
    date: "${datetimestr}",
    timestamp: ${timestamp},
    rawsoundfile: "${file}.mp3",
    nthreads: ${nthreads},
    duration: ${threadlength},
    threads: ${JSON.stringify(catalog[file])},
    // echos: ${JSON.stringify(echos)},
  }`
  fs.writeFileSync(scorefilename, score, (err) => {
    if (err)
      console.log(err);
    else {
      console.log(scorefilename + " file written successfully\n");
    }
  });
});

if(rawsoundfiles.length>1) {
  ( file => {
    let scorefilename = file+"_threadscore_"+timestamp+".js";
    let score = `module.exports = {
      date: "${datetimestr}",
      timestamp: ${timestamp},
      rawsoundfile: "${file}.mp3",
      nthreads: ${nthreads},
      duration: ${threadlength},
      threads: ${JSON.stringify(catalog["mixed"])},
      // echos: ${JSON.stringify(echos)},
    }`
    fs.writeFileSync(scorefilename, score, (err) => {
      if (err)
        console.log(err);
      else {
        console.log(scorefilename + " file written successfully\n");
      }
    });
    let nextstepfilename = file+"_threadscore_"+timestamp+".sh";
    let nextsteps = catalog[file].reduce( (scorestr, thread) => {
      scorestr = scorestr + thread[1] + ";\n";
      return scorestr;
    }, "");
    fs.writeFileSync(nextstepfilename, nextsteps, (err) => {
      if (err)
        console.log(err);
      else {
        console.log(nextstepfilename + " file written successfully\n");
      }
    });
  })("mixed");
}

rawsoundfiles.forEach( file => {
  let nextstepfilename = file+"_threadscore_"+timestamp+".sh";
  let nextsteps = catalog[file].reduce( (scorestr, thread) => {
    scorestr = scorestr + thread[1] + ";\n";
    return scorestr;
  }, "");
  fs.writeFileSync(nextstepfilename, nextsteps, (err) => {
    if (err)
      console.log(err);
    else {
      console.log(nextstepfilename + " file written successfully\n");
    }
  });
});

let nextstepsfile = prefix+"_nextsteps_"+timestamp+".sh";
let newdir = `${instrument}_${timestamp}`;
let initialize = `mkdir ${newdir};`;
let nextsteps = rawsoundfiles.reduce( (nextstepstr,file) => {
  nextstepstr = nextstepstr + `
    bash ${file}_threadscore_${timestamp}.sh;
    mv ${file}_bendthread_*.mp3 ${newdir};
    mv ${file}_thread_*.mp3 ${newdir};
    mv ${file}_threadscore_${timestamp}.sh ${newdir};
    mv ${file}_threadscore_${timestamp}.js ${newdir};`
	return nextstepstr;
}, initialize);

if(rawsoundfiles.length>1) {
  ( file => {
    nextsteps = nextsteps + `
      bash ${file}_threadscore_${timestamp}.sh;
      mv ${file}_bendthread_*.mp3 ${newdir};
      mv ${file}_thread_*.mp3 ${newdir};
      mv ${file}_threadscore_${timestamp}.sh ${newdir};
      mv ${file}_threadscore_${timestamp}.js ${newdir};`
    })("mixed");
}

  nextsteps = nextsteps + `
      cp ${prefix}.js ${newdir};
      cp ${nextstepsfile} ${newdir};
      cd ${newdir};`;

nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
  nextstepstr = nextstepstr + `
    sox -m ${file}_thread_*.mp3 ${file}_harmonictwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m ${file}_bendthread_*.mp3 ${file}_bendtwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m ${file}*thread_*.mp3 ${file}_twist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; `;

    [...Array(nthreads).keys()].forEach( j => {
      nextstepstr = nextstepstr + `
    sox -m ${file}_thread_${j.toString().padStart(3, "0")}.mp3 ${file}_bendthread_${j.toString().padStart(3, "0")}.mp3 ${file}_bendtwist_${j.toString().padStart(3, "0")}.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      `;
    });

    // sox "|sox -m ${file}_thread_*.mp3 -p fade 0 -0 28 norm -3" ${file}_harmonictwist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    // sox "|sox -m ${file}_bendthread_*.mp3 -p fade 0 -0 28 norm -3" ${file}_bendtwist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    // sox "|sox -m ${file}*thread_*.mp3 -p fade 0 -0 28 norm -3" ${file}_twist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;`
  return nextstepstr;
}, "");

if(rawsoundfiles.length>1) {
  ( file => {
    nextsteps = nextsteps + `
      sox -m ${file}_thread_*.mp3 ${file}_harmonictwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      sox -m ${file}_bendthread_*.mp3 ${file}_bendtwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      sox -m ${file}*thread_*.mp3 ${file}_twist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; `;
      [...Array(nthreads).keys()].forEach( j => {
        nextsteps = nextsteps + `
      sox -m ${file}_thread_${j.toString().padStart(3, "0")}.mp3 ${file}_bendthread_${j.toString().padStart(3, "0")}.mp3 ${file}_bendtwist_${j.toString().padStart(3, "0")}.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
        `;
      });
  })("mixed");
}

nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
  rawsoundfiles.forEach( file2 => {
    nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.8 ${file1}_harmonictwist_all.mp3 -c1 -p pad 1.3 0 norm -2" "|sox -v 0.8 ${file2}_harmonictwist_all.mp3 -c1 -p norm -2" ${file1}_${file2}_harmonictwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 ${file1}_bendtwist_all.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 ${file2}_bendtwist_all.mp3 -c1 -p norm -2" ${file1}_${file2}_bendtwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 ${file1}_harmonictwist_all.mp3 -c1 -p pad 1.8 0 norm -2" "|sox -v 0.8 ${file2}_bendtwist_all.mp3 -c1 -p norm -2" ${file1}_${file2}_twist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    `;
    [...Array(Math.floor(nthreads/2)).keys()].forEach( k1 => {
        [...Array(Math.floor(nthreads/2)).keys()].forEach( k2 => {
        nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.8 ${file1}_thread_${k1.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.3 0 norm -2" "|sox -v 0.8 ${file2}_thread_${k2.toString().padStart(3, "0")}.mp3 -c1 -p norm -2" ${file1}_${file2}_threads_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 ${file1}_bendthread_${k2.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 ${file2}_bendthread_${k1.toString().padStart(3, "0")}.mp3 -c1 -p norm -2" ${file1}_${file2}_bendthreads_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 ${file1}_thread_${k2.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 ${file2}_bendthread_${k1.toString().padStart(3, "0")}.mp3 -c1 -p norm -2" ${file1}_${file2}_thread_bendthread_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;`
    });
    });
  })
  return nextstepstr;
}, "");

// play -M "|sox -v 0.8 bell11_bendthread_000.mp3 -c1 -p pad 1.3 0" "|sox -v 0.8 bell13_bendthread_000.mp3 -c1 -p" remix 1v0.8,2v0.2 1v0.2,2v0.8 norm -4
//gcloud components update --version 365.0.0

// nextsteps = nextsteps + `for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"$file\",file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done;`
// for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"$file\",file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done;
// 

nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
  nextstepstr = nextstepstr + `
    play ${file1}_harmonictwist_all.mp3;
    play ${file1}_bendtwist_all.mp3;
    play ${file1}_twist_all.mp3;`
    rawsoundfiles.forEach( file2 => {
      nextstepstr = nextstepstr + `
      play ${file1}_${file2}_harmonictwist_all.mp3;
      play ${file1}_${file2}_bendtwist_all.mp3;
      play ${file1}_${file2}_twist_all.mp3;
      `;
      [...Array(Math.floor(nthreads/2)).keys()].forEach( k1 => {
        [...Array(Math.floor(nthreads/2)).keys()].forEach( k2 => {
        nextstepstr = nextstepstr + `
        play ${file1}_${file2}_threads_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3;
        play ${file1}_${file2}_bendthreads_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
        play ${file1}_${file2}_thread_bendthread_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
        `
        });
      });
    })
  return nextstepstr;
}, "");

nextsteps = nextsteps + `
echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\\"$\{file%.*\}\\", file:\\"$file\\", url:\\"https://storage.googleapis.com/soundfactory/${newdir}/$file\\", duration:$d, nchannels:$c, rate:$r, type:\\"$t\\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
echo cd ${newdir};
echo bash ${nextstepsfile};
echo gsutil -m cp -r ${newdir} gs://soundfactory/
`
console.log(`newdir = ${newdir}`);
console.log(`next::: gsutil -m cp -r ${newdir} gs://soundfactory/`);
console.log(`${nextstepsfile}`);
// play -M "|sox bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 1.0 bell11_bendtwist_all_fm.mp3 -c1 -p" remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2

  //zip ${newdir}.zip ${newdir};\n
  //mv ${newdir}.zip ${newdir}/album.zip;\n
  //run 
  // echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; echo ] >> outsoundfiles.js; done;
  //add: module.exports = [ ]
  //replace:
  //  file:"([a-zA-Z0-9_]*).mp3",
  //  with
  //  id: "$1", file:"$1.mp3", url:"https://storage.googleapis.com/soundfactory/${newdir}/$1.mp3",
  // be sure bucket has public access
  // gsutil iam ch allUsers:objectViewer gs://soundfactory
  //  gsutil -m cp -r icedbowedvibes_1641495642737 gs://soundfactory/


fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
  if (err)
    console.log(err);
  else {
    console.log(`${nextstepsfile} file written successfully\n`);
  }
});

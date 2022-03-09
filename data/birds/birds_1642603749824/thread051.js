const fs = require("fs");
const tools = require("../tools.js");
//  echo module.exports = [ > soundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> soundfiles.js; done; echo ] >> soundfiles.js;
const rawsoundfiledata = require("./soundfiles.js");
const prefix = "thread051";
const instrument = "birds";
// const rawsoundfiles = ["bird0", "bird1", "bird2", "bird3", "birdcanyon", "birdcry", "birds4", "birds5", "birds6", "birdtheme"];
const rawsoundfiles = ["birds5"];
// const rawsoundfiles = ["bagpipe1a"];

const datetime = new Date();
const timestamp = datetime.getTime();
const datetimestr = datetime.toDateString();
const datetimeISOstr = datetime.toISOString();
const intervals = {
    lowi: basetone => { return basetone/4 },
    bassi: basetone => { return basetone/2 },
    bassIV: basetone => { return basetone*4/6 },
    bassV: basetone => { return basetone*3/2 },
    I: basetone => { return basetone/1 },
    II: basetone => { return basetone*9/8 },
    majIII: basetone => { return basetone*5/4 },
    miniii: basetone => { return basetone*6/5 },
    IV: basetone => { return basetone*4/3 },
    V: basetone => { return basetone*3/2 },
    VI: basetone => { return basetone*5/3 },
    majVII: basetone => { return basetone*15/8 },
    minvii: basetone => { return basetone*9/5 },
    VIII: basetone => { return basetone*2 },
    lownoise: basetone => { return basetone*tools.randominteger(5,9)/10 },
    midnoise: basetone => { return basetone*tools.randominteger(7,11)/10 },
    highnoise: basetone => { return basetone*tools.randominteger(12,18)/10 },
    noise: basetone => { return basetone*tools.randominteger(4,16)/10 },
    buzz: basetone => { return basetone*tools.randominteger(9,12)/10 },
};

let threadp = [];
threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0], Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("harmonic", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 5, majIII: 1, miniii: 5, IV: 9, V: 9, VI: 2, majVII: 1, minvii: 4, VIII: 2, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
);
  
threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("pentatonic", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 0, majIII: 0, miniii: 6, IV: 6, V: 6, VI: 0, majVII: 0, minvii: 2, VIII: 1, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
);

threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("pentatonic2", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 3, majIII: 0, miniii: 0, IV: 6, V: 6, VI: 6, majVII: 0, minvii: 0, VIII: 2, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
);

threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("simple", { lowi: 1, bassi: 2, bassV: 3, bassIV: 3, I: 6, II: 0, majIII: 0, miniii: 0, IV: 6, V: 6, VI: 0, majVII: 0, minvii: 0, VIII: 1, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
);

threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("buzz", { lowi: 1, bassi: 1, bassV: 0, bassIV: 0, I: 2, II: 0, majIII: 0, miniii: 0, IV: 1, V: 1, VI: 0, majVII: 0, minvii: 1, VIII: 1, lownoise: 1, midnoise: 1, highnoise: 1, noise: 1, buzz: 8 })
);

// threadp.push( 
//   ( ( id, harmonicweights ) => {
//     let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//       acc[entry[0]] = entry[1](1000)/1000;
//       return acc;
//     }, {});
//     let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//       acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//       return acc;
//     }, {});
//     let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//       acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//       return acc;
//     }, {});
//     let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//     return { id, notes };
//   } ) ("simplebuzz", { lowi: 1, bassi: 1, bassV: 2, bassIV: 2, I: 0, II: 0, majIII: 0, miniii: 0, IV: 0, V: 0, VI: 0, majVII: 0, minvii: 1, VIII: 0, lownoise: 0, midnoise: 1, highnoise: 1, noise: 0, buzz: 8 })
// );

threadp.push( 
  ( ( id, harmonicweights ) => {
    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1](1000)/1000;
      return acc;
    }, {});
    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
      return acc;
    }, {});
    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
      return acc;
    }, {});
    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
    return { id, notes };
  } ) ("noise", { lowi: 1, bassi: 1, bassV: 2, bassIV: 2, I: 2, II: 0, majIII: 0, miniii: 0, IV: 0, V: 0, VI: 0, majVII: 0, minvii: 2, VIII: 0, lownoise: 2, midnoise: 2, highnoise: 2, noise: 4, buzz: 2 })
);

const nthreads = 4;
const threadlength = 4*60;
// const mcompandstr = `gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%`;
const mcompandstr = `reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801`;

const echos = () => {
  //gain-in gain-out <delay decay>
  let gainin = tools.randominteger(6,8)/10;
  let gainout = tools.randominteger(4,8)/10;
  let delay = [tools.randominteger(80,3800),tools.randominteger(800,6400)];
  let decay = [tools.randominteger(3,6)/10,tools.randominteger(3,6)/10];
  return `${gainin} ${gainout} ${delay[0]} ${decay[0]} ${delay[1]} ${decay[1]}`;
};

let catalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {
  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
    console.log(`rawsoundfile = ${rawsoundfile}`);
    let rawsounddur = rawsoundfiledata.filter(f => f.id===rawsoundfile)[0].duration;
    threadp.forEach( (p ,k) => {
    
      let threadstr = "sox ";
      let threadstr2 = "sox ";
      let dur = 0;
      let tones = [];
      
      while(dur < threadlength) {
        let notef = p.notes[tools.randominteger(0,p.notes.length)];
        // console.log(`notef = ${notef}`);
        let tonefile = `${rawsoundfile}_p.id_${notef}`;
        let speed = intervals[notef](1);
        // console.log(`speed = ${speed}`);
        let tonepad = tools.randominteger(0,248)/100;

        tones.push( [ notef, tonefile+".mp3", speed, tonepad]);
        dur = dur + rawsounddur/speed + tonepad;
        threadstr = threadstr + ` "|sox ${rawsoundfile}.mp3 -p speed ${speed} pad 0 ${tonepad} norm -4" `;
        // threadstr2 = threadstr2 + ` "|sox ${rawsoundfile}.mp3 -p speed ${speed*tools.randominteger(8,12)/10} pad 0 ${tonepad} norm -4" `;
      }
      //with echo
      // threads.push( [ tones, threadstr + ` ${rawsoundfile}_thread_${p.id}_${j.toString().padStart(3, "0")}.mp3 echos ${echos()} norm -2`  ] );
      // threads.push( [ tones, threadstr2 + ` ${rawsoundfile}_bentthread_${p.id}_${j.toString().padStart(3, "0")}.mp3 echos ${echos()} norm -2`  ] );
      //no echo
      threads.push( [ tones, threadstr + ` ${rawsoundfile}_thread_${p.id}_${j.toString().padStart(3, "0")}.mp3 norm -2`  ] );
      });
      return threads;
  }, []);
  return catalog;
},{});

// console.log(`catalog = ${JSON.stringify(catalog)}`);

rawsoundfiles.forEach( file => {
  let scorefilename = file+"_threadscore_"+timestamp+".js";
  let score = `module.exports = {
    date: "${datetimestr}",
    timestamp: ${timestamp},
    rawsoundfile: "${file}.mp3",
    nthreads: ${nthreads},
    duration: ${threadlength},
    threads: ${JSON.stringify(catalog[file])},
  }`
  fs.writeFileSync(scorefilename, score, (err) => {
    if (err)
      console.log(err);
    else {
      console.log(scorefilename + " file written successfully\n");
    }
  });
});

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
    mv ${file}_thread_*.mp3 ${newdir};
    mv ${file}_threadscore_${timestamp}.sh ${newdir};
    mv ${file}_threadscore_${timestamp}.js ${newdir};`
	return nextstepstr;
}, initialize);

nextsteps = nextsteps + `
    cp ${prefix}.js ${newdir};
    cp soundfiles.js ${newdir}/rawsoundfiles.js;
    cp ${nextstepsfile} ${newdir};
    cd ${newdir};`;
    
nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
    threadp.forEach( (p1,j2) => {
      nextstepstr = nextstepstr + `
    sox -m ${file}_thread_${p1.id}_*.mp3 ${file}_thread_${p1.id}_all.mp3 ${mcompandstr}; `;
    });
    [...Array(nthreads).keys()].forEach( j3 => {
        nextstepstr = nextstepstr + `
    sox -m ${file}_thread_*_${j3.toString().padStart(3, "0")}.mp3 ${file}_thread_all_${j3.toString().padStart(3, "0")}.mp3 ${mcompandstr}; `;
    });
    return nextstepstr;
}, "");

//sox tornadosiren.mp3 -n spectrogram -m -l -o tornadosiren.png
//https://upload.wikimedia.org/wikiversity/en/b/b1/Audio.2.SigAnal.1.A.20180213.pdf
//sox clarinetnotes_e_clarinetnotes_a_thread_pentatonic_000_003.mp3 -n spectrogram
//open spectrogram.png
//play clarinetnotes_e_clarinetnotes_a_thread_pentatonic_000_003.mp3 lowpass 2400
// nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
//     threadp.forEach( (p1,j2) => {    
//     [...Array(nthreads).keys()].forEach( j3 => {
//         nextstepstr = nextstepstr + `
//     sox -m ${file}_thread_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 ${file}_bentthread_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 ${file}_twist_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; `;
//     });
//         nextstepstr = nextstepstr + `
//     sox -m ${file}_bentthread_${p1.id}_*.mp3 ${file}_bentthread_${p1.id}_all.mp3 norm -2; `;
//     });
//     return nextstepstr;
// }, "");


nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
  rawsoundfiles.forEach( file2 => {
    threadp.forEach( (p,j) => {
    nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.7 ${file1}_thread_${p.id}_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 ${file2}_thread_${p.id}_all.mp3 -c1 -p norm -4" ${file1}_${file2}_thread_${p.id}_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  ${mcompandstr};
    `;
    [...Array(Math.floor(nthreads/4)).keys()].forEach( k1 => {
        [...Array(Math.floor(nthreads/4)).keys()].map( t => nthreads-t-1 ).forEach( k2 => {
        nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.7 ${file1}_thread_${p.id}_${k1.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 ${file2}_thread_${p.id}_${k2.toString().padStart(3, "0")}.mp3 -c1 -p norm -4" ${file1}_${file2}_thread_${p.id}_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 ${mcompandstr};
    `
    });
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

// nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
//   nextstepstr = nextstepstr + `
//     play ${file1}_harmonictwist_all.mp3;
//     play ${file1}_bendtwist_all.mp3;
//     play ${file1}_twist_all.mp3;`
//     rawsoundfiles.forEach( file2 => {
//       nextstepstr = nextstepstr + `
//       play ${file1}_${file2}_harmonictwist_all.mp3;
//       play ${file1}_${file2}_bendtwist_all.mp3;
//       play ${file1}_${file2}_twist_all.mp3;
//       `;
//       [...Array(Math.floor(nthreads/4)).keys()].forEach( k1 => {
//         [...Array(Math.floor(nthreads/4)).keys()].forEach( k2 => {
//         nextstepstr = nextstepstr + `
//         play ${file1}_${file2}_threads_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3;
//         play ${file1}_${file2}_bendthreads_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
//         play ${file1}_${file2}_thread_bendthread_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
//         `
//         });
//       });
//     })
//   return nextstepstr;
// }, "");

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
  // play knocking1_knocking1_thread_pentatonic_001_006.mp3 reverb 100 50 50
  // play bagpipe1_bagpipe1_thread_simplebuzz_001_007.mp3 pitch -7 reverb 100 50 50
  // play bagpipe1f_bagpipe1e_thread_simple_000_007.mp3 reverb 100 60 40
  // reverb: usage: [-w|--wet-only] [reverberance (50%) [HF-damping (50%) [room-scale (100%) [stereo-depth (100%) [pre-delay (0ms) [wet-gain (0dB)]]]]]]
  // bagpipeclick_1642430760765 ::: => play bagpipe1h_bagpipe1h_thread_pentatonic2_000_007.mp3 reverb 100 60 60 60 30
  // play -m mctvox1c_thread_pentatonic_all.mp3 "|sox mctvox1c_thread_pentatonic_all.mp3 -p speed .9" "|sox mctvox1c_thread_pentatonic_all.mp3 -p pitch -2" reverb 100 50 50
  // play piano1_piano3a_thread_simple_all.mp3 highpass 60 lowpass 2400
  // play bagpipegeese_bagpiperadio_thread_noise_001_006.mp3 speed 0.6 reverb 100 50 50
  // play -m therider0b_f_thread_pentatonic_all.mp3 "|sox therider0b_f_thread_pentatonic_all.mp3 -p reverse"
  // play -m therider0b_a_thread_pentatonic_all.mp3 "|sox therider0b_c_thread_pentatonic_all.mp3 -p reverse" speed 4.0 reverb 100 50 50
  // play -m rider1_b_therider0b_d_thread_pentatonic_000_003.mp3 "|sox rider1_b_therider0b_d_thread_pentatonic_000_003.mp3 -p reverse" 
  // play -m therider0_a_thread_pentatonic_00*.mp3 highpass 500
fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
  if (err)
    console.log(err);
  else {
    console.log(`${nextstepsfile} file written successfully\n`);
  }
});

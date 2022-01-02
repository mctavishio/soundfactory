const fs = require("fs");
const tools = require("../tools.js");
const rawsoundfiledata = require("./soundfiles.js");
const prefix = "thread003";
const instrument = "bells";
const rawsoundfiles = ["bell11", "bell13", "bell2", "bell6", "bell9", "longbell"];

const datetime = new Date();
const timestamp = datetime.getTime();
const datetimestr = datetime.toDateString();
const datetimeISOstr = datetime.toISOString();
const intervals = {
    lowi: basetone => { return Math.floor(basetone/4) },
    bassi: basetone => { return Math.floor(basetone/2) },
    I: basetone => { return Math.floor(basetone/1) },
    II: basetone => { return Math.floor(basetone*9/8) },
    // III: basetone => { return Math.floor(basetone*5/4) },
    iii: basetone => { return Math.floor(basetone*6/5) },
    IV: basetone => { return Math.floor(basetone*4/3) },
    V: basetone => { return Math.floor(basetone*3/2) },
    VI: basetone => { return Math.floor(basetone*5/3) },
    // VII: basetone => { return Math.floor(basetone*15/8) },
    vii: basetone => { return Math.floor(basetone*9/5) },
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
    I: 4,
    II: 4,
    // III: 2,
    iii: 4,
    IV: 5,
    V: 6,
    VI: 3,
    // VII: 2,
    vii: 4,
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
  let gainout = tools.randominteger(6,8)/10;
  let delay = [tools.randominteger(80,2800),tools.randominteger(1400,6400)];
  let decay = [tools.randominteger(3,6)/10,tools.randominteger(1,6)/10];
  return `${gainin} ${gainout} ${delay[0]} ${decay[0]} ${delay[1]} ${decay[1]}`;
});
console.log("echos = " + echos);
// const bendechos = tools.shufflearray(echos);

// console.log(`echos = ${echos} ... bendechos = ${bendechos}`);

// const echos = ["0.8 0.6 2100 0.6 4248 0.4", "0.8 0.6 3130 0.6 1408 0.4", "0.8 0.6 1200 0.6 4148 0.6", "0.6 0.4 2000 0.4 3100 0.6 4480 0.3", "0.6 0.4 4080 0.4 2080 0.4 960 0.4", "0.8 0.7 40 0.25 63 0.3"]
let catalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {
  // let ntones = 2*Math.ceil(threadlength/rawsoundfiledata.filter(f => f.id===rawsoundfile)[0].duration);
  tools.shufflearray(echos);
  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
    let threadstr="sox ";
    let dur = 0;
    let tones = [];
    while(dur < threadlength) {
      let tone = notes[tools.randominteger(0,nnotes)];
      let tonefile = rawsoundfile+"_"+tone;
      console.log(`dur=${dur}`);
      tones.push( [ tone, tonefile+".mp3" ]);
      console.log(`tonefile=${tonefile}`);
      dur = dur + rawsoundfiledata.filter(f => f.id===tonefile)[0].duration;
      threadstr = threadstr + " " + tonefile+".mp3";
    }
    //with echo
    threads.push( [ tones, threadstr + " " + rawsoundfile + "_thread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[j%echos.length] + "  norm -2"  ] );
    //no echo
    // threads.push( [ thread, threadstr + " " + rawsoundfile + "_thread_" + j.toString().padStart(3, "0") + ".mp3 trim 0 "+threadlength+" fade 0 -0 12 norm -2"  ] );
    return threads;
  }, []);
  return catalog;
},{});

let bendcatalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {
  // let ntones = 2*Math.ceil(threadlength/rawsoundfiledata.filter(f => f.id===rawsoundfile)[0].duration);
  // console.log(`rawsoundfile = ${rawsoundfile} ... ntones = ${ntones}`);
  tools.shufflearray(echos);
  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
    let threadstr="sox ";
    let dur = 0;
    let tones = [];
    while(dur < threadlength) {

      let tone = notes[tools.randominteger(0,nnotes)];
      let tonefile = rawsoundfile+"_"+tone;
      tones.push( [ tone, tonefile+".mp3" ]);
      console.log(`dur=${dur}`);
      dur = dur + rawsoundfiledata.filter(f => f.id===tonefile)[0].duration;
      threadstr = threadstr + " " + tonefile+".mp3";
    }
    //with echo
    threads.push( [ tones, threadstr + " " + rawsoundfile + "_bendthread_" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[(j+1)%echos.length] + " norm -2"  ] );
    //no echo
    // threads.push( [ thread, threadstr + " " + rawsoundfile + "_bendthread_" + j.toString().padStart(3, "0") + ".mp3  trim 0 "+threadlength+" fade 0 -0 12 norm -2"  ] );
    return threads;
  }, []);
  return catalog;
},{});

rawsoundfiles.forEach( file => {
  let scorefilename = file+"_threadscore_"+timestamp+".js";
  let score = `module.exports = {
    date: "${datetimestr}",
    timestamp: ${timestamp},
    rawsoundfile: "${file}.mp3",
    nthreads: ${nthreads},
    duration: ${threadlength},
    harmonicthreads: ${JSON.stringify(catalog)},
    bendthreads: ${JSON.stringify(bendcatalog)},
    echos: ${JSON.stringify(echos)},
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
  nextsteps = nextsteps + bendcatalog[file].reduce( (scorestr, thread) => {
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
nextsteps = nextsteps + `
    cp *.js ${newdir};
    cd ${newdir};
    cp ${nextstepsfile} ${newdir}; `;
  
nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
  nextstepstr = nextstepstr + `
    sox -m ${file}_thread_*.mp3 ${file}_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m ${file}_bendthread_*.mp3 ${file}_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m ${file}*thread_*.mp3 ${file}_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m ${file}_thread_*.mp3 -p fade 0 -0 14 norm -3" ${file}_harmonictwist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m ${file}_bendthread_*.mp3 -p fade 0 -0 14 norm -3" ${file}_bendtwist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m ${file}*thread_*.mp3 -p fade 0 -0 14 norm -3" ${file}_twist_all_fm.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;`
  return nextstepstr;
}, "");

nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
  rawsoundfiles.forEach( file2 => {
    nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.8 ${file1}_harmonictwist_all_fm.mp3 -c1 -p pad 1.3 0" "|sox -v 0.8 ${file2}_harmonictwist_all_fm.mp3 -c1 -p" ${file1}_${file2}_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 ${file1}_bendtwist_all_fm.mp3 -c1 -p pad 1.4 0" "|sox -v 0.8 ${file2}_bendtwist_all_fm.mp3 -c1 -p" ${file1}_${file2}_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 ${file1}_harmonictwist_all_fm.mp3 -c1 -p pad 1.8 0" "|sox -v 0.8 ${file2}_bendtwist_all_fm.mp3 -c1 -p" ${file1}_${file2}_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;`;
    [...Array(Math.floor(nthreads/4)).keys()].forEach( j => {
      let k1 = tools.randominteger(0,nthreads);
      let k2 = tools.randominteger(0,nthreads);
      nextstepstr = nextstepstr + `
    sox -M "|sox  -v 0.8 ${file1}_thread_${k1.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.3 0" "|sox -v 0.8 ${file2}_thread_${k2.toString().padStart(3, "0")}.mp3 -c1 -p" ${file1}_${file2}_thread_${j.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 ${file1}_bendthread_${k2.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.4 0" "|sox -v 0.8 ${file2}_bendthread_${k1.toString().padStart(3, "0")}.mp3 -c1 -p" ${file1}_${file2}_bendthread_${j.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;`
    });
  })
  return nextstepstr;
}, "");

// play -M "|sox -v 0.8 bell11_bendthread_000.mp3 -c1 -p pad 1.3 0" "|sox -v 0.8 bell13_bendthread_000.mp3 -c1 -p" remix 1v0.8,2v0.2 1v0.2,2v0.8 norm -4


nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
  nextstepstr = nextstepstr + `
    play ${file1}_harmonictwist_all_fm.mp3;
    play ${file1}_bendtwist_all_fm.mp3;
    play ${file1}_twist_all_fm.mp3;`
    // play ${file1}_harmonictwist_all.mp3;
    // play ${file1}_bendtwist_all.mp3;
    // play ${file1}_twist_all.mp3;`
    rawsoundfiles.forEach( file2 => {
      nextstepstr = nextstepstr + `
      play ${file1}_${file2}_harmonictwist_all_fm.mp3;
      play ${file1}_${file2}_bendtwist_all_fm.mp3;
      play ${file1}_${file2}_twist_all_fm.mp3;`
    })
  return nextstepstr;
}, "");


// play -M "|sox bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 1.0 bell11_bendtwist_all_fm.mp3 -c1 -p" remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2

  //zip ${newdir}.zip ${newdir};\n
  //mv ${newdir}.zip ${newdir}/album.zip;\n
  //gsutil -m cp -r ${newdir} gs://soundfactory/

fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
  if (err)
    console.log(err);
  else {
    console.log(`${nextstepsfile} file written successfully\n`);
  }
});

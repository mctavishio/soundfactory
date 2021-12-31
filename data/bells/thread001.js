const fs = require("fs");
const tools = require("../tools.js");
const rawsoundfiledata = require("./soundfiles.js");
const prefix = "thread001";
const datetime = new Date();
const timestamp = datetime.getTime();
const datetimestr = datetime.toDateString();
const datetimeISOstr = datetime.toISOString();
const rawsoundfiles = ["bell11", "bell13", "bell2", "bell6", "bell9", "longbell"];
const intervals = {
    lowi: basetone => { return Math.floor(basetone/4) },
    i: basetone => { return Math.floor(basetone/2) },
    I: basetone => { return Math.floor(basetone/1) },
    II: basetone => { return Math.floor(basetone*9/8) },
    III: basetone => { return Math.floor(basetone*5/4) },
    iii: basetone => { return Math.floor(basetone*6/5) },
    IV: basetone => { return Math.floor(basetone*4/3) },
    V: basetone => { return Math.floor(basetone*3/2) },
    VI: basetone => { return Math.floor(basetone*5/3) },
    VII: basetone => { return Math.floor(basetone*15/8) },
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
    lowi: 2,
    i: 4,
    I: 4,
    II: 3,
    III: 1,
    iii: 3,
    IV: 2,
    V: 4,
    VI: 2,
    VII: 1,
    vii: 3,
    VIII: 2,
};

console.log("speeds = " + JSON.stringify(speeds));
console.log("baseweights = " + JSON.stringify(baseweights));
console.log("harmonicweights = " + JSON.stringify(harmonicweights));




// rm left.mp3
// rm right.mp3
// rm center.mp3
// rm center2.mp3
// sox typewriter1_I.mp3 typewriter1_i.mp3 typewriter1_II.mp3 typewriter1_iii.mp3 typewriter1_IV.mp3 typewriter1_iii.mp3 left.mp3
// sox typewriter1_IV.mp3 typewriter1_V.mp3 typewriter1_V.mp3 typewriter1_I.mp3 typewriter1_i.mp3 typewriter1_i.mp3 center.mp3
// sox typewriter1_V.mp3 typewriter1_I.mp3 typewriter1_vii.mp3 typewriter1_VII.mp3 typewriter1_II.mp3 typewriter1_V.mp3 right.mp3
// sox typewriter1_i.mp3 typewriter1_vii.mp3 typewriter1_IV.mp3 typewriter1_V.mp3 typewriter1_VI.mp3 typewriter1_VIII.mp3 center2.mp3
// play -m left.mp3 right.mp3 center.mp3 center2.mp3 norm -4


// sox -m left.mp3 right.mp3 center.mp3 center2.mp3 typewriter1_twist0.mp3 norm -4

const weights = Object.entries(baseweights).reduce( (acc,entry) => {
  acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
  return acc;
}, {});
console.log("weights = " + JSON.stringify(weights));


const notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
console.log("notes = " + JSON.stringify(notes));
const nnotes = notes.length;
console.log("[0...9] = " + [...Array(10).keys()]);

const nthreads = 16;
const ntones = 16;
const threadlength = 4*60;
const echos = ["0.6 0.6 2100 0.6", "0.6 0.6 3130 0.4 0.6 0.6 1408 0.4", "0.4 0.4 1200 0.6 0.8 0.8 4148 0.6", "0.6 0.6 2000 0.6 0.8 0.8 3100 0.4"]
let catalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {

  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
    let threadstr="sox ";
    let thread = [...Array(ntones).keys()].reduce( (tones,k) => {
      let tone = notes[tools.randominteger(0,nnotes)];
      tones.push( [ tone, rawsoundfile+"_"+tone+".mp3" ]);
      threadstr = threadstr + " " + rawsoundfile+"_"+tone+".mp3";
      return tones;
    }, [] );
    threads.push( [ thread, threadstr + " " + rawsoundfile + "thread" + j.toString().padStart(3, "0") + ".mp3 echos " + echos[tools.randominteger(0,echos.length)] + " trim 0 "+threadlength+" fade 0 -0 12 norm -2"  ] );
    return threads;

  }, []);

  return catalog;

},{});

console.log(catalog["bell11"].map( thread => { return thread[1] } ));

// sox typewriter1_I.mp3 typewriter1_i.mp3 typewriter1_II.mp3 typewriter1_iii.mp3 typewriter1_IV.mp3 typewriter1_iii.mp3 left.mp3


// let nextstepsfile = prefix+"_"+timestamp+".sh";

// let nextsteps = rawsoundfiledata.reduce( (acc,sound) => {
// 	acc = acc + Object.entries(speeds).reduce( (translations, speed) => {
// 		let newsoundfile = `${sound.id}_${speed[0]}.mp3`;
// 		translations = translations + `echo ${newsoundfile}; play -q -m ${sound.file} ${newsoundfile}; \n`; //silence -l 1 1.0 0.01%  -1 3.0 0.01%
// 		// console.log("translations = " + translations);
// 		return translations;
// 	}, "");
// 	// console.log("acc = " + acc);
// 	return acc;
// }, "");


// console.log("nextsteps = " + nextsteps);



// fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
//   if (err)
//     console.log(err);
//   else {
//     console.log("File written successfully\n");
//   }
// });



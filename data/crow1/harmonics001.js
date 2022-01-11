const fs = require("fs");
const tools = require("../tools.js");
//  echo module.exports = [ > rawsoundfiledata.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> rawsoundfiledata.js; done; echo ] >> rawsoundfiledata.js;
const rawsoundfiledata = require("./rawsoundfiledata.js");

const prefix = "harmonics";
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
	acc[entry[0]] = entry[1](10000)/10000;
	return acc;
}, {});

let nextstepsfile = prefix+"_"+timestamp+".sh";

let nextsteps = rawsoundfiledata.reduce( (acc,sound) => {
	acc = acc + Object.entries(speeds).reduce( (translations, speed) => {
		let newsoundfile = `${sound.id}_${speed[0]}.mp3`;
		translations = translations + `rm ${newsoundfile}; sox ${sound.file} ${newsoundfile} gain -12 speed ${speed[1]} norm -4; \n`; //silence -l 1 1.0 0.01%  -1 3.0 0.01%
		// console.log("translations = " + translations);
		return translations;
	}, "");
	// console.log("acc = " + acc);
	return acc;
}, "");


console.log("nextsteps = " + nextsteps);

// gsutil -m cp -r ${librarydir} gs://bookfactory/


fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
  if (err)
    console.log(err);
  else {
    console.log(`${nextstepsfile} file written successfully\n`);
  }
});



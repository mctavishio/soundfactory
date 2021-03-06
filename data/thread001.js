const fs = require("fs");
const tools = require("./tools.js");
const rawsoundfiledata = require("./rawsoundfiledata.js");
const prefix = "twist001";
const datetime = new Date();
const timestamp = datetime.getTime();
const datetimestr = datetime.toDateString();
const datetimeISOstr = datetime.toISOString();
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
    lowi: 1,
    i: 10,
    I: 20,
    II: 5,
    III: 5,
    iii: 5,
    IV: 10,
    V: 10,
    VI: 6,
    VII: 2,
    vii: 4,
    VIII: 10,
};

console.log("speeds = " + JSON.stringify(speeds));
console.log("baseweights = " + JSON.stringify(baseweights));
console.log("harmonicweights = " + JSON.stringify(harmonicweights));

rm left.mp3
rm right.mp3
rm center.mp3
rm center2.mp3
sox typewriter1_I.mp3 typewriter1_i.mp3 typewriter1_II.mp3 typewriter1_iii.mp3 typewriter1_IV.mp3 typewriter1_iii.mp3 left.mp3
sox typewriter1_IV.mp3 typewriter1_V.mp3 typewriter1_V.mp3 typewriter1_I.mp3 typewriter1_i.mp3 typewriter1_i.mp3 center.mp3
sox typewriter1_V.mp3 typewriter1_I.mp3 typewriter1_vii.mp3 typewriter1_VII.mp3 typewriter1_II.mp3 typewriter1_V.mp3 right.mp3
sox typewriter1_i.mp3 typewriter1_vii.mp3 typewriter1_IV.mp3 typewriter1_V.mp3 typewriter1_VI.mp3 typewriter1_VIII.mp3 center2.mp3
play -m left.mp3 right.mp3 center.mp3 center2.mp3 norm -4


sox -m left.mp3 right.mp3 center.mp3 center2.mp3 typewriter1_twist0.mp3 norm -4
// let rawsoundfiles = fs.readdirSync(".").filter( file => { return file.includes(".mp3")} );

// rawsoundfiles.forEach( file => { console.log(file)});
const weights = Object.entries(baseweights).reduce( (acc,entry) => {
  acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
  return acc;
}, {});
console.log("weights = " + JSON.stringify(weights));


const notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
console.log("notes = " + JSON.stringify(notes));

let nextstepsfile = prefix+"_"+timestamp+".sh";

let nextsteps = rawsoundfiledata.reduce( (acc,sound) => {
	acc = acc + Object.entries(speeds).reduce( (translations, speed) => {
		let newsoundfile = `${sound.id}_${speed[0]}.mp3`;
		translations = translations + `echo ${newsoundfile}; play -q -m ${sound.file} ${newsoundfile}; \n`; //silence -l 1 1.0 0.01%  -1 3.0 0.01%
		// console.log("translations = " + translations);
		return translations;
	}, "");
	// console.log("acc = " + acc);
	return acc;
}, "");


console.log("nextsteps = " + nextsteps);

// newbooks.map(b=>b.id).forEach( dir => {
// 	nextSteps = nextSteps + `
// cd ${dir}
// for file in *.pdf; do magick convert $file -resize 1920 $file.png; done;
// for file in *pdf.png; do mv "$file" "$\{file/.pdf.png/.png\}"; done;
// for file in *.png; do magick convert $file -resize 640 $file.small.png; done;
// for file in *png.small.png; do mv "$file" "$\{file/.png.small.png/-small.png\}"; done;
// pdfunite *.pdf book.pdf
// ffmpeg -framerate 1 -i page%03d.png -c:v libx264 -r 24 -pix_fmt yuv420p book.mp4
// cd ..
// cp McTavishResume202011_extensive.pdf ${dir}
// zip ${dir}.zip ${dir}
// mv ${dir}.zip ${dir}/book.zip
// mv ${dir} ${librarydir}
// `;
// });
// nextSteps = nextSteps + `
// cp ${nextstepsfile} ${librarydir}/nextSteps.sh
// mv ${librarybookfile} ${librarydir}/library.js
// mv librarybooks_old.js librarybooks_older.js
// gsutil -m cp -r ${librarydir} gs://bookfactory/
// `;

fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
  if (err)
    console.log(err);
  else {
    console.log("File written successfully\n");
  }
});



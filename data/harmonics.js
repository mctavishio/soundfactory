const fs = require("fs");
const tools = require("./tools.js");
const rawsoundfiledata = require("./rawsoundfiledata.js");
const prefix = "harmonics";
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
	acc[entry[0]] = entry[1](10000)/10000;
	return acc;
}, {});

const baseweights = Object.entries(speeds).reduce( (acc,entry) => {
	acc[entry[0]] = Math.floor(10000/entry[1])/10000;
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



// let rawsoundfiles = fs.readdirSync(".").filter( file => { return file.includes(".mp3")} );

// rawsoundfiles.forEach( file => { console.log(file)});


let nextstepsfile = prefix+"_"+timestamp+".sh";

let nextsteps = rawsoundfiledata.reduce( (acc,sound) => {
	acc = acc + Object.entries(speeds).reduce( (translations, speed) => {
		let newsoundfile = `${sound.id}_${speed[0]}.mp3`;
		translations = translations + `rm ${newsoundfile}; sox ${sound.file} ${newsoundfile} gain -12 speed ${speed[1]} norm -6; \n`; //silence -l 1 1.0 0.01%  -1 3.0 0.01%
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



const fs = require("fs");
const tools = require("./tools");
//find . -name "outsoundfiles.js" -print
let allsoundfiles = require("./allsoundfiles.js");
let soundfiles = allsoundfiles.flat(1);
const sfiles = soundfiles.map(file=>file.id).sort()
	.map( id => {
		return soundfiles.filter(sf=>sf.id===id)[0];
	}).reduce((acc, sf) => {
		let isthread = true;
		if(sf.id.split("twist").length>1) {
			if(sf.id.split("00").length>3  || sf.id.split("all").length>1) isthread=false;
		}
		else {
			if(sf.id.split("00").length>2 || sf.id.split("all").length>1) isthread=false;
		}
	if(!isthread) acc[0].push(sf);	
	else acc[1].push(sf);
	return acc;
}, [[],[]])
let types = [];
let soundfilesbytype = {};
sfiles[0].forEach( file => {
	let type = file.url.split("/")[4];
	console.log("type= "+type);
	if(!types.hasOwnProperty(type)) {
		types.push(type);
		soundfilesbytype[type] = [file.url];
	}
	else {
		soundfilesbytype[type].push(file.url);
	}
	//console.log(`${type[4]}`);
});
let _date = new Date().toString();
let _title = "sound factory jukebox"; 
let _root = `https://soundfactory.work/`; 
let indexname = "indexjukebox.html";
let _url = `${_root}${indexname}`;
let _abstract = `sound file index: jukebox`;
let _text = `<p>
play random selection ::: radio loop
</p>`;
let _pictureurl = "/apple-touch-icon.png";
let _cssurl = "/css/soundfactory.css";
let _codeurl = "";
let colors = ["warmlightgray"];
let head = `<!DOCTYPE html>
<html lang="en">
<head>
	<title>${_title}</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
	<meta name="description" content=${_abstract}/>
	<meta name="author" content="kathy mctavish">
	<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
	<link rel="manifest" href="/manifest.json">
	<script type="application/ld+json">
		{
			"@context": "http://schema.org",
			"@type": "WebPage",
			"name": "${_title}",
			"breadcrumb": "${_root} > ${_title}",
          	"url": "${_url}",
			"description": "${_abstract}",
			"datePublished": "${_date}",
          	"image": "${_pictureurl}",
			"author": "https://mctavish.io/bio.html",
			"license": "http://creativecommons.org/licenses/by-nc-sa/3.0/us/deed.en_US"
		}
	</script>
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-0989MECNZV"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	  gtag('config', 'G-0989MECNZV');
	</script>
	<link rel="stylesheet" href="${_cssurl}"/>
	<script src="${_codeurl}"></script>
	<script>
		const types = ${JSON.stringify(types)};
		const soundfilesbytype = ${JSON.stringify(soundfilesbytype)};
	</script>
	<style>
  		body {
			background: var(--${colors[tools.randominteger(0,colors.length)]});
		}
	</style>
</head>`;
let body = `<body id="top">
<div id="subtextframe" class="frame zlowest"></div>
<div id="svgframe" class="frame zlow"><svg xmlns="http://www.w3.org/2000/svg" id="svg" class="frame"></svg></div>
<div id="wordframe" class="frame z0"></div>
<div id="contentframe" class="absolute zhighest">
<div id="mainflex">
<main id="main" class="expand" data-state="expanded">
<header>
	<h1>${_title.replaceAll("_", " |  ")}</h1>
</header>
<nav>
<ul class="expand" >
	<li><a href="index.html" id="homelink" class="corelink">core index</a></li>
	<!-- <li><a href="https://www.mctavish.io/index.html" id="homelink" class="corelink">mctavish portfolio</a></li> -->
</ul>
</nav>
${_text}`;
/*
const sfiles = soundfiles.map(file=>file.id).sort()
	.map( id => {
		return soundfiles.filter(sf=>sf.id===id)[0];
	}).reduce((acc, sf) => {
		let isthread = true;
		if(sf.id.split("twist").length>1) {
			if(sf.id.split("00").length>3  || sf.id.split("all").length>1) isthread=false;
		}
		else {
			if(sf.id.split("00").length>2 || sf.id.split("all").length>1) isthread=false;
		}
	if(!isthread) acc[0].push(sf);	
	else acc[1].push(sf);
	return acc;
}, [[],[]])
body += `
<p><ul>`;
body += sfiles[0].reduce( (acc,sfile)=> {
	return acc + `
<li><a href="${sfile.url}">${sfile.id}</a></li>`;
}, "");

body +=`
</ul></p>`;
*/
body +=`
<p>
<a id="soundlink" href="#soundlink">play sound</a>
</p>
<p>
<a id="nextlink" href="#nextlink">jump to new track</a>
</p>
<p id="telegraph">...</p>
<p>
<audio  id="audio1" src="https://storage.googleapis.com/www.blueboatfilms.com/sound/IVdfd.mp3" type="audio/mpeg">
  Your browser does not support the audio tag.
</audio>
</p>`;
/*
body += `<!--
	<h5>individual threads</h5>`;
body += `
<p><ul>`;
body += sfiles[1].reduce( (acc,sfile)=> {
	return acc + `
<li><a href="${sfile.url}">${sfile.id}</a></li>`;
}, "");
body +=`
</ul></p>-->`;
*/
body +=`
</main></div></div>
</body>
<script>
	let soundplaying = false;
	let randominteger = (min, max) => {
		return Math.floor( min + Math.random()*(max-min));
	};
	let changetrack = e => {
		console.log("soundplaying="+soundplaying);
		console.log("e="+e);
		if(!soundplaying) { 
			try {
				let type = types[randominteger(0,types.length)];
				console.log("type="+type);
				let tracks = soundfilesbytype[type];
				let track = tracks[randominteger(0,tracks.length)];
				console.log("track="+track);
				audio1.src = track;
				audio1.play();
				telegraph.innerHTML =  "currently playing:::<br/>type:::" + type+"<br/>thread:::"+track.split("/")[5];
				soundplaying = true;
				soundlink.innerText = "turn off sound";
				soundlink.classList.add("active");
			} catch(e) {console.log("oops..."+e)} 
		}
		else { 
			try {
				document.querySelector("#audio1").pause();
				telegraph.innerHTML =  " . . . >";
				soundplaying = false;
				soundlink.innerText = "turn on sound";
				soundlink.classList.remove("active");
			} catch(e) { console.log("dashboard ::: suspendaudio " + e) }
		}
	}
	//controls
	( () => { 
		const nextlink = document.querySelector("#nextlink");
		const soundlink = document.querySelector("#soundlink");
		const telegraph = document.querySelector("#telegraph");
		const audio1 = document.querySelector("#audio1");
		soundlink.addEventListener("click", changetrack );
		nextlink.addEventListener("click", e=> { soundplaying = false; changetrack(e) } );
		audio1.addEventListener("ended", e=> { soundplaying = false; changetrack(e) } );
		let type = types[randominteger(0,types.length)];
		console.log("type="+type);
		let tracks = soundfilesbytype[type];
		let track = tracks[randominteger(0,tracks.length)];
		console.log("track="+track);
		audio1.src = track;
	})();
</script>
</html>`;
fs.writeFileSync(indexname, head+body, (err) => {
  if (err)
    console.log(err);
  else {
    console.log("File written successfully\n");
  }
});

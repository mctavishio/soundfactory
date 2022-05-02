const fs = require("fs");
const tools = require("./tools");
let soundfiles = fs.readFileSync("./selectoutsoundfiles.txt").toString().split("\n").sort();
let date = new Date();
let _date = date.toString(); 
let _timestamp = date.getTime(); 
let _title = "sound factory"; 
let _root = `https://soundfactory.work/`; 
let indexname = "index.html"
let _url = `${_root}${indexname}`;
let _abstract = `<p>
sound file index: sound threads & weavings created from recorded fragments.
experiments in generative command line sox audio sequences`;
let _pictureurl = "/apple-touch-icon.png";
let _cssurl = "/css/soundfactory.css";
let _codeurl = "";
let colors = ["warmgray"];
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
	<h2>experiments in generative sound</h2>
</header>
<nav>
<ul class="expand" >
	<li><a href="https://www.mctavish.io/index.html" id="homelink" class="corelink">mctavish portfolio</a></li>
</ul>
</nav>
<p>${_abstract}</p>`;
body += "<p><ul>"+soundfiles.filter(sfile=>sfile!=="").reduce( (acc,sfile)=> {
	let parts = sfile.split('/');
	console.log(`sfile=${sfile}`);
	let sindexname = `index_${parts[3]}.html`;
	return acc + `<li><a href="${sindexname}">${parts[3]}</a></li>`;
}, "");
body +=`</ul></p>
<nav>
<ul class="expand" >
	<li><a href="samplesoxbash.html" id="samplebash" class="corelink">sample code</a></li>
</ul>
</nav>
</body>
</html>`;
fs.writeFileSync(indexname, head+body, (err) => {
  if (err)
    console.log(err);
  else {
    console.log("File written successfully\n");
  }
});

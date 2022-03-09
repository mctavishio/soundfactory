const fs = require("fs");
//find . -name "outsoundfiles.js" -print
const outsoundfiles = ["./data/submarineecho/submarineecho_1642358385333/outsoundfiles.js",
"./data/submarineecho/submarineecho_1642358863850/outsoundfiles.js",
"./data/crow1/crow1_1641580694631/outsoundfiles.js",
"./data/crow1/crow1_1641582014050/outsoundfiles.js",
"./data/crow1/crow1_1642453229839/outsoundfiles.js",
"./data/crow1/crow1_1641582532380/outsoundfiles.js",
"./data/crow1/crow1_1641579043340/outsoundfiles.js",
"./data/crow1/crow1_1642455699016_sparse/outsoundfiles.js",
"./data/piano/piano_1642467725007/outsoundfiles.js",
"./data/piano/piano_1642473335982/outsoundfiles.js",
"./data/kantele/kantele_1641584721365/outsoundfiles.js",
"./data/kantele/kantele_1641586026204/outsoundfiles.js",
"./data/cellopluck/cellopluck1_1642457562365/outsoundfiles.js",
"./data/cellopluck/homing20201221_1pluck1_1642456785267_sparse/outsoundfiles.js",
"./data/bells/bells_1641425203204/outsoundfiles.js",
"./data/bells/bells_1641414219320/outsoundfiles.js",
"./data/bells/bells_1642262997265/outsoundfiles.js",
"./data/bells/bells_1641168192025/outsoundfiles.js",
"./data/bells/bells_1641158678233/outsoundfiles.js",
"./data/bells/bells_1642213868038/outsoundfiles.js",
"./data/bells/bells_1642203078267/outsoundfiles.js",
"./data/bells/bells_1641438415313/outsoundfiles.js",
"./data/bells/bells_1641154791797/outsoundfiles.js",
"./data/bells/bells_1641156761716/outsoundfiles.js",
"./data/bells/bells_1642210858556/outsoundfiles.js",
"./data/bells/bells_1641364677934/outsoundfiles.js",
"./data/bells/bells_1642260396520/outsoundfiles.js",
"./data/icebowedcymbal/icebowedcymbal_1642011285503/outsoundfiles.js",
"./data/icebowedcymbal/icebowedcymbal_1642010199811/outsoundfiles.js",
"./data/icebowedcymbal/icebowedcymbal_1642009781889/outsoundfiles.js",
"./data/therider/therider_1642878010306/outsoundfiles.js",
"./data/tornadosiren/tornadosiren_1642201741108/outsoundfiles.js",
"./data/tornadosiren/tornadosiren_1642126693800/outsoundfiles.js",
"./data/tornadosiren/tornadosiren_1642128519202/outsoundfiles.js",
"./data/thunk/thunk_1642380994758/outsoundfiles.js",
"./data/thunk/thunk_1642380627951/outsoundfiles.js",
"./data/thunk/thunk_1642381354283/outsoundfiles.js",
"./data/coffeepot/coffepot1eminor_1641572853780/outsoundfiles.js",
"./data/bowedmetal/bowedmetal_1642017844851/outsoundfiles.js",
"./data/bowedmetal/bowedmetal_1642024753472/outsoundfiles.js",
"./data/bowedmetal/bowedmetal_1642016672026/outsoundfiles.js",
"./data/bowedmetal/bowedmetal_1642028529850/outsoundfiles.js",
"./data/mctvox202001/mctvox202001_1642111712241/outsoundfiles.js",
"./data/icebowedvibes/icedbowedvibes_1641495642737/outsoundfiles.js",
"./data/icebowedvibes/icedbowedvibes_1641507315525/outsoundfiles.js",
"./data/icebowedvibes/icedbowedvibes_1641489730425/outsoundfiles.js",
"./data/icebowedvibes/icedbowedvibes_1641492707613/outsoundfiles.js",
"./data/bagpipeclick/bagpipeclick_1642440127604_reverb/outsoundfiles.js",
"./data/bagpipeclick/bagpipeclick_1642430760765/outsoundfiles.js",
"./data/weatherradio1/weatherradio1_1642276158852/outsoundfiles.js",
"./data/weatherradio1/weatherradio1_1642277246573/outsoundfiles.js",
"./data/clarinetnotes/clarinet1_1642264733797/outsoundfiles.js",
"./data/clarinetnotes/clarinetnotes_1642826731930/outsoundfiles.js",
"./data/clarinetnotes/clarinet_1642000720841/outsoundfiles.js",
"./data/clarinetnotes/clarinet_1641967490502/outsoundfiles.js",
"./data/clarinetnotes/clarinet1_1642266249363/outsoundfiles.js",
"./data/clarinetnotes/clarinet_1641945358522/outsoundfiles.js",
"./data/clarinetnotes/clarinet1_1642265309104/outsoundfiles.js",
"./data/clarinetnotes/clarinet_1641968730764/outsoundfiles.js",
"./data/clarinetnotes/clarinet_1642009493913/outsoundfiles.js",
"./data/surf/surf_1642459954418/outsoundfiles.js",
"./data/traffickcorebirds1/traffickcorebirds_1642285251826/outsoundfiles.js",
"./data/traffickcorebirds1/traffickcorebirds_1642290689967/outsoundfiles.js",
"./data/clapping/clapping0_1642466532407/outsoundfiles.js",
"./data/clarinetgeese/clarinetgeese_1642632637353/outsoundfiles.js",
"./data/clarinetgeese/clarinetgeese_1642637239897/outsoundfiles.js",
"./data/clarinetgeese/clarinetgeese_1642638703933/outsoundfiles.js",
"./data/rubbedpianoharp/rubbedpianoharp_1642042988557/outsoundfiles.js",
"./data/rubbedpianoharp/rubbedpianoharp_1642043746480/outsoundfiles.js",
"./data/rubbedpianoharp/rubbedpianoharp_1642096253276/outsoundfiles.js",
"./data/bagpipegeese/bagpipegeese_1642540197224/outsoundfiles.js",
"./data/bagpipegeese/bagpipegeese_1642544355579/outsoundfiles.js",
"./data/magsSessionClips/magsSessionClips_1642887851539/outsoundfiles.js",
"./data/magsSessionClips/magsSessionClips_1642819712640/outsoundfiles.js",
"./data/magsSessionClips/magsSessionClips_1642828898857/outsoundfiles.js",
"./data/magsSessionClips/outsoundfiles.js",
"./data/magsSessionClips/magsSessionClips_1642887228879/outsoundfiles.js",
"./data/monksfromouterspacecistern/monksfromouterspace_1642875279195/outsoundfiles.js",
"./data/monksfromouterspacecistern/monksfromouterspace_1642875893496/outsoundfiles.js",
"./data/monksfromouterspacecistern/monksfromouterspace_1642874564485/outsoundfiles.js",
"./data/typewriter/typewriter1_1642282024551/outsoundfiles.js",
"./data/typewriter/typewriter1_1642281130126/outsoundfiles.js",
"./data/typewriter/typewriter1_1642283540547/outsoundfiles.js",
"./data/typewriter/typewriter1_1642279885300/outsoundfiles.js",
"./data/tones/tones_1642908446369/outsoundfiles.js",
"./data/meow/meow2_1642702385305/outsoundfiles.js",
"./data/meow/meow2_1642704808802/outsoundfiles.js",
"./data/meow/meow2_1642703352821/outsoundfiles.js",
"./data/birds/birds_1642603749824/outsoundfiles.js",
"./data/birds/birds_1642603998443/outsoundfiles.js",
"./data/birds/birds_1642607468266_noreverb/outsoundfiles.js",
"./data/birds/birds_1642611519582/outsoundfiles.js",
"./data/birds/birds_1642604245480/outsoundfiles.js",
"./data/birds/birds_1642610817045/outsoundfiles.js",
"./data/birds/birds_1642616153675/outsoundfiles.js",
"./data/birds/birds_1642618058359/outsoundfiles.js",
"./data/birds/birds_1642612928493/outsoundfiles.js",
"./data/cisterncello/cisterncello_1642032757835/outsoundfiles.js",
"./data/knocking/knocking_1642272279035/outsoundfiles.js",
"./data/knocking/knocking_1642282509441/outsoundfiles.js",
"./data/knocking/knocking_1642270912733/outsoundfiles.js",
"./data/scraping1/scraping1_1642360460526/outsoundfiles.js",
"./data/train1/train1_1642274773572/outsoundfiles.js",
"./data/train1/train1_1642275561343/outsoundfiles.js",
"./data/t0/t0_1642558125511/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642879261078/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642885476291/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642879779084/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642885025800/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642882458785/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642881919567/outsoundfiles.js",
"./data/mctvox1/mctbreathing0_1642450121600/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642883319589/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642881403819/outsoundfiles.js",
"./data/mctvox1/mctvox1_1642880311146/outsoundfiles.js",
"./data/mctvox1/mctvox1c_breathing_1642446349848/outsoundfiles.js"];
// const tools = require("../tools.js");
outsoundfiles.forEach( outsoundfile => {
	let parts = outsoundfile.split('/');
	let soundfiles = require(outsoundfile);
	console.log("***---"+soundfiles[0]);
	console.log("###---"+parts[3].slice(-13));
	console.log(parts);
// const soundfiles = JSON.parse(fs.readFileSync(outsoundfiles[0]));
// let soundfiles = require(outsoundfiles[0]);
let soundfiles = require(outsoundfile);
//const _timestamp = 1642440127604;
let _timestamp = parts[3].slice(-13);
let _date = new Date(_timestamp).toString();
let _title = parts[3]; 
let _root = `https://soundfactory.work/`; 
let indexname = `index${parts[3]}.html`;
let _url = `${_root}${indexname}`;
let _abstract = `sound file index: generative output from ${_title}`;
let _pictureurl = "/apple-touch-icon.png";
let _cssurl = "/css/soundfactory.css";
let _codeurl = "";
let  head = `<!DOCTYPE html>
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
</head>`;
soundfiles.forEach( file => {
	console.log(`file=${file.id} ${file.url}`);
});
let body = `<body id="top">
<div id="subtextframe" class="frame zlowest"></div>
<div id="svgframe" class="frame zlow"><svg xmlns="http://www.w3.org/2000/svg" id="svg" class="frame"></svg></div>
<div id="wordframe" class="frame z0"></div>
<div id="contentframe" class="absolute zhighest">
<div id="mainflex">
<main id="main" class="expand" data-state="expanded">
<header>
	<h1>${_title.replace("_", " |  ")}</h1>
</header>`;
const sfiles = soundfiles.map(file=>file.id).sort().map(id=> {
	return soundfiles.filter(sf=>sf.id===id)[0];
});
body += "<p><ul>"+sfiles.reduce( (acc,sfile)=> {
	return acc + `<li><a href="${sfile.url}">${sfile.id}</a></li>`;
}, "");
body +=`</ul></p></body>
</html>`;
fs.writeFileSync(indexname, head+body, (err) => {
  if (err)
    console.log(err);
  else {
    console.log("File written successfully\n");
  }
});
});
//let threadp = [];
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0], Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("harmonic", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 5, majIII: 1, miniii: 5, IV: 9, V: 9, VI: 4, majVII: 1, minvii: 4, VIII: 2, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
//);
//  
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("pentatonic", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 0, majIII: 0, miniii: 6, IV: 6, V: 6, VI: 0, majVII: 0, minvii: 4, VIII: 2, lownoise: 1, midnoise: 3, highnoise: 0, noise:0, buzz: 0 })
//);
//
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("pentatonic2", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 3, majIII: 0, miniii: 0, IV: 6, V: 6, VI: 6, majVII: 0, minvii: 0, VIII: 2, lownoise: 1, midnoise: 3, highnoise: 0, noise:0, buzz: 0 })
//);
//
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("simple", { lowi: 1, bassi: 1, bassV: 3, bassIV: 3, I: 6, II: 0, majIII: 0, miniii: 0, IV: 6, V: 6, VI: 0, majVII: 0, minvii: 0, VIII: 2, lownoise: 0, midnoise: 0, highnoise: 0, noise:0, buzz: 0 })
//);
//
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("buzz", { lowi: 0, bassi: 1, bassV: 0, bassIV: 0, I: 2, II: 0, majIII: 0, miniii: 0, IV: 1, V: 1, VI: 0, majVII: 0, minvii: 1, VIII: 2, lownoise: 1, midnoise: 1, highnoise: 0, noise: 1, buzz: 8 })
//);
//
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("simplebuzz", { lowi: 0, bassi: 0, bassV: 0, bassIV: 0, I: 0, II: 0, majIII: 0, miniii: 0, IV: 0, V: 0, VI: 0, majVII: 0, minvii: 1, VIII: 0, lownoise: 0, midnoise: 1, highnoise: 1, noise: 0, buzz: 8 })
//);
//
//threadp.push( 
//  ( ( id, harmonicweights ) => {
//    let speeds = Object.entries(intervals).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1](1000)/1000;
//      return acc;
//    }, {});
//    let  baseweights = Object.entries(speeds).reduce( (acc,entry) => {
//      acc[entry[0]] = Math.floor(1000/entry[1])/1000;
//      return acc;
//    }, {});
//    let weights = Object.entries(baseweights).reduce( (acc,entry) => {
//      acc[entry[0]] = entry[1]*harmonicweights[entry[0]];
//      return acc;
//    }, {});
//    let notes = tools.reifyWeightedArray( Object.entries(weights).map( w=>{ return [w[0],Math.floor(w[1])] } ) );
//    return { id, notes };
//  } ) ("noise", { lowi: 0, bassi: 1, bassV: 0, bassIV: 0, I: 2, II: 0, majIII: 0, miniii: 0, IV: 0, V: 0, VI: 0, majVII: 0, minvii: 2, VIII: 0, lownoise: 2, midnoise: 2, highnoise: 2, noise: 4, buzz: 2 })
//);
//
//const nthreads = 8;
//const threadlength = 4*60;
//// const mcompandstr = `gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%`;
//const mcompandstr = `reverb 100 60 40 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801`;
//
//const echos = () => {
//  //gain-in gain-out <delay decay>
//  let gainin = tools.randominteger(6,8)/10;
//  let gainout = tools.randominteger(4,8)/10;
//  let delay = [tools.randominteger(80,3800),tools.randominteger(800,6400)];
//  let decay = [tools.randominteger(3,6)/10,tools.randominteger(3,6)/10];
//  return `${gainin} ${gainout} ${delay[0]} ${decay[0]} ${delay[1]} ${decay[1]}`;
//};
//
//let catalog = rawsoundfiles.reduce( (catalog, rawsoundfile) => {
//  catalog[rawsoundfile] = [...Array(nthreads).keys()].reduce( (threads,j) => {
//    console.log(`rawsoundfile = ${rawsoundfile}`);
//    let rawsounddur = rawsoundfiledata.filter(f => f.id===rawsoundfile)[0].duration;
//    threadp.forEach( (p ,k) => {
//    
//      let threadstr = "sox ";
//      let threadstr2 = "sox ";
//      let dur = 0;
//      let tones = [];
//      
//      while(dur < threadlength) {
//        let notef = p.notes[tools.randominteger(0,p.notes.length)];
//        // console.log(`notef = ${notef}`);
//        let tonefile = `${rawsoundfile}_p.id_${notef}`;
//        let speed = intervals[notef](1);
//        // console.log(`speed = ${speed}`);
//        let tonepad = tools.randominteger(0,120)/100;
//
//        tones.push( [ notef, tonefile+".mp3", speed, tonepad]);
//        dur = dur + rawsounddur/speed + tonepad;
//        threadstr = threadstr + ` "|sox ${rawsoundfile}.mp3 -p speed ${speed} pad 0 ${tonepad} norm -4" `;
//        // threadstr2 = threadstr2 + ` "|sox ${rawsoundfile}.mp3 -p speed ${speed*tools.randominteger(8,12)/10} pad 0 ${tonepad} norm -4" `;
//      }
//      //with echo
//      // threads.push( [ tones, threadstr + ` ${rawsoundfile}_thread_${p.id}_${j.toString().padStart(3, "0")}.mp3 echos ${echos()} norm -2`  ] );
//      // threads.push( [ tones, threadstr2 + ` ${rawsoundfile}_bentthread_${p.id}_${j.toString().padStart(3, "0")}.mp3 echos ${echos()} norm -2`  ] );
//      //no echo
//      threads.push( [ tones, threadstr + ` ${rawsoundfile}_thread_${p.id}_${j.toString().padStart(3, "0")}.mp3 norm -2`  ] );
//      });
//      return threads;
//  }, []);
//  return catalog;
//},{});
//
//// console.log(`catalog = ${JSON.stringify(catalog)}`);
//
//rawsoundfiles.forEach( file => {
//  let scorefilename = file+"_threadscore_"+timestamp+".js";
//  let score = `module.exports = {
//    date: "${datetimestr}",
//    timestamp: ${timestamp},
//    rawsoundfile: "${file}.mp3",
//    nthreads: ${nthreads},
//    duration: ${threadlength},
//    threads: ${JSON.stringify(catalog[file])},
//  }`
//  fs.writeFileSync(scorefilename, score, (err) => {
//    if (err)
//      console.log(err);
//    else {
//      console.log(scorefilename + " file written successfully\n");
//    }
//  });
//});
//
//rawsoundfiles.forEach( file => {
//  let nextstepfilename = file+"_threadscore_"+timestamp+".sh";
//  let nextsteps = catalog[file].reduce( (scorestr, thread) => {
//    scorestr = scorestr + thread[1] + ";\n";
//    return scorestr;
//  }, "");
//  fs.writeFileSync(nextstepfilename, nextsteps, (err) => {
//    if (err)
//      console.log(err);
//    else {
//      console.log(nextstepfilename + " file written successfully\n");
//    }
//  });
//});
//
//let nextstepsfile = prefix+"_nextsteps_"+timestamp+".sh";
//let newdir = `${instrument}_${timestamp}_reverb`;
//let initialize = `mkdir ${newdir};`;
//let nextsteps = rawsoundfiles.reduce( (nextstepstr,file) => {
//  nextstepstr = nextstepstr + `
//    bash ${file}_threadscore_${timestamp}.sh;
//    mv ${file}_thread_*.mp3 ${newdir};
//    mv ${file}_threadscore_${timestamp}.sh ${newdir};
//    mv ${file}_threadscore_${timestamp}.js ${newdir};`
//	return nextstepstr;
//}, initialize);
//
//nextsteps = nextsteps + `
//    cp ${prefix}.js ${newdir};
//    cp soundfiles.js ${newdir}/rawsoundfiles.js;
//    cp ${nextstepsfile} ${newdir};
//    cd ${newdir};`;
//    
//nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
//    threadp.forEach( (p1,j2) => {
//      nextstepstr = nextstepstr + `
//    sox -m ${file}_thread_${p1.id}_*.mp3 ${file}_thread_${p1.id}_all.mp3 ${mcompandstr}; `;
//    });
//    [...Array(nthreads).keys()].forEach( j3 => {
//        nextstepstr = nextstepstr + `
//    sox -m ${file}_thread_*_${j3.toString().padStart(3, "0")}.mp3 ${file}_thread_all_${j3.toString().padStart(3, "0")}.mp3 ${mcompandstr}; `;
//    });
//    return nextstepstr;
//}, "");
//
////sox tornadosiren.mp3 -n spectrogram -m -l -o tornadosiren.png
////https://upload.wikimedia.org/wikiversity/en/b/b1/Audio.2.SigAnal.1.A.20180213.pdf
////sox clarinetnotes_e_clarinetnotes_a_thread_pentatonic_000_003.mp3 -n spectrogram
////open spectrogram.png
////play clarinetnotes_e_clarinetnotes_a_thread_pentatonic_000_003.mp3 lowpass 2400
//// nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file) => {
////     threadp.forEach( (p1,j2) => {    
////     [...Array(nthreads).keys()].forEach( j3 => {
////         nextstepstr = nextstepstr + `
////     sox -m ${file}_thread_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 ${file}_bentthread_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 ${file}_twist_${p1.id}_${j3.toString().padStart(3, "0")}.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; `;
////     });
////         nextstepstr = nextstepstr + `
////     sox -m ${file}_bentthread_${p1.id}_*.mp3 ${file}_bentthread_${p1.id}_all.mp3 norm -2; `;
////     });
////     return nextstepstr;
//// }, "");
//
//
//nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
//  rawsoundfiles.forEach( file2 => {
//    threadp.forEach( (p,j) => {
//    nextstepstr = nextstepstr + `
//    sox -M "|sox  -v 0.8 ${file1}_thread_${p.id}_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 ${file2}_thread_${p.id}_all.mp3 -c1 -p norm -4" ${file1}_${file2}_thread_${p.id}_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  ${mcompandstr};
//    `;
//    [...Array(Math.floor(nthreads/4)).keys()].forEach( k1 => {
//        [...Array(Math.floor(nthreads/4)).keys()].map( t => nthreads-t-1 ).forEach( k2 => {
//        nextstepstr = nextstepstr + `
//    sox -M "|sox  -v 0.8 ${file1}_thread_${p.id}_${k1.toString().padStart(3, "0")}.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 ${file2}_thread_${p.id}_${k2.toString().padStart(3, "0")}.mp3 -c1 -p norm -4" ${file1}_${file2}_thread_${p.id}_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 ${mcompandstr};
//    `
//    });
//    });
//    });
//  })
//  return nextstepstr;
//}, "");
//
//// play -M "|sox -v 0.8 bell11_bendthread_000.mp3 -c1 -p pad 1.3 0" "|sox -v 0.8 bell13_bendthread_000.mp3 -c1 -p" remix 1v0.8,2v0.2 1v0.2,2v0.8 norm -4
////gcloud components update --version 365.0.0
//
//// nextsteps = nextsteps + `for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"$file\",file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done;`
//// for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"$file\",file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done;
//// 
//
//// nextsteps = nextsteps + rawsoundfiles.reduce( (nextstepstr,file1) => {
////   nextstepstr = nextstepstr + `
////     play ${file1}_harmonictwist_all.mp3;
////     play ${file1}_bendtwist_all.mp3;
////     play ${file1}_twist_all.mp3;`
////     rawsoundfiles.forEach( file2 => {
////       nextstepstr = nextstepstr + `
////       play ${file1}_${file2}_harmonictwist_all.mp3;
////       play ${file1}_${file2}_bendtwist_all.mp3;
////       play ${file1}_${file2}_twist_all.mp3;
////       `;
////       [...Array(Math.floor(nthreads/4)).keys()].forEach( k1 => {
////         [...Array(Math.floor(nthreads/4)).keys()].forEach( k2 => {
////         nextstepstr = nextstepstr + `
////         play ${file1}_${file2}_threads_${k1.toString().padStart(3, "0")}_${k2.toString().padStart(3, "0")}.mp3;
////         play ${file1}_${file2}_bendthreads_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
////         play ${file1}_${file2}_thread_bendthread_${k2.toString().padStart(3, "0")}_${k1.toString().padStart(3, "0")}.mp3;
////         `
////         });
////       });
////     })
////   return nextstepstr;
//// }, "");
//
//nextsteps = nextsteps + `
//echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\\"$\{file%.*\}\\", file:\\"$file\\", url:\\"https://storage.googleapis.com/soundfactory/${newdir}/$file\\", duration:$d, nchannels:$c, rate:$r, type:\\"$t\\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
//echo cd ${newdir};
//echo bash ${nextstepsfile};
//echo gsutil -m cp -r ${newdir} gs://soundfactory/
//`
//console.log(`newdir = ${newdir}`);
//console.log(`next::: gsutil -m cp -r ${newdir} gs://soundfactory/`);
//console.log(`${nextstepsfile}`);
//// play -M "|sox bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 1.0 bell11_bendtwist_all_fm.mp3 -c1 -p" remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2
//
//  //zip ${newdir}.zip ${newdir};\n
//  //mv ${newdir}.zip ${newdir}/album.zip;\n
//  //run 
//  // echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; echo ] >> outsoundfiles.js; done;
//  //add: module.exports = [ ]
//  //replace:
//  //  file:"([a-zA-Z0-9_]*).mp3",
//  //  with
//  //  id: "$1", file:"$1.mp3", url:"https://storage.googleapis.com/soundfactory/${newdir}/$1.mp3",
//  // be sure bucket has public access
//  // gsutil iam ch allUsers:objectViewer gs://soundfactory
//  //  gsutil -m cp -r icedbowedvibes_1641495642737 gs://soundfactory/
//  // play knocking1_knocking1_thread_pentatonic_001_006.mp3 reverb 100 50 50
//  // play bagpipe1_bagpipe1_thread_simplebuzz_001_007.mp3 pitch -7 reverb 100 50 50
//  // play bagpipe1f_bagpipe1e_thread_simple_000_007.mp3 reverb 100 60 40
//  // reverb: usage: [-w|--wet-only] [reverberance (50%) [HF-damping (50%) [room-scale (100%) [stereo-depth (100%) [pre-delay (0ms) [wet-gain (0dB)]]]]]]
//  // bagpipeclick_1642430760765 ::: => play bagpipe1h_bagpipe1h_thread_pentatonic2_000_007.mp3 reverb 100 60 60 60 30
//
//fs.writeFileSync(nextstepsfile, nextsteps, (err) => {
//  if (err)
//    console.log(err);
//  else {
//    console.log(`${nextstepsfile} file written successfully\n`);
//  }
//});

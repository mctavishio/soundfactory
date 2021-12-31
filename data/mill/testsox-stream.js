var sox = require('sox-stream')
var fs  = require('fs')

var src = fs.createReadStream('/Users/mctavish/Documents/nodes/soundfactory/data/mill/traffickcorebirds1_a.mp3')
var lowerVolume = sox({ input: { type: 'mp3', volume: 0.8 }, output: { type: 'mp3', speed:2 }})
let transcode = sox({
	output: {
		bits: 16,
		rate: 44100,
		channels: 2,
		type: 'mp3'
	}
})
var dest = fs.createWriteStream('/Users/mctavish/Documents/nodes/soundfactory/data/mill/traffickcorebirds1_a_quiet.mp3');
src.pipe(lowerVolume).pipe(dest)

transcode.on('error', function (err) {
	console.log('oh no! ' + err.message)
})

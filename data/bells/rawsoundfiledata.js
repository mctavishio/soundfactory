//for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ; echo {file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> soundfiles.js ; done
module.exports = [
{id:"bell11", file:"bell11.mp3", duration:20.119002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13", file:"bell13.mp3", duration:13.901995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2", file:"bell2.mp3", duration:5.438005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6", file:"bell6.mp3", duration:11.890998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9", file:"bell9.mp3", duration:12.178005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell", file:"longbell.mp3", duration:18.865011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
];
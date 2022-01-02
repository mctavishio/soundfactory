//for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ; echo {file:\"$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> soundfiles.js ; done
module.exports = [
{id:"bell11", file:"bell11.mp3", duration:20.119002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_bassi", file:"bell11_bassi.mp3", duration:40.253991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_I", file:"bell11_I.mp3", duration:20.140000, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_II", file:"bell11_II.mp3", duration:17.919002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_IV", file:"bell11_IV.mp3", duration:15.123991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_V", file:"bell11_V.mp3", duration:13.452993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_VI", file:"bell11_VI.mp3", duration:12.120000, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_VIII", file:"bell11_VIII.mp3", duration:10.082993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_iii", file:"bell11_iii.mp3", duration:16.796009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_lowi", file:"bell11_lowi.mp3", duration:80.482993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell11_vii", file:"bell11_vii.mp3", duration:11.206009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13", file:"bell13.mp3", duration:13.901995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_I", file:"bell13_I.mp3", duration:13.922993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_II", file:"bell13_II.mp3", duration:12.380998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_IV", file:"bell13_IV.mp3", duration:10.475011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_V", file:"bell13_V.mp3", duration:9.299002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_VI", file:"bell13_VI.mp3", duration:8.385011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_VIII", file:"bell13_VIII.mp3", duration:6.973991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_iii", file:"bell13_iii.mp3", duration:11.623991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_lowi", file:"bell13_lowi.mp3", duration:55.613991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_vii", file:"bell13_vii.mp3", duration:7.758005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2", file:"bell2.mp3", duration:5.438005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_I", file:"bell2_I.mp3", duration:5.459002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_II", file:"bell2_II.mp3", duration:4.858005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_IV", file:"bell2_IV.mp3", duration:4.127007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_V", file:"bell2_V.mp3", duration:3.657007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_VI", file:"bell2_VI.mp3", duration:3.290998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_VIII", file:"bell2_VIII.mp3", duration:2.741995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_iii", file:"bell2_iii.mp3", duration:4.570998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_lowi", file:"bell2_lowi.mp3", duration:21.759002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_vii", file:"bell2_vii.mp3", duration:3.056009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6", file:"bell6.mp3", duration:11.890998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_I", file:"bell6_I.mp3", duration:11.910998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_II", file:"bell6_II.mp3", duration:10.605011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_IV", file:"bell6_IV.mp3", duration:8.959002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_V", file:"bell6_V.mp3", duration:7.967007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_VI", file:"bell6_VI.mp3", duration:7.182993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_VIII", file:"bell6_VIII.mp3", duration:5.980998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_iii", file:"bell6_iii.mp3", duration:9.951995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_lowi", file:"bell6_lowi.mp3", duration:47.568005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_vii", file:"bell6_vii.mp3", duration:6.635011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9", file:"bell9.mp3", duration:12.178005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_I", file:"bell9_I.mp3", duration:12.199002, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_II", file:"bell9_II.mp3", duration:10.866009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_IV", file:"bell9_IV.mp3", duration:9.168005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_V", file:"bell9_V.mp3", duration:8.150000, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_VI", file:"bell9_VI.mp3", duration:7.340000, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_VIII", file:"bell9_VIII.mp3", duration:6.111995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_iii", file:"bell9_iii.mp3", duration:10.187007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_lowi", file:"bell9_lowi.mp3", duration:48.718005, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_vii", file:"bell9_vii.mp3", duration:6.790998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell", file:"longbell.mp3", duration:18.865011, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_I", file:"longbell_I.mp3", duration:18.886009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_II", file:"longbell_II.mp3", duration:16.796009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_IV", file:"longbell_IV.mp3", duration:14.183991, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_V", file:"longbell_V.mp3", duration:12.617007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_VI", file:"longbell_VI.mp3", duration:11.362993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_VIII", file:"longbell_VIII.mp3", duration:9.456009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_iii", file:"longbell_iii.mp3", duration:15.750998, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_lowi", file:"longbell_lowi.mp3", duration:75.467007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_vii", file:"longbell_vii.mp3", duration:10.527007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell13_bassi", file:"bell13_bassi.mp3", duration:27.820000, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell2_bassi", file:"bell2_bassi.mp3", duration:10.892993, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell6_bassi", file:"bell6_bassi.mp3", duration:23.797007, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"bell9_bassi", file:"bell9_bassi.mp3", duration:24.371995, nchannels:2, rate:44100, type:"mp3", bitrate:16},
{id:"longbell_bassi", file:"longbell_bassi.mp3", duration:37.746009, nchannels:2, rate:44100, type:"mp3", bitrate:16},
]

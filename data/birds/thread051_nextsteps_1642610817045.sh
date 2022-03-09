mkdir birds_1642610817045;
    bash birdcry_threadscore_1642610817045.sh;
    mv birdcry_thread_*.mp3 birds_1642610817045;
    mv birdcry_threadscore_1642610817045.sh birds_1642610817045;
    mv birdcry_threadscore_1642610817045.js birds_1642610817045;
    cp thread051.js birds_1642610817045;
    cp soundfiles.js birds_1642610817045/rawsoundfiles.js;
    cp thread051_nextsteps_1642610817045.sh birds_1642610817045;
    cd birds_1642610817045;
    sox -m birdcry_thread_harmonic_*.mp3 birdcry_thread_harmonic_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_pentatonic_*.mp3 birdcry_thread_pentatonic_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_pentatonic2_*.mp3 birdcry_thread_pentatonic2_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_simple_*.mp3 birdcry_thread_simple_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_buzz_*.mp3 birdcry_thread_buzz_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_noise_*.mp3 birdcry_thread_noise_all.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_*_000.mp3 birdcry_thread_all_000.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_*_001.mp3 birdcry_thread_all_001.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_*_002.mp3 birdcry_thread_all_002.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m birdcry_thread_*_003.mp3 birdcry_thread_all_003.mp3 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -M "|sox  -v 0.7 birdcry_thread_harmonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_harmonic_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_harmonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_harmonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_harmonic_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_harmonic_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_pentatonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_pentatonic_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_pentatonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_pentatonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_pentatonic_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_pentatonic_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_pentatonic2_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_pentatonic2_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_pentatonic2_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_pentatonic2_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_pentatonic2_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_pentatonic2_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_simple_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_simple_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_simple_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_simple_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_simple_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_simple_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_buzz_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_buzz_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_buzz_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_buzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_buzz_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_buzz_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_noise_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_noise_all.mp3 -c1 -p norm -4" birdcry_birdcry_thread_noise_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 birdcry_thread_noise_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 birdcry_thread_noise_003.mp3 -c1 -p norm -4" birdcry_birdcry_thread_noise_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -7 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", url:\"https://storage.googleapis.com/soundfactory/birds_1642610817045/$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
echo cd birds_1642610817045;
echo bash thread051_nextsteps_1642610817045.sh;
echo gsutil -m cp -r birds_1642610817045 gs://soundfactory/

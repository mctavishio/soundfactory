mkdir meow2_1642703352821;
    bash meow2_threadscore_1642703352821.sh;
    mv meow2_thread_*.mp3 meow2_1642703352821;
    mv meow2_threadscore_1642703352821.sh meow2_1642703352821;
    mv meow2_threadscore_1642703352821.js meow2_1642703352821;
    cp thread054.js meow2_1642703352821;
    cp soundfiles.js meow2_1642703352821/rawsoundfiles.js;
    cp thread054_nextsteps_1642703352821.sh meow2_1642703352821;
    cd meow2_1642703352821;
    sox -m meow2_thread_harmonic_*.mp3 meow2_thread_harmonic_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_pentatonic_*.mp3 meow2_thread_pentatonic_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_pentatonic2_*.mp3 meow2_thread_pentatonic2_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_simple_*.mp3 meow2_thread_simple_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_buzz_*.mp3 meow2_thread_buzz_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_noise_*.mp3 meow2_thread_noise_all.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_*_000.mp3 meow2_thread_all_000.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_*_001.mp3 meow2_thread_all_001.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_*_002.mp3 meow2_thread_all_002.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -m meow2_thread_*_003.mp3 meow2_thread_all_003.mp3 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801; 
    sox -M "|sox  -v 0.7 meow2_thread_harmonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_harmonic_all.mp3 -c1 -p norm -4" meow2_meow2_thread_harmonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_harmonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_harmonic_003.mp3 -c1 -p norm -4" meow2_meow2_thread_harmonic_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_pentatonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_pentatonic_all.mp3 -c1 -p norm -4" meow2_meow2_thread_pentatonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_pentatonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_pentatonic_003.mp3 -c1 -p norm -4" meow2_meow2_thread_pentatonic_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_pentatonic2_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_pentatonic2_all.mp3 -c1 -p norm -4" meow2_meow2_thread_pentatonic2_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_pentatonic2_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_pentatonic2_003.mp3 -c1 -p norm -4" meow2_meow2_thread_pentatonic2_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_simple_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_simple_all.mp3 -c1 -p norm -4" meow2_meow2_thread_simple_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_simple_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_simple_003.mp3 -c1 -p norm -4" meow2_meow2_thread_simple_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_buzz_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_buzz_all.mp3 -c1 -p norm -4" meow2_meow2_thread_buzz_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_buzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_buzz_003.mp3 -c1 -p norm -4" meow2_meow2_thread_buzz_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_noise_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_noise_all.mp3 -c1 -p norm -4" meow2_meow2_thread_noise_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7  reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
    sox -M "|sox  -v 0.7 meow2_thread_noise_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.7 meow2_thread_noise_003.mp3 -c1 -p norm -4" meow2_meow2_thread_noise_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 reverb 100 50 50 gain -6 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 6 lowpass -1 17801;
    
echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", url:\"https://storage.googleapis.com/soundfactory/meow2_1642703352821/$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
echo cd meow2_1642703352821;
echo bash thread054_nextsteps_1642703352821.sh;
echo gsutil -m cp -r meow2_1642703352821 gs://soundfactory/

mkdir weatherradio1_1642276158852;
    bash weatherradio1_threadscore_1642276158852.sh;
    mv weatherradio1_thread_*.mp3 weatherradio1_1642276158852;
    mv weatherradio1_threadscore_1642276158852.sh weatherradio1_1642276158852;
    mv weatherradio1_threadscore_1642276158852.js weatherradio1_1642276158852;
    cp thread034.js weatherradio1_1642276158852;
    cp soundfiles.js weatherradio1_1642276158852/rawsoundfiles.js;
    cp thread034_nextsteps_1642276158852.sh weatherradio1_1642276158852;
    cd weatherradio1_1642276158852;
    sox -m weatherradio1_thread_harmonic_*.mp3 weatherradio1_thread_harmonic_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_pentatonic_*.mp3 weatherradio1_thread_pentatonic_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_pentatonic2_*.mp3 weatherradio1_thread_pentatonic2_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_simple_*.mp3 weatherradio1_thread_simple_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_buzz_*.mp3 weatherradio1_thread_buzz_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_simplebuzz_*.mp3 weatherradio1_thread_simplebuzz_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_noise_*.mp3 weatherradio1_thread_noise_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_000.mp3 weatherradio1_thread_all_000.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_001.mp3 weatherradio1_thread_all_001.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_002.mp3 weatherradio1_thread_all_002.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_003.mp3 weatherradio1_thread_all_003.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_004.mp3 weatherradio1_thread_all_004.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_005.mp3 weatherradio1_thread_all_005.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_006.mp3 weatherradio1_thread_all_006.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m weatherradio1_thread_*_007.mp3 weatherradio1_thread_all_007.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -M "|sox  -v 0.8 weatherradio1_thread_harmonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_harmonic_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_harmonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_harmonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_harmonic_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_harmonic_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_harmonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_harmonic_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_harmonic_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_harmonic_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_harmonic_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_harmonic_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_harmonic_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_harmonic_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_harmonic_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic2_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic2_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic2_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic2_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic2_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic2_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic2_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic2_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic2_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic2_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic2_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic2_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_pentatonic2_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_pentatonic2_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_pentatonic2_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simple_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simple_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simple_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simple_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simple_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simple_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simple_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simple_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simple_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simple_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simple_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simple_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simple_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simple_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simple_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_buzz_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_buzz_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_buzz_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_buzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_buzz_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_buzz_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_buzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_buzz_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_buzz_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_buzz_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_buzz_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_buzz_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_buzz_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_buzz_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_buzz_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simplebuzz_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simplebuzz_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simplebuzz_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simplebuzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simplebuzz_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simplebuzz_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simplebuzz_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simplebuzz_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simplebuzz_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simplebuzz_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simplebuzz_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simplebuzz_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_simplebuzz_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_simplebuzz_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_simplebuzz_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_noise_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_noise_all.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_noise_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_noise_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_noise_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_noise_000_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_noise_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_noise_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_noise_000_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_noise_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_noise_007.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_noise_001_007.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
    sox -M "|sox  -v 0.8 weatherradio1_thread_noise_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 weatherradio1_thread_noise_006.mp3 -c1 -p norm -4" weatherradio1_weatherradio1_thread_noise_001_006.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    
echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", url:\"https://storage.googleapis.com/soundfactory/weatherradio1_1642276158852/$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
echo cd weatherradio1_1642276158852;
echo bash thread034_nextsteps_1642276158852.sh;
echo gsutil -m cp -r weatherradio1_1642276158852 gs://soundfactory/

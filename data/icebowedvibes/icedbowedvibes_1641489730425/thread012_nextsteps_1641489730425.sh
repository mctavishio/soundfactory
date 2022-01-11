mkdir icedbowedvibes_1641489730425;
    bash icebowedvibes1_threadscore_1641489730425.sh;
    mv icebowedvibes1_bendthread_*.mp3 icedbowedvibes_1641489730425;
    mv icebowedvibes1_thread_*.mp3 icedbowedvibes_1641489730425;
    mv icebowedvibes1_threadscore_1641489730425.sh icedbowedvibes_1641489730425;
    mv icebowedvibes1_threadscore_1641489730425.js icedbowedvibes_1641489730425;
    bash mixed_threadscore_1641489730425.sh;
    mv mixed_bendthread_*.mp3 icedbowedvibes_1641489730425;
    mv mixed_thread_*.mp3 icedbowedvibes_1641489730425;
    mv mixed_threadscore_1641489730425.sh icedbowedvibes_1641489730425;
    mv mixed_threadscore_1641489730425.js icedbowedvibes_1641489730425;
      cp thread012.js icedbowedvibes_1641489730425;
      cp thread012_nextsteps_1641489730425.sh icedbowedvibes_1641489730425;
      cd icedbowedvibes_1641489730425;
    sox -m icebowedvibes1_thread_*.mp3 icebowedvibes1_harmonictwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m icebowedvibes1_bendthread_*.mp3 icebowedvibes1_bendtwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m icebowedvibes1*thread_*.mp3 icebowedvibes1_twist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m icebowedvibes1_thread_000.mp3 icebowedvibes1_bendthread_000.mp3 icebowedvibes1_bendtwist_000.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_001.mp3 icebowedvibes1_bendthread_001.mp3 icebowedvibes1_bendtwist_001.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_002.mp3 icebowedvibes1_bendthread_002.mp3 icebowedvibes1_bendtwist_002.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_003.mp3 icebowedvibes1_bendthread_003.mp3 icebowedvibes1_bendtwist_003.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_004.mp3 icebowedvibes1_bendthread_004.mp3 icebowedvibes1_bendtwist_004.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_005.mp3 icebowedvibes1_bendthread_005.mp3 icebowedvibes1_bendtwist_005.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_006.mp3 icebowedvibes1_bendthread_006.mp3 icebowedvibes1_bendtwist_006.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m icebowedvibes1_thread_007.mp3 icebowedvibes1_bendthread_007.mp3 icebowedvibes1_bendtwist_007.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_*.mp3 mixed_harmonictwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m mixed_bendthread_*.mp3 mixed_bendtwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m mixed*thread_*.mp3 mixed_twist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m mixed_thread_000.mp3 mixed_bendthread_000.mp3 mixed_bendtwist_000.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_001.mp3 mixed_bendthread_001.mp3 mixed_bendtwist_001.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_002.mp3 mixed_bendthread_002.mp3 mixed_bendtwist_002.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_003.mp3 mixed_bendthread_003.mp3 mixed_bendtwist_003.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_004.mp3 mixed_bendthread_004.mp3 mixed_bendtwist_004.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_005.mp3 mixed_bendthread_005.mp3 mixed_bendtwist_005.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_006.mp3 mixed_bendthread_006.mp3 mixed_bendtwist_006.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m mixed_thread_007.mp3 mixed_bendthread_007.mp3 mixed_bendtwist_007.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -M "|sox  -v 0.8 icebowedvibes1_harmonictwist_all.mp3 -c1 -p pad 1.3 0 norm -2" "|sox -v 0.8 icebowedvibes1_harmonictwist_all.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_harmonictwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 icebowedvibes1_bendtwist_all.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendtwist_all.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_bendtwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 icebowedvibes1_harmonictwist_all.mp3 -c1 -p pad 1.8 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendtwist_all.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_twist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 icebowedvibes1_thread_000.mp3 -c1 -p pad 1.3 0 norm -2" "|sox -v 0.8 icebowedvibes1_thread_000.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_threads_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 icebowedvibes1_bendthread_000.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendthread_000.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_bendthreads_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 icebowedvibes1_thread_000.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendthread_000.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_thread_bendthread_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 icebowedvibes1_thread_002.mp3 -c1 -p pad 1.3 0 norm -2" "|sox -v 0.8 icebowedvibes1_thread_004.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_threads_002_004.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 icebowedvibes1_bendthread_004.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendthread_002.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_bendthreads_004_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 icebowedvibes1_thread_004.mp3 -c1 -p pad 1.4 0 norm -2" "|sox -v 0.8 icebowedvibes1_bendthread_002.mp3 -c1 -p norm -2" icebowedvibes1_icebowedvibes1_thread_bendthread_004_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    play icebowedvibes1_harmonictwist_all.mp3;
    play icebowedvibes1_bendtwist_all.mp3;
    play icebowedvibes1_twist_all.mp3;
      play icebowedvibes1_icebowedvibes1_harmonictwist_all.mp3;
      play icebowedvibes1_icebowedvibes1_bendtwist_all.mp3;
      play icebowedvibes1_icebowedvibes1_twist_all.mp3;
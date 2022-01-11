mkdir crow1_1641582014050;
    bash crow1_threadscore_1641582014050.sh;
    mv crow1_bendthread_*.mp3 crow1_1641582014050;
    mv crow1_thread_*.mp3 crow1_1641582014050;
    mv crow1_threadscore_1641582014050.sh crow1_1641582014050;
    mv crow1_threadscore_1641582014050.js crow1_1641582014050;
      cp thread016.js crow1_1641582014050;
      cp thread016_nextsteps_1641582014050.sh crow1_1641582014050;
      cd crow1_1641582014050;
    sox -m crow1_thread_*.mp3 crow1_harmonictwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m crow1_bendthread_*.mp3 crow1_bendtwist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -m crow1*thread_*.mp3 crow1_twist_all.mp3  gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%; 
    sox -m crow1_thread_000.mp3 crow1_bendthread_000.mp3 crow1_bendtwist_000.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_001.mp3 crow1_bendthread_001.mp3 crow1_bendtwist_001.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_002.mp3 crow1_bendthread_002.mp3 crow1_bendtwist_002.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_003.mp3 crow1_bendthread_003.mp3 crow1_bendtwist_003.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_004.mp3 crow1_bendthread_004.mp3 crow1_bendtwist_004.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_005.mp3 crow1_bendthread_005.mp3 crow1_bendtwist_005.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_006.mp3 crow1_bendthread_006.mp3 crow1_bendtwist_006.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -m crow1_thread_007.mp3 crow1_bendthread_007.mp3 crow1_bendtwist_007.mp3 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
      
    sox -M "|sox  -v 0.8 crow1_harmonictwist_all.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_harmonictwist_all.mp3 -c1 -p norm -4" crow1_crow1_harmonictwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 crow1_bendtwist_all.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendtwist_all.mp3 -c1 -p norm -4" crow1_crow1_bendtwist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    sox -M "|sox  -v 0.8 crow1_harmonictwist_all.mp3 -c1 -p pad 1.8 0 norm -4" "|sox -v 0.8 crow1_bendtwist_all.mp3 -c1 -p norm -4" crow1_crow1_twist_all.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2 silence -l 1 0.1 1% -1 2.0 1%;
    
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_000.mp3 -c1 -p norm -4" crow1_crow1_threads_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_000_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_001.mp3 -c1 -p norm -4" crow1_crow1_threads_000_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_001_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_001_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_002.mp3 -c1 -p norm -4" crow1_crow1_threads_000_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_002_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_002_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_003.mp3 -c1 -p norm -4" crow1_crow1_threads_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_003_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_000.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_003_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_000.mp3 -c1 -p norm -4" crow1_crow1_threads_001_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_000_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_000_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_001.mp3 -c1 -p norm -4" crow1_crow1_threads_001_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_001_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_001_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_002.mp3 -c1 -p norm -4" crow1_crow1_threads_001_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_002_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_002_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_003.mp3 -c1 -p norm -4" crow1_crow1_threads_001_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_003_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_001.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_003_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_000.mp3 -c1 -p norm -4" crow1_crow1_threads_002_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_000_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_000_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_001.mp3 -c1 -p norm -4" crow1_crow1_threads_002_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_001_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_001_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_002.mp3 -c1 -p norm -4" crow1_crow1_threads_002_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_002_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_002_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_003.mp3 -c1 -p norm -4" crow1_crow1_threads_002_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_003_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_002.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_003_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_000.mp3 -c1 -p norm -4" crow1_crow1_threads_003_000.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_000.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_000_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_001.mp3 -c1 -p norm -4" crow1_crow1_threads_003_001.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_001_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_001.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_001_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_002.mp3 -c1 -p norm -4" crow1_crow1_threads_003_002.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_002_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_002.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_002_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.3 0 norm -4" "|sox -v 0.8 crow1_thread_003.mp3 -c1 -p norm -4" crow1_crow1_threads_003_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_bendthread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_bendthreads_003_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    sox -M "|sox  -v 0.8 crow1_thread_003.mp3 -c1 -p pad 1.4 0 norm -4" "|sox -v 0.8 crow1_bendthread_003.mp3 -c1 -p norm -4" crow1_crow1_thread_bendthread_003_003.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 gain -4 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801 silence -l 1 0.1 1% -1 2.0 1% norm -2;
    play crow1_harmonictwist_all.mp3;
    play crow1_bendtwist_all.mp3;
    play crow1_twist_all.mp3;
      play crow1_crow1_harmonictwist_all.mp3;
      play crow1_crow1_bendtwist_all.mp3;
      play crow1_crow1_twist_all.mp3;
      
        play crow1_crow1_threads_000_000.mp3;
        play crow1_crow1_bendthreads_000_000.mp3;
        play crow1_crow1_thread_bendthread_000_000.mp3;
        
        play crow1_crow1_threads_000_001.mp3;
        play crow1_crow1_bendthreads_001_000.mp3;
        play crow1_crow1_thread_bendthread_001_000.mp3;
        
        play crow1_crow1_threads_000_002.mp3;
        play crow1_crow1_bendthreads_002_000.mp3;
        play crow1_crow1_thread_bendthread_002_000.mp3;
        
        play crow1_crow1_threads_000_003.mp3;
        play crow1_crow1_bendthreads_003_000.mp3;
        play crow1_crow1_thread_bendthread_003_000.mp3;
        
        play crow1_crow1_threads_001_000.mp3;
        play crow1_crow1_bendthreads_000_001.mp3;
        play crow1_crow1_thread_bendthread_000_001.mp3;
        
        play crow1_crow1_threads_001_001.mp3;
        play crow1_crow1_bendthreads_001_001.mp3;
        play crow1_crow1_thread_bendthread_001_001.mp3;
        
        play crow1_crow1_threads_001_002.mp3;
        play crow1_crow1_bendthreads_002_001.mp3;
        play crow1_crow1_thread_bendthread_002_001.mp3;
        
        play crow1_crow1_threads_001_003.mp3;
        play crow1_crow1_bendthreads_003_001.mp3;
        play crow1_crow1_thread_bendthread_003_001.mp3;
        
        play crow1_crow1_threads_002_000.mp3;
        play crow1_crow1_bendthreads_000_002.mp3;
        play crow1_crow1_thread_bendthread_000_002.mp3;
        
        play crow1_crow1_threads_002_001.mp3;
        play crow1_crow1_bendthreads_001_002.mp3;
        play crow1_crow1_thread_bendthread_001_002.mp3;
        
        play crow1_crow1_threads_002_002.mp3;
        play crow1_crow1_bendthreads_002_002.mp3;
        play crow1_crow1_thread_bendthread_002_002.mp3;
        
        play crow1_crow1_threads_002_003.mp3;
        play crow1_crow1_bendthreads_003_002.mp3;
        play crow1_crow1_thread_bendthread_003_002.mp3;
        
        play crow1_crow1_threads_003_000.mp3;
        play crow1_crow1_bendthreads_000_003.mp3;
        play crow1_crow1_thread_bendthread_000_003.mp3;
        
        play crow1_crow1_threads_003_001.mp3;
        play crow1_crow1_bendthreads_001_003.mp3;
        play crow1_crow1_thread_bendthread_001_003.mp3;
        
        play crow1_crow1_threads_003_002.mp3;
        play crow1_crow1_bendthreads_002_003.mp3;
        play crow1_crow1_thread_bendthread_002_003.mp3;
        
        play crow1_crow1_threads_003_003.mp3;
        play crow1_crow1_bendthreads_003_003.mp3;
        play crow1_crow1_thread_bendthread_003_003.mp3;
        
echo module.exports = [ > outsoundfiles.js; for file in ?(*.mp3|*.wav); do soxi -D $file | read d ; soxi -c $file | read c ; soxi -r $file | read r ; soxi -t $file | read t ; soxi -p $file | read p ;echo {id:\"${file%.*}\", file:\"$file\", url:\"https://storage.googleapis.com/soundfactory/crow1_1641582014050/$file\", duration:$d, nchannels:$c, rate:$r, type:\"$t\", bitrate:$p}, >> outsoundfiles.js; done; echo ] >> outsoundfiles.js;
echo cd crow1_1641582014050;
echo bash thread016_nextsteps_1641582014050.sh;
echo gsutil -m cp -r crow1_1641582014050 gs://soundfactory/

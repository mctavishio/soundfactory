mkdir bells_1641081868413;
    bash bell11_threadscore_1641081868413.sh;
    mv bell11_bendthread_*.mp3 bells_1641081868413;
    mv bell11_thread_*.mp3 bells_1641081868413;
    mv bell11_threadscore_1641081868413.sh bells_1641081868413;
    mv bell11_threadscore_1641081868413.js bells_1641081868413;
    bash bell13_threadscore_1641081868413.sh;
    mv bell13_bendthread_*.mp3 bells_1641081868413;
    mv bell13_thread_*.mp3 bells_1641081868413;
    mv bell13_threadscore_1641081868413.sh bells_1641081868413;
    mv bell13_threadscore_1641081868413.js bells_1641081868413;
    bash bell2_threadscore_1641081868413.sh;
    mv bell2_bendthread_*.mp3 bells_1641081868413;
    mv bell2_thread_*.mp3 bells_1641081868413;
    mv bell2_threadscore_1641081868413.sh bells_1641081868413;
    mv bell2_threadscore_1641081868413.js bells_1641081868413;
    bash bell6_threadscore_1641081868413.sh;
    mv bell6_bendthread_*.mp3 bells_1641081868413;
    mv bell6_thread_*.mp3 bells_1641081868413;
    mv bell6_threadscore_1641081868413.sh bells_1641081868413;
    mv bell6_threadscore_1641081868413.js bells_1641081868413;
    bash bell9_threadscore_1641081868413.sh;
    mv bell9_bendthread_*.mp3 bells_1641081868413;
    mv bell9_thread_*.mp3 bells_1641081868413;
    mv bell9_threadscore_1641081868413.sh bells_1641081868413;
    mv bell9_threadscore_1641081868413.js bells_1641081868413;
    bash longbell_threadscore_1641081868413.sh;
    mv longbell_bendthread_*.mp3 bells_1641081868413;
    mv longbell_thread_*.mp3 bells_1641081868413;
    mv longbell_threadscore_1641081868413.sh bells_1641081868413;
    mv longbell_threadscore_1641081868413.js bells_1641081868413;
    cp *.js bells_1641081868413;
    cd bells_1641081868413;
    sox -m bell11_thread_*.mp3 bell11_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell11_bendthread_*.mp3 bell11_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell11*thread_*.mp3 bell11_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m bell11_thread_*.mp3 -p fade 0 -0 14 norm -3" bell11_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell11_bendthread_*.mp3 -p fade 0 -0 14 norm -3" bell11_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell11*thread_*.mp3 -p fade 0 -0 14 norm -3" bell11_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    cd bells_1641081868413;
    sox -m bell13_thread_*.mp3 bell13_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell13_bendthread_*.mp3 bell13_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell13*thread_*.mp3 bell13_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m bell13_thread_*.mp3 -p fade 0 -0 14 norm -3" bell13_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell13_bendthread_*.mp3 -p fade 0 -0 14 norm -3" bell13_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell13*thread_*.mp3 -p fade 0 -0 14 norm -3" bell13_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    cd bells_1641081868413;
    sox -m bell2_thread_*.mp3 bell2_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell2_bendthread_*.mp3 bell2_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell2*thread_*.mp3 bell2_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m bell2_thread_*.mp3 -p fade 0 -0 14 norm -3" bell2_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell2_bendthread_*.mp3 -p fade 0 -0 14 norm -3" bell2_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell2*thread_*.mp3 -p fade 0 -0 14 norm -3" bell2_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    cd bells_1641081868413;
    sox -m bell6_thread_*.mp3 bell6_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell6_bendthread_*.mp3 bell6_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell6*thread_*.mp3 bell6_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m bell6_thread_*.mp3 -p fade 0 -0 14 norm -3" bell6_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell6_bendthread_*.mp3 -p fade 0 -0 14 norm -3" bell6_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell6*thread_*.mp3 -p fade 0 -0 14 norm -3" bell6_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    cd bells_1641081868413;
    sox -m bell9_thread_*.mp3 bell9_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell9_bendthread_*.mp3 bell9_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m bell9*thread_*.mp3 bell9_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m bell9_thread_*.mp3 -p fade 0 -0 14 norm -3" bell9_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell9_bendthread_*.mp3 -p fade 0 -0 14 norm -3" bell9_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m bell9*thread_*.mp3 -p fade 0 -0 14 norm -3" bell9_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    cd bells_1641081868413;
    sox -m longbell_thread_*.mp3 longbell_harmonictwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m longbell_bendthread_*.mp3 longbell_bendtwist_all.mp3 fade 0 -0 14 norm -2;
    sox -m longbell*thread_*.mp3 longbell_twist_all.mp3 fade 0 -0 14 norm -2;
    sox "|sox -m longbell_thread_*.mp3 -p fade 0 -0 14 norm -3" longbell_harmonictwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m longbell_bendthread_*.mp3 -p fade 0 -0 14 norm -3" longbell_bendtwist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox "|sox -m longbell*thread_*.mp3 -p fade 0 -0 14 norm -3" longbell_twist_all_fm.mp3 gain -3 sinc -n 29 -b 100 8000 mcompand "0.005,0.1 -47,-40,-34,-34,-17,-33" 100 "0.003,0.05 -47,-40,-34,-34,-17,-33" 400 "0.000625,0.0125 -47,-40,-34,-34,-15,-33" 1600 "0.0001,0.025 -47,-40,-34,-34,-31,-31,-0,-30" 6400 "0,0.025 -38,-31,-28,-28,-0,-25" gain 15 highpass 22 highpass 22 sinc -n 255 -b 16 -17500 gain 8 lowpass -1 17801;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" bell11_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell11_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell11_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" bell11_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell11_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell11_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" bell11_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell11_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell11_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" bell11_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell11_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell11_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" bell11_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell11_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell11_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" bell11_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell11_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell11_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" bell13_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell13_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell13_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" bell13_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell13_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell13_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" bell13_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell13_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell13_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" bell13_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell13_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell13_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" bell13_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell13_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell13_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" bell13_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell13_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell13_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" bell2_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell2_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell2_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" bell2_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell2_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell2_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" bell2_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell2_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell2_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" bell2_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell2_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell2_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" bell2_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell2_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell2_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" bell2_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell2_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell2_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" bell6_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell6_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell6_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" bell6_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell6_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell6_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" bell6_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell6_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell6_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" bell6_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell6_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell6_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" bell6_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell6_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell6_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" bell6_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell6_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell6_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" bell9_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell9_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" bell9_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" bell9_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell9_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" bell9_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" bell9_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell9_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" bell9_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" bell9_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell9_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" bell9_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" bell9_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell9_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" bell9_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" bell9_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell9_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" bell9_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_harmonictwist_all_fm.mp3 -c1 -p" longbell_bell11_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" longbell_bell11_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell11_bendtwist_all_fm.mp3 -c1 -p" longbell_bell11_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_harmonictwist_all_fm.mp3 -c1 -p" longbell_bell13_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" longbell_bell13_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell13_bendtwist_all_fm.mp3 -c1 -p" longbell_bell13_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_harmonictwist_all_fm.mp3 -c1 -p" longbell_bell2_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" longbell_bell2_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell2_bendtwist_all_fm.mp3 -c1 -p" longbell_bell2_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_harmonictwist_all_fm.mp3 -c1 -p" longbell_bell6_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" longbell_bell6_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell6_bendtwist_all_fm.mp3 -c1 -p" longbell_bell6_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_harmonictwist_all_fm.mp3 -c1 -p" longbell_bell9_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" longbell_bell9_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 bell9_bendtwist_all_fm.mp3 -c1 -p" longbell_bell9_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" longbell_longbell_harmonictwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" longbell_longbell_bendtwist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    sox -M "|sox  -v 0.8 longbell_harmonictwist_all_fm.mp3 -c1 -p" "|sox -v 0.8 longbell_bendtwist_all_fm.mp3 -c1 -p" longbell_longbell_twist_all_fm.mp3 remix 1v0.7,2v0.3 1v0.3,2v0.7 norm -2;
    
    play bell11_harmonictwist_all_fm.mp3;
    play bell11_bendtwist_all_fm.mp3;
    play bell11_twist_all_fm.mp3;
      play bell11_bell11_harmonictwist_all_fm.mp3;
      play bell11_bell11_bendtwist_all_fm.mp3;
      play bell11_bell11_twist_all_fm.mp3;
      play bell11_bell13_harmonictwist_all_fm.mp3;
      play bell11_bell13_bendtwist_all_fm.mp3;
      play bell11_bell13_twist_all_fm.mp3;
      play bell11_bell2_harmonictwist_all_fm.mp3;
      play bell11_bell2_bendtwist_all_fm.mp3;
      play bell11_bell2_twist_all_fm.mp3;
      play bell11_bell6_harmonictwist_all_fm.mp3;
      play bell11_bell6_bendtwist_all_fm.mp3;
      play bell11_bell6_twist_all_fm.mp3;
      play bell11_bell9_harmonictwist_all_fm.mp3;
      play bell11_bell9_bendtwist_all_fm.mp3;
      play bell11_bell9_twist_all_fm.mp3;
      play bell11_longbell_harmonictwist_all_fm.mp3;
      play bell11_longbell_bendtwist_all_fm.mp3;
      play bell11_longbell_twist_all_fm.mp3;
    play bell13_harmonictwist_all_fm.mp3;
    play bell13_bendtwist_all_fm.mp3;
    play bell13_twist_all_fm.mp3;
      play bell13_bell11_harmonictwist_all_fm.mp3;
      play bell13_bell11_bendtwist_all_fm.mp3;
      play bell13_bell11_twist_all_fm.mp3;
      play bell13_bell13_harmonictwist_all_fm.mp3;
      play bell13_bell13_bendtwist_all_fm.mp3;
      play bell13_bell13_twist_all_fm.mp3;
      play bell13_bell2_harmonictwist_all_fm.mp3;
      play bell13_bell2_bendtwist_all_fm.mp3;
      play bell13_bell2_twist_all_fm.mp3;
      play bell13_bell6_harmonictwist_all_fm.mp3;
      play bell13_bell6_bendtwist_all_fm.mp3;
      play bell13_bell6_twist_all_fm.mp3;
      play bell13_bell9_harmonictwist_all_fm.mp3;
      play bell13_bell9_bendtwist_all_fm.mp3;
      play bell13_bell9_twist_all_fm.mp3;
      play bell13_longbell_harmonictwist_all_fm.mp3;
      play bell13_longbell_bendtwist_all_fm.mp3;
      play bell13_longbell_twist_all_fm.mp3;
    play bell2_harmonictwist_all_fm.mp3;
    play bell2_bendtwist_all_fm.mp3;
    play bell2_twist_all_fm.mp3;
      play bell2_bell11_harmonictwist_all_fm.mp3;
      play bell2_bell11_bendtwist_all_fm.mp3;
      play bell2_bell11_twist_all_fm.mp3;
      play bell2_bell13_harmonictwist_all_fm.mp3;
      play bell2_bell13_bendtwist_all_fm.mp3;
      play bell2_bell13_twist_all_fm.mp3;
      play bell2_bell2_harmonictwist_all_fm.mp3;
      play bell2_bell2_bendtwist_all_fm.mp3;
      play bell2_bell2_twist_all_fm.mp3;
      play bell2_bell6_harmonictwist_all_fm.mp3;
      play bell2_bell6_bendtwist_all_fm.mp3;
      play bell2_bell6_twist_all_fm.mp3;
      play bell2_bell9_harmonictwist_all_fm.mp3;
      play bell2_bell9_bendtwist_all_fm.mp3;
      play bell2_bell9_twist_all_fm.mp3;
      play bell2_longbell_harmonictwist_all_fm.mp3;
      play bell2_longbell_bendtwist_all_fm.mp3;
      play bell2_longbell_twist_all_fm.mp3;
    play bell6_harmonictwist_all_fm.mp3;
    play bell6_bendtwist_all_fm.mp3;
    play bell6_twist_all_fm.mp3;
      play bell6_bell11_harmonictwist_all_fm.mp3;
      play bell6_bell11_bendtwist_all_fm.mp3;
      play bell6_bell11_twist_all_fm.mp3;
      play bell6_bell13_harmonictwist_all_fm.mp3;
      play bell6_bell13_bendtwist_all_fm.mp3;
      play bell6_bell13_twist_all_fm.mp3;
      play bell6_bell2_harmonictwist_all_fm.mp3;
      play bell6_bell2_bendtwist_all_fm.mp3;
      play bell6_bell2_twist_all_fm.mp3;
      play bell6_bell6_harmonictwist_all_fm.mp3;
      play bell6_bell6_bendtwist_all_fm.mp3;
      play bell6_bell6_twist_all_fm.mp3;
      play bell6_bell9_harmonictwist_all_fm.mp3;
      play bell6_bell9_bendtwist_all_fm.mp3;
      play bell6_bell9_twist_all_fm.mp3;
      play bell6_longbell_harmonictwist_all_fm.mp3;
      play bell6_longbell_bendtwist_all_fm.mp3;
      play bell6_longbell_twist_all_fm.mp3;
    play bell9_harmonictwist_all_fm.mp3;
    play bell9_bendtwist_all_fm.mp3;
    play bell9_twist_all_fm.mp3;
      play bell9_bell11_harmonictwist_all_fm.mp3;
      play bell9_bell11_bendtwist_all_fm.mp3;
      play bell9_bell11_twist_all_fm.mp3;
      play bell9_bell13_harmonictwist_all_fm.mp3;
      play bell9_bell13_bendtwist_all_fm.mp3;
      play bell9_bell13_twist_all_fm.mp3;
      play bell9_bell2_harmonictwist_all_fm.mp3;
      play bell9_bell2_bendtwist_all_fm.mp3;
      play bell9_bell2_twist_all_fm.mp3;
      play bell9_bell6_harmonictwist_all_fm.mp3;
      play bell9_bell6_bendtwist_all_fm.mp3;
      play bell9_bell6_twist_all_fm.mp3;
      play bell9_bell9_harmonictwist_all_fm.mp3;
      play bell9_bell9_bendtwist_all_fm.mp3;
      play bell9_bell9_twist_all_fm.mp3;
      play bell9_longbell_harmonictwist_all_fm.mp3;
      play bell9_longbell_bendtwist_all_fm.mp3;
      play bell9_longbell_twist_all_fm.mp3;
    play longbell_harmonictwist_all_fm.mp3;
    play longbell_bendtwist_all_fm.mp3;
    play longbell_twist_all_fm.mp3;
      play longbell_bell11_harmonictwist_all_fm.mp3;
      play longbell_bell11_bendtwist_all_fm.mp3;
      play longbell_bell11_twist_all_fm.mp3;
      play longbell_bell13_harmonictwist_all_fm.mp3;
      play longbell_bell13_bendtwist_all_fm.mp3;
      play longbell_bell13_twist_all_fm.mp3;
      play longbell_bell2_harmonictwist_all_fm.mp3;
      play longbell_bell2_bendtwist_all_fm.mp3;
      play longbell_bell2_twist_all_fm.mp3;
      play longbell_bell6_harmonictwist_all_fm.mp3;
      play longbell_bell6_bendtwist_all_fm.mp3;
      play longbell_bell6_twist_all_fm.mp3;
      play longbell_bell9_harmonictwist_all_fm.mp3;
      play longbell_bell9_bendtwist_all_fm.mp3;
      play longbell_bell9_twist_all_fm.mp3;
      play longbell_longbell_harmonictwist_all_fm.mp3;
      play longbell_longbell_bendtwist_all_fm.mp3;
      play longbell_longbell_twist_all_fm.mp3;
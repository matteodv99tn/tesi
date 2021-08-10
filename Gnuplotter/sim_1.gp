set terminal qt

set style line 1 lc rgb "#004C99" lw 5 
set style line 10 lc rgb "#004C99" lw 3 
set style line 11 lc rgb "#FF8000" lw 3 
set style line 12 lc rgb "#009900" lw 3 
set style line 13 lc rgb "#004C99" lw 3 
set style line 14 lc rgb "#004C99" lw 3 
set style line 15 lc rgb "#004C99" lw 3 

set title ""
set xlabel "$V_{ds}$ $[V]$"
set ylabel "$I$ $[\\mu A]$"

plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:2 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:3 with lines ls 11 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:4 with lines ls 12 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:5 with lines ls 13 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:6 with lines ls 14 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:7 with lines ls 15 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/sim_1.dat' using 1:8 with lines ls 16 title ''

pause mouse

set terminal epslatex size 10cm,6.5cm 
set output 'sim_1.tex'
replot
set output

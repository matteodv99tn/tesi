reset
set terminal qt

set style line 1 lc rgb "#004C99" lw 5 
set style line 10 lc rgb "#004C99" lw 3 
set style line 11 lc rgb "#FF8000" lw 3 
set style line 12 lc rgb "#009900" lw 3 
set style line 13 lc rgb "#004C99" lw 3 
set style line 14 lc rgb "#004C99" lw 3 
set style line 15 lc rgb "#004C99" lw 3 

set grid lc rgb "#C0C0C0" lt 2 dt 2 lw 1

set title ""
set xlabel "tempo $[ns]$"
set ylabel "$V_{out}$ $[V]$"
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/vel_trans_t.dat' notitle with lines ls 1

pause mouse

set terminal epslatex size 10cm,5cm 
set output 'vel_trans_t.tex'
replot
set output

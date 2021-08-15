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
set xtics 0.3
set ytics 0,0.3,1.8
set yrange [-0.2:2]

set title ""
set xlabel "$_{in}$ $[V]$"
set ylabel "$V_{out}$ $[V]$"
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/not_caratt.dat' notitle with lines ls 1

pause mouse

set terminal epslatex size 8cm,4cm 
set output 'not_caratt.tex'
replot
set output

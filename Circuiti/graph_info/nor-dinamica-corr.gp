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

set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 1, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.6,1.8

set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$V_{out}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nor-dinamica-corr.dat' using 1:2 with lines ls 10 notitle
unset multiplot



pause mouse

set terminal epslatex size 10cm,3.5cm 
set output 'nor-dinamica-corr.tex'
set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 1, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.6,1.8

set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$V_{out}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nor-dinamica-corr.dat' using 1:2 with lines ls 10 notitle
unset multiplot


set output

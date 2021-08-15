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
set xtics 1.5

set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 3, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.6,1.8

set ylabel '$V_{out}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:2 with lines ls 10 notitle
set ylabel '$V_{in,1}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:3 with lines ls 11 notitle
set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$V_{in,2}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:4 with lines ls 12 notitle
unset multiplot



pause mouse

set terminal epslatex size 10cm,7cm 
set output 'nand-dinamica.tex'
set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 3, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.6,1.8

set ylabel '$V_{out}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:2 with lines ls 10 notitle
set ylabel '$V_{in,1}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:3 with lines ls 11 notitle
set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$V_{in,2}$ $[V]$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/nand-dinamica.dat' using 1:4 with lines ls 12 notitle
unset multiplot


set output

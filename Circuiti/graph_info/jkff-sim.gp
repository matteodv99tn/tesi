reset
set terminal qt

set style line 1 lc rgb "#004C99" lw 5 
set style line 10 lc rgb "#004C99" lw 3 
set style line 11 lc rgb "#FF8000" lw 3 
set style line 12 lc rgb "#009900" lw 3 
set style line 13 lc rgb "#CC00CC" lw 3 
set style line 14 lc rgb "#004C99" lw 3 
set style line 15 lc rgb "#004C99" lw 3 

set grid lc rgb "#C0C0C0" lt 2 dt 2 lw 1

set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 4, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.9,1.8

set ylabel '$Q$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:2 with lines ls 10 notitle
set ylabel '$CLK$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:3 with lines ls 11 notitle
set ylabel '$S$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:4 with lines ls 12 notitle
set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$R$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:5 with lines ls 13 notitle
unset multiplot



pause mouse

set terminal epslatex size 10cm,6cm 
set output 'jkff-sim.tex'
set tmargin 1
set bmargin 1
set lmargin 2
set rmargin 2
set multiplot layout 4, 1 margins 0.1,0.95,.15,.99 spacing 0,0
set yrange [-0.2:2]
set xlabel ''
set xtics format ''
set ytics 0,0.9,1.8

set ylabel '$Q$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:2 with lines ls 10 notitle
set ylabel '$CLK$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:3 with lines ls 11 notitle
set ylabel '$S$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:4 with lines ls 12 notitle
set xtics format "%g"
set xlabel 'tempo $[ns]$'
set ylabel '$R$'
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/jkff-sim.dat' using 1:5 with lines ls 13 notitle
unset multiplot


set output

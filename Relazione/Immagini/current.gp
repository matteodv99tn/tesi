reset
set terminal qt

set style line 1 lc rgb "#004C99" lw 5 
set style line 10 lc rgb "#004C99" lw 3 
set style line 11 lc rgb "#FF8000" lw 3 
set style line 12 lc rgb "#009900" lw 3 
set style line 13 lc rgb "#004C99" lw 3 
set style line 14 lc rgb "#004C99" lw 3 
set style line 15 lc rgb "#004C99" lw 3 

set title ""
set xlabel "Tensione $V_{ds}$ $[V]$"
set ylabel "Corrente $I$ $[mA]$"
set grid lc rgb "#C0C0C0" lt 2 dt 2 lw 1
set yrange [-30:270]
plot '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:2 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:3 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:4 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:5 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:6 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:7 with lines ls 10 title '', '/home/matteo/Documenti/tesi/Circuiti/dat_files/caratt_statica.dat' using 1:8 with lines ls 10 title ''

pause mouse

set terminal epslatex size 10cm,6cm header \
	"\\newcommand{\\ft}[0]{\\footnotesize}"

set label 2 '\ft $V_{gs}=1.8V$'		at 0.9,235 	rotate by 5 	center tc ls 1	
set label 3 '\ft $V_{gs}=1.5V$'		at 0.9,165	rotate by 4 	center tc ls 1
set label 4 '\ft $V_{gs}=1.2V$'		at 0.9,95 	rotate by 3 	center tc ls 1
set label 5 '\ft $V_{gs}=0.9V$'		at 0.9,35 	rotate by 1 	center tc ls 1
set label 6 '\ft $V_{gs}<0.8V$'		at 0.9,-17 	rotate by 0 	center tc ls 1


set output 'caratt_statica.tex'
replot
set output


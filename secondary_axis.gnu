reset

set terminal svg size 1300,900 enhanced font 'TimesNewRoman,30'
set output '1.svg'

set border linewidth 2


set style line 1 linecolor 2 linetype 3 linewidth 3 pointtype 20  pointsize 0.5 
set style line 2 linecolor rgb 'red' linetype 1 linewidth 2 pointtype 15 pointsize 0.4



set errorbars 0.5 

# Axes label 
set xlabel  '{/:Bold number }' offset 0,0.5,0
set ylabel '{/:Bold Primary data}' offset 2,0,0
set y2label '{/:Bold Secondary data}' offset -2.5,0,0 rotate by 270



#set autoscale  y
#set autoscale y2

sset xrange [0:1]
set x2range [0:1]
set yrange [0:150]
set y2range [0:1130]

set tics scale 0.75
set grid ytics
set grid xtics

set ytics nomirror
set y2tics
plot '1.txt' using 3:1:2  notitle with yerrorbars linestyle 1 dashtype '__' axes x1y1, \
     '2.txt' using 3:1:2  notitle with yerrorbars linestyle 2 axes x2y2

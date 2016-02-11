set timefmt "%m/%d/%Y"
set format x "%m/%d"
set xdata time

set grid
set autoscale y
set title "Messages in \"Chat\" over time"
set xlabel "Date"
set ylabel "Ammount of Messages"
set ytic auto
set logscale y 10
unset label
set style data lines

p	"date.dat" u 2:1 t "Nachrichten"

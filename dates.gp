set timefmt "%d/%m/%Y"
set format x "%d/%m"
set xdata time

set grid
set autoscale y
set title "Messages in \"Chat\" over time"
set xlabel "Date"
set ylabel "Ammount of Messages"
set ytic auto
unset label
set style data lines

p	"date.dat" u 2:1 notitle 

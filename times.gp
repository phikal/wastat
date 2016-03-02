set timefmt "%H:%M"
set format x "%H:%M"
set xdata time

set grid
set autoscale y
set title "Total messages in \"Chat\" over all days"
set xlabel "Time"
set ylabel "Ammount of Messages"
set ytic auto
set xtic auto
set style data lines

p	"time.dat" u 2:1 notitle 

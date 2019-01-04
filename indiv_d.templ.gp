set term png
set output "indiv_d.png"

set timefmt "%d/%m/%Y"
set format x "%d/%m"
set xdata time

set grid
set autoscale y
set title "Amount of messages in \"chat\" over time"
set xlabel "Date"
set ylabel "Message count"
set ytic auto
unset log
unset label
set style data lines


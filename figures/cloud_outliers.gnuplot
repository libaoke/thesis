set term pdfcairo font "Times New Roman,12"
set output 'cloud_outliers.pdf'

unset xtics
set xlabel "并发任务"
set ylabel "运行时间（秒）"
plot 'cloud_outliers.dat' u 1 t ""
quit

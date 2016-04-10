set term pdfcairo font "Times New Roman,12"
set output 'migrationtime.pdf'
#set key autotitle columnheader
set style data histogram
#set style histogram rowstacked
set style fill transparent pattern 1 border
set boxwidth 0.9
set ylabel "时间 (秒)"
set xlabel "内存大小 (MB)" 
plot 'migrationtime.dat' using 2:xtic(1) lc rgb "blue" t "迁移时间"
quit

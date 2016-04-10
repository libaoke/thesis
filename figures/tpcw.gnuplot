set term pdfcairo font "Times New Roman,12"
set output 'tpcw.pdf'
set style line 1 lt 1 lw 2 lc rgb "red" pt 8 pi 1 ps 1
set style line 2 lt 1 lw 2 lc rgb "dark-yellow" pt 4 pi 1 ps 1
set style line 3 lt 3 lw 2 lc rgb "black" pt 3 pi 1 ps 1
set style line 4 lt 1 lw 2 lc rgb "dark-magenta" pt 2 pi 1 ps 1
set style line 5 lt 5 lw 2 lc rgb "blue" pt 5 pi 1 ps 1
set style line 6 lt 6 lw 2 lc rgb "#006400" pt 6 pi 1 ps 1
#set key inside at 5.5,0.986 vertical Right noreverse noenhanced autotitles box
set datafile missing '-'
set ylabel "平均响应时间（毫秒）"
set xlabel "并发顾客数"
set yrange [0:8000]
plot 'tpcw.dat' u 1:2 t "Gemini" w linespoints ls 1,"" u 1:3 t "Cloud Scheduler" w linespoints ls 5
quit

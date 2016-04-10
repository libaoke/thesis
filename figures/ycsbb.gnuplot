set term pdfcairo font "Times New Roman,12"
set output 'ycsbb.pdf'
set style line 1 lt 1 lw 2 lc rgb "red" pt 8 pi 1 ps 1
set style line 2 lt 1 lw 2 lc rgb "dark-yellow" pt 4 pi 1 ps 1
set style line 3 lt 3 lw 2 lc rgb "black" pt 3 pi 1 ps 1
set style line 4 lt 1 lw 2 lc rgb "dark-magenta" pt 2 pi 1 ps 1
set style line 5 lt 5 lw 2 lc rgb "blue" pt 5 pi 1 ps 1
set style line 6 lt 6 lw 2 lc rgb "#006400" pt 6 pi 1 ps 1
#set key inside at 5.5,0.986 vertical Right noreverse noenhanced autotitles box
set datafile missing '-'
set yrange [:20000]
set y2range [:6000]
#unset xtics
set ytics nomirror
set y2tics
set ylabel "吞吐量 (IOPS)"
set y2label "平均延迟 (微秒)"
set xlabel "并发线程数"
set logscale x
#unset xtics
plot 'ycsbb.dat' u 1:5:xtic(1) t "Gemini IOPS" w linespoints ls 1 axis x1y1,"" u 1:6 t "Gemini 读延迟" w linespoints ls 5 axis x1y2,"" u 1:7 t "Gemini 更新延迟" w linespoints ls 6 axis x1y2, "" u 1:2 t "EBS IOPS" w linespoints ls 3 axis x1y1, "" u 1:3 t "EBS 读延迟" w linespoints ls 2 axis x1y2, "" u 1:4 t "EBS 更新延迟" w linespoints ls 4 axis x1y2
quit

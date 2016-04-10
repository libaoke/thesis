set term pdfcairo font "Times New Roman,12"
set output 'ava-dls.pdf'
set style line 1 lt 1 lw 2 lc rgb "red" pt 8 pi 1 ps 1
set style line 3 lt 3 lw 2 lc rgb "black" pt 3 pi 1 ps 1
set style line 5 lt 5 lw 2 lc rgb "blue" pt 5 pi 1 ps 1
set style line 6 lt 6 lw 2 lc rgb "#006400" pt 6 pi 1 ps 1
set key inside at 12,0.9995 vertical Right noreverse noenhanced autotitles box
set datafile missing '-'
#set yrange [0.98:1.01]
#unset xtics
show xzeroaxis
set ylabel "可用性"
set xlabel "决策周期（小时）"
plot 'ava_dls.dat' u 1:2 t "Jupiter" w linespoints ls 1,'ava_dls.dat' u 1:3 t "Extra(0, 0.2)" w linespoints ls 5,'ava_dls.dat' u 1:4 t "Extra(2, 0.2)" w linespoints ls 6, 'ava_dls.dat' u 1:5 t "基线" w linespoints ls 3
quit

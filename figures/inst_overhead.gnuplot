set term pdfcairo font "Times New Roman,12"
set output 'inst_overhead.pdf'
set style histogram errorbars gap 2 lw 1
set style data histogram
set style fill transparent pattern 4 border
set boxwidth 0.8
set grid ytics
#unset xtics
#set xlabel ""
set ylabel "时间开销（秒）"
#set xtics rotate by -15
#set yrange [0:40]
#set logscale y
#set key inside left top noreverse noenhanced autotitles
plot 'inst_overhead.dat' u 2:3:4:xtic(1) t "无插桩", "" u 5:6:7:xtic(1) t "基于采样的插桩", "" u 8:9:10:xtic(1) t "插桩全部函数入口"
quit

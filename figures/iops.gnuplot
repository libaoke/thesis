set term pdfcairo font "Times New Roman,12"
set output 'iops.pdf'
set style histogram gap 2
set style data histogram
set style fill transparent pattern 4 border
set boxwidth 0.8
#set grid ytics
#unset xtics
set xlabel "存储配置"
set ylabel "IOPS (16 KB 大小)"
set xtics rotate by -15
set yrange [0:*]
#set key inside left top noreverse noenhanced autotitles
plot 'iops.dat' u 2:xtic(1) t "顺序读", "" u 3:xtic(1) t "顺序写", "" u 4:xtic(1) t "随机读", "" u 5:xtic(1) t "随机写"
quit

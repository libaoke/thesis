set term pdfcairo font "Times New Roman,12"
set output 'cloud_usage.pdf'
set style histogram gap 2
set style data histogram
set style fill transparent pattern 4 border
set boxwidth 0.8
set grid ytics
#unset xtics
#set xlabel ""
set ylabel "CPU使用率（%）"
#set xtics rotate by -15
set yrange [0:100]
#set logscale y
set key inside left top noreverse noenhanced autotitles
plot 'cloud_usage.dat' u 2:xtic(1) t "基线", "" u 3:xtic(1) t "投机执行", "" u 4:xtic(1) t "投机执行+任务克隆"
quit

set term pdfcairo font "Times New Roman,12"
set output 'cloud_completiontime.pdf'
set style histogram errorbars gap 2 lw 1
set style data histogram
set style fill transparent pattern 4 border
set boxwidth 0.8
set grid ytics
#unset xtics
#set xlabel ""
set ylabel "完成时间（归一化）"
#set xtics rotate by -15
set yrange [0:1.4]
#set logscale y
#set key inside left top noreverse noenhanced autotitles
plot 'cloud_completiontime.dat' u ($2/$2):($3/$2):($4/$2):xtic(1) t "基线", "" u ($5/$2):($6/$2):($7/$2):xtic(1) t "投机执行", "" u ($8/$2):($9/$2):($10/$2):xtic(1) t "投机执行+任务克隆"
quit

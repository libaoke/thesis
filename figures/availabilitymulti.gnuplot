set term pdfcairo font "Times New Roman,12"
set output 'availabilitymulti.pdf'
set style histogram gap 2
set style data histogram
set style fill transparent pattern 4 border
set boxwidth 0.8
set grid ytics
#unset xtics
#set xlabel ""
set ylabel "不可用性 (%)"
#set xtics rotate by -15
set logscale y
#set key inside left top noreverse noenhanced autotitles
plot 'availabilitymulti.dat' u 2:xtic(1) t "Cloud Scheduler", "" u 4:xtic(1) t "Gemini 贪心", "" u 5:xtic(1) t "Gemini SD-MA"
quit

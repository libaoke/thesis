set term pdfcairo font "Times New Roman,12"
set output 'rr.pdf'
set boxwidth 0.7
set style fill transparent pattern 4 border lt -1
set key inside left top vertical Right noreverse noenhanced autotitles nobox
set style histogram clustered gap 1 title  offset character 0, 0, 0
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by 0  offset character 0, 0, 0 autojustify
set xtics  norangelimit font ",12"
set xtics   ()
set ylabel "成本（美元）"
plot 'rr.dat' using 2:xtic(1) ti col, '' u 3 ti col
quit

set term pdfcairo font "Times New Roman,12"
set output 'fp.pdf'
set boxwidth 0.9 absolute
set style fill transparent pattern 4 border lt -1
set key inside left top vertical Right noreverse noenhanced autotitles nobox
set style histogram clustered gap 1 title  offset character 0, 0, 0
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by 0  offset character 0, 0, 0 autojustify
set xtics  norangelimit font ",12"
set xtics   ()
set ylabel "竞价不足失效概率"
plot 'fp.dat' using (1-$2):xtic(1) ti col, '' u (1-$3) ti col, '' u (1-$4) ti col, '' u (1-$5) ti col, '' u (1-$6) ti col
quit

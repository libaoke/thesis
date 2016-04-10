set term pdfcairo font "Times New Roman,12" dashed
set output 'replica_cap.pdf'
#unset xtics
set xlabel "用于多副本执行的竞价实例计算资源占比（%）"
set ylabel "归一化的作业完成时间"
#set xtics rotate by -15
set yrange [0:1]
#set logscale y
#set key inside left top noreverse noenhanced autotitles
plot 'replica_cap.dat' u 1:($2/316) t "Cap3" w linespoint, "" u 1:($3/492) t "GaussianBlur" w linespoint lt 2
quit

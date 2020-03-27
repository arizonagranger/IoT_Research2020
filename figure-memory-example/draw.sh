reset
set term postscript enhanced color size 22cm, 12cm font 10
set style data lines                                                    


set style fill solid 1.00 border 0
set output "| ps2pdf - Memoryoutput.pdf"
#set multiplot layout 1,2


#-------------------------------

#set size 0.5, 0.5
set xrange [0:761]
set yrange [0:8000]

set title font ",16" 
set title "Memory Usage of Jetson TX2" offset 0,1
set xlabel "Time index (s)" font ",16"  offset 0,-1
set ylabel "Memory (MB)" font ",16" offset -3


set grid y lw 2
set xtics nomirror font ",16"  
set xtic ("0" 0, "76" 76, "152" 152, "228" 228, "304" 304,"380"380,"456"456, "532"532, "608"608, "684"684, "760"760) font ",16" 


set ytics nomirror font ",16" 
#set ytic("12" 100,"13" 400)  font ",16" 

set key vertical right center outside font ",16"
set key spacing 1
set key samplen 2
set key width 2


plot "MemoryData-213.txt" using 2 w lines lt 1 lw 3 lc 7 t "Memtotal",\
		     "" using 3 w lines lt 1 lw 3 lc 6 t "Memfree",\
		     "" using 4 w lines lt 1 lw 3 lc 1 t "Cached",\
		     "" using 5 w lines lt 1 lw 3 lc 4 t "Active",\
		     "" using 6 w lines lt 1 lw 3 lc 3 t "Buffers",\
		     "" using 7 w lines lt 1 lw 3 lc 2 t "Inactive"







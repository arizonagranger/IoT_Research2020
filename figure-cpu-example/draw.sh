reset
set term postscript enhanced color size 25cm, 6cm font 10
set style data lines                                                    


set style fill solid 1.00 border 0
set output "| ps2pdf - CPUoutput.pdf"
#set multiplot layout 1,2


#-------------------------------

#set size 0.5, 0.5
set xrange [0:750]
set yrange [0:100]

set title font ",10" 
#set title "CPU Utilization of Nvidia Jetson TX2" offset 0,1
set xlabel "Time index (s)" font ",12"  offset 0,0
set ylabel "CPU Utilization Percentages" font ",12" offset -2


set grid y lw 2
set xtics nomirror font ",10"  
set xtic ("0" 0, "150" 150, "350" 350, "550" 550, "750" 750) font ",12" 


set ytics nomirror font ",12" 
#set ytic("12" 100,"13" 400)  font ",16" 

set key vertical right center outside font ",12"
set key spacing 1
set key samplen 2
set key width 2


plot "CPUUsageData-213.txt" using (($2+$3+$4+$5)) t "Idle%" w filledcurves x1 lc rgb "#B7DFB9" fs solid 1.00 border lc rgb "#109618",\
		 ""  using (($2+$3+$4)) t "Wait%" w filledcurves x1 lc rgb "#41B6C4" fs solid 1.00 border lc rgb "#3366CC",\
		 ""  using (($2+$3))    t "Sys%"  w filledcurves x1 lc rgb "#FE4324" fs solid 1.00 border lc rgb "#DC3912",\
		 ""  using (($2))         t "User%" w filledcurves x1 lc rgb "#FFE0B2" fs solid 1.00 border lc rgb "#FF9900"






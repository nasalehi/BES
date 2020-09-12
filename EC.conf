###################################################
#                 BES Algorithm                   #
###################################################

for { set i 0} {$i < [llength $tmax]} {incr i} {



outputname           "sa_[lindex $tmax $i]"
DCDfile              "sa_[lindex $tmax $i].dcd"
DCDfreq              $dcdstep_sa


minimize  0

set t $tmin
reinitvels $t
while {$t <= [lindex $tmax $i]} {
	langevinTemp  $t
	run  $upsteps
	incr t $updelta
}

set t [lindex $tmax $i]
langevinTemp  $t
run $upflatsteps

while {$t >= $tmin} {
	langevinTemp  $t
	run  $downsteps
	incr t -$downdelta
}

set t $tmin
langevinTemp  $t
run $downflatsteps
###############################

outputname           "md_[lindex $tmax $i]"
DCDfile              "md_[lindex $tmax $i].dcd"
DCDfreq              $dcdstep_md
################################
run $mdsteps

}


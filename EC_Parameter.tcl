# shared simulation options for BES

set tmax             {700 600 500 400 350}
set tmin             300
set temp             $tmin
#
#updelta --> heat-up temperature in relative with heating rate --> SA block
#downdelta --> cool-down temperature in relative with cooling rate --> SA block
#
set updelta          100
set downdelta        10
#
#upsteps --> number of md steps in each temperature of heat-up runs in relative with heating rate --> SA block
#downsteps --> number of md steps in each temperature of cool-down runs in relative with cooling rate --> SA block
# 
set upsteps          2000
set downsteps        2000
#
#upflatsteps --> number of md steps when heat-up run reaches to tmax --> SA block
#downflatsteps --> number of md steps when cool-down reaches to tmin --> SA block
#
set upflatsteps      0
set downflatsteps    10000
#
#mdsteps --> number of md steps in Tmin --> MD block
#
set mdsteps          50000
#
set dcdstep_sa       1000
set dcdstep_md       1000
set logstep          1000

source               base.conf
outputEnergies       $logstep
source               EC.conf

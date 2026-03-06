#!/bin/bash
mpi="gmx_mpi mdrun"

gmx_mpi grompp -f ./MD_MDP/water/nvt.mdp -c em.gro -r em.gro -p newtop.top -o nvt.tpr -n index_coupl.ndx ;
$mpi -v -deffnm nvt ;

gmx_mpi grompp -f ./MD_MDP/water/npt.mdp -c nvt.gro -r nvt.gro -p newtop.top -o npt.tpr -n index_coupl.ndx ;
$mpi -v -deffnm npt ;

mkdir lambdas
cd lambdas

gmx_mpi grompp -f ../MD_MDP/water/md_0.mdp -c ../npt.gro -r ../npt.gro -p ../newtop.top -t ../npt.cpt -n ../index_coupl.ndx -o lambda0.tpr
$mpi -v -deffnm lambda0 ;

for (( i=1; i<51; i++ ))
do
    j=`expr $i - 1`

	gmx_mpi grompp -f ../MD_MDP/water/md_$i.mdp -c lambda$j.gro -r lambda$j.gro -p ../newtop.top -t lambda$j.cpt -n ../index_coupl.ndx -o lambda$i.tpr
   	$mpi -v -deffnm lambda$i  ;

done; 
exit;

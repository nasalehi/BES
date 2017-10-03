Blockwise excursion sampling (BES)

Blockwise excursion sampling (BES) is a de novo computational protocol
to build heterogeneous structural ensembles for intrinsically disordered
proteins (IDPs). This method combines the strength of the simulated
annealing with short molecular dynamics simulations to quickly explore
local regions of the conformational space.

BES protocol needs a software for molecular dynamics simulations. Here,
tcl scripts of BES protocol was implemented for NAMD.

This directory includes the following folder and files:

Example ---> an example of BES for Amyloid beta

base.conf ---> contains basic config options for NAMD

EC.conf ---> tcl script of BES algorithm

EC_Parameter ---> a config file for EC.tcl script


This Algorithm and its use is described in the following publication:
Najmeh Salehi, Rohoullah Firouzi and Mohammad Hossein Karimi-Jafari,
Blockwise excursion sampling: efficient gen-eration of diverse structural
libraries for intrin-sically disordered proteins, ...,....



#!/bin/bash
./molcas.sh
wait
echo "Geo Opt completed"
./molcasf.sh
wait
echo "Geo Opt of final product completed"
cp Save/c5nh8-geo-Opt.xyz c5nh8-opt.xyz
./molcas-ts.sh
wait
echo "TS found"
./molcas-e.sh
wait
echo "excited states completed"

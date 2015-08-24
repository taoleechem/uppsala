#!/bin/bash
export Project=ch2o

source $HOME/.Molcas/molcasrc
export HomeDir=$PWD
export WorkDir=$MOLCAS_WORKDIR/$Project.$$
if [ -L "$HomeDir/Work" ]; then
  export WorkDir=$HomeDir/Work
 else
  ln -sfT $WorkDir $HomeDir/Work
fi

export MOLCAS_MEM=4000

rm -f $WorkDir/*
molcas $Project.input >& $Project.output

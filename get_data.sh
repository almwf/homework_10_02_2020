#!/bin/bash

source /scripts/block_state

echo `date +%Y-%m-%d-%H-%M`
# VAR1, VAR2 may be defined in dockerfile

BLOCK_STATE=($VAR1)
TYPE_VER_BLOCK=($VAR2)
MAX_ELEMENT=${#BLOCK_STATE[@]}

i=1
while [ $i -le $MAX_ELEMENT ]
	do
		block_state_funct
		type_funct
		ver_block=${TYPE_VER_BLOCK[`expr $i \* 2 + 1`]}
		echo "Слот $i блок $type_block_var версия $ver_block состояние $block_state_var"
		i=`expr $i + 1`
	done

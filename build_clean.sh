#!/bin/bash

KERNEL_DIR=${PWD}/kernel/hikey-linaro
OUT_DIR=${PWD}/out
CURRENT_DIR=${PWD}

if [ -e ${OUT_DIR} ]
then
	rm -rf ${OUT_DIR}
fi

if [ -e ${KERNEL_DIR} ]
then
	cd ${KERNEL_DIR} && make -j1 distclean
fi

cd ${CURRENT_DIR}

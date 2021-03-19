#!/bin/bash

#lay height moi nhat hien tai cua chain, o file log dong cuoi cung hien 'now state', trich xuat height tu dong nay
LATEST_HEIGHT=`tail -1 LOG/log0 | sed -r 's/.*hqc.height=(\S+).*/\1/'`

echo $LATEST_HEIGHT
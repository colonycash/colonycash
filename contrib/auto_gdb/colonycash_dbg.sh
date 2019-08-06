#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.colonycashcore/colonycashd.pid file instead
colonycash_pid=$(<~/.colonycashcore/testnet3/colonycashd.pid)
sudo gdb -batch -ex "source debug.gdb" colonycashd ${colonycash_pid}

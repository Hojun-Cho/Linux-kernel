#!/bin/bash

echo 0 > /sys/kernel/debug/tracing/tracing_on
sleep 1 
echo "tracing off"

echo 0 > /sys/kernel/debug/tracing/events/enable
sleep 1
echo "ecvents disabled"


echo freeze_secondary_cpus >  /sys/kernel/debug/tracing/set_ftrace_filter
sleep 1
echo "set_ftrace_filter init"



echo do_sys_open > /sys/kernel/debug/tracing/set_ftrace_filter
echo __x64_sys_openat >  /sys/kernel/debug/tracing/set_ftrace_filter
echo ext4_create > /sys/kernel/debug/tracing/set_ftrace_filter
echo alloc_inode >  /sys/kernel/debug/tracing/set_ftrace_filter
echo ext4_alloc_inode > /sys/kernel/debug/tracing/set_ftrace_filter
echo ext4_file_open  > /sys/kernel/debug/tracing/set_ftrace_filter
sleep 1
echo "set_ftrace_filter"

sleep 1
echo "ftrace_filter enabled"

echo 1 > /sys/kernel/debug/tracing/options/func_stack_trace
echo 1 > /sys/kernel/debug/tracing/options/sym-offset
echo  "stack trace enalbed"

echo 1 > /sys/kernel/debug/tracing/tracing_on
echo "start tracing"

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


echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
echo 1 > /sys/kernel/debug/tracing/events/raw_syscalls/sys_enter/enable
echo 1 > /sys/kernel/debug/tracing/events/raw_syscalls/sys_exit/enable
sleep 1
echo "event enabled"

echo ext4_dirty_inode > /sys/kernel/debug/tracing/set_ftrace_filter
echo ext4_sync_file > /sys/kernel/debug/tracing/set_ftrace_filter
echo ext4_sync_fs > /sys/kernel/debug/tracing/set_ftrace_filter
echo "set_ftrace_filter"

sleep 1
echo "ftrace_filter enabled"

echo 1 > /sys/kernel/debug/tracing/options/func_stack_trace
echo 1 > /sys/kernel/debug/tracing/options/sym-offset
echo  "stack trace enalbed"

echo 1 > /sys/kernel/debug/tracing/tracing_on
echo "start tracing"

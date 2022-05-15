echo 0 >  /sys/kernel/debug/tracing/tracing_on
sleep 3
echo "tracing off"


cp /sys/kernel/debug/tracing/trace trace_log


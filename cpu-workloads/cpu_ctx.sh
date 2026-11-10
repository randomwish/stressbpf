#!/usr/bin/env bash
# cpu_ctx.sh
for n in 2 4 8 16 32; do
    echo "=== --cpu $n ==="
    bpftrace -c "$(command -v stress-ng) --switch $n -t 20s --metrics-brief --temp-path /tmp" \
            cpu_switch.bt > "runq_cpuswitch$n.txt"
    cat "runq_cpuswitch$n.txt"
    sleep 3

    
done

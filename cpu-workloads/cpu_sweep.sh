#!/usr/bin/env bash
# cpu_sweep.sh
for n in 2 4 8 16 32 64; do
    echo "=== --cpu $n ==="
    bpftrace -c "$(command -v stress-ng) --cpu $n -t 20s --metrics-brief --temp-path /tmp" \
            cpu_oversub.bt > "runq_cpu$n.txt"
    cat "runq_cpu$n.txt"
    sleep 3

    
done

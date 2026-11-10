When we run `stressng --cpu <x>`, we actually throw the whole gamult of CPU stressors out to the available CPUs
in the system. The difference is when we have fewer physical CPU cores than they are CPU stressors, in which case there
would be an increase in the queue time of the stressors, from an average of 32 micro seconds with 4 stressors, to 4 milliseconds with
16 stressors. This is likely caused by a cascading effect, as the tasks have only so many cores to have 
the work to be done on.

CPU (Bogo ops/s - real time)
2 4734.14
4 8712.68
8 8609.80
16 8455.75

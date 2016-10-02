ifdef CONFIG_FUNCTION_TRACER
CFLAGS_REMOVE_clock.o = -pg
endif

ifdef CONFIG_SCHED_QHMP
obj-y += qhmp_core.o qhmp_fair.o qhmp_rt.o
else
obj-y += core.o fair.o rt.o
endif

obj-y += proc.o clock.o cputime.o
obj-y += idle_task.o deadline.o stop_task.o
obj-y += wait.o completion.o idle.o sched_avg.o
obj-$(CONFIG_SMP) += cpupri.o cpudeadline.o
obj-$(CONFIG_SCHED_AUTOGROUP) += auto_group.o
obj-$(CONFIG_SCHEDSTATS) += stats.o
obj-$(CONFIG_SCHED_DEBUG) += debug.o
obj-$(CONFIG_CGROUP_CPUACCT) += cpuacct.o

all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"移植 hmpcb 调度器到kernel/sched/fair.c, 修改了 [kernel/sched/core.c] 中宏 CONFIG_NO_HZ_COMMON -=> CONFIG_NO_HZ"

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

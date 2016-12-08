all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"移植 hmpcb 调度器到kernel/sched/fair.c..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

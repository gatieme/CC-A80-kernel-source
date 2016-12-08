all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"更新了HMP的 stop_machine, trace, core.c 和 sched.h..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

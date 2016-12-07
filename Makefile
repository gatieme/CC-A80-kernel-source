all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"更新了arch/arm/kernel/topology.c..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

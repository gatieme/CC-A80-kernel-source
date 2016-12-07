all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"备份了 arch/arm/kernel/topology.c 和 arch/arm/include/asm/topology.h 到 backup, 拷贝了 3.10 的 topology.[h|c] 到当前系统中..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

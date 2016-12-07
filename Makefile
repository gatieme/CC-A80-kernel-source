all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"更新了内核 Makefile, 设置了 arch/arm/configs/kernel_defconfig..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

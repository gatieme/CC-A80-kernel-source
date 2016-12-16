ROOT		:=	$(shell pwd)
KERNEL_SRC	:=	$(ROOT)/3.4
BACKUP_DIR	:=	$(ROOT)/backup



all	:	github

# make defconfig, 使用默认的config配置文件
defconfig	:
	cd $(KERNEL_SRC) && $(MAKE) defconfig

# make menuconfig, 配置内核的config
menuconfig	:
	cd $(KERNEL_SRC) && $(MAKE) menuconfig




.PHONY	: github


GITHUB_COMMIT	:=	"开始调试, 修改内核..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

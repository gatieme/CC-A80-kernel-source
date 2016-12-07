all	: github
.PHONY	: github


GITHUB_COMMIT	:=	"备份了 config..."

github	:
	git pull
	git add -A
	git commit -m $(GITHUB_COMMIT)
	git push origin master

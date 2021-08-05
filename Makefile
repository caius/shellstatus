.PHONY: run
run: shellstatus
	./shellstatus

shellstatus: shellstatus.cr
	crystal build shellstatus.cr

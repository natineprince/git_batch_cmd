@echo off
if [%1] == [] GOTO:EOF
for /f %%i in ('dir/b/ad') do (
	call cd %%i
	if exist .git (
			echo try to checkout %%i
			for /f "delims=" %%m in ('git branch -a') do (
					if "%%m"=="  %1" call git checkout %1 && git pull
				)
		)
	cd ..
	)
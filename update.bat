@echo off
for /f %%i in ('dir/b/ad') do (
	cd %%i
	if exist .git (
			echo updating %%i
			git pull
		)
	cd ..
	)
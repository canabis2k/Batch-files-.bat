@Echo off
:run
set /p "a=[g]et or [s]et? "
set /p "b=Name: "
if /i "%a%"=="g" (
	echo "Save to %b%.cfg"
	netsh dump > %b%.cfg
) else (
	if /i "%a%"=="s" (
		echo "Set from %b%.cfg"
		netsh exec %b%.cfg
	) else (goto run)
)

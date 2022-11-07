ECHO OFF
ECHO "Copy files to remote machine"
REM SET USER=root
SET /P USER="Username of remote machine: "
SET /P HOST="Remote machine host or IP: "
SET /P SOURCE="Absolute path to file/folder on remote machine: "
SET /P TARGET="Path on local machine: "
pscp.exe -r -C %TARGET% %USER%@%HOST%:%SOURCE%
PAUSE

ECHO OFF
ECHO "Copy files from remote machine"
SET /P HOST="Remote machine host or IP: "
SET /P USER="User on remote machine: "
SET /P PORT="Port on remote machine: "
SET /P SOURCE="Absolute path to file/folder on remote machine: "
SET /P TARGET="Target path on local machine: "
pscp.exe -P %PORT% -r -C %USER%@%HOST%:%SOURCE% %TARGET%
PAUSE

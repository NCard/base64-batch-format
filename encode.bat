@ECHO OFF

set in=./in
set out=./out
if not exist %out% mkdir out
FOR %%i in (%in%/*) do certutil -f -encode %in%/%%i %out%/%%i
start out
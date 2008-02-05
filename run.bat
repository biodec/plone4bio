@ECHO OFF
CLS

:BEGIN

ECHO 
ECHO 1. DELETE LOGS
ECHO 2. INSTANCE FG
ECHO 3. BUILDOUT
ECHO 0. QUIT.

SET Choice=
SET /P Choice=Type the number and press Enter: 
IF NOT '%Choice%'=='' SET Choice=%Choice:~0,1%
ECHO.
IF /I '%Choice%'=='2' GOTO INSTANCE
IF /I '%Choice%'=='1' GOTO DELETE
IF /I '%Choice%'=='3' GOTO BUILDOUT
IF /I '%Choice%'=='0' GOTO QUIT

GOTO BEGIN

:DELETE
del /F var\log\*.*
GOTO BEGIN

:INSTANCE
bin\instance fg
GOTO BEGIN:

:BUILDOUT
bin\buildout -v
GOTO BEGIN:

:QUIT
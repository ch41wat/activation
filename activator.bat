@ECHO OFF
CLS
CD\


ECHO.
ECHO.
ECHO.
ECHO -Run This as Local Admin
ECHO.


pause

:WinActivation
ECHO.
ECHO.
ECHO.
ECHO -------------------------------------------------------------------
ECHO - Activate Windows...
ECHO -------------------------------------------------------------------
slmgr -ipk xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
slmgr -ato
pause
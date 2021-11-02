@ECHO OFF

:: ======================================================================================================================================================
::  Fix Spotify.bat
::  Written by AAAA
::  Github Page : https://github.com/Anonymous-AAAA/Fix-Spotify
:: ======================================================================================================================================================

MODE CON COLS=29 LINES=9
COLOR 0A
CHCP 950 > nul
TITLE 修復 Spotify 黑畫面
ECHO :::::::::::::::::::::::::::::
ECHO ::                         ::
ECHO ::   修復 Spotify 黑畫面   ::
ECHO ::                         ::
ECHO :::::::::::::::::::::::::::::
ECHO.
ECHO.
ECHO.
SET /P =^>^>   按下任意鍵開始動作    ^<^<
TITLE 請稍等 . . .
CD /D %AppData%\Spotify\
TASKKILL /F /IM spotify.exe 1> nul 2>nul
CD /D %AppData%\Spotify\locales
RENAME zh-Hant.mo zh-TW.mo 1> nul 2>nul
CD /D %AppData%\Spotify\
START spotify.exe 1> nul 2>nul
CLS
TITLE 完成 !
ECHO :::::::::::::::::::::::::::::
ECHO ::                         ::
ECHO ::          完成!          ::
ECHO ::    已為您重啟 Spotify   ::
ECHO :: 您的 Spotify 應恢復正常 ::
ECHO ::                         ::
ECHO :::::::::::::::::::::::::::::
ECHO.
SET /P =^>^>     按下任意鍵退出      ^<^<
EXIT
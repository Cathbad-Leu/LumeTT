@echo off
cd /d %~dp0
@call .\bin\mintty.exe -p centre -p bottom --o PgUpDnScroll=no --o Hold=error --Report o --horbar=3 --configdir '.\usr\share\mintty' -c '.\.mintty\mintty_wcli'_rc -i './lumett.ico' -e '.\bin\tt++.exe' -t 'LumeTT Client' -r './lib/init.tin' -e 'launch classic'

@echo off
cd /d %~dp0
REM the cmd.exe call is |start| |mintty|: report size; horizonatlbar; configdir; config file; icon; |tintin|: window title; tin.file; argument;

REM start in main and pass argument launch commander, to launch the main windows with connection on private port
@call .\bin\mintty.exe -p centre -p bottom --o PgUpDnScroll=no --o Hold=error --Report o --horbar=3 --configdir '.\usr\share\mintty' -c '.\.mintty\mintty_wcli'_rc -i './lumett.ico' -e '.\bin\tt++.exe' -t 'LumeTT Client' -r './lib/init.tin' -e 'launch commander'

REM the cmd.exe call is |start| |mintty|: report size; configdir; group class; tabbar; config file; icon; |tintin|: window title; tin.file; argument;

REM start the tabbed window of chats
@call .\bin\mintty.exe -p top --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'chats' -r './lib/gui/win_comms_all.tin' %*
@call .\bin\mintty.exe -p top --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'guild' -r './lib/gui/win_comms_guild.tin' %*
@call .\bin\mintty.exe -p top --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'group' -r './lib/gui/win_comms_grp.tin' %*

REM start the side tabbed window

@call .\bin\mintty.exe -p left --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'Alias' -r './lib/gui/win_side_alias.tin' %*
@call .\bin\mintty.exe -p left --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'Equip' -r './lib/gui/win_side_eq.tin' %*
@call .\bin\mintty.exe -p left --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'Kills' -r './lib/gui/win_side_kills.tin' %*
@call .\bin\mintty.exe -p left --o Hold=error --Report o --configdir '.\usr\share\mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'Group' -r './lib/gui/win_side_grp.tin' %*

REM start the room image window
@call .\bin\mintty.exe -p right --o Hold=error --Report o --configdir '.\usr\share\mintty' -c './.mintty/mintty_wimg_rc' -i './lumett.ico' -e '.\bin\bash.exe' -c -r 'sh ./bin/showimage.sh' %*

REM start the mapper window
@call .\bin\mintty.exe -p right --o Hold=error --Report o --configdir '.\usr\share\mintty' -o 'Background=./leu_test/imgs/mapbkg.jpg' -c './.mintty/mintty_wmap_rc' -i './lumett.ico' -e './bin/tt++.exe' -G -t 'Mappr' -r './lib/gui/win_mapper.tin' %*

#!/bin/bash

mintty --o PgUpDnScroll=no -p centre -p bottom --o Hold=error --Report o --horbar=3 --configdir './usr/share/mintty' -c './.mintty/mintty_wcli'_rc -i './lumett.ico' -e tt++ -t 'LumeTT Client' -r './lib/init.tin' -e 'launch commander' &
mintty -p top --o Hold=error --Report o --configdir './usr/share/mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e tt++ -G -t 'Chats' -r './lib/gui/win_comms_all.tin' &
mintty -p top --o Hold=error --Report o --configdir './usr/share/mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e tt++ -G -t 'CGuild' -r './lib/gui/win_comms_guild.tin' &
mintty -p top --o Hold=error --Report o --configdir './usr/share/mintty' --class 'one' --tabbar -c './.mintty/mintty_wcom_rc' -i './lumett.ico' -e tt++ -G -t 'CGroup' -r './lib/gui/win_comms_grp.tin' &
mintty -p left --o Hold=error --Report o --configdir './usr/share/mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e tt++ -G -t 'Alias' -r './lib/gui/win_side_alias.tin' &
mintty -p left --o Hold=error --Report o --configdir './usr/share/mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e tt++ -G -t 'Equip' -r './lib/gui/win_side_eq.tin' &
mintty -p left --o Hold=error --Report o --configdir './usr/share/mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e tt++ -G -t 'Kills' -r './lib/gui/win_side_kills.tin' &
mintty -p left --o Hold=error --Report o --configdir './usr/share/mintty' --class 'two' --tabbar -c './.mintty/mintty_wside_rc' -i './lumett.ico' -e tt++ -G -t 'Group' -r './lib/gui/win_side_grp.tin' &

mintty -p right --o Hold=error --Report o --configdir '.\usr\share\mintty' -c './.mintty/mintty_wimg_rc' -i './lumett.ico' -e '.\bin\bash' -c -r 'sh ./bin/showimage.sh'  &

mintty -p right -p bottom --o Hold=error --Report o --configdir '.\usr\share\mintty' -o 'Background=./leu_test/imgs/mapbkg.jpg' -c './.mintty/mintty_wmap_rc' -i './lumett.ico' -e 'tt++' -G -t 'Mappr' -r './lib/gui/win_mapper.tin'
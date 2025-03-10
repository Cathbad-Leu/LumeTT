#!/bin/bash

mintty --o PgUpDnScroll=no -p centre -p bottom --o Hold=error --Report o --horbar=3 --configdir './usr/share/mintty' -c './.mintty/mintty_wcli'_rc -i './lumett.ico' -e tt++ -t 'LumeTT Client' -r './lib/init.tin' -e 'launch unixcommander'

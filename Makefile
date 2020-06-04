putkaseikkailu.py: $(wildcard *.retki)
	retki putkaseikkailu.retki -o putkaseikkailu.py

putkaseikkailu-web.py: putkaseikkailu.py
	tail -n +4 putkaseikkailu.py | head -n -1 >putkaseikkailu-web.py

upload: putkaseikkailu-web.py
	scp putkaseikkailu-web.py lakka.kapsi.fi:sites/iikka.kapsi.fi/www/retki/pyodide/putkaseikkailu.py

.PHONY: upload
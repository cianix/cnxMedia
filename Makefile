DEST=/usr/local

all: clean
	perltidy -bl -q -b bin/* && rm bin/*bak

clean:
	rm -f bin/*bak

install: all
	install -m 755 bin/* ${DEST}/bin

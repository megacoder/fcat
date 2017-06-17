PREFIX	=/opt
BINDIR	=${PREFIX}/bin

ZSHFILES=fcat.zsh

all:	${ZSHFILES}

check:	${ZSHFILES}
	./fcat.zsh Makefile

install: ${ZSHFILES}
	install -d ${BINDIR}
	for x in ${ZSHFILES}; do					\
		install -c $$x ${BINDIR}/$$(basename $$x .zsh);		\
	done

uninstall: ${ZSHFILES}
	for x in ${ZSHFILES}; do					\
		${RM} ${BINDIR}/$$(basename $$x .zsh);			\
	done

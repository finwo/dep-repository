SRC+=lib/sqlite/sqlite/.libs/sqlite3.o

lib/sqlite/sqlite/.libs/sqlite3.o:
	(\
		cd lib/sqlite/sqlite ;\
		./configure ;\
		make clean ;\
		make -j \
	)

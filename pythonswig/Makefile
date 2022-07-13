CXX_FLAGS=-fPIC -shared -I /usr/include/python3.10/ -L . -lasys
all: _liba.so

_liba.so: a_wrap.cxx
	${CXX} ${CXX_FLAGS} -o _liba.so a_wrap.cxx 

a_wrap.cxx: a.i
	swig -c++ -python a.i

.PHONY: run clean

run: _liba.so
	LD_LIBRARY_PATH=${PWD} python mycb.py

clean:
	rm -r __pycache__ _liba.so a_wrap.cxx a_wrap.h liba.py

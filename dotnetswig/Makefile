CXX_FLAGS=-std=c++14 -fPIC -shared -L. -lasys -Wl,-soname,liba.so

all: liba.so

a_wrap.cxx: a.i
	swig -c++ -csharp a.i
	mv MyCB.cs liba*.cs SWIGTYPE* ../libaPINVOKE

liba.so: a_wrap.cxx a_wrap.h
	${CXX} -o liba.so ${CXX_FLAGS} a_wrap.cxx

.PHONY: run clean
run: liba.so
	LD_LIBRARY_PATH=${PWD} dotnet run

clean:
	rm -r liba.so a_wrap.cxx a_wrap.h obj bin

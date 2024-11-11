.PHONY: default clean

default:
	# do nothing

clean:
	rm -vf  array1{,.cpp,.dsc,.h}
	rm -vfr array1.dSYM/

array1:
	ivy_to_cpp target=repl isolate=array1.iso_impl array1.ivy
	g++ -g -o array1 array1.cpp

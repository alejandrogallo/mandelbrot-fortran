FILE="src/mandelbrot.f90"
OFILE="bin/mandelbrot"
all:
	mkdir bin
	ifort $(FILE) -o $(OFILE)
plot: 
	./bin/mandelbrot | tr -d "(" | tr -d ")" | tr "," " " | gnuplot -p -e "plot '<cat' with points pointtype 5 pointsize .05" 
clean: 
	-rm -rf bin 

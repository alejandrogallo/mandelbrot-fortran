FILE="mandelbrot.f90"
OFILE="mandelbrot"
all:
	clear
	ifort $(FILE) -o $(OFILE)
	./$(OFILE)
plot: 
	./mandelbrot | tr -d "(" | tr -d ")" | tr "," " " | gnuplot -p -e "plot '<cat' with points pointtype 5 pointsize .05" 

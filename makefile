CXX = g++
FLAGS = -g -fno-omit-frame-pointer

all: prog_slow prog_fast

prog_slow: main.cpp
	$(CXX) -O0 $(FLAGS) $< -o $@

prog_fast: main.cpp
	$(CXX) -O3 -march=native $(FLAGS) $< -o $@

prog_simd: main.cpp
	$(CXX) -O3 -march=native -ffast-math $(FLAGS) $< -o $@

clean:
	rm -f prog_slow prog_fast prog_simd

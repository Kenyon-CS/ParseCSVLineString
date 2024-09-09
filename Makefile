# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Target executable
TARGET = parse_csv

# Object files
OBJECTS = parse_csv.o

# Default target
all: $(TARGET)

# Build the target
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Compile main file
parse_csv.o: parse_csv.cpp
	$(CXX) $(CXXFLAGS) -c parse_csv.cpp

# Clean up object files and executable
clean:
	rm -f $(OBJECTS) $(TARGET)

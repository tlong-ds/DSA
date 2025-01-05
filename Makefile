# Compiler
CXX = clang++

# Compiler Flags
CXXFLAGS = -Wall -g -std=c++23

# Target executable name
TARGET = my_program

# Source files
SRC = main.cpp other_file.cpp  # Add other source files here

# Object files (replace .cpp with .o in SRC files)
OBJ = $(SRC:.cpp=.o)

# Default rule
all: $(TARGET)

# Link object files to create the final executable
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJ)

# Compile source files to object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJ) $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Phony targets (not real files)
.PHONY: all clean run
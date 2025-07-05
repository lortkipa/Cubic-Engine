
# preprocessor flags
PFLAGS += -DLINUX

# compiler flags
CFLGS += -fPIC

# libraries to link
LIBS +=

# generate compile flags
compile_flags:
	@echo $(CFLAGS) $(PFLAGS) | tr ' ' '\n' > compile_flags.txt

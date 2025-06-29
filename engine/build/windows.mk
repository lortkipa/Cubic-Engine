BIN_PATH := binaries
PROJECT := engine.dll
CC := clang
CFLAGS := -shared -std=c23 -I../src -DWINDOWS
SRCS := $(wildcard ../src/*.c)
LIBS :=
DEBUG_FLAGS := -g -O0 -Wall -Wextra -DDEBUG
RELEASE_FLAGS := -O3 -DRELEASE

debug:
	@echo --------------------Building $(BIN_PATH)/$(PROJECT) In DEBUG Mode--------------------
	$(CC) $(CFLAGS) $(SRCS) $(LIBS) $(DEBUG_FLAGS) -o $(BIN_PATH)/$(PROJECT)

release:
	@echo --------------------Building $(BIN_PATH)/$(PROJECT) In RELEASE Mode--------------------
	$(CC) $(CFLAGS) $(SRCS) $(LIBS) $(RELEASE_FLAGS) -o $(BIN_PATH)/$(PROJECT)

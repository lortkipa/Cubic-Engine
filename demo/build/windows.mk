DLLS_PATH := ../../engine/build/binaries
BIN_PATH := binaries
PROJECT := demo.exe
CC := clang
CFLAGS := -std=c23 -I../../engine/src -I../src -DWINDOWS
SRCS := $(wildcard ../src/*.c)
LIBS := -lengine -L$(BIN_PATH)
DEBUG_FLAGS := -g -O0 -Wall -Wextra -DDEBUG
RELEASE_FLAGS := -O3 -DRELEASE

copy_binaries:
	@dir "$(DLLS_PATH)"
	@if not exist "$(BIN_PATH)" mkdir "$(BIN_PATH)"
	@copy /Y "$(DLLS_PATH)\*.*" "$(BIN_PATH)"

debug: copy_binaries
	@echo --------------------Building $(BIN_PATH)\$(PROJECT) In DEBUG Mode--------------------
	$(CC) $(CFLAGS) $(SRCS) $(LIBS) $(DEBUG_FLAGS) -o $(BIN_PATH)\$(PROJECT)

release: copy_binaries
	@echo --------------------Building $(BIN_PATH)\$(PROJECT) In RELEASE Mode--------------------
	$(CC) $(CFLAGS) $(SRCS) $(LIBS) $(RELEASE_FLAGS) -o $(BIN_PATH)\$(PROJECT)

run:
	@echo --------------------Running $(BIN_PATH)\$(PROJECT) --------------------
	$(BIN_PATH)\$(PROJECT)


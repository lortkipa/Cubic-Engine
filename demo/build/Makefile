
# project name
PROJECT := Game

# set target as debug if its not set
TARGET ?= debug

# bin path
BUILD_DIR := ../../bin

# path to sources
SRC_DIR := ../src

# sources
SRCS := $(wildcard $(SRC_DIR)/*.c)

# compiler
CC := clang

# compiler flags
CFLAGS := -std=c23

# preprocessor flags
PFLAGS := -Isrc -I../engine/src

# linker flags
LFLAGS := -L$(BUILD_DIR)

# libraries
LIBS := -lm

# add flags that are target specific
ifeq ($(TARGET), DEBUG)
	CFLAGS += -g -O0 -Wall -Wextra
else ifeq ($(TARGET), RELEASE)
	CFLAGS += -O3 -ffast-math
endif
PFLAGS += -D$(TARGET)

# include os specific stuff
ifeq ($($(shell uname -s)), Linux)
    include linux.mk
else ifeq ($($(shell uname -s)), Windows_NT)
    include windows.mk
endif

# build scripts
all: build run

build:
	$(CC) $(SRCS) $(CFLAGS) $(PFLAGS) $(LFLAGS) $(SRC) $(LIBS) -o $(BUILD_DIR)/$(PROJECT)

run:
	./$(BUILD_DIR)/$(PROJECT)

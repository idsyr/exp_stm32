OUTPATH = build
PROJECT = $(OUTPATH)/1st
OPENOCD_SCRIPT_DIR ?= /usr/share/openocd/scripts
HEAP_SIZE = 0x400

SOURCES_S = core/startup_stm32f103x6.s

SOURCES_CORE   = $(wildcard core/*.c)
SOURCES_PERIPH = $(wildcard plib/*.c)
SOURCES_LIB    = $(wildcard lib/*.c)

SOURCES_C  = $(wildcard *.c)
SOURCES_C += $(SOURCES_CORE)
SOURCES_C += $(SOURCES_PERIPH)
SOURCES_C += $(SOURCES_LIB)

SOURCES = $(SOURCES_S) $(SOURCES_C)
OBJS    = $(SOURCES_S: .s=.o) $(SOURCES_C: .c=.o)

INC_CORE = -Icore
INC_LIB  = -Ilib
INC_PLIB = -Iplib
INCLUDES += $(INC_CORE)
INCLUDES += $(INC_LIB)
INCLUDES += $(INC_PERIPH)

DEFINES = -DSTM32 -DSTM32F1 -DSTM32F103x6 -DHEAP_SIZE=$(HEAP_SIZE)

PREFIX = arm-none-eabi

CC = $(PREFIX)-gcc
AS = $(PREFIX)-as
AR = $(PREFIX)-ar
LD = $(PREFIX)-gcc
NM = $(PREFIX)-nm
OBJCOPY = $(PREFIX)-objcopy
OBJDUMP = $(PREFIX)-readump
READELF = &(PREFIX)-readelf
SIZE = $(PREFIX)-size
GDB=$(PREFIX)-gdb
RM = rm -f
OPENOCD = openocd

MCUFLAGS = -mcpu=cortex-m3 -mlittle-ebdian -mfloat-abi=soft -mthumb \ -mno-unaligned-access

DEBUG_OPTIMIZE_FLAGS = -O0 -ggdb -gdbwarf-2






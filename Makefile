SDIR := src
ODIR := obj
BDIR := bin

IDIR := include
LIBS :=

CC := g++
CP := ar
CFLAGS := -g -Wall -I$(IDIR)
PFLAGS := -r
TARGET := libMakeLib.a

SRCS := $(wildcard $(SDIR)/*.cpp $(SDIR)/*/*.cpp $(SDIR)/*/**/*.cpp $(SDIR)/*/**/**/*.cpp)
OBJS := $(patsubst %.cpp, $(ODIR)/%.o, $(SRCS))

all: clean $(TARGET)

$(ODIR)/%.o: %.cpp
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $<

$(TARGET): $(OBJS)
	mkdir -p $(BDIR)
	$(CP) $(PFLAGS) $(BDIR)/$@ $^

clean:
	rm -rf $(BDIR) $(ODIR)

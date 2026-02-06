CXX = g++
CC  = gcc

SRC_DIR = src
OUT_DIR = out

CXXFLAGS = -std=c++17 -fPIC \
    `pkg-config --cflags Qt6Core Qt6Gui Qt6Qml Qt6Quick`

CFLAGS = -fPIC

LDFLAGS = \
    `pkg-config --libs Qt6Core Qt6Gui Qt6Qml Qt6Quick`

QT6_MOC = /usr/lib/qt6/moc

OBJS = \
    $(OUT_DIR)/main.o \
    $(OUT_DIR)/backend.o \
    $(OUT_DIR)/moc_backend.o \
    $(OUT_DIR)/clib.o \
    $(OUT_DIR)/qrc_resources.o

all: $(OUT_DIR)/app

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# ---------- Link ----------
$(OUT_DIR)/app: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

# ---------- C++ ----------
$(OUT_DIR)/main.o: $(SRC_DIR)/main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OUT_DIR)/backend.o: $(SRC_DIR)/backend.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# ---------- moc (THIS IS THE MISSING PIECE) ----------
$(OUT_DIR)/moc_backend.cpp: $(SRC_DIR)/backend.h
	/usr/lib/qt6/moc $< -o $@

$(OUT_DIR)/moc_backend.o: $(OUT_DIR)/moc_backend.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# ---------- C ----------
$(OUT_DIR)/clib.o: $(SRC_DIR)/clib.c
	$(CC) $(CFLAGS) -c $< -o $@

# ---------- Qt resources ----------
$(OUT_DIR)/qrc_resources.cpp: $(SRC_DIR)/qml/resources.qrc
	rcc -o $@ $<

$(OUT_DIR)/qrc_resources.o: $(OUT_DIR)/qrc_resources.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(OUT_DIR)/*

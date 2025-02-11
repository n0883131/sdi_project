QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/chat.cpp \
    src/friendsettings.cpp \
    src/group.cpp \
    src/groupsettings.cpp \
    src/publisher.cpp \
    src/mainwindow.cpp \
    src/connectdb.cpp \
    src/main.cpp \
    src/loginscreen.cpp \
    src/otherFunctions.cpp \
    src/user.cpp \

HEADERS += \
    headers/chat.h \
    headers/friendsettings.h \
    headers/group.h \
    headers/groupsettings.h \
    headers/connectdb.h \
    headers/header.h \
    headers/loginscreen.h \
    headers/otherFunctions.h \
    headers/user.h \
    headers/mainwindow.h \ \
    headers/publisher.h \ \

FORMS += \
    forms/loginscreen.ui \
    forms/mainwindow.ui \
    forms/friendsettings.ui \
    forms/groupsettings.ui

LIBS += \
    -lmysqlclient \
    -lpaho-mqtt3as \
    -lpaho-mqttpp3 \

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

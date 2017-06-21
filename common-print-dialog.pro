QT += qml quick widgets quickwidgets

CONFIG += c++11

SOURCES += app/main.cpp \
    app/preview.cpp \
    app/commonprintdialog.cpp \
    backends/cups/backend_helper.c \
    backends/cups/backend_interface.c \
    backends/cups/common_helper.c \
    backends/cups/frontend_helper.c \
    backends/cups/frontend_interface.c \
    backends/cups/print_backend_cups.c \
    backends/cups/print_frontend.c

RESOURCES += qml.qrc

LIBS += -lpoppler-qt5 -lcups -lgio-2.0 -lgobject-2.0 -lglib-2.0

INCLUDEPATH += \
    /usr/include/glib-2.0 \
    /usr/lib/x86_64-linux-gnu/glib-2.0/include \
    /usr/include/gio-unix-2.0

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    app/preview.h \
    app/commonprintdialog.h \
    backends/cups/backend_helper.h \
    backends/cups/backend_interface.h \
    backends/cups/common_helper.h \
    backends/cups/frontend_helper.h \
    backends/cups/frontend_interface.h \
    backends/cups/print_backend_cups.h \
    backends/cups/print_frontend.h
#-------------------------------------------------
#
# Project created by QtCreator 2012-04-23T17:51:30
#
#-------------------------------------------------

QT       += core sql

QT       -= gui

TARGET = goblet-resetaggregate
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

unix:QMAKE_POST_LINK=strip $(TARGET)

unix:INCLUDEPATH += ../3rdParty

SOURCES += main.cpp

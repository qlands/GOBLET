SET(GOBLET_extractmetadata_SOURCES main.cpp)
QT5_WRAP_CPP(GOBLET_extractmetadata_HEADERS_MOC)
QT5_ADD_RESOURCES(GOBLET_extractmetadata_RESOURCES_RCC ${GOBLET_extractmetadata_RESOURCES})

ADD_EXECUTABLE(goblet-extractmetadata ${GOBLET_extractmetadata_SOURCES} ${GOBLET_extractmetadata_HEADERS_MOC})

IF(NOT WIN32)
  TARGET_LINK_LIBRARIES(goblet-extractmetadata ${Qt5Core_LIBRARIES} ${Qt5Xml_LIBRARIES} ${Qt5Sql_LIBRARIES})
ELSE (NOT WIN32)
  TARGET_LINK_LIBRARIES(goblet-extractmetadata ${Qt5Core_LIBRARIES} ${Qt5Xml_LIBRARIES} ${Qt5Sql_LIBRARIES})
ENDIF (NOT WIN32)

INSTALL_PROGRAMS(/bin FILES goblet-extractmetadata)

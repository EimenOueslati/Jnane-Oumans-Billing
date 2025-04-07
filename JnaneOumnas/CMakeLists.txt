cmake_minimum_required(VERSION 3.16)

project(JnaneOumnas VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appJnaneOumnas
    main.cpp
    Images.qrc
)

qt_add_qml_module(appJnaneOumnas
    URI JnaneOumnas
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES billitem.h billitem.cpp
        SOURCES bill.h bill.cpp
        RESOURCES Images.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appJnaneOumnas PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appJnaneOumnas
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appJnaneOumnas
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appJnaneOumnas
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

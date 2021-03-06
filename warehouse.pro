# Add more folders to ship with the application, here
folder_01.source = qml/warehouse
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    android/res/values-pl/strings.xml \
    android/res/values-ru/strings.xml \
    android/res/values-ro/strings.xml \
    android/res/values-et/strings.xml \
    android/res/values/strings.xml \
    android/res/values/libs.xml \
    android/res/values-nb/strings.xml \
    android/res/values-zh-rTW/strings.xml \
    android/res/layout/splash.xml \
    android/res/values-fa/strings.xml \
    android/res/values-es/strings.xml \
    android/res/values-el/strings.xml \
    android/res/values-it/strings.xml \
    android/res/values-id/strings.xml \
    android/res/values-pt-rBR/strings.xml \
    android/res/values-zh-rCN/strings.xml \
    android/res/values-de/strings.xml \
    android/res/values-ms/strings.xml \
    android/res/values-nl/strings.xml \
    android/res/values-ja/strings.xml \
    android/res/values-fr/strings.xml \
    android/res/values-rs/strings.xml \
    android/AndroidManifest.xml \
    android/version.xml \
    android/src/org/kde/necessitas/ministro/IMinistroCallback.aidl \
    android/src/org/kde/necessitas/ministro/IMinistro.aidl \
    android/src/org/qtproject/qt5/android/bindings/QtApplication.java \
    android/src/org/qtproject/qt5/android/bindings/QtActivity.java


TARGET_PLATFORM = $$ANDROID_NDK_TOOLCHAIN_PREFIX

message("Target platform przed: $$TARGET_PLATFORM" )

contains(TARGET_PLATFORM, x86) {
    LIBS += -L$$PWD/ocr/tesserect/libs/x86/ -ltess
message("Target platform: $$TARGET_PLATFORM" )
}

contains(TARGET_PLATFORM, arm-linux-androideabi) {
    LIBS += -L$$PWD/ocr/tesserect/libs/armeabi/ -ltess
message("Target platform: $$TARGET_PLATFORM" )
}

unix:!macx: LIBS += -L$$PWD/ocr/tesserect/libs/armeabi/ -ltess

INCLUDEPATH += $$PWD/ocr/tesserect/includes
DEPENDPATH += $$PWD/ocr/tesserect/includes

######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

TEMPLATE = app
TARGET = deepin-system-monitor
INCLUDEPATH += $$PWD/nethogs/src/

CONFIG += link_pkgconfig
CONFIG += c++11
PKGCONFIG += xcb xcb-util dtkwidget dtkwm
RESOURCES = deepin-system-monitor.qrc

!system(cd $$PWD/nethogs && make libnethogs){
	error("Build nethogs static library failed.")
}

CONFIG(debug, debug|release) {
        # Enable memory address sanitizer in debug mode.
        QMAKE_CXXFLAGS += -fsanitize=address
        LIBS += -lasan
}

CONFIG(release, debug|release) {
        DEFINES += QT_NO_DEBUG_OUTPUT
}

INCLUDEPATH += $$PWD/src/

# Input
HEADERS += src/utils.h \
        src/gui/toolbar.h \
        src/cpu_monitor.h \
        src/memory_monitor.h \
        src/network_monitor.h \
        src/disk_monitor.h \
        src/compact_cpu_monitor.h \
        src/compact_memory_monitor.h \
        src/compact_network_monitor.h \
        src/compact_disk_monitor.h \
        src/network_traffic_filter.h \
        src/hashqstring.h \
        src/find_window_title.h \
        src/smooth_curve_generator.h \
        src/interactive_kill.h \
        src/start_tooltip.h \
        src/process_tree.h \
        src/constant.h \
        src/settings.h \
        src/dbus/systemd1_manager_interface.h \
        src/dbus/systemd1_service_interface.h \
        src/dbus/systemd1_unit_interface.h \
        src/dbus/dbus_properties_interface.h \
        src/dbus/dbus_common.h \
        src/model/system_service_table_model.h \
        src/model/system_service_sort_filter_proxy_model.h \
        src/gui/system_service_table_view.h \
        src/service/service_manager.h \
        src/service/system_service_entry_data.h \
        src/service/system_service_entry.h \
        src/gui/main_window.h \
        src/gui/system_service_page_widget.h \
        src/gui/process_page_widget.h \
        src/dbus/environment_file.h \
        src/dbus/unit_file_info.h \
        src/dbus/unit_info.h \
        src/common/error_context.h \
        src/gui/service_name_sub_input_dialog.h \
        src/gui/ui_common.h \
        src/gui/process_table_view.h \
        src/model/process_table_model.h \
        src/model/process_sort_filter_proxy_model.h \
        src/process/process_entry.h \
        src/common/han_latin.h \
    src/gui/monitor_expand_view.h \
    src/gui/monitor_compact_view.h \
    src/process/system_monitor.h \
    src/gui/kill_process_confirm_dialog.h \
    src/gui/process_attribute_dialog.h \
    src/process/priority_controller.h \
    src/gui/priority_tip.h \
    src/gui/priority_slider.h \
    src/common/collator.h \
    src/gui/base_table_view.h \
    src/gui/base_item_delegate.h \
    src/gui/base_header_view.h

SOURCES += src/main.cpp \
        src/utils.cpp \
        src/gui/toolbar.cpp \
        src/cpu_monitor.cpp \
        src/memory_monitor.cpp \
        src/network_monitor.cpp \
        src/disk_monitor.cpp \
        src/compact_cpu_monitor.cpp \
        src/compact_memory_monitor.cpp \
        src/compact_network_monitor.cpp \
        src/compact_disk_monitor.cpp \
        src/network_traffic_filter.cpp \
        src/find_window_title.cpp \
        src/smooth_curve_generator.cpp \
        src/interactive_kill.cpp \
        src/start_tooltip.cpp \
        src/process_tree.cpp \
        src/settings.cpp \
        src/dbus/systemd1_manager_interface.cpp \
        src/dbus/systemd1_service_interface.cpp \
        src/dbus/systemd1_unit_interface.cpp \
        src/dbus/dbus_properties_interface.cpp \
        src/model/system_service_table_model.cpp \
        src/model/system_service_sort_filter_proxy_model.cpp \
        src/service/service_manager.cpp \
        src/service/system_service_entry_data.cpp \
        src/service/system_service_entry.cpp \
        src/gui/system_service_table_view.cpp \
        src/gui/main_window.cpp \
        src/gui/system_service_page_widget.cpp \
        src/gui/process_page_widget.cpp \
        src/dbus/environment_file.cpp \
        src/dbus/unit_file_info.cpp \
        src/dbus/unit_info.cpp \
        src/common/error_context.cpp \
        src/gui/service_name_sub_input_dialog.cpp \
        src/gui/process_table_view.cpp \
        src/model/process_table_model.cpp \
        src/model/process_sort_filter_proxy_model.cpp \
        src/process/process_entry.cpp \
        src/common/han_latin.cpp \
    src/gui/monitor_expand_view.cpp \
    src/gui/monitor_compact_view.cpp \
    src/process/system_monitor.cpp \
    src/gui/kill_process_confirm_dialog.cpp \
    src/gui/process_attribute_dialog.cpp \
    src/process/priority_controller.cpp \
    src/gui/priority_tip.cpp \
    src/gui/priority_slider.cpp \
    src/gui/ui_common.cpp \
    src/common/collator.cpp \
    src/gui/base_table_view.cpp \
    src/gui/base_item_delegate.cpp \
    src/gui/base_header_view.cpp

QT += core
QT += widgets
QT += gui
QT += network
QT += x11extras
QT += dbus
QT += concurrent

# QMAKE_CXXFLAGS += -g
LIBS += -L$$PWD/nethogs/src -lnethogs -lpcap
LIBS += -L"libprocps" -lprocps
LIBS += -lX11 -lXext -lXtst -ldtkwm -licui18n -licudata -licuuc

TRANSLATIONS += \
        translations/deepin-system-monitor_am_ET.ts \
        translations/deepin-system-monitor_ar.ts \
        translations/deepin-system-monitor_ast.ts \
        translations/deepin-system-monitor_bg.ts \
        translations/deepin-system-monitor_ca.ts \
        translations/deepin-system-monitor_cs.ts \
        translations/deepin-system-monitor_da.ts \
        translations/deepin-system-monitor_de.ts \
        translations/deepin-system-monitor_es_419.ts \
        translations/deepin-system-monitor_es.ts \
        translations/deepin-system-monitor_fi.ts \
        translations/deepin-system-monitor_fr.ts \
        translations/deepin-system-monitor_gl_ES.ts \
        translations/deepin-system-monitor_he.ts \
        translations/deepin-system-monitor_hr.ts \
        translations/deepin-system-monitor_hu.ts \
        translations/deepin-system-monitor_id.ts \
        translations/deepin-system-monitor_it.ts \
        translations/deepin-system-monitor_ja.ts \
        translations/deepin-system-monitor_ko.ts \
        translations/deepin-system-monitor_lt.ts \
        translations/deepin-system-monitor_mn.ts \
        translations/deepin-system-monitor_ms.ts \
        translations/deepin-system-monitor_nb.ts \
        translations/deepin-system-monitor_ne.ts \
        translations/deepin-system-monitor_nl.ts \
        translations/deepin-system-monitor_pa.ts \
        translations/deepin-system-monitor_pl.ts \
        translations/deepin-system-monitor_pt_BR.ts \
        translations/deepin-system-monitor_pt.ts \
        translations/deepin-system-monitor_ro.ts \
        translations/deepin-system-monitor_ru.ts \
        translations/deepin-system-monitor_sk.ts \
        translations/deepin-system-monitor_sl.ts \
        translations/deepin-system-monitor_sr.ts \
        translations/deepin-system-monitor_sv.ts \
        translations/deepin-system-monitor_tr.ts \
        translations/deepin-system-monitor.ts \
        translations/deepin-system-monitor_uk.ts \
        translations/deepin-system-monitor_zh_CN.ts \
        translations/deepin-system-monitor_zh_TW.ts

load(dtk_qmake)
host_sw_64: {
    QMAKE_CFLAGS += -mieee
    QMAKE_CXXFLAGS += -mieee
}

OBJECTS_DIR=out
MOC_DIR=out

isEmpty(BINDIR):BINDIR=$${PREFIX}/bin
isEmpty(ICONDIR):ICONDIR=$${PREFIX}/share/icons/hicolor/scalable/apps
isEmpty(APPDIR):APPDIR=$${PREFIX}/share/applications
isEmpty(DSRDIR):DSRDIR=$${PREFIX}/share/$${TARGET}
isEmpty(POLICYDIR):POLICYDIR=$${PREFIX}/share/polkit-1/actions
desktop.path = $$INSTROOT$$APPDIR
icon.path = $$INSTROOT$$ICONDIR
target.path = $$INSTROOT$$BINDIR
policy.path = $$INSTROOT$$POLICYDIR

# Automating generation .qm files from .ts files
!system($$PWD/translations/translate_generation.sh): error("Failed to generate translation")

qm_files.path = /usr/share/deepin-system-monitor/translations/
qm_files.files = translations/*.qm

desktop.files = deepin-system-monitor.desktop
icon.files = image/deepin-system-monitor.svg
policy.files = com.deepin.pkexec.deepin-system-monitor.policy

INSTALLS += desktop icon target qm_files policy

/*
 * This file was generated by qdbusxml2cpp version 0.8
 * Command line was: qdbusxml2cpp -i servicemap_p.h -p device_p.h:device.cpp org.bluez.Device.xml org.bluez.Device
 *
 * qdbusxml2cpp is Copyright (C) 2017 The Qt Company Ltd.
 *
 * This is an auto-generated file.
 * This file may have been hand-edited. Look for HAND-EDIT comments
 * before re-generating it.
 */

#include "device_p.h"

/*
 * Implementation of interface class OrgBluezDeviceInterface
 */

OrgBluezDeviceInterface::OrgBluezDeviceInterface(const QString &service, const QString &path, const QDBusConnection &connection, QObject *parent)
    : QDBusAbstractInterface(service, path, staticInterfaceName(), connection, parent)
{
}

OrgBluezDeviceInterface::~OrgBluezDeviceInterface()
{
}


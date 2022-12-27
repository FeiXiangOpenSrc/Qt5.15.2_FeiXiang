/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the tests of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick3D 1.15
import QtQuick 2.15

Node {
    id: componentRoot

    property var blendMode: DefaultMaterial.Screen

    Model {
        position: Qt.vector3d(-10, -10, 0)
        scale: Qt.vector3d(2,2,0.05)
        opacity: 0.5
        source: "#Cube"
        materials: DefaultMaterial {
            blendMode: componentRoot.blendMode
            diffuseColor: Qt.rgba(1.0, 0.0, 0.0, 1)
        }
    }
    Model {
        position: Qt.vector3d(10, 10, 10)
        scale: Qt.vector3d(2,2,0.05)
        opacity: 0.5
        source: "#Cube"
        materials: DefaultMaterial {
            blendMode: componentRoot.blendMode
            diffuseColor: Qt.rgba(0.0, 1.0, 0.0, 1)
        }
    }
    Model {
        id: cone
        position: Qt.vector3d(-30, 30, 50)
        scale: Qt.vector3d(1,1,1)
        source: "#Cone"
        materials: DefaultMaterial {
            blendMode: componentRoot.blendMode
            diffuseColor: Qt.rgba(0.0, 0.0, 1.0, 1)
        }
    }
    Model {
        id: cylinder
        position: Qt.vector3d(30, -30, 100)
        scale: Qt.vector3d(1,1,1)
        opacity: 0.5
        source: "#Cylinder"
        materials: DefaultMaterial {
            blendMode: componentRoot.blendMode
            diffuseColor: Qt.rgba(0.0, 1.0, 1.0, 1)
        }
    }
}

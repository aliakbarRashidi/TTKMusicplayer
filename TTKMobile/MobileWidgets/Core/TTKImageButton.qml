/* =================================================
 * This file is part of the TTK Music Player project
 * Copyright (C) 2015 - 2017 Greedysky Studio

 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License along
 * with this program; If not, see <http://www.gnu.org/licenses/>.
 ================================================= */
import QtQuick 2.5

Rectangle {
    id: ttkImageButton

    property alias source: image.source

    signal clicked
    
    Image {
        id: image
        smooth: true
        anchors.fill: parent
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            ttkImageButton.clicked();
        }
    }

    color: ttkTheme.color_alpha_lv0
}
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
#version 460 core

precision mediump float;

#include <flutter/runtime_effect.glsl>

out vec4 fragColor;

uniform vec2 topLeft;    // Top left corner of the visible area in world coordinates
uniform float dimension; // Distance between the centers of two consecutive dots
uniform float dotSize;   // Diameter of the dots
uniform vec4 background; // Background color
uniform vec4 onBackground; // Dot color

void main() {
    if(dotSize <= 0.3) {
        fragColor = background;
        return;
    }

    // Get the fragment coordinates in world space
    vec2 fragCoord = FlutterFragCoord();

    // Transform to world coordinates
    vec2 worldCoord = fragCoord + vec2(topLeft.y, topLeft.x) - vec2(dimension / 2.0);

    vec2 modGridCoord = mod(worldCoord, dimension);

    float dist = distance(modGridCoord, vec2(dimension / 2.0));

    // // Determine if the fragment is inside the dot
    if(abs(dist) < dotSize) {
        fragColor = onBackground;
    } else {
        fragColor = background;
    }

}
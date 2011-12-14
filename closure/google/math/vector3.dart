// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// based on code from 
// http://code.google.com/p/closure-library/source/browse/trunk/closure/goog/vec/mat4.js  

/**
 * 3 dimensional vector.
 */
class Vector3 {
  final double x;
  final double y;
  final double z;

  // TODO - should be const, but cannot because of
  // bug http://code.google.com/p/dart/issues/detail?id=777

  // TODO - switch to initializing formal syntax once we have type
  // checking for this.x style constructors.  See bug
  // http://code.google.com/p/dart/issues/detail?id=464
  Vector3(double x, double y, double z) : x = x, y = y, z = z;

  double magnitude() => Math.sqrt(x*x + y*y + z*z);

  Vector3 normalize() {
    double len = magnitude();
    if (len == 0.0) {
      throw new ZeroLengthVectorException();
    }
    return new Vector3(x/len, y/len, z/len);
  }

  Vector3 operator negate() {
    return new Vector3(-x, -y, -z);
  }

  Vector3 operator -(Vector3 other) {
    return new Vector3(x - other.x, y - other.y, z - other.z);
  }

  Vector3 cross(Vector3 other) {
    double xResult = y * other.z - z * other.y;
    double yResult = z * other.x - x * other.z;
    double zResult = x * other.y - y * other.x;
    return new Vector3(xResult, yResult, zResult);
  }

  String toString() {
    return "Vector3($x,$y,$z)";
  }
}

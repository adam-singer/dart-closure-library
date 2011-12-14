class Vector2 {
    final double x;
    final double y;
    Vector2(this.x,this.y) {}
    
    double magnitude() => Math.sqrt(x*x + y*y);

    Vector2 normalize() {
        // TODO: implement
    }
}

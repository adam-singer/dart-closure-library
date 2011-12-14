#import('dart:html');
#import('../../../google/math/math_client.dartlib');

class Matrix {
  Matrix4 _matrix4;
  
  Matrix() {
    _matrix4 = new Matrix4();
  }

  void run() {
    write(_matrix4.toString());
    write("Hello Matrix4!");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = document.query('#status').innerHTML + '<br/>' + message;
  }
}

void main() {
  new Matrix().run();
}

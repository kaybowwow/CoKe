class Wall extends Structure {
  
  Wall() {
    ID = "wall";
    _health = 500;
    _attack = 0;
    _range = 0;
    _width = 60;
    _height = 20;
    _x = mouseX - _width/2;
    _y = mouseY - _height/2;
    _centerX = _x + _width/2;
    _centerY = _y + _height/2;
    c = color(10, 150, 255);
    _gold = 75;
  }
  
}
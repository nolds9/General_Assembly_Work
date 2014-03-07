console.log("I am loaded!");

// this is a monkey constructor 
// var monkey = function(name) {
//   this.name = name; 
//   this.hungry = true;
//   this.speak = function(){
//     return "hello my name is " + this.name;
//   };
//   this.level = 0;
//   this.climb = function(){
//     return ++this.level;
//   }
//   console.log(this);
// }

// Monkey.prototype.speak = function(){
//   return 'HELLOOOO';
// };

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function(){
  if(this.length === this.width){
    return true;}
  else{
    return false;
  }
};

Rectangle.prototype.area = function(){
  return this.length * this.width;
}

Rectangle.prototype.perimeter = function(){
  return (this.length*2) + (this.width*2);
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

Triangle.prototype.isEquilateral = function(){
  if(this.sideA===this.sideB && this.sideA === this.sideC){
    return true;
  }
  else{
    return false;
  };
};

Triangle.prototype.isIsosceles = function(){
  first = this.sideA===this.sideB
  second = this.sideA===this.sideC
  third = this.sideB===this.sideC
  if(first || second || third){
    return true;
  }
  else{
    return false;
  };
};

Triangle.prototype.area = function(){
  a = this.sideA;
  b = this.sideB;
  c = this.sideC;
  s=(a+b+c)/2;
  helper = s(s-a)(s-b)(s-c);
  area=Math.sqrt(helper);
  return area;
}












void main(){
  print(areaOfCircle(radius:23.5));
  print(simpleinterest(principal: 100, time: 2, rate: 3));
  int number = 3;
  multiplicationTable(number: number);
}

double areaOfCircle({required double radius, double ? pi}){
  return (pi ?? 3.14) * radius * radius;
}


double simpleinterest({
  required double principal,
  required double time,
  required double rate,
}){
  return ((principal*rate*time)/100);
}






void multiplicationTable({required int number}) {
  for (int i = 1; i <= 10; i++) {
    print("$number * $i = ${number * i}");
  }
}
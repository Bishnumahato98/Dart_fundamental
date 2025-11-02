
void main(){
  //data representation
  int first;
  int second;
  int third;
  int result;

  //input
  first=4;
  second=6;
  third=7;

  result= add(first,second);
  print("'Sum of $first and $second is : $result");

  result= add(first,second, 56, 67);
  print("'Sum of $first and $second is : $result");

  //funtion 
  //optional parameter


  print(add2(first:3, second:4));
  print(add2(first:3,second:5,fourth:10));


  //result



}

  int add(int first,  int second,[int third=0, int fourth=0]){
    return first+second+third+fourth;
  }

 //nullable
  int add2({
    required int first,
    required int second,
    int? third,
    int? fourth
  }){
    return first +second+(third ?? 0)+(fourth ?? 0);
  }






//Naming Convention
//PascalCase:class
//camelCase:variable, function
// snake_case:file name
void main(){
var numbers = List.of({1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17, 18, 51, 23, 45, 6, 3, 22, 1});
var pares = numbers.where((number) => number.isEven);
pares = pares.toList()..sort();
print(pares);
}
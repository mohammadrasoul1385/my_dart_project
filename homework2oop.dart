void main(){
  var bitcoin = Coin(price:745100000,lastchanges:"neg0.65%",perweek:"pos2.91%");
  print(bitcoin.price);
  print(bitcoin.lastchanges);
  print(bitcoin.perweek);
}
class Coin {
  var price;
  var lastchanges;
  var perweek;

move(){
  this.price=this.price+1500;
}

  Coin({this.price,this.lastchanges,this.perweek});

}

import 'dart:async';

void main(){

  final controller=StreamController();

  final order=Order('chocolate');


  //Baker
  final baker=new StreamTransformer.fromHandlers(
    handleData: (cakeType, sink){
      if(cakeType=='chocolate'){
        sink.add(Cake());
      }
      else{
        sink.addError('I cant take that type!!');
      }
    }
  );

  //Order Taker (Adding orders to the stream)
  controller.sink.add(order);


  //Order Inspector i.e. fetching the order type from the order
  controller.stream
      .map((order)=>(order.type))
      .transform(baker)
      .listen(
        (cake)=> print('Here is your cake $cake'),
        onError: (err)=>print('Error $err')
      );


}



class Cake{

}


class Order{
  String type;
  Order(this.type);
}
class product{
  String id;
  int qty;
  String name;
  double price;
  String imag;
  String imgae_logo;
  product(this.id,this.qty,this.name,this.price,this.imag,this.imgae_logo);
  static List<product> generate() {
    var ls=[
      product('1001',100,'Pizza', 25,'Image/pizzaa.jpg',"Image/pizza_logo.png" ),
      product('1002',120,'Burger',5,'Image/burger.jpg', 'Image/burger_logo.png'),
      product('1003',90,'SandWh',3, 'Image/sandwhich.jpg', 'Image/sandwich_logo.png'),
      ];
    return ls;
  }
}
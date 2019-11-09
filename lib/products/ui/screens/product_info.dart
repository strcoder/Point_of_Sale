import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final productName = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 40.0,
      ),
      alignment: Alignment.topLeft,
      child: Text(
        "Producto",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final boxBackground = Container(
      height: MediaQuery.of(context).size.height / 2 - 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        shape: BoxShape.rectangle,

      ),
    );

    final productImage = Container(
      height: 200.0,
      width: 200.0,
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images.jpeg'),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow (
            color:  Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );

    final cardImage = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
      ),
      child: Stack(
        alignment: Alignment(0.0, -1.0),
        children: <Widget>[
          boxBackground,
          productImage,
        ],
      ),
    );

    final productDescription = Container(
      child: Text(
        "Descripcion del producto",
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500
        ),
      ),
    );

    final productPrice = Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      child: Text(
        "\$100",
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final productQuantity = Container(
      margin: EdgeInsets.only(
        top: 5.0,
      ),
      child: Text(
        "5 en existencia",
        style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: Colors.blue
        ),
      ),
    );

    final productDetails = Container(
      margin: EdgeInsets.only(
        right: 50.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          productDescription,
          productQuantity,
          productPrice,
        ],
      ),
    );

    final getOutCart = InkWell(
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
              color:  Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            )
          ],
        ),
        child: Icon(
          Icons.remove,
          color: Colors.white,
        ),
      ),
    );

    final getInCart = InkWell(
      child: Container(
        margin: EdgeInsets.only(
            top: 3.0,
            bottom: 3.0
        ),
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
              color:  Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            )
          ],
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );

    final numberSell = Container(
      child: Text(
        "5",
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),
      ),
    );

    final boxSell = Container(
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      height: 50.0,
      width: 140.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          getOutCart,
          numberSell,
          getInCart,
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow (
            color:  Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );

    final addButtom = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      height: 50.0,
      width: 140.0,
      child: Text(
        "Add",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.red[900],
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow (
            color:  Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          productName,
          cardImage,
          productDetails,
          boxSell,
          addButtom,
        ],
      ),
    );
  }
}
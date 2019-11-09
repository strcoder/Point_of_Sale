import 'package:flutter/material.dart';
import 'package:point_of_sale/products/ui/screens/product_info.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text('Search App'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            })
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final searchBox = Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width - 100,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 2.0, color: Colors.blue[900]),
            left: BorderSide(width: 2.0, color: Colors.blue[900]),
            right: BorderSide(width: 2.0, color: Colors.blue[900]),
            bottom: BorderSide(width: 2.0, color: Colors.blue[900]),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

        child: InkWell(
          onTap: () {
            showSearch(context: context, delegate: DataSearch());
          },
          child: Container(
            alignment: Alignment.centerRight,
            child: IconButton(icon: Icon(Icons.search, color: Colors.blue[900],), onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            }),
          ),
        )
    );

    return Container(
      margin: EdgeInsets.only(top: 30.0),
      alignment: Alignment.topCenter,
      child: searchBox,
    );
  }
}

class DataSearch extends SearchDelegate<String> {

//  final names = [
//    'Antonio',
//    'Francisco',
//    'Pedro',
//    'Pablo',
//    'Orlando',
//    'Karen',
//    'Amanda',
//    'Mariana',
//    'Regina',
//    'Anna',
//    'Jayline',
//    'Neiva',
//    'Alejandra',
//    'Karla',
//  ];
//
//  final recentNames = [
//    'Amanda',
//    'Mariana',
//    'Regina',
//  ];

  final products = [
    'Producto',
  ];

  final recentProducts = [
    'Producto',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = '';
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
//    return Center(
//      child: Container(
//        height: 200.0,
//        width: 200.0,
//        child: Card(
//          color: Colors.blue,
//          child: Center(
//            child: Text(query),
//          ),
//        ),
//      ),
//    );
    return ProductInfo();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    final suggestionList = query.isEmpty ? recentProducts: products.where((p) => p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context, index) => ListTile(
      onTap: () {
        showResults(context);
      },
      leading:  Icon(Icons.location_city),
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.grey),
            )]
        ),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }
}
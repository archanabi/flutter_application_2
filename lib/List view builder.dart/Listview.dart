import 'package:flutter/material.dart';
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List  collection=[
{
'image':'assets/images/pic.jpeg',
'title':'Food',
'Description':'Tasty',
'price':400,
},
{
'image':'assets/images/pic.jpeg',
'title':'Food',
'Description':'Tasty',
'price':400,
 },
{
  'image':'assets/images/pic.jpeg',
'title':'Food',
'Description':'Tasty',
'price':400,

},
{
'image':'assets/images/pic.jpeg',
'title':'Food',
'Description':'Tasty',
'price':400,
},
{
'image':'assets/images/pic.jpeg',
'title':'Food',
'Description':'Tasty',
'price':400,
},
  ];
  @override
  Widget build(BuildContext context) {
    // final screenheight=MediaQuery.of(context).size.height;
    // final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
   appBar: AppBar(
      title: Text('ListViewbuilder'),
    ),
    body: GestureDetector(
      // onTap: () {
      //        // Navigate to ProductDetails screen
      //     //    Navigator.push(
      //     //      context,
      //     //      MaterialPageRoute(
      //     //       //  builder: (context) => detailpage(collection:collection),
      //     //      ),
      //     //    );
      //     //  },
      child: ListView.builder(
        // scrollDirection: Axis.vertical,
        itemCount: collection.length,
        itemBuilder: (context,index){
         
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(collection[index]['image'],
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(children: [
                    Text(collection[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text(collection[index]['Description']),
                       SizedBox(height: 5,),
                    Text(collection[index]['price'].toString())
                  ],),
                ),
              )
            ],),
          );
        }),
    )
    );
  }
}
class detailpage extends StatelessWidget {
  final Map collection;
   const detailpage({required this.collection, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

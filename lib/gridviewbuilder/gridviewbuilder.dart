import 'package:flutter/material.dart';
class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
List<Map<String,dynamic>> collections=[

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
    int numberofcolumn =4;
    int numberofrow=2;
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(title: Text("GRIDVIEW"),),
      body: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:numberofcolumn ,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 0.75
      ), 
      itemCount: numberofrow*numberofcolumn,
      itemBuilder:(context,index){
        final collection = collections[index];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Image.asset(collection['image'],
  height: 100,
  width: double.infinity,
  fit: BoxFit.cover,),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(collection['title'],style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.w700,color:  Colors.deepPurpleAccent),),
      SizedBox(height: 5.0,),
  Text(collection['Description']),
  
   SizedBox(height: 5.0,),
   Text('\$ ${collection['price']}'),
    ],
  ),
),



            ],
          ),
        );
      } )
      
      
    );
  }
}
import 'package:flutter/material.dart';

class cgm extends StatefulWidget {
  const cgm({super.key});

  @override
  State<cgm> createState() => _ChildernGrowthCalculationState();
}
class _ChildernGrowthCalculationState extends State<cgm> {
  final _formkey = GlobalKey<FormState>();
  final _agecontroller = TextEditingController();
  final _heightcontroller = TextEditingController();
  final _weightcontroller = TextEditingController();
  String _condition = "Normal";
  double _height=0.0;
  double _weight=0.0;
   int _bmi = 0;
//validatinh height field
String?validateheight(String?height){
    if(height == null || height.isEmpty){
      return 'please enter the height';
   }
   return null;
  }
  //validate weight field
  String?validateweight(String?weight){
    if(weight == null || weight.isEmpty){
      return 'please enter the weight';
   }
   return null;
  }
   void _correctvalidation(BuildContext context) {
    if (_formkey.currentState!.validate()) {
    }
  }
int  _selectedvalue = 0;//creating the variable to store values 
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: const Color.fromARGB(255, 187, 58, 230),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(" BMI  Calculator",
                                      style: TextStyle(fontWeight: FontWeight.w700,
                                      fontSize: 30.0,
                                      color:Colors.white
                                      ),
                                      ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Text("$_bmi",style: TextStyle(color: Colors.white,fontSize: 25.0),
                                          ),
                                       ),
                    ],
                  ),
        Padding(
               padding: const EdgeInsets.all(8.0),
               child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       
                        children: [
                                               
                        
                          Text("Condition: ",style: TextStyle(color: Colors.white),),
                          SizedBox(width: 2.0,),
                          Text(
                          
                          "$_condition",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w900),)
                        ],
                      ),
                    )
                ) 
        
        
        
                ],
              )
            ),
              SizedBox(height: 10.0,),
              //select gender
                 Row(
                 children: [
                   Radio(
                  value: 1, groupValue: _selectedvalue, 
                  onChanged: (value) {
                     setState(() {
                       _selectedvalue= value!;
                     });
                   },),
                  const  Text("Female",style: TextStyle(color: Color.fromARGB(255, 221, 103, 242)),)
                 ],
               ),
               Row(
                 children: [
            Radio(value: 2, groupValue: _selectedvalue, onChanged: (value) {
                     setState(() {
                       _selectedvalue = value!;
                     });
                   },),
                     const Text("Male",style: TextStyle(color: Color.fromARGB(255, 221, 103, 242))),
                 ],
               ),
               //creating text field for height and weight
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _heightcontroller,
               decoration: InputDecoration(
                   hintStyle: TextStyle(color: const Color.fromARGB(255, 221, 102, 241)),
                  hintText: "Height in CM",
                
                ),
                validator: validateheight,
                onChanged: (value) {
                  setState(() {
                    _height = double.parse(value);
                  });
                },
                     ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _weightcontroller,
              onChanged: (value) {
                setState(() {
                _weight= double.parse(value);
                });
              },
                decoration: InputDecoration(
                   hintStyle: TextStyle(color: const Color.fromARGB(255, 221, 102, 241)),
                  hintText: "Weight in KG",
                
                ),
                validator: validateweight,
              ),
            ),SizedBox(
              height: 10.0,
            ),
            //creating calculate and clear button
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                 ElevatedButton(
                   style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 187, 58, 230),),
                       ),
                       
                  
                  onPressed: (){
                         _correctvalidation(context);
                  setState(() {
                  
                  _bmi=(_weight/((_height/100)*(_height/100))).round().toInt();
                  if(_bmi>=17.5 && _bmi >=25){
                    _condition= "Overweight";
                  }
                  else if(_bmi>=10 && _bmi<=15){_condition = "Normal weight";}
                  else if (_bmi>=3 && _bmi <=10){_condition = "under weight";}
                  // 
                  });
                  }, child: Text("Calculate",
                  
                  style: TextStyle(color: Colors.white),
                ),
                ),
                  SizedBox(width: 10.0,),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 187, 58, 230),),),
                    onPressed: (){
                    
                    _agecontroller.clear();
                    _heightcontroller.clear();
                    _weightcontroller.clear();
                  }, child: Text("CLEAR",
                  style: TextStyle(color: Colors.white),))
                       
                ],
                           ),
             ),
            SizedBox(height: 10.0,),
            //showing the result after calculation
             
                ], )  ),); 
                  }}

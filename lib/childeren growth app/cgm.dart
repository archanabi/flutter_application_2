import 'package:flutter/material.dart';

class ChildernGrowthCalculation extends StatefulWidget {
  const ChildernGrowthCalculation({super.key});

  @override
  State<ChildernGrowthCalculation> createState() => _ChildernGrowthCalculationState();
}
class _ChildernGrowthCalculationState extends State<ChildernGrowthCalculation> {
  final _formkey = GlobalKey<FormState>();
  final _agecontroller = TextEditingController();
  final _heightcontroller = TextEditingController();
  final _weightcontroller = TextEditingController();
  String _condition = "Enter values";
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
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 194, 170, 237),
      title: Text("Children Growth Monitoring",
      style: TextStyle(
      fontSize: 20.0,
      color: Colors.black),),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(" CHILDREN DETAILS",
                style: TextStyle(fontWeight: FontWeight.w700,
                fontSize: 25.0,
                color: const Color.fromARGB(255, 172, 133, 239)),)),
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
                    const  Text("Female")
                   ],
                 ),
                 Row(
                   children: [
              Radio(value: 2, groupValue: _selectedvalue, onChanged: (value) {
                       setState(() {
                         _selectedvalue = value!;
                       });
                     },),
                       const Text("Male"),
                   ],
                 ),
                 //creating text field for height and weight
            TextFormField(
              controller: _heightcontroller,
               decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Height in CM",
                
                ),
                validator: validateheight,
                onChanged: (value) {
                  setState(() {
                    _height = double.parse(value);
                  });
                },
           ),
              TextFormField(
                controller: _weightcontroller,
              onChanged: (value) {
                setState(() {
                _weight= double.parse(value);
                });
              },
                decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Weight in KG",
                
                ),
                validator: validateweight,
              ),SizedBox(
                height: 10.0,
              ),
              //creating calculate and clear button
               Row(
                children: [
                 ElevatedButton(
                   style: ButtonStyle(
                    
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 172, 133, 239)),
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
                  
                  style: TextStyle(color: Colors.black),
                ),
                ),
                  SizedBox(width: 10.0,),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 172, 133, 239)),),
                    onPressed: (){
                    
                    _agecontroller.clear();
                    _heightcontroller.clear();
                    _weightcontroller.clear();
                  }, child: Text("CLEAR",
                  style: TextStyle(color: Colors.blue),))

                ],
              ),
              SizedBox(height: 10.0,),
              //showing the result after calculation
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
             child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        children: [
                          Text("BMI =$_bmi",style: TextStyle(color: const Color.fromARGB(255, 109, 47, 224),),),
                          SizedBox(width: 10.0,),
                          Text(" Condition:$_condition",style: TextStyle(color: const Color.fromARGB(255, 109, 44, 229),),)
                        ],
                      ),
                    ),
                  )
                  )) ], ), )  ),); 
                  }}

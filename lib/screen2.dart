import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 40.0),),
     
        actions: [
          
          Icon(Icons.settings,size: 50.0,color: Colors.blueAccent,),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/men.jpg'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Murad Naser',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_outlined,size: 30.0,color: Colors.white,),
                            Text("ASSIGN TASK",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Text(
                          'DESIGNATION',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          
                                             Container(
                                              decoration: BoxDecoration(
                                              
                                              ),
                                              child: Row(
                                                children: [
                                                
                                                  Container(
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(colors: [
                                                        Colors.pink,
                                                        Colors.blue
                                                      ])
                                                    ),
                                                    child: Text('ANNOUNCEMENTS',style: TextStyle(fontSize: 15.0,color: Colors.white,),)),
                                                ],
                                              )),
                                              SizedBox(width: 10.0,),
                                          
                                               Container(
                                                 height: 20,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(colors: [
                                                        Colors.pink,
                                                        Colors.blue
                                                      ])
                                                    ),
                                                
                                                child: Text('CHAT',style: TextStyle(color: Colors.white),)),
                                             
                                                // primary: Colors.blue,
                                                // onPrimary: Colors.white,
                                              
                                            
                                          ],
                                        ),
                        ),
                      ],
                    ),
                
                    
                  ],
                ),
              ),
              SizedBox(height: 16),
              
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'START YOUR DAY',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,)
                ],
              ),
              SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildIconButton(Icons.login, 'CHECK IN'),
                  _buildIconButton(Icons.logout, 'CHECK OUT'),
                  _buildIconButton(Icons.free_breakfast, 'TAKE BREAK'),
                  _buildIconButton(Icons.history, 'WORK '),
                  _buildIconButton(Icons.travel_explore, 'TRAVEL'),
                  _buildIconButton(Icons.location_on, 'LIVE TRACKING'),
                  _buildIconButton(Icons.attach_money, 'PAYROLL'),
                  _buildIconButton(Icons.beach_access, 'TAKE LEAVE'),
                ],
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OVERVIEW',
                      style: TextStyle(
                        color: const Color.fromARGB(228, 3, 135, 243),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CHECKIN : 9.00AM',style: TextStyle(color: Colors.blue),),
                        Text('BREAK HOURS : 1HRS',style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CHECKOUT : 6.00PM',style: TextStyle(color: Colors.blue),),
                        Text('TOTAL WORK : 8HRS',style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TODAY TASK',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
  
  Text("VIEW ALL",style: TextStyle(color: Colors.blue),)
                ],
              ),
              SizedBox(height: 8),
Container(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(Icons.settings,color: Colors.white,size: 40.0,),

      Text("4",style: TextStyle(color: Colors.red,fontSize: 40.0),
      ),
      Icon(Icons.download,color: Colors.green,),
       Text("2",style: TextStyle(color: Colors.green,fontSize: 40.0),
       
      ),
      Icon(Icons.download,color: Colors.red,),
      ],
    ),
  ),
  height: 100,
  width: double.infinity,
  color: const Color.fromARGB(255, 185, 220, 248),
)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          
          backgroundColor: Colors.black,
          child: Icon(icon, size: 32, color: Colors.white)),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12,color: Colors.black)),
      ],
    );
  }

  Widget _buildTaskTile(String status, String avatar, Color statusColor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
      title: Text('Research Business'),
      subtitle: Text(status),
      trailing: Icon(Icons.check_circle, color: statusColor),
    );
  }
}
// // //last tough screen
// import 'package:flutter/material.dart';

// class Taskbuilder extends StatefulWidget {
//   const Taskbuilder({super.key});

//   @override
//   State<Taskbuilder> createState() => _TaskbuilderState();
// }

// class _TaskbuilderState extends State<Taskbuilder> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               "Today's Task",
//               style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
//             ),
//           ],
//         ),
//         leading: Icon(Icons.arrow_back_ios_outlined),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/men.jpg'),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'August 2024',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'Assigned by Time',
//                 style: TextStyle(fontSize: 16, color: Colors.black),
//               ),
//               SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildDateContainer('15', 'Tue'),
//                   _buildDateContainer('16', 'Wed'),
//                   _buildDateContainer('17', 'Thu'),
//                   _buildDateContainer('18', 'Fri', isSelected: true),
//                   _buildDateContainer('19', 'Sat'),
//                   _buildDateContainer('20', 'Sun'),
//                 ],
//               ),
//               SizedBox(height: 16),
//               Divider(thickness: 3.0, color: Colors.orange),
//               ..._buildTaskList(),
//               SizedBox(height: 16),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.priority_high, color: Colors.green),
//                         SizedBox(width: 8),
//                         Text(
//                           'Task Priority',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                         Spacer(),
//                         Row(
//                           children: [
//                             Icon(Icons.messenger_outline, color: Colors.green),
//                             SizedBox(width: 5.0),
//                             Text(
//                               'Status: Completed',
//                               style: TextStyle(color: Colors.orange),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Task Details',
//                       style: TextStyle(color: Colors.orange, fontSize: 18),
//                     ),
//                     SizedBox(height: 8),
//                     _buildTaskDetailTile('Research Business', Color.fromARGB(255, 21, 229, 156)),
//                     _buildTaskDetailTileWithDownload('Research Business', Colors.orange, 'assets/images/men.jpg'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDateContainer(String day, String weekday, {bool isSelected = false}) {
//     return Container(
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.red : Colors.grey[200],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       padding: EdgeInsets.all(8),
//       child: Column(
//         children: [
//           Text(day, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
//           Text(weekday, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
//         ],
//       ),
//     );
//   }

//   List<Widget> _buildTaskList() {
//     final times = [
//       '8:00 AM',
//       '9:00 AM',
//       '10:00 AM',
//       '11:00 AM',
//       '12:00 PM',
//       '1:00 PM',
//       '2:00 PM',
//       '3:00 PM',
//       '4:00 PM',
//       '5:00 PM'
//     ];
//     return times.map((time) => _buildTaskTile(time, 'Research Business', Colors.blue, 'assets/images/men.jpg')).toList();
//   }

//   Widget _buildTaskTile(String time, String task, Color color, String avatar) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Text(time, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//           SizedBox(width: 16),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: color.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: AssetImage(avatar),
//                   ),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(task, style: TextStyle(fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTaskDetailTile(String task, Color color) {
//     return Row(
//       children: [
//         CircleAvatar(
//           backgroundImage: AssetImage('assets/images/men.jpg'),
//         ),
//         SizedBox(width: 16),
//         Text(task, style: TextStyle(color: color)),
//       ],
//     );
//   }

//   Widget _buildTaskDetailTileWithDownload(String task, Color color, String avatar) {
//     return Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             backgroundImage: AssetImage(avatar),
//           ),
//         ),
//         SizedBox(width: 16),
//         Expanded(
//           child: Text(task, style: TextStyle(color: color)),
//         ),
//         Column(
//           children: [
//             Text("FileDownloads",style: TextStyle(color: Colors.white),),
//             Icon(Icons.file_download, color: Colors.blue),
//           ],
//         ),
//       ],
//     );
//   }
// }
// // // //screen 2 in whatsapp

import 'package:flutter/material.dart';
class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        children: [
                          Text(
                            'Murad Naser',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                        ],
                      ),
                      Text(
                        'DESIGNATION',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text('ASSIGN TASK',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
         
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      Text(
                       'ANNOUNCEMENT FROM ADMIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0,),

                    Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     
                      children: [
                        Text("DATE : 1:01:24",style: TextStyle(color: Colors.white),),
                    
                        Text("TIME:1.2.24",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 10.0,),
                   Center(
                     child: Container(
                      child: Center(child: Text("HAPPY TO INFORM YOU ALL",style: TextStyle(color: Colors.black,fontSize: 20.0),)),
                      height: 100,
                      width: double.infinity,
                     decoration: BoxDecoration(
                     
                       borderRadius: BorderRadius.circular(40.0),
                       color: Colors.yellow
                     ),
                     ),
                   ),
                   SizedBox(height: 10.0,),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     
                      children: [
                        Text("DATE : 1:01:24",style: TextStyle(color: Colors.white),),
                    
                        Text("TIME:1.2.24",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 10.0,),
          Center(
                     child: Container(
                      child: Center(child: Text("HAPPY TO INFORM YOU ALL",style: TextStyle(color: Colors.black,fontSize: 20.0),)),
                      height: 100,
                      width: double.infinity,
                     decoration: BoxDecoration(
                     
                       borderRadius: BorderRadius.circular(40.0),
                       color: Colors.yellow
                     ),
                     ),
                   ),
                   SizedBox(height: 15.0,),
                   Center(
                     child: ElevatedButton(
                      style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 243, 212, 12)),
                               ),
                      
                      onPressed: (){}, child: Text("CONTINUE WORK",style: TextStyle(color: Colors.black),)),
                   )
                      
                     
                     
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}













// // // //screen 1 in whatsapp



// import 'package:flutter/material.dart';
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WELCOME',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 40.0),),
     
//         actions: [
          
//           Icon(Icons.settings,size: 50.0,color: Colors.blueAccent,),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 150,
//                 width: double.infinity,
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.pink, Colors.blue],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundImage: AssetImage('assets/images/men.jpg'),
//                     ),
//                     SizedBox(width: 16),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Murad Naser',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Icon(Icons.arrow_forward_ios_outlined,size: 30.0,color: Colors.white,),
//                             Text("ASSIGN TASK",style: TextStyle(color: Colors.white),)
//                           ],
//                         ),
//                         Text(
//                           'DESIGNATION',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                                           mainAxisAlignment: MainAxisAlignment.start,
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
                                          
//                                              Container(
//                                               decoration: BoxDecoration(
                                              
//                                               ),
//                                               child: Row(
//                                                 children: [
                                                
//                                                   Container(
//                                                     height: 20,
//                                                     decoration: BoxDecoration(
//                                                       gradient: LinearGradient(colors: [
//                                                         Colors.pink,
//                                                         Colors.blue
//                                                       ])
//                                                     ),
//                                                     child: Text('ANNOUNCEMENTS',style: TextStyle(fontSize: 15.0,color: Colors.white,),)),
//                                                 ],
//                                               )),
//                                               SizedBox(width: 10.0,),
                                          
//                                                Container(
//                                                  height: 20,
//                                                     decoration: BoxDecoration(
//                                                       gradient: LinearGradient(colors: [
//                                                         Colors.pink,
//                                                         Colors.blue
//                                                       ])
//                                                     ),
                                                
//                                                 child: Text('CHAT',style: TextStyle(color: Colors.white),)),
                                             
//                                                 // primary: Colors.blue,
//                                                 // onPrimary: Colors.white,
                                              
                                            
//                                           ],
//                                         ),
//                         ),
//                       ],
//                     ),
                
                    
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
              
//               SizedBox(height: 16),
//               Row(
//                 children: [
//                   Text(
//                     'START YOUR DAY',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,)
//                 ],
//               ),
//               SizedBox(height: 16),
//               GridView.count(
//                 crossAxisCount: 4,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 children: [
//                   _buildIconButton(Icons.login, 'CHECK IN'),
//                   _buildIconButton(Icons.logout, 'CHECK OUT'),
//                   _buildIconButton(Icons.free_breakfast, 'TAKE BREAK'),
//                   _buildIconButton(Icons.history, 'WORK '),
//                   _buildIconButton(Icons.travel_explore, 'TRAVEL'),
//                   _buildIconButton(Icons.location_on, 'LIVE TRACKING'),
//                   _buildIconButton(Icons.attach_money, 'PAYROLL'),
//                   _buildIconButton(Icons.beach_access, 'TAKE LEAVE'),
//                 ],
//               ),
//               SizedBox(height: 16),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'OVERVIEW',
//                       style: TextStyle(
//                         color: const Color.fromARGB(228, 3, 135, 243),
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('CHECKIN : 9.00AM',style: TextStyle(color: Colors.blue),),
//                         Text('BREAK HOURS : 1HRS',style: TextStyle(color: Colors.blue),),
//                       ],
//                     ),
//                     SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('CHECKOUT : 6.00PM',style: TextStyle(color: Colors.blue),),
//                         Text('TOTAL WORK : 8HRS',style: TextStyle(color: Colors.blue),),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'TODAY TASK',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
  
//   Text("VIEW ALL",style: TextStyle(color: Colors.blue),)
//                 ],
//               ),
//               SizedBox(height: 8),
// Container(
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [Icon(Icons.settings,color: Colors.white,size: 40.0,),

//       Text("4",style: TextStyle(color: Colors.red,fontSize: 40.0),
//       ),
//       Icon(Icons.download,color: Colors.green,),
//        Text("2",style: TextStyle(color: Colors.green,fontSize: 40.0),
       
//       ),
//       Icon(Icons.download,color: Colors.red,),
//       ],
//     ),
//   ),
//   height: 100,
//   width: double.infinity,
//   color: const Color.fromARGB(255, 185, 220, 248),
// )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildIconButton(IconData icon, String label) {
//     return Column(
//       children: [
//         CircleAvatar(
          
//           backgroundColor: Colors.black,
//           child: Icon(icon, size: 32, color: Colors.white)),
//         SizedBox(height: 4),
//         Text(label, style: TextStyle(fontSize: 12,color: Colors.black)),
//       ],
//     );
//   }

//   Widget _buildTaskTile(String status, String avatar, Color statusColor) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage: AssetImage(avatar),
//       ),
//       title: Text('Research Business'),
//       subtitle: Text(status),
//       trailing: Icon(Icons.check_circle, color: statusColor),
//     );
//   }
// }
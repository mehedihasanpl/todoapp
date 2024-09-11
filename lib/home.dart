import 'package:flutter/material.dart';




class home extends StatefulWidget {
  const home({super.key, required this.title});


  final String title;

  @override
  State<home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<home> {

List toDoList=[
  ['Todo Title',false],
  ['Todo Title',false],
  ['Todo Title',false],
  ['Todo Title',false],

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(



        actions: const <Widget>[
          Icon(Icons.calendar_month_sharp),
          SizedBox(
            height: 70,
            width: 30,


          ),

        ],
        title: Text(widget.title),

        backgroundColor:(Colors.blueAccent),
     ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       floatingActionButton: FloatingActionButton(
           
           onPressed: (){},
       backgroundColor: Colors.cyanAccent,
         child: const Icon(Icons.add),
       
       ),
       
       bottomNavigationBar: BottomNavigationBar(items:
      const[
        BottomNavigationBarItem(icon:Icon (Icons.playlist_add_circle),label: 'All',),
        BottomNavigationBarItem(icon:Icon  (Icons.check_box_outlined),label: 'Completed',),


      ]),
      body:ListView.builder(
        itemCount:toDoList.length,
        itemBuilder:(BuildContext context,index){
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 18,
                  right: 18,
                  bottom: 0,

                ),

                child: Container(
                  padding: EdgeInsets.all(20),
                decoration:  BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(14),
              ),

          child: Text( toDoList[index][0],
          style: const TextStyle(
          color: Colors.white,
          fontSize: 18,

          ),

          ),

          ),
              );
        }


    ),
        );


  }
}

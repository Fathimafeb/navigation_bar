import 'package:flutter/material.dart';

class Navig extends StatefulWidget {
  const Navig({super.key});

  @override
  State<Navig> createState() => _NavigState();
}

class _NavigState extends State<Navig> {
  int indexNum=0;
  List tabwidget=[
    Text('Home',style: TextStyle(fontSize: 40),),
    Text('Profile',style: TextStyle(fontSize: 40),),
    Text('Dashboard',style: TextStyle(fontSize: 40),),
    Text('Settings',style: TextStyle(fontSize: 40),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: Center(child: Text('Bottom Navigationbar')),
      ),
      bottomNavigationBar: BottomNavigationBar(items:const [
        BottomNavigationBarItem(icon:Icon(Icons.home),
            label:'Home',
          backgroundColor:Colors.blue,
        ),
         BottomNavigationBarItem(icon:Icon(Icons.person),
         label:'Profile',
         backgroundColor:Colors.orange,),
        BottomNavigationBarItem(icon:Icon(Icons.dashboard),
          label:'Dashboard',
          backgroundColor:Colors.green,),
        BottomNavigationBarItem(icon:Icon(Icons.settings),
          label:'Settings',
          backgroundColor:Colors.yellow,),
      ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum=index;

          });
        },
      ),
      body: Center(
        child: tabwidget.elementAt(indexNum),
      )
    );
  }
}

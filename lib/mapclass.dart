// class work {
//   String name;
//   int age;
//   DateTime dot;
//   work(this.name, this.age, this.dot);
// }


import 'package:flutter/material.dart';

class Tabpag extends StatefulWidget {
  const Tabpag({super.key, required String? text, required Icon? icon});

  @override
  State<Tabpag> createState() => _TabState();
}

class _TabState extends State<Tabpag> {
  void datepicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
   
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: const Text('Tabs '),
        bottom: const TabBar(
          tabs: [
            Tab(
              text: 'Category',
              icon: Icon(Icons.category)),
            Tab(
              text: 'person',
              icon: Icon(Icons.person)),
          ],
        ),
       
      ),
      body: TabBarView(
        children: [
        Scaffold(
          body: Center(
            child: Text('Category'),
          ),
        ),
        Scaffold(
          body: Center(
            
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: datepicker,
                  child: Text('Date Picker'),
                ),
                Text('Person'),
              ],
            ),
          ),
        ),
        ],
      ),
      
    )
    
    );
  
  }
}
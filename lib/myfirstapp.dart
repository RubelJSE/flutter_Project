
import 'package:flutter/material.dart';

class Myfirstapp extends StatefulWidget {
  const Myfirstapp({super.key});

  @override
  State<Myfirstapp> createState() => _MyfirstappState();
}

class _MyfirstappState extends State<Myfirstapp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Sing Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(16),
        
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Sing Up',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft, // Aligns the child to the left within the parent
                  child: Text(
                    'First Name',
                    textAlign: TextAlign.left, // Aligns the text to the left
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: TextEditingController(),
        
                  decoration: const InputDecoration(
                    hintText: 'First Name',
        
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
        
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft, // Aligns the child to the left within the parent
                  child: Text(
                    'Last Name',
                    textAlign: TextAlign.left, // Aligns the text to the left
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(height: 10,),
        
                TextField(
                  controller: TextEditingController(),
        
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
        
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
        
                ),
                const SizedBox(height: 20,),
        
             const Align(
                  alignment: Alignment.centerLeft, // Aligns the child to the left within the parent
                  child: Text(
                    'User Name',
                    textAlign: TextAlign.left, // Aligns the text to the left
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(height: 10,),
        
                TextField(
                  controller: TextEditingController(),
        
                  decoration: const InputDecoration(
                    hintText: '@quality_user_name',
        
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
        
                ),
                const SizedBox(height: 20,),

                const Align(
                  alignment: Alignment.centerLeft, // Aligns the child to the left within the parent
                  child: Text(
                    'Password',
                    textAlign: TextAlign.left, // Aligns the text to the left
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(height: 10,),
        
                TextField(
                  controller: TextEditingController(),
        
                  decoration: const InputDecoration(
                    hintText: 'create strong password',
        
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    ),
                  ),
        
                ),
                const SizedBox(height: 30,),
                Container(
        
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12.0),

                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Sing Up'),

                  ),
                )
        
              ],
            ),
        
          ),
        ),
      ),
    );

  }
}

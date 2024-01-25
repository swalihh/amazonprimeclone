
import 'package:flutter/material.dart';

import '../widgets/custom_Container.dart';
 
class Find extends StatefulWidget {
  const Find({super.key});

  @override
  State<Find> createState() => _FindState();
}

class _FindState extends State<Find> {

  @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,


      appBar: AppBar(
        title: const Text('Find',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        
      backgroundColor: const Color.fromARGB(255, 63, 63, 63),  
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
         padding: const EdgeInsets.all(20.0),
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), 
            color:const Color.fromARGB(255, 36, 36, 36), 
          ),
          child: TextFormField(
           
            onTap: () {
             
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SearchScreen()));
            },
            decoration:const InputDecoration(
              hintText: 'Search here',hintStyle:TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.search, color: Colors.white,),
              suffixIcon: Icon(Icons.mic, color: Colors.white,),
              border: InputBorder.none, 
            ),
          ),
           ),
           ),
      
     const Text('Genre',style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold),),
      const SizedBox(height:10 ,),
      Container(
        
              height: 600.0,
              child: GridView.builder(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
               childAspectRatio:3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                 return
                 const   MyCustomContainer(color: Color.fromARGB(255, 45, 44, 44),text: 'Fantacy',);
      
                },
              ),
            )
          
        
          
          
          ],
        ),
      ),
    );

  }
  
}
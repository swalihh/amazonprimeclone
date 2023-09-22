import 'dart:math';

import 'package:amazonprime/widgets/title_Widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: deviceWidth,
                  height: deviceHeight * 0.4,
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(22.0),
                        child: Row(
                          children: [
                            Text(
                              'prime video',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Spacer(),
                            Icon(Icons.cast, color: Colors.white),
                            SizedBox(width: 15),
                            CircleAvatar(
                              radius: 17,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                      ),
                      Container( 
                        width: 300,
                        height: 35,
                        child: TabBar(
                          indicator:BoxDecoration(
                            color: Color.fromARGB(112, 106, 105, 101),
                            borderRadius: BorderRadius.circular(20)
                          ) ,                    
                          tabs: [
                            Tab(
                              text: 'All',
                            ),
                            Tab(
                              text: 'Movies',
                            ),
                            Tab(
                              text: 'Tv Shows',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Expanded(child: TabBarView(
                  children: [
                    //  Tab 1
                Container(height: 300,width: deviceWidth,child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
              return    Container(height: 300,width: deviceWidth,color:Colors.primaries[Random().nextInt(Colors.primaries.length)]);
                }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                }, itemCount: 5),),
                    //  Tab 2
                    Center(
                      child: Text('Tab 2 Content',style: TextStyle(color: Colors.amber),),
                    ),
          
                    //  Tab 3
                    Center(
                      child: Text('Tab 3 Content',style: TextStyle(color: Colors.deepOrange),),
                    ),
                  ],
                ), )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                    RichTextWidget(firstText: 'Prime', secondText: '- Amazon Original Series',),
          
                 const SizedBox(height: 5 ,),
            SizedBox(
              width: deviceWidth,
              height: 200,
              child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Container(
                  height: 300,width: 150,
                  color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                );
              }, separatorBuilder: (context, index) =>const SizedBox(width: 5,), itemCount: 5),
            ),
             const SizedBox(height: 10,),
                    RichTextWidget(firstText: 'Prime', secondText: '- Recommended Movies',),
               const SizedBox(height: 5 ,),
                SizedBox(
              width: deviceWidth,
              height: 150,
              child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Container(
                 width: 200,
                  color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                );
              }, separatorBuilder: (context, index) =>const SizedBox(width: 5,), itemCount: 5),
            ),
            const SizedBox(height: 10,),
                    RichTextWidget(firstText: 'Prime', secondText: '- Recently Added Movies',),
               const SizedBox(height: 5 ,),
                SizedBox(
              width: deviceWidth,
              height: 150,
              child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Container(
                 width: 200,
                  color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                );
              }, separatorBuilder: (context, index) =>const SizedBox(width: 5,), itemCount: 5),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

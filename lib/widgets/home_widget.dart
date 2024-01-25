import 'package:amazonprime/model/amazon_model.dart';
import 'package:flutter/material.dart';

class Main_Card extends StatelessWidget {
  Future <List<AmazonModel>>future;
  final double deviceWidth;
  Main_Card({super.key, 
    required this.deviceWidth,required this.future
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
      if(snapshot.connectionState==ConnectionState.waiting){
        return const Center( child: CircularProgressIndicator(),);
      }else if(snapshot.hasError||snapshot.data==null){
        return Text('error${snapshot.error}');
      }else if(snapshot.hasData){
       final data =snapshot.data;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount:5,
          itemBuilder: (context, index) {
           final listofData = data![index];
           return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  SizedBox(
                    width: deviceWidth,
                    height: 260,
                    child:Column(
                      children: [
                        Container(
                          height: 260,
                          width: deviceWidth,
                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500${listofData.poster}'))),
                        ),
                         //Text(listofData.title,style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
                             
                            
                      ],
                    )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
        },);
      }
      return const SizedBox.shrink();
    },);
  }
}

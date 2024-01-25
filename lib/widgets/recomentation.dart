import 'package:amazonprime/model/amazon_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecommendedMoviesWidget extends StatelessWidget {
  Future<List<AmazonModel>> future;
  RecommendedMoviesWidget({super.key,required this.future});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data == null) {
          return Text('error${snapshot.error}');
        } else if (snapshot.hasData) {
          final data = snapshot.data;
          return ListView.builder(
            
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount:data?.length,
            itemBuilder: (context, index) {
              final listofData = data![index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                 
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: deviceWidth/2,
                    height: 290,
                    child:Column(
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500${listofData.poster}'))),
                        ),
                       const SizedBox(height: 5,),
                         Text(listofData.title,style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                             
                            
                      ],
                    )
                  ),
                  
                ],
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

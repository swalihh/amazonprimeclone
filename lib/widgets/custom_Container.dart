import 'package:amazonprime/model/amazon_model.dart';
import 'package:flutter/material.dart';

import '../funtion/api_funtion.dart';

class MyCustomContainer extends StatelessWidget {
  final String text;
  final Color color;

  const MyCustomContainer({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<AmazonModel> datas = [];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Search',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
                  borderRadius: BorderRadius.circular(
                      8.0), // Square-shaped with rounded corners
                  color: const Color.fromARGB(255, 36, 36, 36),
                ),
                child: TextFormField(
                  onChanged: (value) async {
                    final searchdetail = await SerchFunction(value);
                    setState(() {
                      datas = searchdetail;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search here',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Text(
              'Search',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 600,
              child: datas.isEmpty
                  ? const Center(
                      child: Text(
                        'Not founder',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: datas.length,
                      itemBuilder: (context, index) {
                        final data = datas[index];
                        return Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 41, 40, 39),
                            image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500${data.poster}',),fit: BoxFit.cover)
                          ),
                        
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 45,
                                color:const Color.fromARGB(159, 97, 97, 97), 
                                child: Center(child: Text(data.title,style: const TextStyle(color: Colors.white,fontSize: 15  ),))),
                            ],
                          ),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}

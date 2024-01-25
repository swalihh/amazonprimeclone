import 'package:amazonprime/funtion/api_funtion.dart';
import 'package:amazonprime/widgets/recomentation.dart';
import 'package:flutter/material.dart';
import '../widgets/action_movie_widget.dart';
import '../widgets/drama_Movie.dart';
import '../widgets/home_widget.dart';
import '../widgets/original_series.dart';
import '../widgets/title_Widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  height: deviceHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(22.0),
                        child: Row(
                          children: [
                            Text(
                              'prime video',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
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
                          indicator: BoxDecoration(
                              color: const Color.fromARGB(112, 106, 105, 101),
                              borderRadius: BorderRadius.circular(20)),
                          tabs: const [
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
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            //  Tab 1
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // ignore: sized_box_for_whitespace
                                  Container(
                                    width: deviceWidth,
                                    height: 270,
                                    child: Main_Card(
                                      future: fetchData(
                                          'https://api.themoviedb.org/3/movie/upcoming?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                      deviceWidth: deviceWidth,
                                    ),
                                  ),
                                  const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Amazon Original Series',
                                  ),
                                  Container(
                                      height: 320,
                                      width: deviceWidth,
                                      child: PrimeSeriesWidget(
                                          future: fetchData(
                                              'https://api.themoviedb.org/3/movie/now_playing?api_key=9196c35ab323973adffd117ee8f6d5eb'))),
                                  const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Recommended Movies',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: RecommendedMoviesWidget(future: fetchData('https://api.themoviedb.org/3/discover/movie?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                   const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Recommended Series',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: action_movie_widget(
                                     future: fetchseriesData('https://api.themoviedb.org/3/discover/tv?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                   const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Tv shows',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: SeriesWidget(
                                       future: fetchseriesData('https://api.themoviedb.org/3/discover/tv?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //  Tab 2
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                     const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Recommended Movies',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: RecommendedMoviesWidget(future: fetchData('https://api.themoviedb.org/3/discover/movie?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                     const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Top Rated Movies',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: RecommendedMoviesWidget(future: fetchData('https://api.themoviedb.org/3/discover/movie?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                        

                            //  Tab 3
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Most Popular Series',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: action_movie_widget(
                                     future: fetchseriesData('https://api.themoviedb.org/3/discover/tv?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                    const RichTextWidget(
                                    firstText: 'Prime',
                                    secondText: '- Amazon Orginal Series',
                                  ),
                                  Container(
                                    height: 320,
                                    width: deviceWidth,
                                    child: action_movie_widget(
                                     future: fetchseriesData('https://api.themoviedb.org/3/discover/tv?api_key=9196c35ab323973adffd117ee8f6d5eb'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

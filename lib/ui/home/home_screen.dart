import 'package:flutter/material.dart';
import 'package:tour_weather/data/activity_data.dart';
import 'package:tour_weather/model/category_icon.dart';
import 'package:tour_weather/model/tour_weather_card.dart';
import 'package:tour_weather/ui/home/category_widget.dart';
import 'package:tour_weather/ui/login/login_screen.dart';
import 'package:tour_weather/ui/home/tour_course_widget.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Tour'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              icon: const Icon(Icons.logout_outlined)),
        ],
      ),
      body: ListView(
        children: [
          const _buildWeatherDashboard(),
          const _buildCategory(),
          const Divider(
            thickness: 1,
            color: Colors.blueGrey,
          ),
          _buildWeatherTitle(),
          _buildTourWeather(controller),
          const Divider(
            thickness: 1,
            color: Colors.blueGrey,
          ),
          // Card(
          //
          // ),
        ],
      ),
    );
  }

  Widget _buildWeatherTitle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '투어 날씨 정보',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('인기 투어 코스의 날씨 예보'),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
    );
  }

  /* 지역별 투어 날씨 예보와 액티비티 추천
     카드 방식으로 수평으로 스크롤되게 구성
     대표 사진, 지역명, 날씨 정보, 추천 액티비티
     카드를 선택하면 날씨 예보 화면/메뉴로 이동
   */
  Widget _buildTourWeather(PageController controller) {
    return SizedBox(
      height: 400,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: tourWeatherCard
            .map((TourWeatherCard e) => TourCourse(
                  tourWeatherCard: e,
                ))
            .toList(),
      ),
    );
  }
}

/* 구역별 날씨 정보 표시 대시보드
*  화면 제일 상단에 위
 */
class _buildWeatherDashboard extends StatelessWidget {
  const _buildWeatherDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://cdn.pixabay.com/photo/2010/12/22/10/56/kayakers-3941_960_720.jpg');
  }
}

/*
  액티비티 활동을 카테고리 표시하는 아이
 */
class _buildCategory extends StatelessWidget {
  const _buildCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: categoryIcon
          .map((CategoryIcon e) => CategoryWidget(
                categoryIcon: e,
              ))
          .toList(),
    );
  }
}

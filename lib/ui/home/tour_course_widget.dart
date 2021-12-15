import 'package:tour_weather/model/tour_weather_card.dart';
import 'package:flutter/material.dart';

class TourCourse extends StatelessWidget {
  final TourWeatherCard tourWeatherCard;

  const TourCourse({Key? key, required this.tourWeatherCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              tourWeatherCard.imgUrl,
            ),
            Text(tourWeatherCard.title),
            Text(tourWeatherCard.weatherInfo),
            const Divider(),
            Text(tourWeatherCard.recommend),
          ],
        ),
      ),
    );
  }
}

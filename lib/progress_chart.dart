import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tracker_ui/Percentage.dart';

class CircleProgressChart extends StatefulWidget {
  const CircleProgressChart({Key? key}) : super(key: key);

  @override
  State<CircleProgressChart> createState() => _CircleProgressChartState();
}

class _CircleProgressChartState extends State<CircleProgressChart> {
  final List<Percentage> percentage = PercentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percentage.length,
        itemBuilder: (context, index) {
          final percentList = percentage[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 85,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 6,),
                CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 5,
                  percent: (percentList.percent / 100),
                  backgroundColor: Colors.white,
                  progressColor: Colors.green,
                  center: Text(
                    '${percentList.percent}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  '${percentList.categories}',
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\$${percentList.price}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tracker_ui/expense_graph.dart';
import 'package:tracker_ui/expense_income.dart';
import 'package:tracker_ui/progress_chart.dart';
import 'package:tracker_ui/visa_card_design.dart';
import 'package:tracker_ui/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 22.5),
            child: Row(
              children: [
                const Text(
                  'History',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.grey.shade500,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              VisaCardDesign(),
              ExpenseIncomeData(),
            ],
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Analytics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ExpenseGraphDesign(),
                  CircleProgressChart(),
                  SizedBox(height: 8),
                  BottomBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

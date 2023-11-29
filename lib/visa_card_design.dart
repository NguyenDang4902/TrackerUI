import 'package:flutter/material.dart';

class VisaCardDesign extends StatefulWidget {
  const VisaCardDesign({Key? key}) : super(key: key);

  @override
  State<VisaCardDesign> createState() => _VisaCardDesignState();
}

class _VisaCardDesignState extends State<VisaCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Colors.green,
          Colors.grey,
        ]),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Stack(
              children: [
                Row(
                  children: const [
                    Text(
                      '**** **** ****',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '9877',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 13,
                  child: Text(
                    '07/25',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$ 4,500.50',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  width: 60,
                  child: Text(
                    'visa'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

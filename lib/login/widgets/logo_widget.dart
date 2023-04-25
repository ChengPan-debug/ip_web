import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 24, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Audio Frequency',
              style: TextStyle(
                color: Color(0xFFF5F5F5),
                fontSize: 16,
              )),
          const SizedBox(height: 4),
          Row(
            children: const [
              Expanded(
                child: Text('Control System',
                    style: TextStyle(
                      color: Color(0xFF7E8A94),
                      fontSize: 12,
                    )),
              ),
              Image(
                image: NetworkImage('assets/images/icon_fold.png'),
                width: 24,
                height: 24,
              ),
              SizedBox(width: 5),
            ],
          )
        ],
      ),
    );
  }
}

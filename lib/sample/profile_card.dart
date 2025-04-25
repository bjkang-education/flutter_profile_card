import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                    width: 100,
                    image: AssetImage('assets/images/maru.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('이름: 마루'), Text('특기: 죽은척하기')],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('자기소개'),
              Text('안녕하세요 저는 김해에 살고있는 마루입니다.'),
            ],
          ),
        ),
      ),
    );
  }
}

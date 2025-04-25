import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = 'Maru';
  String hobby = '죽은척하기';
  String introduction = '안녕하세요 저는 김해에 살고있는 마루입니다.';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController hobbyController = TextEditingController();
  final TextEditingController introductionController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    hobbyController.dispose();
    introductionController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    setState(() {
      name = nameController.text;
      hobby = hobbyController.text;
      introduction = introductionController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                          children: [Text('이름: $name'), Text('특기: $hobby')],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('자기소개'),
                  Text(introduction),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: '이름',
                      hintText: '이름을 입력하세요',
                    ),
                  ),
                  TextFormField(
                    controller: hobbyController,
                    decoration: InputDecoration(
                      labelText: '특기',
                      hintText: '특기를 입력하세요',
                    ),
                  ),
                  TextFormField(
                    controller: introductionController,
                    decoration: InputDecoration(
                      labelText: '자기소개',
                      hintText: '자기소개를 입력하세요',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _updateProfile,
                    child: Text('프로필 업데이트'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

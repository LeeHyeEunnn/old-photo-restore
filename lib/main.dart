import 'package:flutter/material.dart';

void main() {
  runApp(const RestoreApp());
}

class RestoreApp extends StatelessWidget {
  const RestoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 우측 상단 DEBUG 띠를 없애고 싶으시면 아래 줄을 추가하세요
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('추억 복원소', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueAccent,
          centerTitle: true, // 제목을 가운데로 정렬
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 화면 정중앙에 배치
            crossAxisAlignment: CrossAxisAlignment.stretch, // 버튼을 가로로 길게
            children: [
              const Icon(
                Icons.photo_library, // 사진첩 아이콘 추가로 직관성 UP
                size: 80,
                color: Colors.blueAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                '사진을 넣어주세요!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // 사진 업로드 기능 연결 예정
                },
                icon: const Icon(Icons.add_a_photo),
                label: const Text('사진 가져오기'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 버튼 모서리를 둥글게
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
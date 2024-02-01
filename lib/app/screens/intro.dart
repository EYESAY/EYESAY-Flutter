// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'home.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _currentIndex = 0; // 현재 보여주는 설명의 인덱스
  final List<String> _introTexts = [
    "앱의 기본 사용법을 알려드립니다.",
    "이렇게 터치하여 다음 설명으로 넘어갈 수 있습니다.",
    "모든 설명을 끝내면 앱을 시작할 수 있습니다.",
  ]; // 설명 텍스트 목록

  void _showNextIntro() {
    if (_currentIndex < _introTexts.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      // 모든 텍스트를 보여준 후에는 홈 화면으로 넘어간다.
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _showNextIntro,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/character.png', width: 120), // 캐릭터 이미지
              const SizedBox(height: 20), // 이미지와 텍스트 사이의 공간
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  _introTexts[_currentIndex],
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

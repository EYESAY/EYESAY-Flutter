import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseStructureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 화면의 가로 길이를 기반으로 버튼의 크기를 계산
    double width = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      backgroundColor: Color(0xFFE8ECF2),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logo_blue.png',
                      width: 87.w,
                    ),
                    Text('이름을 입력해주세요!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 48.sp,
                          fontFamily: 'Noto Sans KR',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        )),
                    TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          hintText: '이름을 입력해주세요',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 331.h, horizontal: 100.h)),
                    ),
                    // // 버튼들
                    // Wrap(
                    //   children: [
                    //     for (var i = 0; i < 8; i++)
                    //       Container(
                    //         width: width,
                    //         height: width,
                    //         padding: EdgeInsets.all(8), // 버튼 간의 간격
                    //         child: ElevatedButton(
                    //           onPressed: () {
                    //             // 버튼 기능 구현
                    //           },
                    //           style: ElevatedButton.styleFrom(
                    //             // 배경색과 전경색 설정
                    //             primary: i == 7 ? Colors.blue : Colors.white,
                    //             onPrimary: Colors.black,
                    //             textStyle: TextStyle(
                    //               fontSize: 16, // 텍스트 크기
                    //             ),
                    //             shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(8),
                    //             ),
                    //           ),
                    //           child: i == 7 ? Icon(Icons.arrow_forward) : Text('버튼 $i'),
                    //         ),
                    //       ),
                    //   ],
                    // ),
                    // 아래쪽 아이콘 버튼들
                    // Expanded(
                    //   child: Align(
                    //     alignment: Alignment.bottomCenter,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         IconButton(
                    //           icon: Icon(Icons.home),
                    //           onPressed: () {
                    //             // 아이콘 버튼 기능 구현
                    //           },
                    //         ),
                    //         IconButton(
                    //           icon: Icon(Icons.arrow_downward),
                    //           onPressed: () {
                    //             // 아이콘 버튼 기능 구현
                    //           },
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                flex: 2),
            Flexible(
                child: Column(
                  children: [
                    Container(
                        child: Text('아이트래킹\n재설정하기',
                            style: TextStyle(
                              fontSize: 48.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center),
                        width: 493.w,
                        height: 240.h,
                        margin: EdgeInsets.all(10.w),
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        )),
                    Container(
                      child: Text(
                        '다음으로',
                        style: TextStyle(
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: 493.w,
                      height: 720.h,
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF1F50AC)),
                    )
                  ],
                ),
                flex: 1)
          ],
        ),
      ),
    );
  }
}

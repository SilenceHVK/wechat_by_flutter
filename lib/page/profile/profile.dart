import 'package:flutter/material.dart';
import 'package:wechat_by_flutter/widget/cell.dart';
import 'package:wechat_by_flutter/widget/dividing_line.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Profile();
}

class _Profile extends State<Profile> {
  final Widget _sizeBox = const SizedBox(height: 10);

  final Widget _header = Container(
    height: 260,
    padding: const EdgeInsets.only(top: 100, bottom: 20, right: 20, left: 20),
    color: Colors.white,
    child: Row(
      children: [
        Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage('images/profile_header.jpeg')))),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'H_VK',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    '微信号: H_VK',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )),
                  Icon(
                    Icons.qr_code,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: [
            _header,
            _sizeBox,
            const Cell(title: "服务", imageName: 'images/profile_service.png'),
            _sizeBox,
            const Cell(title: "收藏", imageName: 'images/profile_soucang.png'),
            DividingLine(),
            const Cell(title: "朋友圈", imageName: 'images/profile_pic.png'),
            DividingLine(),
            const Cell(title: "视频号", imageName: 'images/profile_video.png'),
            DividingLine(),
            const Cell(title: "卡包", imageName: 'images/profile_card.png'),
            DividingLine(),
            const Cell(title: "表情", imageName: 'images/profile_biaoqing.png'),
            _sizeBox,
            const Cell(title: "设置", imageName: 'images/profile_setting.png'),
          ],
        ));
  }
}

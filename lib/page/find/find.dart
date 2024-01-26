import 'package:flutter/material.dart';
import 'package:wechat_by_flutter/widget/cell.dart';
import 'package:wechat_by_flutter/widget/dividing_line.dart';

class Find extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Find();
}

class _Find extends State<Find> {
  final Widget _sizeBox = const SizedBox(height: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEBEBEB),
        title: const Text("发现"),
      ),
      body: ListView(
        children: [
          const Cell(title: "朋友圈", imageName: 'images/find_pengyouquan.png'),
          _sizeBox,
          const Cell(title: "视频号", imageName: 'images/find_shipinhao.png'),
          DividingLine(),
          const Cell(
            title: "直播",
            imageName: "images/find_live.png",
          ),
          _sizeBox,
          const Cell(
            title: "扫一扫",
            imageName: 'images/find_saoyisao.png',
          ),
          DividingLine(),
          const Cell(
            title: "摇一摇",
            imageName: 'images/find_yaoyiyao.png',
          ),
          _sizeBox,
          const Cell(
            title: "看一看",
            imageName: 'images/find_kanyikan.png',
          ),
          DividingLine(),
          const Cell(
            title: "搜一搜",
            imageName: 'images/find_soyiso.png',
          ),
          _sizeBox,
          const Cell(
            title: "附近",
            imageName: 'images/find_local.png',
          ),
          _sizeBox,
          const Cell(
            title: "购物",
            imageName: 'images/find_shopping.png',
            subTitle: '限时特价',
          ),
          DividingLine(),
          const Cell(
            title: "游戏",
            imageName: "images/find_game.png",
          ),
          _sizeBox,
          const Cell(
            title: "小程序",
            imageName: "images/find_xiaochengxu.png",
          ),
        ],
      ),
    );
  }
}

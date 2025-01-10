import 'package:flutter/material.dart';

class DeveloperInfoPage extends StatelessWidget {
  const DeveloperInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('开发者信息'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DeveloperCard(
            name: '马赛长颈鹿',
            description: '一位热爱创造一切的小透明',
            image: AssetImage('images/oboard.jpg'),
          ),
          DeveloperCard(
            name: 'Luxe7',
            description: '林师傅',
            image: AssetImage('images/Luxe7.jpg'),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              '''Github开源地址：
https://github.com/linzongzong2333/pyq

联系我们：
Lux@foxmail.com\n''',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      // bottomNavigationBar:
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final String name;
  final String description;
  final ImageProvider image;

  const DeveloperCard({
    super.key,
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: image,
            radius: 40,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

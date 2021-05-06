import 'package:flutter/material.dart';

class DownholeConfigBox extends StatelessWidget {

  final String title;
  final String subTitle;
  final String hintText;
  final Function(String data) configData;
  final bool enable;

  DownholeConfigBox({
    this.title,
    this.subTitle,
    this.hintText,
    this.configData,
    this.enable = true
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(subTitle)
            ],
          ),
          Expanded(
            flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  enabled: enable,
                  decoration: InputDecoration(
                      hintText: hintText
                  ),
                  onChanged: configData,
                ),
              )
          )
        ],
      ),
    );
  }
}

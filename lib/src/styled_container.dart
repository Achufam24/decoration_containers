import 'package:flutter/material.dart';

class FancyContainer extends StatefulWidget {
  const FancyContainer({
    Key? key,
    this.height = 120.0,
    this.width,
    this.color1,
    this.color2,
    this.title = "Title",
    this.textcolor,
    this.subtitle = "Subtitle",
    this.subtitlecolor,
    this.padding,
  }) : super(key: key);


  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textcolor;
  final String subtitle;
  final Color? subtitlecolor;
  final EdgeInsetsGeometry? padding;

  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??MediaQuery.of(context).size.width * 8.90,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28.0)),
          gradient: LinearGradient(
              colors: [widget.color1??Color(0xFFCB1041), widget.color2??Color(0xFF2604DE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(8, 6),
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(widget.title,
              style: TextStyle(
                color: widget.textcolor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(widget.subtitle,
              style: TextStyle(
                color: widget.subtitlecolor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
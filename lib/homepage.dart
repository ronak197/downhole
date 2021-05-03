import 'package:downhole/downhole_config.dart';
import 'package:downhole/downhole_config_box.dart';
import 'package:flutter/material.dart';
import 'package:downhole/downhole_painter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  DownholeConfig downholeConfig = DownholeConfig();

  double heightScaleFactor;
  double widthScaleFactor;
  double chokeLineVLength;
  double chokeLineHLength;
  double chokeLineDiameter;
  double riserInnerDiameter;
  double riserBlockerHeight;
  double drillPipeLength;
  double drillPipeWidth;
  double openHoleSectionHeight;
  double openHoleSectionWidth;
  double casingLength;
  double casingWidth;
  double drillPipeOpenHoleHeight;
  double heavyWeightDrillPipeHeight;
  double heavyWeightDrillPipeWidth;
  double drillCollarHeight;
  double drillCollarWidth;
  double influxLength;


  updateDownhole(){
    downholeConfig.updateConfig(
        heightScaleFactor: heightScaleFactor,
        widthScaleFactor: widthScaleFactor,
        chokeLineLength: chokeLineVLength,
        chokeLineHLength: chokeLineHLength,
        chokeLineDiameter: chokeLineDiameter,
        riserInnerDiameter: riserInnerDiameter,
        riserBlockerHeight: riserBlockerHeight,
        drillPipeLength: drillPipeLength,
        drillPipeWidth: drillPipeWidth,
        openHoleSectionHeight: openHoleSectionHeight,
        openHoleSectionWidth: openHoleSectionWidth,
        casingLength: casingLength,
        casingWidth: casingWidth,
        drillPipeOpenHoleHeight: drillPipeOpenHoleHeight,
        heavyWeightDrillPipeLength: heavyWeightDrillPipeHeight,
        heavyWeightDrillPipeWidth: heavyWeightDrillPipeWidth,
        drillCollarLength: drillCollarHeight,
        drillCollarWidth: drillCollarWidth,
        influxLength: influxLength,
    );
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.redAccent,
                      height: 10.0,
                      width: 10.0,
                    ),
                    flex: 1,
                  ),
                  Container(
                    height: downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.openHoleSectionHeight,
                    width: downholeConfig.casingWidth + downholeConfig.chokeLineHLength*2,
                    child: CustomPaint(
                      painter: DownholePainter(
                        downholeConfig: downholeConfig
                      ),
                      child: Container(
                        height: 100.0,
                        width: 0.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      // color: Colors.redAccent,
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Configuration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                  DownholeConfigBox(
                    title: "Downhole Width Scale Factor",
                    subTitle: "Multiplier use to scale",
                    hintText: "2",
                    configData: (s){
                      widthScaleFactor = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Downhole Height Scale Factor",
                    subTitle: "Multiplier use to scale",
                    hintText: "0.025",
                    configData: (s){
                      heightScaleFactor = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline vertical Length",
                    subTitle: "In Feet",
                    hintText: "4000",
                    configData: (s){
                      chokeLineVLength = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline horizontal Length",
                    subTitle: "In Inch",
                    hintText: "50",
                    configData: (s){
                      chokeLineHLength = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline Inner Diameter",
                    subTitle: "In Inch",
                    hintText: "3",
                    configData: (s){
                      chokeLineDiameter = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Riser inner diameter",
                    subTitle: "In Inch",
                    hintText: "50",
                    configData: (s){
                      riserInnerDiameter = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Riser blocker height",
                    subTitle: "In Feet",
                    hintText: "500",
                    configData: (s){
                      riserBlockerHeight = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Casing length",
                    subTitle: "In Feet",
                    hintText: "4000",
                    configData: (s){
                      casingLength = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Casing width",
                    subTitle: "In Inch",
                    hintText: "20",
                    configData: (s){
                      casingWidth = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Open hole section height",
                    subTitle: "In Feet",
                    hintText: "4400",
                    configData: (s){
                      openHoleSectionHeight = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Open hole section width",
                    subTitle: "In Inch",
                    hintText: "2",
                    configData: (s){
                      openHoleSectionWidth = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe inner diameter",
                    subTitle: "In Inch",
                    hintText: "5",
                    configData: (s){
                      drillPipeWidth = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe open hole height",
                    subTitle: "In Feet",
                    hintText: "3160",
                    configData: (s){
                      drillPipeOpenHoleHeight = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Heavy Weight Drill Pipe height",
                    subTitle: "In Feet",
                    hintText: "240",
                    configData: (s){
                      heavyWeightDrillPipeHeight = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Heavy Weight Drill Pipe width",
                    subTitle: "In Inch",
                    hintText: "1",
                    configData: (s){
                      heavyWeightDrillPipeWidth = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drill Collar height",
                    subTitle: "In Feet",
                    hintText: "1000",
                    configData: (s){
                      drillCollarHeight = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drill Collar width",
                    subTitle: "In Inch",
                    hintText: "2",
                    configData: (s){
                      drillCollarWidth = s == "" ? null : double.parse(s);
                      updateDownhole();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
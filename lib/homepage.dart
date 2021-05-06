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
  double drillPipeID;
  double drillPipeOD;
  double openHoleSectionHeight;
  double openHoleSectionID;
  double casingLength;
  double casingOD;
  double casingID;
  double drillPipeOpenHoleHeight;
  double heavyWeightDrillPipeHeight;
  double heavyWeightDrillPipeID;
  double heavyWeightDrillPipeOD;
  double drillCollarHeight;
  double drillCollarID;
  double drillCollarOD;
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
        drillPipeID: drillPipeID,
        drillPipeOD: drillPipeOD,
        openHoleSectionHeight: openHoleSectionHeight,
        openHoleSectionID: openHoleSectionID,
        casingLength: casingLength,
        casingID: casingID,
        casingOD: casingOD,
        drillPipeOpenHoleHeight: drillPipeOpenHoleHeight,
        heavyWeightDrillPipeHeight: heavyWeightDrillPipeHeight,
        heavyWeightDrillPipeID: heavyWeightDrillPipeID,
        heavyWeightDrillPipeOD: heavyWeightDrillPipeOD,
        drillCollarHeight: drillCollarHeight,
        drillCollarID: drillCollarID,
        drillCollarOD: drillCollarOD,
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
                    width: downholeConfig.casingID + downholeConfig.chokeLineHLength*2,
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
                    subTitle: "Multiplier use to scale (Note: Use this to adjust downhole into the screen horizontally)",
                    hintText: "5",
                    configData: (s){
                      widthScaleFactor = s == "" ? 5 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Downhole Height Scale Factor",
                    subTitle: "Multiplier use to scale (Note: Use this to adjust downhole into the screen vertically)",
                    hintText: "0.025",
                    configData: (s){
                      heightScaleFactor = s == "" ? 0.025 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline vertical Length",
                    subTitle: "In Feet",
                    hintText: "4000",
                    configData: (s){
                      chokeLineVLength = s == "" ? 4000 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline horizontal Length",
                    subTitle: "In Inch",
                    hintText: "30",
                    configData: (s){
                      chokeLineHLength = s == "" ? 50 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Chokeline ID",
                    subTitle: "In Inch",
                    hintText: "3",
                    configData: (s){
                      chokeLineDiameter = s == "" ? 3 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Riser ID",
                    subTitle: "In Inch",
                    hintText: "50",
                    configData: (s){
                      riserInnerDiameter = s == "" ? 50 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Riser blocker height",
                    subTitle: "In Feet",
                    hintText: "500",
                    configData: (s){
                      riserBlockerHeight = s == "" ? 500 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Casing height",
                    subTitle: "In Feet",
                    hintText: "4000",
                    configData: (s){
                      casingLength = s == "" ? 4000 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Casing ID",
                    subTitle: "In Inch",
                    hintText: "9.95",
                    configData: (s){
                      casingID = s == "" ? 9.95 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Casing OD",
                    subTitle: "In Inch",
                    hintText: "10.75",
                    configData: (s){
                      casingOD = s == "" ? 10.75 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Open hole section ID",
                    subTitle: "In Inch",
                    hintText: "8.5",
                    configData: (s){
                      openHoleSectionID = s == "" ? 8.5 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe height",
                    subTitle: "In Inch",
                    hintText: ((downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)/downholeConfig.heightScaleFactor).toString(),
                    enable: false,
                    configData: (s){

                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe ID",
                    subTitle: "In Inch",
                    hintText: "4.276",
                    configData: (s){
                      drillPipeID = s == "" ? 4.276 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe OD",
                    subTitle: "In Inch",
                    hintText: "5",
                    configData: (s){
                      drillPipeOD = s == "" ? 5 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drillpipe open hole height",
                    subTitle: "In Feet",
                    hintText: "2760",
                    configData: (s){
                      drillPipeOpenHoleHeight = s == "" ? 2760 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Heavy Weight Drill Pipe height",
                    subTitle: "In Feet",
                    hintText: "240",
                    configData: (s){
                      heavyWeightDrillPipeHeight = s == "" ? 240 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Heavy Weight Drill Pipe ID",
                    subTitle: "In Inch",
                    hintText: "3.3",
                    configData: (s){
                      heavyWeightDrillPipeID = s == "" ? 3.3 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Heavy Weight Drill Pipe OD",
                    subTitle: "In Inch",
                    hintText: "5.6",
                    configData: (s){
                      heavyWeightDrillPipeOD = s == "" ? 5.6 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drill Collar height",
                    subTitle: "In Feet",
                    hintText: "1000",
                    configData: (s){
                      drillCollarHeight = s == "" ? 1000 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drill Collar ID",
                    subTitle: "In Inch",
                    hintText: "2.78",
                    configData: (s){
                      drillCollarID = s == "" ? 2.78 : double.parse(s);
                      updateDownhole();
                    },
                  ),
                  DownholeConfigBox(
                    title: "Drill Collar OD",
                    subTitle: "In Inch",
                    hintText: "6.25",
                    configData: (s){
                      drillCollarOD = s == "" ? 6.25 : double.parse(s);
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
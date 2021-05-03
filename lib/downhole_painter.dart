import 'package:downhole/downhole_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownholePainter extends CustomPainter {

  DownholeConfig downholeConfig = DownholeConfig();

  DownholePainter({
    this.downholeConfig,
  });

  @override
  void paint(Canvas canvas, Size size) {

    Path killCasingPath = Path()
      ..moveTo(0.0, 0.0)
      ..relativeLineTo(0.0, downholeConfig.chokeLineVLength)
      ..relativeLineTo(downholeConfig.chokeLineHLength, 0)
      ..relativeLineTo(0, downholeConfig.casingLength)
      ..relativeMoveTo(downholeConfig.casingWidth, 0)
      ..relativeLineTo(0, -downholeConfig.casingLength)
      ..relativeLineTo(downholeConfig.chokeLineHLength, 0)
      ..relativeLineTo(0, -downholeConfig.chokeLineVLength)
      ..moveTo(downholeConfig.chokeLineDiameter, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter - downholeConfig.chokeLineDiameter*2)/2, 0)
      ..relativeMoveTo(downholeConfig.riserInnerDiameter, 0)
      ..relativeLineTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter - downholeConfig.chokeLineDiameter*2)/2, 0)
      ..relativeLineTo(0, -downholeConfig.chokeLineVLength + downholeConfig.chokeLineDiameter);


    Path riserPath = Path()
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter)/2, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter)/2 + downholeConfig.riserInnerDiameter, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter);

    Path openHoleSectionPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength, downholeConfig.chokeLineVLength + downholeConfig.casingLength)
      ..relativeLineTo(0, downholeConfig.openHoleSectionHeight)
      ..relativeLineTo(downholeConfig.openHoleSectionWidth, 0)
      ..relativeLineTo(0, -downholeConfig.openHoleSectionHeight)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingWidth - downholeConfig.openHoleSectionWidth, downholeConfig.chokeLineVLength + downholeConfig.casingLength)
      ..relativeLineTo(0, downholeConfig.openHoleSectionHeight)
      ..relativeLineTo(downholeConfig.openHoleSectionWidth, 0)
      ..relativeLineTo(0, -downholeConfig.openHoleSectionHeight)
      ..close();

    Path riserBlocker = Path()
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter)/2, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo(downholeConfig.riserBlockerWidth, 0)
      ..relativeLineTo(0, -downholeConfig.riserBlockerHeight)
      ..relativeLineTo(-downholeConfig.riserBlockerWidth, 0)
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingWidth - downholeConfig.riserInnerDiameter)/2  + downholeConfig.riserInnerDiameter - downholeConfig.riserBlockerWidth, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo(downholeConfig.riserBlockerWidth, 0)
      ..relativeLineTo(0, -downholeConfig.riserBlockerHeight)
      ..relativeLineTo(-downholeConfig.riserBlockerWidth, 0)
      ..close();

    Path drillPipePath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingWidth/2 - downholeConfig.drillPipeWidth/2, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeMoveTo(downholeConfig.drillPipeWidth, 0)
      ..relativeLineTo(0, -(downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight));

    Path hwdpPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingWidth/2 - downholeConfig.drillPipeWidth/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeMoveTo(downholeConfig.heavyWeightDrillPipeWidth/2, 0)
      ..relativeLineTo(-downholeConfig.heavyWeightDrillPipeWidth, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeHeight)
      ..relativeLineTo(downholeConfig.heavyWeightDrillPipeWidth, 0)
      ..close()
      ..moveTo(downholeConfig.drillPipeWidth + downholeConfig.chokeLineHLength + downholeConfig.casingWidth/2 - downholeConfig.drillPipeWidth/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeMoveTo(downholeConfig.heavyWeightDrillPipeWidth/2, 0)
      ..relativeLineTo(-downholeConfig.heavyWeightDrillPipeWidth, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeHeight)
      ..relativeLineTo(downholeConfig.heavyWeightDrillPipeWidth, 0)
      ..close();

    Path drillCollarPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingWidth/2 - downholeConfig.drillPipeWidth/2, downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeMoveTo(downholeConfig.drillCollarWidth/2, 0)
      ..relativeLineTo(-downholeConfig.drillCollarWidth, 0)
      ..relativeLineTo(0, downholeConfig.drillCollarHeight)
      ..relativeLineTo(downholeConfig.drillCollarWidth, 0)
      ..close()
      ..moveTo(downholeConfig.drillPipeWidth + downholeConfig.chokeLineHLength + downholeConfig.casingWidth/2 - downholeConfig.drillPipeWidth/2, downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeMoveTo(downholeConfig.drillCollarWidth/2, 0)
      ..relativeLineTo(-downholeConfig.drillCollarWidth, 0)
      ..relativeLineTo(0, downholeConfig.drillCollarHeight)
      ..relativeLineTo(downholeConfig.drillCollarWidth, 0)
      ..close();

    Paint paint = Paint()..style = PaintingStyle.stroke ..color = Colors.blue;

    paint..shader = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.blue,
        Colors.redAccent,
      ],
    ).createShader(killCasingPath.getBounds());

    Paint killCasingPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..shader = null
      ..color = Color(0xff090501);

    Paint riserBorderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..shader = null
      ..color = Colors.black87;

    Paint openHolePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Color(0xffCDCDCE);

    Paint openHoleBorderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..color = Color(0xffCDCDCE);

    Paint drillPipePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Color(0xff9F9C95);

    Paint hwdpPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Color(0xff9F9C95);

    Paint riserBlockerPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Color(0xff9F1417);

    // canvas.drawPath(killCasingPath, paint);
    canvas.drawPath(killCasingPath, killCasingPaint);
    canvas.drawPath(riserBlocker, riserBlockerPaint);
    canvas.drawPath(riserPath, riserBorderPaint);
    canvas.drawPath(openHoleSectionPath, openHolePaint);
    canvas.drawPath(openHoleSectionPath, openHoleBorderPaint);
    canvas.drawPath(drillPipePath, drillPipePaint);
    canvas.drawPath(hwdpPath, hwdpPaint);
    canvas.drawPath(drillCollarPath, hwdpPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}

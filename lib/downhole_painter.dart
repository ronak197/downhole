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
      ..relativeMoveTo(downholeConfig.casingID, 0)
      ..relativeLineTo(0, -downholeConfig.casingLength)
      ..relativeLineTo(downholeConfig.chokeLineHLength, 0)
      ..relativeLineTo(0, -downholeConfig.chokeLineVLength)
      ..moveTo(downholeConfig.chokeLineDiameter, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter - downholeConfig.chokeLineDiameter*2)/2, 0)
      ..relativeMoveTo(downholeConfig.riserInnerDiameter, 0)
      ..relativeLineTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter - downholeConfig.chokeLineDiameter*2)/2, 0)
      ..relativeLineTo(0, -downholeConfig.chokeLineVLength + downholeConfig.chokeLineDiameter);

    Path casingThicknessPath = Path()
      ..moveTo(0.0, 0.0)
      ..relativeMoveTo(0.0, downholeConfig.chokeLineVLength)
      ..relativeMoveTo(downholeConfig.chokeLineHLength, 0)
      ..relativeLineTo(0, downholeConfig.casingLength)
      ..relativeLineTo(-downholeConfig.casingThickness,  0)
      ..relativeLineTo(0, -downholeConfig.casingLength)
      ..close()
      ..relativeMoveTo(downholeConfig.casingID + downholeConfig.casingThickness, 0)
      ..relativeLineTo(downholeConfig.casingThickness, 0)
      ..relativeLineTo(0, downholeConfig.casingLength)
      ..relativeLineTo(-downholeConfig.casingThickness, 0)
      ..close();

    Path killLineBlocker = Path()
      ..moveTo(0.0, 0.0)
      ..relativeLineTo(0.0, downholeConfig.killLineBlockerHeight)
      ..relativeLineTo(downholeConfig.chokeLineDiameter, 0.0)
      ..relativeLineTo(0.0, -downholeConfig.killLineBlockerHeight)
      ..close();


    Path riserPath = Path()
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter)/2, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter)/2 + downholeConfig.riserInnerDiameter, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter);

    Path openHoleSectionPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength - downholeConfig.casingThickness, downholeConfig.chokeLineVLength + downholeConfig.casingLength)
      ..relativeLineTo(0, downholeConfig.openHoleSectionHeight)
      ..relativeLineTo(downholeConfig.openHoleSectionThickness, 0)
      ..relativeLineTo(0, -downholeConfig.openHoleSectionHeight)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID + downholeConfig.casingThickness, downholeConfig.chokeLineVLength + downholeConfig.casingLength)
      ..relativeLineTo(0, downholeConfig.openHoleSectionHeight)
      ..relativeLineTo(-downholeConfig.openHoleSectionThickness, 0)
      ..relativeLineTo(0, -downholeConfig.openHoleSectionHeight)
      ..close();

    Path riserBlocker = Path()
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter)/2, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo(downholeConfig.riserBlockerWidth, 0)
      ..relativeLineTo(0, -downholeConfig.riserBlockerHeight)
      ..relativeLineTo(-downholeConfig.riserBlockerWidth, 0)
      ..moveTo((downholeConfig.chokeLineHLength*2 + downholeConfig.casingID - downholeConfig.riserInnerDiameter)/2  + downholeConfig.riserInnerDiameter - downholeConfig.riserBlockerWidth, downholeConfig.chokeLineVLength - downholeConfig.chokeLineDiameter)
      ..relativeLineTo(downholeConfig.riserBlockerWidth, 0)
      ..relativeLineTo(0, -downholeConfig.riserBlockerHeight)
      ..relativeLineTo(-downholeConfig.riserBlockerWidth, 0)
      ..close();

    Path drillPipePath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 - downholeConfig.drillPipeID/2, 0)
      ..relativeLineTo(0, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(-downholeConfig.drillPipeThickness, 0)
      ..relativeLineTo(0, -downholeConfig.chokeLineVLength - downholeConfig.casingLength - downholeConfig.drillPipeOpenHoleHeight)
      ..close()
      ..relativeMoveTo(downholeConfig.drillPipeID + downholeConfig.drillPipeThickness, 0)
      ..relativeLineTo(0, (downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight))
      ..relativeLineTo(downholeConfig.drillPipeThickness, 0)
      ..relativeLineTo(0, -(downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight))
      ..close();

    Path hwdpPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 - downholeConfig.heavyWeightDrillPipeID/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(-downholeConfig.heavyWeightDrillPipeThickness, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeHeight)
      ..relativeLineTo(downholeConfig.heavyWeightDrillPipeThickness, 0)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 + downholeConfig.heavyWeightDrillPipeID/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(downholeConfig.heavyWeightDrillPipeThickness, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeHeight)
      ..relativeLineTo(-downholeConfig.heavyWeightDrillPipeThickness, 0)
      ..close();

    Path hwdpJoints = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 - downholeConfig.heavyWeightDrillPipeID/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(0, -downholeConfig.heavyWeightDrillPipeJointHeight)
      ..relativeLineTo(-downholeConfig.heavyWeightDrillPipeJointThickness, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeJointHeight)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 + downholeConfig.heavyWeightDrillPipeID/2, downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(0, -downholeConfig.heavyWeightDrillPipeJointHeight)
      ..relativeLineTo(downholeConfig.heavyWeightDrillPipeJointThickness, 0)
      ..relativeLineTo(0, downholeConfig.heavyWeightDrillPipeJointHeight)
      ..close();

    Path drillCollarPath = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 - downholeConfig.drillCollarID/2, downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(-downholeConfig.drillCollarThickness, 0)
      ..relativeLineTo(0, downholeConfig.drillCollarHeight)
      ..relativeLineTo(downholeConfig.drillCollarThickness, 0)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 + downholeConfig.drillCollarID/2, downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(downholeConfig.drillCollarThickness, 0)
      ..relativeLineTo(0, downholeConfig.drillCollarHeight)
      ..relativeLineTo(-downholeConfig.drillCollarThickness, 0)
      ..close();

    Path drillCollarJoints = Path()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 - downholeConfig.drillCollarID/2, downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(0, -downholeConfig.drillCollarJointHeight)
      ..relativeLineTo(-downholeConfig.drillCollarJointThickness, 0)
      ..relativeLineTo(0 , downholeConfig.drillCollarJointHeight)
      ..close()
      ..moveTo(downholeConfig.chokeLineHLength + downholeConfig.casingID/2 + downholeConfig.drillCollarID/2 , downholeConfig.heavyWeightDrillPipeHeight + downholeConfig.chokeLineVLength + downholeConfig.casingLength + downholeConfig.drillPipeOpenHoleHeight)
      ..relativeLineTo(0, -downholeConfig.drillCollarJointHeight)
      ..relativeLineTo(downholeConfig.drillCollarJointThickness, 0)
      ..relativeLineTo(0 , downholeConfig.drillCollarJointHeight)
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

    Paint casingThicknessPaint = Paint()
      ..style = PaintingStyle.fill
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
      ..style = PaintingStyle.fill
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
    canvas.drawPath(killLineBlocker, riserBlockerPaint);
    canvas.drawPath(riserBlocker, riserBlockerPaint);
    canvas.drawPath(riserPath, riserBorderPaint);
    canvas.drawPath(openHoleSectionPath, openHolePaint);
    canvas.drawPath(openHoleSectionPath, openHoleBorderPaint);
    canvas.drawPath(casingThicknessPath, casingThicknessPaint);
    canvas.drawPath(drillPipePath, drillPipePaint);
    canvas.drawPath(hwdpPath, hwdpPaint);
    canvas.drawPath(hwdpJoints, hwdpPaint);
    canvas.drawPath(drillCollarPath, hwdpPaint);
    canvas.drawPath(drillCollarJoints, hwdpPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}

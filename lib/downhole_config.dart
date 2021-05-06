class DownholeConfig{

  // outer dimensions
  double widthScaleFactor;
  double heightScaleFactor;

  // Choke/Kill line
  double chokeLineVLength;
  double chokeLineHLength; // Horizontal length of choke line
  double chokeLineDiameter;
  double killLineBlockerHeight;

  // Riser
  double riserInnerDiameter;

  // Riser Blocker
  double riserBlockerHeight;

  // Drill pipe
  double drillPipeHeight; // Length of drill pipe in casing + riser + chokeLineWidth
  double drillPipeID;
  double drillPipeThickness;

  // Casing
  double casingLength;
  double casingID; // Or diameter of casing
  double casingThickness;

  // DrillPipe in open hole
  double drillPipeOpenHoleHeight;

  // Open Hole section
  double openHoleSectionThickness;
  double openHoleSectionHeight;
  double openHoleSectionID;

  // Heavy Weight drill pipe
  double heavyWeightDrillPipeHeight;
  double heavyWeightDrillPipeThickness;
  double heavyWeightDrillPipeID;
  double heavyWeightDrillPipeJointHeight;

  // Drill Collar
  double drillCollarHeight;
  double drillCollarThickness;
  double drillCollarID;
  double drillCollarJointHeight;

  // Influx
  double influxLength;

  DownholeConfig({
    this.heightScaleFactor = 0.025,
    this.widthScaleFactor =  5,
    this.chokeLineVLength = 100,
    this.chokeLineHLength = 250,
    this.chokeLineDiameter = 15,
    this.killLineBlockerHeight = 12.5,
    this.riserInnerDiameter = 250,
    this.riserBlockerHeight = 12.5,
    this.drillPipeHeight = 269,
    this.drillPipeID = 21.38,
    this.drillPipeThickness = 1.81,
    this.openHoleSectionHeight = 100,
    this.openHoleSectionThickness = 5.625,
    this.openHoleSectionID = 42.5,
    this.casingLength = 100,
    this.casingID = 49.75,
    this.casingThickness = 2,
    this.drillPipeOpenHoleHeight = 69,
    this.heavyWeightDrillPipeHeight = 6,
    this.heavyWeightDrillPipeThickness = 5.75,
    this.heavyWeightDrillPipeID = 16.5,
    this.heavyWeightDrillPipeJointHeight = 3,
    this.drillCollarHeight = 25,
    this.drillCollarJointHeight = 3,
    this.drillCollarThickness = 8.675,
    this.drillCollarID = 13.9,
    this.influxLength,
  });

  void updateConfig({
    double heightScaleFactor,
    double widthScaleFactor,
    double chokeLineLength,
    double chokeLineHLength,
    double chokeLineDiameter,
    double riserInnerDiameter,
    double riserBlockerHeight,
    double drillPipeLength,
    double drillPipeID,
    double drillPipeOD,
    double drillPipeThickness,
    double openHoleSectionHeight,
    double openHoleSectionID,
    double casingLength,
    double casingID,
    double casingOD,
    double drillPipeOpenHoleHeight,
    double heavyWeightDrillPipeHeight,
    double heavyWeightDrillPipeOD,
    double heavyWeightDrillPipeID,
    double drillCollarHeight,
    double drillCollarOD,
    double drillCollarID,
    double influxLength,}){

    this.heightScaleFactor = heightScaleFactor == null ? this.heightScaleFactor : heightScaleFactor;
    this.widthScaleFactor = widthScaleFactor == null ? this.widthScaleFactor : widthScaleFactor;
    this.chokeLineVLength = chokeLineLength == null ? this.chokeLineVLength : chokeLineLength*this.heightScaleFactor;
    this.chokeLineHLength = chokeLineHLength == null ? this.chokeLineHLength : chokeLineHLength*this.widthScaleFactor;
    this.chokeLineDiameter = chokeLineDiameter == null ? this.chokeLineDiameter : chokeLineDiameter*this.widthScaleFactor;
    this.riserInnerDiameter = riserInnerDiameter == null ? this.riserInnerDiameter : riserInnerDiameter*this.widthScaleFactor;
    this.riserBlockerHeight = riserBlockerHeight == null ? this.riserBlockerHeight : riserBlockerHeight*this.heightScaleFactor;
    this.drillPipeHeight = drillPipeLength == null ? this.drillPipeHeight : drillPipeLength*this.heightScaleFactor;
    this.drillPipeID = drillPipeID == null ? this.drillPipeID : drillPipeID*this.widthScaleFactor;
    this.drillPipeThickness = (drillPipeID == null || drillPipeOD == null) ? this.drillPipeThickness : ((drillPipeOD - drillPipeID)/2)*this.widthScaleFactor;
    this.openHoleSectionHeight = (drillPipeOpenHoleHeight == null || heavyWeightDrillPipeHeight == null || drillCollarHeight == null)  ? this.openHoleSectionHeight : (drillPipeOpenHoleHeight + heavyWeightDrillPipeHeight + drillCollarHeight)*this.heightScaleFactor;
    this.openHoleSectionThickness = (openHoleSectionID == null || casingOD == null) ? this.openHoleSectionThickness : ((casingOD - openHoleSectionID)/2)*this.widthScaleFactor;
    this.openHoleSectionID = openHoleSectionID == null ? this.openHoleSectionID : openHoleSectionID*this.widthScaleFactor;
    this.casingLength = casingLength == null ? this.casingLength : casingLength*this.heightScaleFactor;
    this.casingThickness = (casingID == null || casingOD == null) ? this.casingThickness : ((casingOD - casingID)/2)*this.widthScaleFactor;
    this.casingID = casingID == null ? this.casingID : casingID*this.widthScaleFactor;
    this.drillPipeOpenHoleHeight = drillPipeOpenHoleHeight == null ? this.drillPipeOpenHoleHeight : drillPipeOpenHoleHeight*this.heightScaleFactor;
    this.heavyWeightDrillPipeID = heavyWeightDrillPipeID == null ? this.heavyWeightDrillPipeID : heavyWeightDrillPipeID*this.widthScaleFactor;
    this.heavyWeightDrillPipeHeight = heavyWeightDrillPipeHeight == null ? this.heavyWeightDrillPipeHeight : heavyWeightDrillPipeHeight*this.heightScaleFactor;
    this.heavyWeightDrillPipeThickness = (heavyWeightDrillPipeID == null || heavyWeightDrillPipeOD == null) ? this.heavyWeightDrillPipeThickness : ((heavyWeightDrillPipeOD - heavyWeightDrillPipeID)/2)*this.widthScaleFactor;
    this.drillCollarID = (drillCollarID == null) ? this.drillCollarID : drillCollarID*this.widthScaleFactor;
    this.drillCollarHeight = drillCollarHeight == null ? this.drillCollarHeight : drillCollarHeight*this.heightScaleFactor;
    this.drillCollarThickness = (drillCollarID == null || drillCollarOD == null) ? this.drillCollarThickness : ((drillCollarOD - drillCollarID)/2)*this.widthScaleFactor;
    this.influxLength = influxLength == null ? this.influxLength : influxLength*this.heightScaleFactor;
  }

  double get riserBlockerWidth {
    return (this.riserInnerDiameter - this.drillPipeID - this.drillPipeThickness*2)/2;
  }

  double get drillCollarJointThickness {
    return (this.heavyWeightDrillPipeID - this.drillCollarID)/2;
  }

  double get heavyWeightDrillPipeJointThickness {
    return (this.drillPipeID - this.heavyWeightDrillPipeID)/2;
  }


// void updateWidthScale(double widthScaleFactor){
  //   this.chokeLineHLength = this.chokeLineHLength*widthScaleFactor;
  //   this.chokeLineDiameter = this.chokeLineDiameter*widthScaleFactor;
  //   this.riserInnerDiameter = this.riserInnerDiameter*widthScaleFactor;
  //   // this.riserBlockerWidth = riserBlockerWidth == null ? this.riserBlockerWidth : riserBlockerWidth*this.widthScaleFactor;
  //   this.drillPipeID = this.drillPipeID*widthScaleFactor;
  //   this.openHoleSectionThickness = this.openHoleSectionThickness*widthScaleFactor;
  //   this.casingID = this.casingID*widthScaleFactor;
  //   this.heavyWeightDrillPipeThickness =  this.heavyWeightDrillPipeThickness*widthScaleFactor;
  //   this.drillCollarThickness =  this.drillCollarThickness*widthScaleFactor;
  // }
  //
  // void updateHeightScale(double heightScaleFactor){
  //   this.chokeLineVLength = this.chokeLineVLength*heightScaleFactor;
  //   this.riserBlockerHeight = this.riserBlockerHeight*heightScaleFactor;
  //   this.drillPipeHeight = this.drillPipeHeight*heightScaleFactor;
  //   this.openHoleSectionHeight = this.openHoleSectionHeight*heightScaleFactor;
  //   this.casingLength = this.casingLength*heightScaleFactor;
  //   this.drillPipeOpenHoleHeight = this.drillPipeOpenHoleHeight*heightScaleFactor;
  //   this.heavyWeightDrillPipeHeight = this.heavyWeightDrillPipeHeight*heightScaleFactor;
  //   this.drillCollarHeight = this.drillCollarHeight*heightScaleFactor;
  //   this.influxLength = this.influxLength*heightScaleFactor;
  // }

}
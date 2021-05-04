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
  double drillPipeWidth;

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
  double heavyWeightDrillPipeJoint;

  // Drill Collar
  double drillCollarHeight;
  double drillCollarThickness;
  double drillCollarID;
  double drillCollarJoint;

  // Influx
  double influxLength;

  DownholeConfig({
    this.heightScaleFactor = 0.025,
    this.widthScaleFactor =  5.882,
    this.chokeLineVLength = 96,
    this.chokeLineHLength = 121,
    this.chokeLineDiameter = 8,
    this.killLineBlockerHeight = 5,
    this.riserInnerDiameter = 104,
    this.riserBlockerHeight = 13,
    this.drillPipeHeight = 165,
    this.drillPipeWidth = 20,
    this.openHoleSectionHeight = 165,
    this.openHoleSectionThickness = 4,
    this.openHoleSectionID = 46,
    this.casingLength = 165,
    this.casingID = 45.95,
    this.casingThickness = 3,
    this.drillPipeOpenHoleHeight = 110,
    this.heavyWeightDrillPipeHeight = 30,
    this.heavyWeightDrillPipeThickness = 4,
    this.heavyWeightDrillPipeID = 18,
    this.heavyWeightDrillPipeJoint = 2,
    this.drillCollarHeight = 25,
    this.drillCollarJoint = 2,
    this.drillCollarThickness = 7,
    this.drillCollarID = 16,
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
    double drillPipeWidth,
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
    this.drillPipeWidth = drillPipeWidth == null ? this.drillPipeWidth : drillPipeWidth*this.widthScaleFactor;
    this.openHoleSectionHeight = (drillPipeOpenHoleHeight == null || heavyWeightDrillPipeHeight == null || drillCollarHeight == null)  ? this.openHoleSectionHeight : (drillPipeOpenHoleHeight + heavyWeightDrillPipeHeight + drillCollarHeight)*this.heightScaleFactor;
    this.openHoleSectionThickness = (openHoleSectionID == null || casingOD == null) ? this.openHoleSectionThickness : ((casingOD - openHoleSectionID)/2)*this.widthScaleFactor;
    this.openHoleSectionID = openHoleSectionID == null ? this.openHoleSectionID : openHoleSectionID*this.widthScaleFactor;
    this.casingLength = casingLength == null ? this.casingLength : casingLength*this.heightScaleFactor;
    this.casingThickness = (casingID == null || casingOD == null) ? this.casingID : ((casingOD - casingID)/2)*this.widthScaleFactor;
    this.casingID = casingID == null ? this.casingID : casingID*this.widthScaleFactor;
    this.drillPipeOpenHoleHeight = drillPipeOpenHoleHeight == null ? this.drillPipeOpenHoleHeight : drillPipeOpenHoleHeight*this.heightScaleFactor;
    this.heavyWeightDrillPipeHeight = heavyWeightDrillPipeHeight == null ? this.heavyWeightDrillPipeHeight : heavyWeightDrillPipeHeight*this.heightScaleFactor;
    this.heavyWeightDrillPipeThickness = (heavyWeightDrillPipeID == null || heavyWeightDrillPipeOD == null) ? this.heavyWeightDrillPipeThickness : ((heavyWeightDrillPipeOD - heavyWeightDrillPipeID)/2)*this.widthScaleFactor;
    this.drillCollarHeight = drillCollarHeight == null ? this.drillCollarHeight : drillCollarHeight*this.heightScaleFactor;
    this.drillCollarThickness = (drillCollarID == null || drillCollarOD == null) ? this.drillCollarThickness : ((drillCollarOD - drillCollarID)/2)*this.widthScaleFactor;
    this.influxLength = influxLength == null ? this.influxLength : influxLength*this.heightScaleFactor;
  }

  double get riserBlockerWidth {
    return (this.riserInnerDiameter - this.drillPipeWidth)/2;
  }

  void updateWidthScale(double widthScaleFactor){
    this.chokeLineHLength = this.chokeLineHLength*widthScaleFactor;
    this.chokeLineDiameter = this.chokeLineDiameter*widthScaleFactor;
    this.riserInnerDiameter = this.riserInnerDiameter*widthScaleFactor;
    // this.riserBlockerWidth = riserBlockerWidth == null ? this.riserBlockerWidth : riserBlockerWidth*this.widthScaleFactor;
    this.drillPipeWidth = this.drillPipeWidth*widthScaleFactor;
    this.openHoleSectionThickness = this.openHoleSectionThickness*widthScaleFactor;
    this.casingID = this.casingID*widthScaleFactor;
    this.heavyWeightDrillPipeThickness =  this.heavyWeightDrillPipeThickness*widthScaleFactor;
    this.drillCollarThickness =  this.drillCollarThickness*widthScaleFactor;
  }

  void updateHeightScale(double heightScaleFactor){
    this.chokeLineVLength = this.chokeLineVLength*heightScaleFactor;
    this.riserBlockerHeight = this.riserBlockerHeight*heightScaleFactor;
    this.drillPipeHeight = this.drillPipeHeight*heightScaleFactor;
    this.openHoleSectionHeight = this.openHoleSectionHeight*heightScaleFactor;
    this.casingLength = this.casingLength*heightScaleFactor;
    this.drillPipeOpenHoleHeight = this.drillPipeOpenHoleHeight*heightScaleFactor;
    this.heavyWeightDrillPipeHeight = this.heavyWeightDrillPipeHeight*heightScaleFactor;
    this.drillCollarHeight = this.drillCollarHeight*heightScaleFactor;
    this.influxLength = this.influxLength*heightScaleFactor;
  }
}
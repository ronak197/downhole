class DownholeConfig{

  // outer dimensions
  double widthScaleFactor;
  double heightScaleFactor;

  // Choke/Kill line
  double chokeLineVLength;
  double chokeLineHLength; // Horizontal length of choke line
  double chokeLineDiameter;

  // Riser
  double riserInnerDiameter;

  // Riser Blocker
  // double riserBlockerWidth;
  double riserBlockerHeight;

  // Drill pipe
  double drillPipeHeight; // Length of drill pipe in casing + riser + chokeLineWidth
  double drillPipeWidth;

  // Casing
  double casingLength;
  double casingWidth; // Or diameter of casing

  // DrillPipe in open hole
  double drillPipeOpenHoleHeight;

  // Open Hole section
  double openHoleSectionWidth;
  double openHoleSectionHeight;

  // Heavy Weight drill pipe
  double heavyWeightDrillPipeHeight;
  double heavyWeightDrillPipeWidth;

  // Drill Collar
  double drillCollarHeight;
  double drillCollarWidth;

  // Influx
  double influxLength;

  DownholeConfig({
    this.heightScaleFactor = 0.025,
    this.widthScaleFactor =  5.882,
    this.chokeLineVLength = 96,
    this.chokeLineHLength = 121,
    this.chokeLineDiameter = 8,
    this.riserInnerDiameter = 104,
    // this.riserBlockerWidth = 42,
    this.riserBlockerHeight = 13,
    this.drillPipeHeight = 165,
    this.drillPipeWidth = 20,
    this.openHoleSectionHeight = 165,
    this.openHoleSectionWidth = 4,
    this.casingLength = 165,
    this.casingWidth = 44,
    this.drillPipeOpenHoleHeight = 110,
    this.heavyWeightDrillPipeHeight = 30,
    this.heavyWeightDrillPipeWidth = 4,
    this.drillCollarHeight = 25,
    this.drillCollarWidth = 7,
    this.influxLength
  });

  void updateConfig({
    double heightScaleFactor,
    double widthScaleFactor,
    double chokeLineLength,
    double chokeLineHLength,
    double chokeLineDiameter,
    double riserInnerDiameter,
    // double riserBlockerWidth,
    double riserBlockerHeight,
    double drillPipeLength,
    double drillPipeWidth,
    double openHoleSectionHeight,
    double openHoleSectionWidth,
    double casingLength,
    double casingWidth,
    double drillPipeOpenHoleHeight,
    double heavyWeightDrillPipeLength,
    double heavyWeightDrillPipeWidth,
    double drillCollarLength,
    double drillCollarWidth,
    double influxLength,}){

    this.heightScaleFactor = heightScaleFactor == null ? this.heightScaleFactor : heightScaleFactor;
    this.widthScaleFactor = widthScaleFactor == null ? this.widthScaleFactor : widthScaleFactor;
    this.chokeLineVLength = chokeLineLength == null ? this.chokeLineVLength : chokeLineLength*this.heightScaleFactor;
    this.chokeLineHLength = chokeLineHLength == null ? this.chokeLineHLength : chokeLineHLength*this.widthScaleFactor;
    this.chokeLineDiameter = chokeLineDiameter == null ? this.chokeLineDiameter : chokeLineDiameter*this.widthScaleFactor;
    this.riserInnerDiameter = riserInnerDiameter == null ? this.riserInnerDiameter : riserInnerDiameter*this.widthScaleFactor;
    // this.riserBlockerWidth = riserBlockerWidth == null ? this.riserBlockerWidth : riserBlockerWidth*this.widthScaleFactor;
    this.riserBlockerHeight = riserBlockerHeight == null ? this.riserBlockerHeight : riserBlockerHeight*this.heightScaleFactor;
    this.drillPipeHeight = drillPipeLength == null ? this.drillPipeHeight : drillPipeLength*this.heightScaleFactor;
    this.drillPipeWidth = drillPipeWidth == null ? this.drillPipeWidth : drillPipeWidth*this.widthScaleFactor;
    this.openHoleSectionHeight = openHoleSectionHeight == null ? this.openHoleSectionHeight : openHoleSectionHeight*this.heightScaleFactor;
    this.openHoleSectionWidth = openHoleSectionWidth == null ? this.openHoleSectionWidth : openHoleSectionWidth*this.widthScaleFactor;
    this.casingLength = casingLength == null ? this.casingLength : casingLength*this.heightScaleFactor;
    this.casingWidth = casingWidth == null ? this.casingWidth : casingWidth*this.widthScaleFactor;
    this.drillPipeOpenHoleHeight = drillPipeOpenHoleHeight == null ? this.drillPipeOpenHoleHeight : drillPipeOpenHoleHeight*this.heightScaleFactor;
    this.heavyWeightDrillPipeHeight = heavyWeightDrillPipeLength == null ? this.heavyWeightDrillPipeHeight : heavyWeightDrillPipeLength*this.heightScaleFactor;
    this.heavyWeightDrillPipeWidth = heavyWeightDrillPipeWidth == null ? this.heavyWeightDrillPipeWidth : heavyWeightDrillPipeWidth*this.widthScaleFactor;
    this.drillCollarHeight = drillCollarLength == null ? this.drillCollarHeight : drillCollarLength*this.heightScaleFactor;
    this.drillCollarWidth = drillCollarWidth == null ? this.drillCollarWidth : drillCollarWidth*this.widthScaleFactor;
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
    this.openHoleSectionWidth = this.openHoleSectionWidth*widthScaleFactor;
    this.casingWidth = this.casingWidth*widthScaleFactor;
    this.heavyWeightDrillPipeWidth =  this.heavyWeightDrillPipeWidth*widthScaleFactor;
    this.drillCollarWidth =  this.drillCollarWidth*widthScaleFactor;
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
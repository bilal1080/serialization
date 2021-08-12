class Shape {
  String shapename;
  Property property;

  Shape({required this.shapename, required this.property});

  factory Shape.fromJson(Map<String, dynamic> parsedshape) {
    return Shape(
        shapename: parsedshape['shape_name'],
        property: Property.fromJson(parsedshape['property']));
  }
}

class Property {
  double width;
  double height;

  Property({required this.width, required this.height});

  factory Property.fromJson(Map<String, dynamic> parsedData) {
    return Property(width: parsedData['width'], height: parsedData['height']);
  }
}

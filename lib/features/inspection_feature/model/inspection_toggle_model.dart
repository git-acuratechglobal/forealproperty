class InspectionToggleModel {
  final String title;
  final bool initialValue;
  final String? initialDateValue;
  final String? initialInputValue;
  final FieldType fieldType;
  InspectionToggleModel({
    required this.title,
    this.initialValue = false,
    this.initialDateValue,
    this.fieldType = FieldType.toggle,
    this.initialInputValue
  });

  InspectionToggleModel copyWith({
    String? title,
    bool? initialValue,

  }) {
    return InspectionToggleModel(
      title: title ?? this.title,
      initialValue: initialValue ?? this.initialValue,
    );
  }
}
enum FieldType { toggle, date,input }
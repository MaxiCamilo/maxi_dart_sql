import 'package:maxi_dart_framework/maxi_dart_framework.dart';

class ReferenceOtherTable implements ReferenceCondition {
  final String tableName;
  final String columnName;

  @override
  final Conditionator condition;

  const new({required this.tableName, required this.columnName, required this.condition});

  @override
  String get name => '$tableName.$columnName';
}

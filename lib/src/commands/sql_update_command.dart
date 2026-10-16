import 'package:maxi_dart_framework/maxi_dart_framework.dart';

class SqlUpdateCommand {
  final String tableName;
  final Map<String, dynamic> values;
  final List<ReferenceCondition> conditions;

  const new({required this.tableName, required this.values, required this.conditions});
}

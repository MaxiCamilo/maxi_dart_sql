import 'package:maxi_dart_framework/maxi_dart_framework.dart';

class SqlDeleteCommand {
  final String tableName;
  final List<ReferenceCondition> conditions;

  const new({required this.tableName, required this.conditions});
}

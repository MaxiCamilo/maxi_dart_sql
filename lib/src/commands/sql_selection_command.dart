import 'package:maxi_dart_framework/maxi_dart_framework.dart';

enum ColumnSelectionFunction { field, count, maximum, minimum, average, sum }

enum QueryJoinerFunction { inner, left, right, fullOuter }

class ColumnSelection {
  final ColumnSelectionFunction function;
  final String columnName;
  final String tableName;
  final String alias;
  const ColumnSelection({required this.columnName, this.function = ColumnSelectionFunction.field, this.tableName = '', this.alias = ''});
}

class TableSelection {
  final String tableName;
  final String alias;

  const TableSelection(this.tableName, {this.alias = ''});
}

class QueryJoinerCondition {
  final ConditionCompareType compareType;
  final String originColumn;
  final String externalColumn;

  const new({required this.compareType, required this.originColumn, required this.externalColumn});
}

class QueryJoiner {
  final ColumnSelection originTable;
  final ColumnSelection externalTable;
  final QueryJoinerFunction type;
  final List<QueryJoinerCondition> conditions;

  const QueryJoiner({required this.originTable, required this.externalTable, required this.conditions, this.type = QueryJoinerFunction.inner});
}

class QueryOrder {
  final List<String> fields;
  final bool isAscendent;

  const QueryOrder({required this.fields, required this.isAscendent});
}

class SqlQueryCommand {
  final List<ColumnSelection> columns;
  final List<TableSelection> tables;
  final List<ReferenceCondition> conditions;
  final List<QueryJoiner> joinedTables;
  final List<QueryOrder> orders;
  final List<String> grouped;
  final List<ReferenceCondition> havings;
  final int? limit;

  const SqlQueryCommand({required this.tables, this.columns = const [], this.conditions = const [], this.orders = const [], this.grouped = const [], this.havings = const [], this.limit, this.joinedTables = const []});

  factory SqlQueryCommand.clone(SqlQueryCommand command) {
    return SqlQueryCommand(
      tables: List.from(command.tables),
      columns: List.from(command.columns),
      conditions: List.from(command.conditions),
      orders: List.from(command.orders),
      grouped: List.from(command.grouped),
      havings: List.from(command.havings),
      limit: command.limit,
      joinedTables: List.from(command.joinedTables),
    );
  }
}

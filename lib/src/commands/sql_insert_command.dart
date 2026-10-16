class SqlInsertCommand {
  final String tableName;
  final Map<String, dynamic> values;

  const new({required this.tableName, required this.values});
}
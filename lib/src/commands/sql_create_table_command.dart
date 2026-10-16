enum SqlColumnFormatType { text, boolean, intWithoutLimit, int8, int16, int32, int64, uintWithoutLimit, uint8, uint16, uint32, uint64, doubleWithoutLimit, decimal, dateTime, binary, dynamicType }

class ForeignKey {
  final String fieldName;
  final String tableName;
  final String referenceFieldName;

  const ForeignKey({required this.fieldName, required this.tableName, required this.referenceFieldName});
}

class SqlColumnFormat {
  final String name;
  final SqlColumnFormatType type;
  final bool isPrimaryKey;
  final bool isUniqueKey;
  final bool isAutoIncrement;

  const SqlColumnFormat({required this.name, required this.type, required this.isPrimaryKey, required this.isUniqueKey, required this.isAutoIncrement});
}

class SqlCreateTableCommand {
  final String tableName;
  final List<SqlColumnFormat> columns;
  final List<List<String>> primaryKeysGroups;
  final List<List<String>> uniqueKeysGroups;
  final List<ForeignKey> foreignKeys;

  const SqlCreateTableCommand({required this.tableName, required this.columns, required this.primaryKeysGroups, required this.uniqueKeysGroups, required this.foreignKeys});
}

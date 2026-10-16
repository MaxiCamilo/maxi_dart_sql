import 'package:maxi_dart_framework/maxi_dart_framework.dart';
import 'package:maxi_dart_sql/maxi_dart_sql.dart';

abstract interface class SqlExecutor implements Disposable {
  FutureResult<void> executeTableCreation(SqlCreateTableCommand command);
  FutureResult<void> executeDelete(SqlDeleteCommand command);
  FutureResult<void> executeInsert(SqlInsertCommand command);
  FutureResult<void> executeUpdate(SqlUpdateCommand command);
  FutureResult<TableResult> executeQuery(SqlQueryCommand command);

  FutureResult<List<String>> getColumnNames(String tableName);
  FutureResult<bool> tableExists(String tableName);
  FutureResult<void> dropTable(String tableName);
}

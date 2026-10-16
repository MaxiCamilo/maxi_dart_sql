import 'package:maxi_dart_framework/maxi_dart_framework.dart';
import 'package:maxi_dart_sql/maxi_dart_sql.dart';

abstract interface class SqlConnection implements Disposable {
  bool get isConnected;
  bool get isActive;

  FutureResult<T> reserve<T>(FutureResult<T> Function(SqlExecutor) action);  
  FutureResult<SqlTransaction> buildTransaction<T>();
}

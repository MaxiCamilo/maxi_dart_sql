import 'package:maxi_dart_framework/maxi_dart_framework.dart';
import 'package:maxi_dart_sql/src/controllers/sql_executor.dart';

abstract interface class SqlTransaction implements Disposable {
  SqlExecutor get executor;

  FutureResult<void> commit();
  FutureResult<void> rollback();
}

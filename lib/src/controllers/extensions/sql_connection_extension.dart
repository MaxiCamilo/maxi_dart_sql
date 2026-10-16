import 'package:maxi_dart_framework/maxi_dart_framework.dart';
import 'package:maxi_dart_sql/maxi_dart_sql.dart';

extension SqlConnectionExtension on SqlConnection {
  FutureResult<T> executeTransaction<T>(FutureResult<T> Function(SqlExecutor) action) => futureScope(() async {
    final transaction = await $$_(buildTransaction());
    try {
      final result = await action(transaction.executor);
      if (result is NegativeResult) {
        await $$_(transaction.rollback());
        return result;
      }
      await $$_(transaction.commit());
      return result;
    } catch (ex, st) {
      await transaction.rollback();
      return ExceptionResult<T>(exception: ex, stackTrace: st, message: Oration('SQL Transaction failed'));
    }
  });
}

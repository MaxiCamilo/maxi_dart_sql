import 'package:maxi_dart_sql/maxi_dart_sql.dart';

abstract interface class SqlConfiguration {
  SqlConnection buildConnection();
}

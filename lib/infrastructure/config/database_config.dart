import 'package:dotenv/dotenv.dart';

class DatabaseConfig {
  final String host;
  final int port;
  final String database;
  final String username;
  final String password;
  final Duration connectionTimeout;

  const DatabaseConfig({
    required this.host,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
    this.connectionTimeout = const Duration(seconds: 30),
  });

  factory DatabaseConfig.fromDotEnv([String? filePath]) {
    final env = DotEnv(includePlatformEnvironment: true)..load();

    return DatabaseConfig(
      host: env.getOrElse('DB_HOST', () => 'localhost'),
      port: int.parse(env.getOrElse('DB_PORT', () => '5432')),
      database: env.getOrElse('DB_NAME', () => 'todo_db'),
      username: env.getOrElse('DB_USER', () => 'postgres'),
      password: env.getOrElse('DB_PASSWORD', () => 'password'),
      connectionTimeout: Duration(seconds: int.parse(env.getOrElse('DB_CONNECTION_TIMEOUT', () => '30'))),
    );
  }
}

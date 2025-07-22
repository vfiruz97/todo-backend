import 'dart:io';

class DatabaseConfig {
  final String host;
  final int port;
  final String database;
  final String username;
  final String password;
  final int maxConnections;
  final Duration connectionTimeout;

  const DatabaseConfig({
    required this.host,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
    this.maxConnections = 6,
    this.connectionTimeout = const Duration(seconds: 30),
  });

  factory DatabaseConfig.fromEnvironment() {
    return DatabaseConfig(
      host: Platform.environment['DB_HOST'] ?? 'localhost',
      port: int.parse(Platform.environment['DB_PORT'] ?? '5432'),
      database: Platform.environment['DB_NAME'] ?? 'todo_db',
      username: Platform.environment['DB_USER'] ?? 'postgres',
      password: Platform.environment['DB_PASSWORD'] ?? 'password',
      maxConnections: int.parse(Platform.environment['DB_MAX_CONNECTIONS'] ?? '10'),
      connectionTimeout: Duration(seconds: int.parse(Platform.environment['DB_CONNECTION_TIMEOUT'] ?? '30')),
    );
  }

  String get connectionString {
    return 'postgresql://$username:$password@$host:$port/$database';
  }

  @override
  String toString() {
    return 'DatabaseConfig{host: $host, port: $port, database: $database, '
        'username: $username, maxConnections: $maxConnections, '
        'connectionTimeout: $connectionTimeout}';
  }
}

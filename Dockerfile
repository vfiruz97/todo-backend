# Use Dart 3.8.1 SDK
FROM dart:3.8.1 AS build

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
COPY db ./db
COPY todo_proto ./todo_proto
RUN dart pub get

# Copy app source code (except anything in .dockerignore) and AOT compile app.
COPY . .
RUN dart compile exe bin/server.dart -o bin/server

# Set executable permissions
RUN chmod 755 bin/server

# Build minimal serving image from AOT-compiled `/server`
# and the pre-built AOT-runtime in the `/runtime/` directory of the base image.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
COPY --from=build /app/.env /app/
COPY --from=build /app/db /app/db/

# Set working directory and expose port
WORKDIR /app
EXPOSE 8080
CMD ["/app/bin/server"]

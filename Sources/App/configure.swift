import Fluent
import FluentPostgresDriver
import Leaf
import Vapor

// Configures your application
public func configure(_ app: Application) throws {

    //app.http.server.configuration.hostname = "192.168.1.16"

    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // Postgres connection
    app.databases.use(.postgres(
        hostname: Environment.get("DATABASE_HOST") ?? "localhost",
        username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
        password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
        database: Environment.get("DATABASE_NAME") ?? "vapor_database"
    ), as: .psql)

    app.migrations.add(CreateMember())
    app.migrations.add(CreatePagePost())
    app.logger.logLevel = .debug
    try app.autoMigrate().wait()

    // Leaf
    app.views.use(.leaf)    // Don't cache pages
    app.leaf.cache.isEnabled = false

    // Register routes
    try routes(app)
}

import Fluent
import FluentPostgresDriver
import Leaf
import Vapor

// Configures your application
public func configure(_ app: Application) throws {

    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // Leaf
    app.views.use(.leaf)    // Don't cache pages
    app.leaf.cache.isEnabled = false

    // Register routes
    try routes(app)
}

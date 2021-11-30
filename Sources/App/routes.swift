import Fluent
import Vapor

func routes(_ app: Application) throws {
    let controllers: [RouteCollection] = [
        WebController()
    ]

    for controller in controllers {
        try app.register(collection: controller)
    }
}

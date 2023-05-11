import XCTest

class AboutScreen {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var isAuthorsBlockDisplayed: Bool {
        return app.staticTexts["Авторы"].exists
    }
    
    var isTranslatorsBlockDisplayed: Bool {
        return app.staticTexts["Переводчики"].exists
    }
    
    var isContentLicenseBlockDisplayed: Bool {
        return app.staticTexts["Лицензия содержимого"].exists
    }
}

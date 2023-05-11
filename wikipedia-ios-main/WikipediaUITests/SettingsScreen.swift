import XCTest

class SettingsScreen {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func tapAboutButton() {
        if app.toolbars.buttons["Закрыть"].exists {
                    app.toolbars.buttons["Закрыть"].tap()
                }
        let settingsButton = app.toolbars["Панель инструментов"].buttons["Настройки"]
        settingsButton.tap()

    }
}

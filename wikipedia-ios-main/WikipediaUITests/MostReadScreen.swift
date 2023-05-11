import XCTest

class MostReadScreen {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var isDisplayed: Bool {
        let mostReadLabel = app.staticTexts["Самые читаемые"]
        return mostReadLabel.exists
    }
}

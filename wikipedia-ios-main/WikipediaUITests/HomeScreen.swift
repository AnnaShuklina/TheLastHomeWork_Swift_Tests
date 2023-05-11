import XCTest

class HomeScreen {
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func tapAllMostReadArticlesButton() {
        let allMostReadButton = app.staticTexts["Самые читаемые"]
        XCTAssertTrue(allMostReadButton.exists, "Кнопка 'Самые читаемые' не найдена")
        allMostReadButton.tap()
    }
}

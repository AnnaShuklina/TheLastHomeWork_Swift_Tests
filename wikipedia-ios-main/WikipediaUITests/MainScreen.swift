import XCTest

class MainScreen {
    
    func tapMostRead(for app: XCUIApplication, test: XCTestCase) {
        let allMostReadButton = app.staticTexts["Самые читаемые"]
        
        test.XCTAssertTrue(allMostReadButton.exists)
        allMostReadButton.tap()
    }
}

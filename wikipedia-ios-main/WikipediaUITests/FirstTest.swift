import XCTest

final class FirstTest: XCTestCase {
    let app = XCUIApplication(bundleIdentifier: "org.wikimedia.wikipedia")
    var homeScreen: HomeScreen!
    var mostReadScreen: MostReadScreen!
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
        
        homeScreen = HomeScreen(app: app)
        mostReadScreen = MostReadScreen(app: app)
    }
    
    override func tearDown() {
        
    }

    func testMostReadScreen() {
        if app.toolbars.buttons["Закрыть"].exists {
                    app.toolbars.buttons["Закрыть"].tap()
                }
        homeScreen.tapAllMostReadArticlesButton()
        
        XCTAssertTrue(mostReadScreen.isDisplayed, "Экран 'Самые читаемые' не найден")
    }
}

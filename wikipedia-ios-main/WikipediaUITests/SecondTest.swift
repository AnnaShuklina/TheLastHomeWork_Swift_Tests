import XCTest

final class SecondTest: XCTestCase {
    let app = XCUIApplication(bundleIdentifier: "org.wikimedia.wikipedia")
    var settingsScreen: SettingsScreen!
    var aboutScreen: AboutScreen!
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
        
        settingsScreen = SettingsScreen(app: app)
        aboutScreen = AboutScreen(app: app)
    }
    
    override func tearDown() {
        
    }
    
    func testBlocksAbout() {
        settingsScreen.tapAboutButton()
        app.swipeUp()
        let aboutButton = app.staticTexts["О приложении"]
        aboutButton.tap()
        XCTAssertTrue(aboutScreen.isAuthorsBlockDisplayed, "Блок 'Авторы' не отображается")
        XCTAssertTrue(aboutScreen.isTranslatorsBlockDisplayed, "Блок 'Переводчики' не отображается")
        XCTAssertTrue(aboutScreen.isContentLicenseBlockDisplayed, "Блок 'Лицензия содержимого' не отображается")
    }
}

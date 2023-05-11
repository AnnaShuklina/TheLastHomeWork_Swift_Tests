import XCTest

final class ThirdTest: XCTestCase {
    
    var settingsScreen: SettingsScreen!
    var aboutScreen: AboutScreen!
    
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication(bundleIdentifier: "org.wikimedia.wikipedia")
        app.launch()
        
        settingsScreen = SettingsScreen(app: app)
        aboutScreen = AboutScreen(app: app)
                
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
        app = nil
    }
    
    func testBrowserTransition() {
        settingsScreen.tapAboutButton()
        let supportWikipediaButton = app.staticTexts["Поддержать Википедию"]
        supportWikipediaButton.tap()
         
        // Проверяем, что произошел переход на окно браузера
        let browserApp = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssertTrue(browserApp.waitForExistence(timeout: 5), "Переход в браузер не произошел")
    }
            
}

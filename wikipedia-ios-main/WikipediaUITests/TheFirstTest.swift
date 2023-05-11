import XCTest

class FirstTest: XCTestCase {
    
    func testMostReadScreen() {
        
        let mainScreen = MainScreen()
        MainScreen.tapMostRead(for: app, test: self)
        
        let mostReadScreen = MostReadScreen()
        mostReadScreen.verifyOpened(test: self)
    }
}

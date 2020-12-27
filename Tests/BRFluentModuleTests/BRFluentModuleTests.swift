import XCTest
@testable import BRFluentModule

final class BRFluentModuleTests: XCTestCase {
    
    func testSomeObject(){
                
        class MemberCard{
            var cardName : String = ""
            var cardNumber : String = ""
            var Address : String = ""
        }
        
        let card = MemberCard()
        card^+
            .cardName("Shine")
            .cardNumber("123456789")
            .Address("TaiwanTaipei")^-
             
        
        XCTAssertEqual(card.cardName, "Shine")
        XCTAssertEqual(card.cardNumber, "123456789")
        XCTAssertEqual(card.Address, "TaiwanTaipei")
    }

    static var allTests = [
        ("testExample", testSomeObject),
    ]
}

@testable import FisherYates
import XCTest

class FisherYatesTests: XCTestCase {
  func testShuffled() {
    var count = 0
    var hand1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
    var sum1 = hand1.reduce(0, +)

    for _ in 0..<1_000 {
      let hand2 = hand1.shuffled()
      let sum2 = hand2.reduce(0, +)

      if hand1 != hand2 && hand1.count == hand2.count && sum1 == sum2 {
        count += 1
      }

      hand1 = hand2
      sum1 = sum2
    }

    let result = Double(count) / 1_000.00

    XCTAssertEqual(result, 1, accuracy: 0.02)
  }
}

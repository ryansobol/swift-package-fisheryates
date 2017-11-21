// https://en.wikipedia.org/wiki/Fisher–Yates_shuffle
public extension MutableCollection where Index == Int, IndexDistance == Int {
  mutating func shuffle() {
    guard count > 1 else { return }

    for i in 0..<count {
      let j = random(count - i) + i

      guard i != j else { continue }

      swapAt(i, j)
    }
  }
}

public extension Collection {
  func shuffled() -> [Iterator.Element] {
    var array = Array(self)

    array.shuffle()

    return array
  }
}

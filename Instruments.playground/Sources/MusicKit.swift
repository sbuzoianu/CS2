
final public class Music {
  public let notes: [String]

  public init(notes: [String]) {
    self.notes = notes
  }

  public func prepared() -> String {
    return notes.joined(separator: " ")
  }
}

open class Instrument {
  public let brand: String

  public init(brand: String) {
    self.brand = brand
  }

  // Concrete classes must override this method.
  open func tune() -> String {
    fatalError("Implement this method for \(brand)")
  }

  // Derived classes must call the superclass
  // their own specialization.
  open func play(_ music: Music) -> String {
    return music.prepared()
  }

  final public func perform(_ music: Music) {
    print(tune())
    print(play(music))
  }
}

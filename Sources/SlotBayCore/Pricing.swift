import Foundation

/// The price a driver is shown before booking. All amounts are in paise.
public struct Quote: Equatable, Sendable {
    public let subtotalPaise: Int
    public let gstPaise: Int
    public var totalPaise: Int { subtotalPaise + gstPaise }

    public init(subtotalPaise: Int, gstPaise: Int) {
        self.subtotalPaise = subtotalPaise
        self.gstPaise = gstPaise
    }
}

public enum Pricing {
    /// GST charged on top of the subtotal.
    public static let gstPercent = 18

    /// Builds a quote for parking at `listing` from `start` to `end`.
    public static func quote(for listing: Listing, from start: Date, to end: Date) -> Quote {
        let timePassed = end.timeIntervalSince(start)
        let minutes = Int(timePassed/60)
        let subtotal = minutes * listing.ratePerMinutePaise
        let gst = subtotal * gstPercent/100
        return Quote(subtotalPaise: subtotal, gstPaise: gst)
    }
}

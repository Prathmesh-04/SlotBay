import Foundation
import Testing
@testable import SlotBayCore

@Test func twoHoursCostsExpectedAmount() {
    let listing = Listing(
        title: "Test bay",
        latitude: 0,
        longitude: 0,
        ratePerMinutePaise: 50
    )
    let start = Date(timeIntervalSince1970: 0)
    let end = Date(timeIntervalSince1970: 2 * 60 * 60)   // 2 hours later

    let quote = Pricing.quote(for: listing, from: start, to: end)

    #expect(quote.subtotalPaise == 6000)
    #expect(quote.gstPaise == 1080)
    #expect(quote.totalPaise == 7080)
}

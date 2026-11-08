import Foundation
import Testing
@testable import SlotBayCore

@Test func listingRoundTripsThroughJSON() throws {
    let listing = Listing(
        title: "Basement bay B2",
        latitude: 19.07,
        longitude: 72.87,
        ratePerMinutePaise: 50,
        dailyCapPaise: 30_000,
        amenities: [.cctv, .covered]
    )
    let data = try JSONEncoder().encode(listing)
    let decoded = try JSONDecoder().decode(Listing.self, from: data)
    #expect(decoded == listing)
}

import Foundation

public enum UserRole: String, Codable, Sendable {
    case driver
    case host
}

public enum SlotType: String, Codable, CaseIterable, Sendable {
    case standard, compact, large, ev, accessible, bike
}

public enum Amenity: String, Codable, CaseIterable, Sendable {
    case evCharging, covered, cctv, securityGuard, gated, wellLit, wheelchairAccess
}

/// A parking space offered by a host.
public struct Listing: Identifiable, Codable, Equatable, Sendable {
    public let id: UUID
    public var title: String
    public var latitude: Double
    public var longitude: Double
    /// Price per minute in paise (1/100 rupee), kept as an integer to avoid float money errors.
    public var ratePerMinutePaise: Int
    /// Optional cap on the charge for one calendar day, in paise.
    public var dailyCapPaise: Int?
    public var amenities: Set<Amenity>
    public var slotType: SlotType

    public init(
        id: UUID = UUID(),
        title: String,
        latitude: Double,
        longitude: Double,
        ratePerMinutePaise: Int,
        dailyCapPaise: Int? = nil,
        amenities: Set<Amenity> = [],
        slotType: SlotType = .standard
    ) {
        self.id = id
        self.title = title
        self.latitude = latitude
        self.longitude = longitude
        self.ratePerMinutePaise = ratePerMinutePaise
        self.dailyCapPaise = dailyCapPaise
        self.amenities = amenities
        self.slotType = slotType
    }
}

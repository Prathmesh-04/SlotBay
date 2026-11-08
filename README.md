# SlotBay

A two-sided parking marketplace for iOS. Drivers find and book a spot; hosts list the space they don't use.

Built with SwiftUI.

## Status

Early development. See the roadmap below.

## Scope

SlotBay is built with a **free Apple Developer account**. Everything here must run in the Simulator or on the author's own iPhone, using only features that free accounts allow.

**Included**
- SwiftUI app, Swift Package core with unit tests (`swift test`)
- MapKit maps and search, Camera QR scanning, Keychain for local secrets
- Local notifications (`UNUserNotificationCenter`)
- Local data storage (SwiftData or files), and a local backend run on the author's Mac

**Not included (need a paid Apple Developer Program membership)**
- App Store or TestFlight distribution
- Remote push notifications (APNs)
- Sign in with Apple, iCloud/CloudKit, Apple Pay
- Hosted backend or public deployment

Free-account builds on a physical iPhone expire after 7 days and must be reinstalled from Xcode.

## Roadmap

- [ ] Project skeleton
- [ ] Accounts and roles (driver / host), local storage
- [ ] Host listings and slots
- [ ] Map search and filters (MapKit)
- [ ] Pricing and booking
- [ ] Payments as a simulated test flow (no real payment provider)
- [ ] Access pass (QR and PIN) and gate check-in
- [ ] Host dashboard and earnings (local data only)
- [ ] Local notifications, reviews, receipts
- [ ] Admin tools and polish

## Requirements

- Xcode 27 or later, signed in with a free Apple ID
- iOS 18 or later

## Author

Prathmesh

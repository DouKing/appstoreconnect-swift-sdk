// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionPriceResponse: Codable {
	/// SubscriptionPrice
	public var data: SubscriptionPrice
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case territory(Territory)
		case subscriptionPricePoint(SubscriptionPricePoint)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(Territory.self) {
				self = .territory(value)
			} else if let value = try? container.decode(SubscriptionPricePoint.self) {
				self = .subscriptionPricePoint(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .territory(let value): try container.encode(value)
			case .subscriptionPricePoint(let value): try container.encode(value)
			}
		}
	}

	public init(data: SubscriptionPrice, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
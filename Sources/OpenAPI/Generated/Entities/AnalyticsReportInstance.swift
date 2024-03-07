// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AnalyticsReportInstance: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case analyticsReportInstances
	}

	public struct Attributes: Codable {
		public var granularity: Granularity?
		public var processingDate: String?

		public enum Granularity: String, Codable, CaseIterable {
			case daily = "DAILY"
			case weekly = "WEEKLY"
			case monthly = "MONTHLY"
		}

		public init(granularity: Granularity? = nil, processingDate: String? = nil) {
			self.granularity = granularity
			self.processingDate = processingDate
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.granularity = try values.decodeIfPresent(Granularity.self, forKey: "granularity")
			self.processingDate = try values.decodeIfPresent(String.self, forKey: "processingDate")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(granularity, forKey: "granularity")
			try values.encodeIfPresent(processingDate, forKey: "processingDate")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
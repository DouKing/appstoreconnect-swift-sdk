// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiManualBranchStartCondition: Codable {
	public var source: CiBranchPatterns?

	public init(source: CiBranchPatterns? = nil) {
		self.source = source
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.source = try values.decodeIfPresent(CiBranchPatterns.self, forKey: "source")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(source, forKey: "source")
	}
}

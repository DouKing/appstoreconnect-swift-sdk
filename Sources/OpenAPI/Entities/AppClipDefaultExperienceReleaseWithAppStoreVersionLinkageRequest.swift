// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreVersions
		}

		public init(type: `Type`, id: String) {
			self.type = type
			self.id = id
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
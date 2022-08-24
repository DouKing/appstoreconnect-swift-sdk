// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEventLocalizations: AppEventLocalizations {
		AppEventLocalizations(path: path + "/appEventLocalizations")
	}

	public struct AppEventLocalizations {
		/// Path: `/v1/appEventLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEventLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventLocalizationResponse> {
			.post(path, body: body)
		}
	}
}
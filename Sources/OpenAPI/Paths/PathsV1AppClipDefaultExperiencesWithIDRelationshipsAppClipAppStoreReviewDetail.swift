// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperiences.WithID.Relationships {
	public var appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail {
		AppClipAppStoreReviewDetail(path: path + "/appClipAppStoreReviewDetail")
	}

	public struct AppClipAppStoreReviewDetail {
		/// Path: `/v1/appClipDefaultExperiences/{id}/relationships/appClipAppStoreReviewDetail`
		public let path: String
	}
}
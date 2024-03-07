// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var alternativeDistributionPackageVersions: AlternativeDistributionPackageVersions {
		AlternativeDistributionPackageVersions(path: path + "/alternativeDistributionPackageVersions")
	}

	public struct AlternativeDistributionPackageVersions {
		/// Path: `/v1/alternativeDistributionPackageVersions`
		public let path: String
	}
}
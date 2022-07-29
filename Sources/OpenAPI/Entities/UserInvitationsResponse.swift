// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct UserInvitationsResponse: Codable {
	public var data: [UserInvitation]
	public var included: [App]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [UserInvitation], included: [App]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
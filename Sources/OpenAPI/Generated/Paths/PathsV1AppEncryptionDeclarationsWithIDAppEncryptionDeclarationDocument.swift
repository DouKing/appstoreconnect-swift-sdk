// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEncryptionDeclarations.WithID {
	public var appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument {
		AppEncryptionDeclarationDocument(path: path + "/appEncryptionDeclarationDocument")
	}

	public struct AppEncryptionDeclarationDocument {
		/// Path: `/v1/appEncryptionDeclarations/{id}/appEncryptionDeclarationDocument`
		public let path: String

		public func get(fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationDocumentResponse> {
			.get(path, query: makeGetQuery(fieldsAppEncryptionDeclarationDocuments))
		}

		private func makeGetQuery(_ fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppEncryptionDeclarationDocuments, forKey: "fields[appEncryptionDeclarationDocuments]", explode: false)
			return encoder.items
		}

		public enum FieldsAppEncryptionDeclarationDocuments: String, Codable, CaseIterable {
			case appEncryptionDeclaration
			case assetDeliveryState
			case assetToken
			case downloadURL = "downloadUrl"
			case fileName
			case fileSize
			case sourceFileChecksum
			case uploadOperations
			case uploaded
		}
	}
}
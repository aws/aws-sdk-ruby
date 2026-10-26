# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorScep
  # This module contains the types returned by client operations.
  module Types

    # <p>You can receive this error if you attempt to perform an operation and you don't have the required permissions. This can be caused by insufficient permissions in policies attached to your Amazon Web Services Identity and Access Management (IAM) principal. It can also happen because of restrictions in place from an Amazon Web Services Organizations service control policy (SCP) that affects your Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For Connector for SCEP for general-purpose. An object containing information about the specified connector's SCEP challenge passwords.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the challenge.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the challenge was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the challenge was updated.</p>
    #   @return [Time]
    # @!attribute password
    #   <p>The SCEP challenge password, in UUID format.</p>
    #   @return [String]
    class Challenge < Struct.new(
      nil,
      :arn,
      :connector_arn,
      :created_at,
      :updated_at,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the connector's challenge.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the challenge.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the connector was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the connector was updated.</p>
    #   @return [Time]
    class ChallengeMetadata < Struct.new(
      nil,
      :arn,
      :connector_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the specified challenge, returned by the <a href="https://docs.aws.amazon.com/pca-connector-scep/latest/APIReference/API_GetChallengeMetadata.html">GetChallengeMetadata</a> action.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the challenge.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the challenge was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the challenge was updated.</p>
    #   @return [Time]
    class ChallengeMetadataSummary < Struct.new(
      nil,
      :arn,
      :connector_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request can't be completed for one of the following reasons because the requested resource was being concurrently modified by another request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connector for SCEP is a service that links Amazon Web Services Private Certificate Authority to your SCEP-enabled devices. The connector brokers the exchange of certificates from Amazon Web Services Private CA to your SCEP-enabled devices and mobile device management systems. The connector is a complex type that contains the connector's configuration settings.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate authority associated with the connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The connector type.</p>
    #   @return [String]
    # @!attribute mobile_device_management
    #   <p>Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure <code>MobileDeviceManagement</code>, then the connector is for general-purpose use and this object is empty.</p>
    #   @return [Types::MobileDeviceManagement]
    # @!attribute open_id_configuration
    #   <p>Contains OpenID Connect (OIDC) parameters for use with Connector for SCEP for Microsoft Intune. For more information about using Connector for SCEP for Microsoft Intune, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p>
    #   @return [Types::OpenIdConfiguration]
    # @!attribute status
    #   <p>The connector's status.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Information about why connector creation failed, if status is <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The connector's HTTPS public SCEP URL.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the connector was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the connector was updated.</p>
    #   @return [Time]
    class Connector < Struct.new(
      nil,
      :arn,
      :certificate_authority_arn,
      :type,
      :mobile_device_management,
      :open_id_configuration,
      :status,
      :status_reason,
      :endpoint,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the Amazon Web Services Private CA SCEP connectors belonging to your Amazon Web Services account.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the connector's associated certificate authority.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The connector type.</p>
    #   @return [String]
    # @!attribute mobile_device_management
    #   <p>Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure <code>MobileDeviceManagement</code>, then the connector is for general-purpose use and this object is empty.</p>
    #   @return [Types::MobileDeviceManagement]
    # @!attribute open_id_configuration
    #   <p>Contains OpenID Connect (OIDC) parameters for use with Microsoft Intune.</p>
    #   @return [Types::OpenIdConfiguration]
    # @!attribute status
    #   <p>The connector's status. Status can be creating, active, deleting, or failed.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Information about why connector creation failed, if status is <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The connector's HTTPS public SCEP URL.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the challenge was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the challenge was updated.</p>
    #   @return [Time]
    class ConnectorSummary < Struct.new(
      nil,
      :arn,
      :certificate_authority_arn,
      :type,
      :mobile_device_management,
      :open_id_configuration,
      :status,
      :status_reason,
      :endpoint,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to create a challenge for.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Custom string that can be used to distinguish between calls to the <a href="https://docs.aws.amazon.com/pca-connector-scep/latest/APIReference/API_CreateChallenge.html">CreateChallenge</a> action. Client tokens for <code>CreateChallenge</code> time out after five minutes. Therefore, if you call <code>CreateChallenge</code> multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class CreateChallengeRequest < Struct.new(
      nil,
      :connector_arn,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge
    #   <p>Returns the challenge details for the specified connector.</p>
    #   @return [Types::Challenge]
    class CreateChallengeResponse < Struct.new(
      nil,
      :challenge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Private Certificate Authority certificate authority to use with this connector. Due to security vulnerabilities present in the SCEP protocol, we recommend using a private CA that's dedicated for use with the connector.</p> <p>To retrieve the private CAs associated with your account, you can call <a href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> using the Amazon Web Services Private CA API.</p>
    #   @return [String]
    # @!attribute mobile_device_management
    #   <p>If you don't supply a value, by default Connector for SCEP creates a connector for general-purpose use. A general-purpose connector is designed to work with clients or endpoints that support the SCEP protocol, except Connector for SCEP for Microsoft Intune. With connectors for general-purpose use, you manage SCEP challenge passwords using Connector for SCEP. For information about considerations and limitations with using Connector for SCEP, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html">Considerations and Limitations</a>.</p> <p>If you provide an <code>IntuneConfiguration</code>, Connector for SCEP creates a connector for use with Microsoft Intune, and you manage the challenge passwords using Microsoft Intune. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p>
    #   @return [Types::MobileDeviceManagement]
    # @!attribute vpc_endpoint_id
    #   <p>If you don't supply a value, by default Connector for SCEP creates a connector accessible over the public internet. If you provide a VPC endpoint ID, creates a connector accessible only through that specific VPC endpoint.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Custom string that can be used to distinguish between calls to the <a href="https://docs.aws.amazon.com/pca-connector-scep/latest/APIReference/API_CreateChallenge.html">CreateChallenge</a> action. Client tokens for <code>CreateChallenge</code> time out after five minutes. Therefore, if you call <code>CreateChallenge</code> multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class CreateConnectorRequest < Struct.new(
      nil,
      :certificate_authority_arn,
      :mobile_device_management,
      :vpc_endpoint_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>Returns the Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    class CreateConnectorResponse < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge_arn
    #   <p>The Amazon Resource Name (ARN) of the challenge password to delete.</p>
    #   @return [String]
    class DeleteChallengeRequest < Struct.new(
      nil,
      :challenge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector to delete.</p>
    #   @return [String]
    class DeleteConnectorRequest < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge_arn
    #   <p>The Amazon Resource Name (ARN) of the challenge.</p>
    #   @return [String]
    class GetChallengeMetadataRequest < Struct.new(
      nil,
      :challenge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge_metadata
    #   <p>The metadata for the challenge.</p>
    #   @return [Types::ChallengeMetadata]
    class GetChallengeMetadataResponse < Struct.new(
      nil,
      :challenge_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge_arn
    #   <p>The Amazon Resource Name (ARN) of the challenge.</p>
    #   @return [String]
    class GetChallengePasswordRequest < Struct.new(
      nil,
      :challenge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute password
    #   <p>The SCEP challenge password.</p>
    #   @return [String]
    class GetChallengePasswordResponse < Struct.new(
      nil,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    class GetConnectorRequest < Struct.new(
      nil,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector
    #   <p>The properties of the connector.</p>
    #   @return [Types::Connector]
    class GetConnectorResponse < Struct.new(
      nil,
      :connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure with an internal server.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration details for use with Microsoft Intune. For information about using Connector for SCEP for Microsoft Intune, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p> <p>When you use Connector for SCEP for Microsoft Intune, certain functionalities are enabled by accessing Microsoft Intune through the Microsoft API. Your use of the Connector for SCEP and accompanying Amazon Web Services services doesn't remove your need to have a valid license for your use of the Microsoft Intune service. You should also review the <a href="https://learn.microsoft.com/en-us/mem/intune/apps/app-protection-policy">Microsoft Intune® App Protection Policies</a>.</p>
    # @!attribute azure_application_id
    #   <p>The directory (tenant) ID from your Microsoft Entra ID app registration.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The primary domain from your Microsoft Entra ID app registration.</p>
    #   @return [String]
    class IntuneConfiguration < Struct.new(
      nil,
      :azure_application_id,
      :domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that you want Connector for SCEP to return for this request. If more objects are available, in the response, Connector for SCEP provides a <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code> value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    class ListChallengeMetadataRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenges
    #   <p>The challenge metadata for the challenges belonging to your Amazon Web Services account.</p>
    #   @return [Array<Types::ChallengeMetadataSummary>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code> value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListChallengeMetadataResponse < Struct.new(
      nil,
      :challenges,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that you want Connector for SCEP to return for this request. If more objects are available, in the response, Connector for SCEP provides a <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code> value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connectors
    #   <p>The connectors belonging to your Amazon Web Services account.</p>
    #   @return [Array<Types::ConnectorSummary>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code> value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListConnectorsResponse < Struct.new(
      nil,
      :connectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If you don't supply a value, by default Connector for SCEP creates a connector for general-purpose use. A general-purpose connector is designed to work with clients or endpoints that support the SCEP protocol, except Connector for SCEP for Microsoft Intune. For information about considerations and limitations with using Connector for SCEP, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html">Considerations and Limitations</a>.</p> <p>If you provide an <code>IntuneConfiguration</code>, Connector for SCEP creates a connector for use with Microsoft Intune, and you manage the challenge passwords using Microsoft Intune. For more information, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p>
    # @!attribute intune
    #   <p>Configuration settings for use with Microsoft Intune. For information about using Connector for SCEP for Microsoft Intune, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p>
    #   @return [Types::IntuneConfiguration]
    class MobileDeviceManagement < Struct.new(
      :intune,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Intune < MobileDeviceManagement; end
      class Unknown < MobileDeviceManagement; end
    end

    # <p>Contains OpenID Connect (OIDC) parameters for use with Microsoft Intune. For more information about using Connector for SCEP for Microsoft Intune, see <a href="https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html">Using Connector for SCEP for Microsoft Intune</a>.</p>
    # @!attribute issuer
    #   <p>The issuer value to copy into your Microsoft Entra app registration's OIDC.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject value to copy into your Microsoft Entra app registration's OIDC.</p>
    #   @return [String]
    # @!attribute audience
    #   <p>The audience value to copy into your Microsoft Entra app registration's OIDC.</p>
    #   @return [String]
    class OpenIdConfiguration < Struct.new(
      nil,
      :issuer,
      :subject,
      :audience,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent resource. The resource might be incorrectly specified, or it might have a status other than <code>ACTIVE</code>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the Amazon Web Services resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An input validation error occurred. For example, invalid characters in a name tag, or an invalid pagination token.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation error, if available. The service doesn't return a reason for every validation exception.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

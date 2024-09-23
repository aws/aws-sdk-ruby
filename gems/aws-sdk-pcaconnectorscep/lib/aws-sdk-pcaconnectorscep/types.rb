# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PcaConnectorScep
  module Types

    # You can receive this error if you attempt to perform an operation and
    # you don't have the required permissions. This can be caused by
    # insufficient permissions in policies attached to your Amazon Web
    # Services Identity and Access Management (IAM) principal. It can also
    # happen because of restrictions in place from an Amazon Web Services
    # Organizations service control policy (SCP) that affects your Amazon
    # Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is malformed or contains an error such as an invalid
    # parameter value or a missing required parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # For Connector for SCEP for general-purpose. An object containing
    # information about the specified connector's SCEP challenge passwords.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the challenge was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the challenge was updated.
    #   @return [Time]
    #
    # @!attribute [rw] password
    #   The SCEP challenge password, in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/Challenge AWS API Documentation
    #
    class Challenge < Struct.new(
      :arn,
      :connector_arn,
      :created_at,
      :updated_at,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains details about the connector's challenge.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the connector was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ChallengeMetadata AWS API Documentation
    #
    class ChallengeMetadata < Struct.new(
      :arn,
      :connector_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the specified challenge, returned by the
    # [GetChallengeMetadata][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_GetChallengeMetadata.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the challenge was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the challenge was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ChallengeMetadataSummary AWS API Documentation
    #
    class ChallengeMetadataSummary < Struct.new(
      :arn,
      :connector_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request can't be completed for one of the following reasons
    # because the requested resource was being concurrently modified by
    # another request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be either `Connector` or `Challenge`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connector for SCEP is a service that links Amazon Web Services Private
    # Certificate Authority to your SCEP-enabled devices. The connector
    # brokers the exchange of certificates from Amazon Web Services Private
    # CA to your SCEP-enabled devices and mobile device management systems.
    # The connector is a complex type that contains the connector's
    # configuration settings.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority
    #   associated with the connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The connector type.
    #   @return [String]
    #
    # @!attribute [rw] mobile_device_management
    #   Contains settings relevant to the mobile device management system
    #   that you chose for the connector. If you didn't configure
    #   `MobileDeviceManagement`, then the connector is for general-purpose
    #   use and this object is empty.
    #   @return [Types::MobileDeviceManagement]
    #
    # @!attribute [rw] open_id_configuration
    #   Contains OpenID Connect (OIDC) parameters for use with Connector for
    #   SCEP for Microsoft Intune. For more information about using
    #   Connector for SCEP for Microsoft Intune, see [Using Connector for
    #   SCEP for Microsoft Intune][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #   @return [Types::OpenIdConfiguration]
    #
    # @!attribute [rw] status
    #   The connector's status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Information about why connector creation failed, if status is
    #   `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connector's HTTPS public SCEP URL.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the connector was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/Connector AWS API Documentation
    #
    class Connector < Struct.new(
      :arn,
      :certificate_authority_arn,
      :type,
      :mobile_device_management,
      :open_id_configuration,
      :status,
      :status_reason,
      :endpoint,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the Amazon Web Services Private CA SCEP connectors belonging to
    # your Amazon Web Services account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the connector's associated
    #   certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The connector type.
    #   @return [String]
    #
    # @!attribute [rw] mobile_device_management
    #   Contains settings relevant to the mobile device management system
    #   that you chose for the connector. If you didn't configure
    #   `MobileDeviceManagement`, then the connector is for general-purpose
    #   use and this object is empty.
    #   @return [Types::MobileDeviceManagement]
    #
    # @!attribute [rw] open_id_configuration
    #   Contains OpenID Connect (OIDC) parameters for use with Microsoft
    #   Intune.
    #   @return [Types::OpenIdConfiguration]
    #
    # @!attribute [rw] status
    #   The connector's status. Status can be creating, active, deleting,
    #   or failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Information about why connector creation failed, if status is
    #   `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connector's HTTPS public SCEP URL.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the challenge was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the challenge was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ConnectorSummary AWS API Documentation
    #
    class ConnectorSummary < Struct.new(
      :arn,
      :certificate_authority_arn,
      :type,
      :mobile_device_management,
      :open_id_configuration,
      :status,
      :status_reason,
      :endpoint,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   create a challenge for.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Custom string that can be used to distinguish between calls to the
    #   [CreateChallenge][1] action. Client tokens for `CreateChallenge`
    #   time out after five minutes. Therefore, if you call
    #   `CreateChallenge` multiple times with the same client token within
    #   five minutes, Connector for SCEP recognizes that you are requesting
    #   only one challenge and will only respond with one. If you change the
    #   client token for each call, Connector for SCEP recognizes that you
    #   are requesting multiple challenge passwords.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateChallengeRequest AWS API Documentation
    #
    class CreateChallengeRequest < Struct.new(
      :connector_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge
    #   Returns the challenge details for the specified connector.
    #   @return [Types::Challenge]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateChallengeResponse AWS API Documentation
    #
    class CreateChallengeResponse < Struct.new(
      :challenge)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Private
    #   Certificate Authority certificate authority to use with this
    #   connector. Due to security vulnerabilities present in the SCEP
    #   protocol, we recommend using a private CA that's dedicated for use
    #   with the connector.
    #
    #   To retrieve the private CAs associated with your account, you can
    #   call [ListCertificateAuthorities][1] using the Amazon Web Services
    #   Private CA API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html
    #   @return [String]
    #
    # @!attribute [rw] mobile_device_management
    #   If you don't supply a value, by default Connector for SCEP creates
    #   a connector for general-purpose use. A general-purpose connector is
    #   designed to work with clients or endpoints that support the SCEP
    #   protocol, except Connector for SCEP for Microsoft Intune. With
    #   connectors for general-purpose use, you manage SCEP challenge
    #   passwords using Connector for SCEP. For information about
    #   considerations and limitations with using Connector for SCEP, see
    #   [Considerations and Limitations][1].
    #
    #   If you provide an `IntuneConfiguration`, Connector for SCEP creates
    #   a connector for use with Microsoft Intune, and you manage the
    #   challenge passwords using Microsoft Intune. For more information,
    #   see [Using Connector for SCEP for Microsoft Intune][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html
    #   [2]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #   @return [Types::MobileDeviceManagement]
    #
    # @!attribute [rw] client_token
    #   Custom string that can be used to distinguish between calls to the
    #   [CreateChallenge][1] action. Client tokens for `CreateChallenge`
    #   time out after five minutes. Therefore, if you call
    #   `CreateChallenge` multiple times with the same client token within
    #   five minutes, Connector for SCEP recognizes that you are requesting
    #   only one challenge and will only respond with one. If you change the
    #   client token for each call, Connector for SCEP recognizes that you
    #   are requesting multiple challenge passwords.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateConnectorRequest AWS API Documentation
    #
    class CreateConnectorRequest < Struct.new(
      :certificate_authority_arn,
      :mobile_device_management,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   Returns the Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/CreateConnectorResponse AWS API Documentation
    #
    class CreateConnectorResponse < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge password to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/DeleteChallengeRequest AWS API Documentation
    #
    class DeleteChallengeRequest < Struct.new(
      :challenge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/DeleteConnectorRequest AWS API Documentation
    #
    class DeleteConnectorRequest < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengeMetadataRequest AWS API Documentation
    #
    class GetChallengeMetadataRequest < Struct.new(
      :challenge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge_metadata
    #   The metadata for the challenge.
    #   @return [Types::ChallengeMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengeMetadataResponse AWS API Documentation
    #
    class GetChallengeMetadataResponse < Struct.new(
      :challenge_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge_arn
    #   The Amazon Resource Name (ARN) of the challenge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengePasswordRequest AWS API Documentation
    #
    class GetChallengePasswordRequest < Struct.new(
      :challenge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] password
    #   The SCEP challenge password.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetChallengePasswordResponse AWS API Documentation
    #
    class GetChallengePasswordResponse < Struct.new(
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetConnectorRequest AWS API Documentation
    #
    class GetConnectorRequest < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector
    #   The properties of the connector.
    #   @return [Types::Connector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/GetConnectorResponse AWS API Documentation
    #
    class GetConnectorResponse < Struct.new(
      :connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure with an internal server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration details for use with Microsoft Intune. For
    # information about using Connector for SCEP for Microsoft Intune, see
    # [Using Connector for SCEP for Microsoft Intune][1].
    #
    # When you use Connector for SCEP for Microsoft Intune, certain
    # functionalities are enabled by accessing Microsoft Intune through the
    # Microsoft API. Your use of the Connector for SCEP and accompanying
    # Amazon Web Services services doesn't remove your need to have a valid
    # license for your use of the Microsoft Intune service. You should also
    # review the [Microsoft Intune® App Protection Policies][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    # [2]: https://learn.microsoft.com/en-us/mem/intune/apps/app-protection-policy
    #
    # @!attribute [rw] azure_application_id
    #   The directory (tenant) ID from your Microsoft Entra ID app
    #   registration.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The primary domain from your Microsoft Entra ID app registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/IntuneConfiguration AWS API Documentation
    #
    class IntuneConfiguration < Struct.new(
      :azure_application_id,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Connector for SCEP to
    #   return for this request. If more objects are available, in the
    #   response, Connector for SCEP provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Connector for SCEP returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListChallengeMetadataRequest AWS API Documentation
    #
    class ListChallengeMetadataRequest < Struct.new(
      :max_results,
      :next_token,
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenges
    #   The challenge metadata for the challenges belonging to your Amazon
    #   Web Services account.
    #   @return [Array<Types::ChallengeMetadataSummary>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Connector for SCEP returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListChallengeMetadataResponse AWS API Documentation
    #
    class ListChallengeMetadataResponse < Struct.new(
      :challenges,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Connector for SCEP to
    #   return for this request. If more objects are available, in the
    #   response, Connector for SCEP provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Connector for SCEP returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connectors
    #   The connectors belonging to your Amazon Web Services account.
    #   @return [Array<Types::ConnectorSummary>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Connector for SCEP returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
      :connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you don't supply a value, by default Connector for SCEP creates a
    # connector for general-purpose use. A general-purpose connector is
    # designed to work with clients or endpoints that support the SCEP
    # protocol, except Connector for SCEP for Microsoft Intune. For
    # information about considerations and limitations with using Connector
    # for SCEP, see [Considerations and Limitations][1].
    #
    # If you provide an `IntuneConfiguration`, Connector for SCEP creates a
    # connector for use with Microsoft Intune, and you manage the challenge
    # passwords using Microsoft Intune. For more information, see [Using
    # Connector for SCEP for Microsoft Intune][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html
    # [2]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #
    # @note MobileDeviceManagement is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MobileDeviceManagement is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MobileDeviceManagement corresponding to the set member.
    #
    # @!attribute [rw] intune
    #   Configuration settings for use with Microsoft Intune. For
    #   information about using Connector for SCEP for Microsoft Intune, see
    #   [Using Connector for SCEP for Microsoft Intune][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #   @return [Types::IntuneConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/MobileDeviceManagement AWS API Documentation
    #
    class MobileDeviceManagement < Struct.new(
      :intune,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Intune < MobileDeviceManagement; end
      class Unknown < MobileDeviceManagement; end
    end

    # Contains OpenID Connect (OIDC) parameters for use with Microsoft
    # Intune. For more information about using Connector for SCEP for
    # Microsoft Intune, see [Using Connector for SCEP for Microsoft
    # Intune][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html
    #
    # @!attribute [rw] issuer
    #   The issuer value to copy into your Microsoft Entra app
    #   registration's OIDC.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject value to copy into your Microsoft Entra app
    #   registration's OIDC.
    #   @return [String]
    #
    # @!attribute [rw] audience
    #   The audience value to copy into your Microsoft Entra app
    #   registration's OIDC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/OpenIdConfiguration AWS API Documentation
    #
    class OpenIdConfiguration < Struct.new(
      :issuer,
      :subject,
      :audience)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation tried to access a nonexistent resource. The resource
    # might be incorrectly specified, or it might have a status other than
    # `ACTIVE`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be either `Connector` or `Challenge`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, which can be either `Connector` or `Challenge`.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies a list of tag keys that you want to remove from the
    #   specified resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input validation error occurred. For example, invalid characters in
    # a name tag, or an invalid pagination token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation error, if available. The service
    #   doesn't return a reason for every validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


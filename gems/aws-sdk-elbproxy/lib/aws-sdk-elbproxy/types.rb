# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ELBProxy
  module Types

    # The user does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] certificate_identifier
    #   The Amazon Resource Name (ARN) of the ACM certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/AssociateCertificateRequest AWS API Documentation
    #
    class AssociateCertificateRequest < Struct.new(
      :proxy_identifier,
      :certificate_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_association
    #   The certificate association.
    #   @return [Types::CertificateAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/AssociateCertificateResponse AWS API Documentation
    #
    class AssociateCertificateResponse < Struct.new(
      :certificate_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value attribute for a proxy.
    #
    # @!attribute [rw] key
    #   The key of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value attribute for a proxy, including its default value.
    #
    # @!attribute [rw] key
    #   The key of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/AttributeDetails AWS API Documentation
    #
    class AttributeDetails < Struct.new(
      :key,
      :value,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between an ACM certificate and a proxy.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the ACM certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association.
    #   @return [Types::CertificateAssociationStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the association was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CertificateAssociation AWS API Documentation
    #
    class CertificateAssociation < Struct.new(
      :certificate_arn,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of a certificate association.
    #
    # @!attribute [rw] code
    #   The status code of the association.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reasons for the current status of the association.
    #   @return [Array<Types::CertificateAssociationStatusReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CertificateAssociationStatus AWS API Documentation
    #
    class CertificateAssociationStatus < Struct.new(
      :code,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason for the current status of a certificate association.
    #
    # @!attribute [rw] code
    #   The status reason code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status reason message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CertificateAssociationStatusReason AWS API Documentation
    #
    class CertificateAssociationStatusReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration archive for a proxy. This is a bundle of the files
    # referenced by the configuration file.
    #
    # @!attribute [rw] configuration_bytes
    #   The contents of the configuration archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ConfigurationArchive AWS API Documentation
    #
    class ConfigurationArchive < Struct.new(
      :configuration_bytes)
      SENSITIVE = [:configuration_bytes]
      include Aws::Structure
    end

    # The configuration file for a proxy.
    #
    # @!attribute [rw] configuration_bytes
    #   The contents of the configuration file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ConfigurationFile AWS API Documentation
    #
    class ConfigurationFile < Struct.new(
      :configuration_bytes)
      SENSITIVE = [:configuration_bytes]
      include Aws::Structure
    end

    # The configuration metadata for a proxy.
    #
    # @!attribute [rw] config_file_hash
    #   The SHA-256 hash of the configuration file.
    #   @return [String]
    #
    # @!attribute [rw] config_archive_hash
    #   The SHA-256 hash of the configuration archive. This value is absent
    #   when the proxy does not have a configuration archive.
    #   @return [String]
    #
    # @!attribute [rw] config_file_last_updated_at
    #   The date and time that the configuration file was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] config_archive_last_updated_at
    #   The date and time that the configuration archive was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ConfigurationMetadata AWS API Documentation
    #
    class ConfigurationMetadata < Struct.new(
      :config_file_hash,
      :config_archive_hash,
      :config_file_last_updated_at,
      :config_archive_last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the proxy. The name must be unique within your account
    #   for the Region. The valid characters are a-z, 0-9, and hyphens (-).
    #   You can't use a hyphen as the first or last character.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_version
    #   The version of the proxy software, in `major.minor` format.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions to the code that your Envoy configuration runs on the
    #   proxy, such as filters and extensions. These are the permissions
    #   that this code needs when it calls AWS services.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the proxy.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the proxy.
    #   @return [Types::ProxyNetworkUserConfiguration]
    #
    # @!attribute [rw] attributes
    #   The attributes for the proxy. Attributes can be changed after
    #   creation. Attributes that you don't specify are set to their
    #   default values.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content. If you don't specify
    #   a key, the default service-owned key is used.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the proxy.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CreateProxyRequest AWS API Documentation
    #
    class CreateProxyRequest < Struct.new(
      :name,
      :type,
      :proxy_version,
      :role_arn,
      :configuration,
      :network_configuration,
      :attributes,
      :customer_kms_key_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Common Proxy details response mixin
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_version
    #   The version of the proxy software.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions to the code that your Envoy configuration runs on the
    #   proxy, such as filters and extensions. These are the permissions
    #   that this code needs when it calls AWS services.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the proxy.
    #   @return [Types::ProxyNetworkConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the proxy.
    #   @return [Types::ProxyStatus]
    #
    # @!attribute [rw] configuration_metadata
    #   The configuration metadata for the proxy.
    #   @return [Types::ConfigurationMetadata]
    #
    # @!attribute [rw] created_at
    #   The date and time that the proxy was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content. This value is absent
    #   when the proxy uses the default service-owned key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/CreateProxyResponse AWS API Documentation
    #
    class CreateProxyResponse < Struct.new(
      :arn,
      :name,
      :type,
      :proxy_version,
      :dns_name,
      :role_arn,
      :network_configuration,
      :status,
      :configuration_metadata,
      :created_at,
      :customer_kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DeleteProxyRequest AWS API Documentation
    #
    class DeleteProxyRequest < Struct.new(
      :proxy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proxy.
    #   @return [Types::ProxyStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DeleteProxyResponse AWS API Documentation
    #
    class DeleteProxyResponse < Struct.new(
      :arn,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] certificate_identifier
    #   The Amazon Resource Name (ARN) of the ACM certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DisassociateCertificateRequest AWS API Documentation
    #
    class DisassociateCertificateRequest < Struct.new(
      :proxy_identifier,
      :certificate_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_association
    #   The certificate association.
    #   @return [Types::CertificateAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/DisassociateCertificateResponse AWS API Documentation
    #
    class DisassociateCertificateResponse < Struct.new(
      :certificate_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyAttributesRequest AWS API Documentation
    #
    class GetProxyAttributesRequest < Struct.new(
      :proxy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes for the proxy.
    #   @return [Array<Types::AttributeDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyAttributesResponse AWS API Documentation
    #
    class GetProxyAttributesResponse < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] include_config_file
    #   Indicates whether to include the configuration file contents in the
    #   response. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_config_archive
    #   Indicates whether to include the configuration archive contents in
    #   the response. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyConfigurationContentsRequest AWS API Documentation
    #
    class GetProxyConfigurationContentsRequest < Struct.new(
      :proxy_identifier,
      :include_config_file,
      :include_config_archive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_file_contents
    #   The configuration file contents. Populated only if
    #   `includeConfigFile` was `true`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_archive_contents
    #   The configuration archive contents. Populated only if
    #   `includeConfigArchive` was `true`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_metadata
    #   The configuration metadata for the proxy.
    #   @return [Types::ConfigurationMetadata]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   CMK ARN used to encrypt the proxy's configuration content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyConfigurationContentsResponse AWS API Documentation
    #
    class GetProxyConfigurationContentsResponse < Struct.new(
      :configuration_file_contents,
      :configuration_archive_contents,
      :configuration_metadata,
      :customer_kms_key_arn)
      SENSITIVE = [:configuration_file_contents, :configuration_archive_contents]
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyRequest AWS API Documentation
    #
    class GetProxyRequest < Struct.new(
      :proxy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Common Proxy details response mixin
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_version
    #   The version of the proxy software.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions to the code that your Envoy configuration runs on the
    #   proxy, such as filters and extensions. These are the permissions
    #   that this code needs when it calls AWS services.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the proxy.
    #   @return [Types::ProxyNetworkConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the proxy.
    #   @return [Types::ProxyStatus]
    #
    # @!attribute [rw] configuration_metadata
    #   The configuration metadata for the proxy.
    #   @return [Types::ConfigurationMetadata]
    #
    # @!attribute [rw] created_at
    #   The date and time that the proxy was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content. This value is absent
    #   when the proxy uses the default service-owned key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyResponse AWS API Documentation
    #
    class GetProxyResponse < Struct.new(
      :arn,
      :name,
      :type,
      :proxy_version,
      :dns_name,
      :role_arn,
      :network_configuration,
      :status,
      :configuration_metadata,
      :created_at,
      :customer_kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] update_identifier
    #   The ID of the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyUpdateRequest AWS API Documentation
    #
    class GetProxyUpdateRequest < Struct.new(
      :proxy_identifier,
      :update_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] update_id
    #   The ID of the update.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the update.
    #   @return [Types::ProxyUpdateState]
    #
    # @!attribute [rw] details
    #   Details about the update.
    #   @return [Types::ProxyUpdateDetails]
    #
    # @!attribute [rw] submitted_at
    #   The date and time that the update was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] validated_at
    #   The date and time that the update was first successfully applied to
    #   a proxy node. This value is absent until the update is valid.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The date and time that the update's propagation status became
    #   `complete`, `failed`, or `cancelled`. This value is absent while the
    #   update is `in-progress` or `skipped`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/GetProxyUpdateResponse AWS API Documentation
    #
    class GetProxyUpdateResponse < Struct.new(
      :proxy_arn,
      :update_id,
      :state,
      :details,
      :submitted_at,
      :validated_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListCertificateAssociationsRequest AWS API Documentation
    #
    class ListCertificateAssociationsRequest < Struct.new(
      :proxy_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the certificate associations.
    #   @return [Array<Types::CertificateAssociation>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListCertificateAssociationsResponse AWS API Documentation
    #
    class ListCertificateAssociationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxiesRequest AWS API Documentation
    #
    class ListProxiesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the proxies.
    #   @return [Array<Types::ProxySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxiesResponse AWS API Documentation
    #
    class ListProxiesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyUpdatesRequest AWS API Documentation
    #
    class ListProxyUpdatesRequest < Struct.new(
      :proxy_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the updates for the proxy.
    #   @return [Array<Types::ProxyUpdateSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyUpdatesResponse AWS API Documentation
    #
    class ListProxyUpdatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyVersionsRequest AWS API Documentation
    #
    class ListProxyVersionsRequest < Struct.new(
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the proxy versions.
    #   @return [Array<Types::ProxyVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, a pagination token for the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListProxyVersionsResponse AWS API Documentation
    #
    class ListProxyVersionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not permitted.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because a prior request has not yet
    # completed.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/PriorRequestNotCompletedException AWS API Documentation
    #
    class PriorRequestNotCompletedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a proxy.
    #
    # @!attribute [rw] configuration_file
    #   The configuration file for the proxy.
    #   @return [Types::ConfigurationFile]
    #
    # @!attribute [rw] configuration_archive
    #   The configuration archive for the proxy. This is a bundle of the
    #   files referenced by the configuration file.
    #   @return [Types::ConfigurationArchive]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyConfiguration AWS API Documentation
    #
    class ProxyConfiguration < Struct.new(
      :configuration_file,
      :configuration_archive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an update to a proxy's configuration.
    #
    # @!attribute [rw] new_configuration_metadata
    #   The configuration metadata for the configuration that was submitted
    #   with this update.
    #   @return [Types::ConfigurationMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyConfigurationUpdateDetails AWS API Documentation
    #
    class ProxyConfigurationUpdateDetails < Struct.new(
      :new_configuration_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP addressing configuration for a proxy.
    #
    # @!attribute [rw] ipv4_addressability
    #   The IPv4 addressability setting for the proxy.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_addressability
    #   The IPv6 addressability setting for the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyIpAddressingConfiguration AWS API Documentation
    #
    class ProxyIpAddressingConfiguration < Struct.new(
      :ipv4_addressability,
      :ipv6_addressability)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP configuration for a proxy.
    #
    # @!attribute [rw] ip_addressing_configuration
    #   The IP addressing configuration for the proxy.
    #   @return [Types::ProxyIpAddressingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyIpConfiguration AWS API Documentation
    #
    class ProxyIpConfiguration < Struct.new(
      :ip_addressing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a proxy.
    #
    # @!attribute [rw] ip_configuration
    #   The IP configuration for the proxy.
    #   @return [Types::ProxyIpConfiguration]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration for the proxy.
    #   @return [Types::ProxyVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyNetworkConfiguration AWS API Documentation
    #
    class ProxyNetworkConfiguration < Struct.new(
      :ip_configuration,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a proxy, used by mutating operations.
    #
    # @!attribute [rw] ip_configuration
    #   The IP configuration for the proxy.
    #   @return [Types::ProxyIpConfiguration]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration for the proxy.
    #   @return [Types::ProxyVpcUserConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyNetworkUserConfiguration AWS API Documentation
    #
    class ProxyNetworkUserConfiguration < Struct.new(
      :ip_configuration,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of a proxy.
    #
    # @!attribute [rw] code
    #   The status code of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reasons for the current status of the proxy.
    #   @return [Array<Types::ProxyStatusReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyStatus AWS API Documentation
    #
    class ProxyStatus < Struct.new(
      :code,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason for the current status of a proxy.
    #
    # @!attribute [rw] code
    #   The status reason code.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target resource of the status reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status reason message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyStatusReason AWS API Documentation
    #
    class ProxyStatusReason < Struct.new(
      :code,
      :target,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a proxy.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proxy.
    #   @return [Types::ProxyStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the proxy was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxySummary AWS API Documentation
    #
    class ProxySummary < Struct.new(
      :arn,
      :name,
      :type,
      :dns_name,
      :vpc_id,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a proxy update.
    #
    # @note ProxyUpdateDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProxyUpdateDetails corresponding to the set member.
    #
    # @!attribute [rw] configuration
    #   Details about an update to the proxy's configuration.
    #   @return [Types::ProxyConfigurationUpdateDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyUpdateDetails AWS API Documentation
    #
    class ProxyUpdateDetails < Struct.new(
      :configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Configuration < ProxyUpdateDetails; end
      class Unknown < ProxyUpdateDetails; end
    end

    # The state of a proxy update.
    #
    # @!attribute [rw] validation_status
    #   Whether the configuration submitted with the update works. An update
    #   is valid once it is successfully applied to at least one proxy node.
    #   @return [String]
    #
    # @!attribute [rw] propagation_status
    #   Whether the configuration submitted with the update was applied to
    #   all proxy nodes.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reasons for the current state of the update.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyUpdateState AWS API Documentation
    #
    class ProxyUpdateState < Struct.new(
      :validation_status,
      :propagation_status,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a proxy update.
    #
    # @!attribute [rw] update_id
    #   The ID of the update.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the update.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   Whether the configuration submitted with the update works.
    #   @return [String]
    #
    # @!attribute [rw] propagation_status
    #   Whether the configuration submitted with the update was applied to
    #   all proxy nodes.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The date and time that the update was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] validated_at
    #   The date and time that the update was first successfully applied to
    #   a proxy node. This value is absent until the update is valid.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The date and time that the update's propagation status became
    #   `complete`, `failed`, or `cancelled`. This value is absent while the
    #   update is `in-progress` or `skipped`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyUpdateSummary AWS API Documentation
    #
    class ProxyUpdateSummary < Struct.new(
      :update_id,
      :type,
      :validation_status,
      :propagation_status,
      :submitted_at,
      :validated_at,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a proxy version.
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the proxy software, in `major.minor` format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyVersionSummary AWS API Documentation
    #
    class ProxyVersionSummary < Struct.new(
      :type,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC configuration for a proxy.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones used by the proxy.
    #   @return [Array<Types::SubnetAndZone>]
    #
    # @!attribute [rw] security_groups
    #   The security groups used by the proxy.
    #   @return [Array<Types::SecurityGroupDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyVpcConfiguration AWS API Documentation
    #
    class ProxyVpcConfiguration < Struct.new(
      :vpc_id,
      :availability_zones,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC configuration for a proxy, used by mutating operations.
    #
    # @!attribute [rw] subnets
    #   The subnets used by the proxy.
    #   @return [Array<Types::SubnetDetails>]
    #
    # @!attribute [rw] security_groups
    #   The security groups used by the proxy.
    #   @return [Array<Types::SecurityGroupDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ProxyVpcUserConfiguration AWS API Documentation
    #
    class ProxyVpcUserConfiguration < Struct.new(
      :subnets,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a security group.
    #
    # @!attribute [rw] security_group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/SecurityGroupDetails AWS API Documentation
    #
    class SecurityGroupDetails < Struct.new(
      :security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the service quota to be exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the service quota to be
    #   exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code of the service associated with the exceeded quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subnet and its associated Availability Zone.
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] zone_id
    #   The ID of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone (for example, `us-east-1a`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/SubnetAndZone AWS API Documentation
    #
    class SubnetAndZone < Struct.new(
      :subnet_id,
      :zone_id,
      :zone_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a subnet.
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/SubnetDetails AWS API Documentation
    #
    class SubnetDetails < Struct.new(
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   Description of the error
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ThrottlingException AWS API Documentation
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
    #   The tag keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to update. Attributes that you don't specify are
    #   unchanged.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyAttributesRequest AWS API Documentation
    #
    class UpdateProxyAttributesRequest < Struct.new(
      :proxy_identifier,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes for the proxy after the update.
    #   @return [Array<Types::AttributeDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyAttributesResponse AWS API Documentation
    #
    class UpdateProxyAttributesResponse < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] configuration_file
    #   The updated configuration file for the proxy. If you don't specify
    #   a value, the existing configuration file is unchanged.
    #   @return [Types::ConfigurationFile]
    #
    # @!attribute [rw] configuration_archive
    #   The updated configuration archive for the proxy. If you don't
    #   specify a value, the existing configuration archive is unchanged.
    #   @return [Types::ConfigurationArchive]
    #
    # @!attribute [rw] reset_configuration_archive
    #   Indicates whether to remove the configuration archive from the
    #   proxy.
    #   @return [Boolean]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content. Specify a new ARN to
    #   set or rotate the key. If you don't specify a value, the existing
    #   key is unchanged.
    #   @return [String]
    #
    # @!attribute [rw] reset_customer_kms_key_arn
    #   Indicates whether to remove the customer managed KMS key from the
    #   proxy and use the default service-owned key.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyConfigurationRequest AWS API Documentation
    #
    class UpdateProxyConfigurationRequest < Struct.new(
      :proxy_identifier,
      :configuration_file,
      :configuration_archive,
      :reset_configuration_archive,
      :customer_kms_key_arn,
      :reset_customer_kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_metadata
    #   The configuration metadata for the proxy after the update.
    #   @return [Types::ConfigurationMetadata]
    #
    # @!attribute [rw] update_id
    #   The ID of the update that was submitted.
    #   @return [String]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content after the update. This
    #   value is absent when the proxy uses the default service-owned key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyConfigurationResponse AWS API Documentation
    #
    class UpdateProxyConfigurationResponse < Struct.new(
      :configuration_metadata,
      :update_id,
      :customer_kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_identifier
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The updated VPC configuration for the proxy.
    #   @return [Types::UpdateProxyVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyNetworkConfigurationRequest AWS API Documentation
    #
    class UpdateProxyNetworkConfigurationRequest < Struct.new(
      :proxy_identifier,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Common Proxy details response mixin
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_version
    #   The version of the proxy software.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the proxy.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions to the code that your Envoy configuration runs on the
    #   proxy, such as filters and extensions. These are the permissions
    #   that this code needs when it calls AWS services.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the proxy.
    #   @return [Types::ProxyNetworkConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the proxy.
    #   @return [Types::ProxyStatus]
    #
    # @!attribute [rw] configuration_metadata
    #   The configuration metadata for the proxy.
    #   @return [Types::ConfigurationMetadata]
    #
    # @!attribute [rw] created_at
    #   The date and time that the proxy was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the proxy's configuration content. This value is absent
    #   when the proxy uses the default service-owned key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyNetworkConfigurationResponse AWS API Documentation
    #
    class UpdateProxyNetworkConfigurationResponse < Struct.new(
      :arn,
      :name,
      :type,
      :proxy_version,
      :dns_name,
      :role_arn,
      :network_configuration,
      :status,
      :configuration_metadata,
      :created_at,
      :customer_kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated VPC configuration for a proxy. You must provide at least
    # one of `subnets` or `securityGroups`.
    #
    # @!attribute [rw] subnets
    #   The updated subnets for the proxy.
    #   @return [Array<Types::SubnetDetails>]
    #
    # @!attribute [rw] security_groups
    #   The updated security groups for the proxy.
    #   @return [Array<Types::SecurityGroupDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/UpdateProxyVpcConfiguration AWS API Documentation
    #
    class UpdateProxyVpcConfiguration < Struct.new(
      :subnets,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elb-proxy-2026-11-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


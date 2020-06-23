# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkLink
  module Types

    # @note When making an API call, you may pass AssociateDomainRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #         display_name: "DisplayName",
    #         acm_certificate_arn: "AcmCertificateArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @!attribute [rw] acm_certificate_arn
    #   The ARN of an issued ACM certificate that is valid for the domain
    #   being associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateDomainRequest AWS API Documentation
    #
    class AssociateDomainRequest < Struct.new(
      :fleet_arn,
      :domain_name,
      :display_name,
      :acm_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateDomainResponse AWS API Documentation
    #
    class AssociateDomainResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateWebsiteAuthorizationProviderRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         authorization_provider_type: "SAML", # required, accepts SAML
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] authorization_provider_type
    #   The authorization provider type.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the authorization provider. This applies only to
    #   SAML-based authorization providers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteAuthorizationProviderRequest AWS API Documentation
    #
    class AssociateWebsiteAuthorizationProviderRequest < Struct.new(
      :fleet_arn,
      :authorization_provider_type,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization_provider_id
    #   A unique identifier for the authorization provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteAuthorizationProviderResponse AWS API Documentation
    #
    class AssociateWebsiteAuthorizationProviderResponse < Struct.new(
      :authorization_provider_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateWebsiteCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         certificate: "Certificate", # required
    #         display_name: "DisplayName",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The root certificate of the CA.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The certificate name to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteCertificateAuthorityRequest AWS API Documentation
    #
    class AssociateWebsiteCertificateAuthorityRequest < Struct.new(
      :fleet_arn,
      :certificate,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] website_ca_id
    #   A unique identifier for the CA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteCertificateAuthorityResponse AWS API Documentation
    #
    class AssociateWebsiteCertificateAuthorityResponse < Struct.new(
      :website_ca_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet_name: "FleetName", # required
    #         display_name: "DisplayName",
    #         optimize_for_end_user_location: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] fleet_name
    #   A unique name for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name to display.
    #   @return [String]
    #
    # @!attribute [rw] optimize_for_end_user_location
    #   The option to optimize for better performance by routing traffic
    #   through the closest AWS Region to users, which may be outside of
    #   your home Region.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/CreateFleetRequest AWS API Documentation
    #
    class CreateFleetRequest < Struct.new(
      :fleet_name,
      :display_name,
      :optimize_for_end_user_location,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/CreateFleetResponse AWS API Documentation
    #
    class CreateFleetResponse < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DeleteFleetRequest AWS API Documentation
    #
    class DeleteFleetRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DeleteFleetResponse AWS API Documentation
    #
    class DeleteFleetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAuditStreamConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeAuditStreamConfigurationRequest AWS API Documentation
    #
    class DescribeAuditStreamConfigurationRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] audit_stream_arn
    #   The ARN of the Amazon Kinesis data stream that will receive the
    #   audit events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeAuditStreamConfigurationResponse AWS API Documentation
    #
    class DescribeAuditStreamConfigurationResponse < Struct.new(
      :audit_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCompanyNetworkConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeCompanyNetworkConfigurationRequest AWS API Documentation
    #
    class DescribeCompanyNetworkConfigurationRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The VPC with connectivity to associated websites.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets used for X-ENI connections from Amazon WorkLink
    #   rendering containers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups associated with access to the provided subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeCompanyNetworkConfigurationResponse AWS API Documentation
    #
    class DescribeCompanyNetworkConfigurationResponse < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDevicePolicyConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDevicePolicyConfigurationRequest AWS API Documentation
    #
    class DescribeDevicePolicyConfigurationRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_ca_certificate
    #   The certificate chain, including intermediate certificates and the
    #   root certificate authority certificate used to issue device
    #   certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDevicePolicyConfigurationResponse AWS API Documentation
    #
    class DescribeDevicePolicyConfigurationResponse < Struct.new(
      :device_ca_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeviceRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         device_id: "Id", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   A unique identifier for a registered user's device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDeviceRequest AWS API Documentation
    #
    class DescribeDeviceRequest < Struct.new(
      :fleet_arn,
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current state of the device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer
    #   The manufacturer of the device.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system of the device.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_version
    #   The operating system version of the device.
    #   @return [String]
    #
    # @!attribute [rw] patch_level
    #   The operating system patch level of the device.
    #   @return [String]
    #
    # @!attribute [rw] first_accessed_time
    #   The date that the device first signed in to Amazon WorkLink.
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed_time
    #   The date that the device last accessed Amazon WorkLink.
    #   @return [Time]
    #
    # @!attribute [rw] username
    #   The user name associated with the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDeviceResponse AWS API Documentation
    #
    class DescribeDeviceResponse < Struct.new(
      :status,
      :model,
      :manufacturer,
      :operating_system,
      :operating_system_version,
      :patch_level,
      :first_accessed_time,
      :last_accessed_time,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDomainRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :fleet_arn,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the domain was added.
    #   @return [Time]
    #
    # @!attribute [rw] domain_status
    #   The current state for the domain.
    #   @return [String]
    #
    # @!attribute [rw] acm_certificate_arn
    #   The ARN of an issued ACM certificate that is valid for the domain
    #   being associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDomainResponse AWS API Documentation
    #
    class DescribeDomainResponse < Struct.new(
      :domain_name,
      :display_name,
      :created_time,
      :domain_status,
      :acm_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFleetMetadataRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeFleetMetadataRequest AWS API Documentation
    #
    class DescribeFleetMetadataRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_time
    #   The time that the fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the fleet was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @!attribute [rw] optimize_for_end_user_location
    #   The option to optimize for better performance by routing traffic
    #   through the closest AWS Region to users, which may be outside of
    #   your home Region.
    #   @return [Boolean]
    #
    # @!attribute [rw] company_code
    #   The identifier used by users to sign in to the Amazon WorkLink app.
    #   @return [String]
    #
    # @!attribute [rw] fleet_status
    #   The current state of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeFleetMetadataResponse AWS API Documentation
    #
    class DescribeFleetMetadataResponse < Struct.new(
      :created_time,
      :last_updated_time,
      :fleet_name,
      :display_name,
      :optimize_for_end_user_location,
      :company_code,
      :fleet_status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIdentityProviderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeIdentityProviderConfigurationRequest AWS API Documentation
    #
    class DescribeIdentityProviderConfigurationRequest < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_provider_type
    #   The type of identity provider.
    #   @return [String]
    #
    # @!attribute [rw] service_provider_saml_metadata
    #   The SAML metadata document uploaded to the user’s identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_saml_metadata
    #   The SAML metadata document provided by the user’s identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeIdentityProviderConfigurationResponse AWS API Documentation
    #
    class DescribeIdentityProviderConfigurationResponse < Struct.new(
      :identity_provider_type,
      :service_provider_saml_metadata,
      :identity_provider_saml_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWebsiteCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         website_ca_id: "Id", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] website_ca_id
    #   A unique identifier for the certificate authority.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeWebsiteCertificateAuthorityRequest AWS API Documentation
    #
    class DescribeWebsiteCertificateAuthorityRequest < Struct.new(
      :fleet_arn,
      :website_ca_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The root certificate of the certificate authority.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the certificate authority was added.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The certificate name to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeWebsiteCertificateAuthorityResponse AWS API Documentation
    #
    class DescribeWebsiteCertificateAuthorityResponse < Struct.new(
      :certificate,
      :created_time,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of devices.
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :device_id,
      :device_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateDomainRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateDomainRequest AWS API Documentation
    #
    class DisassociateDomainRequest < Struct.new(
      :fleet_arn,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateDomainResponse AWS API Documentation
    #
    class DisassociateDomainResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateWebsiteAuthorizationProviderRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         authorization_provider_id: "Id", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] authorization_provider_id
    #   A unique identifier for the authorization provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteAuthorizationProviderRequest AWS API Documentation
    #
    class DisassociateWebsiteAuthorizationProviderRequest < Struct.new(
      :fleet_arn,
      :authorization_provider_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteAuthorizationProviderResponse AWS API Documentation
    #
    class DisassociateWebsiteAuthorizationProviderResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateWebsiteCertificateAuthorityRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         website_ca_id: "Id", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] website_ca_id
    #   A unique identifier for the CA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteCertificateAuthorityRequest AWS API Documentation
    #
    class DisassociateWebsiteCertificateAuthorityRequest < Struct.new(
      :fleet_arn,
      :website_ca_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteCertificateAuthorityResponse AWS API Documentation
    #
    class DisassociateWebsiteCertificateAuthorityResponse < Aws::EmptyStructure; end

    # The summary of the domain.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_status
    #   The status of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_name,
      :display_name,
      :created_time,
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the fleet.
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time when the fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the fleet was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the fleet to display.
    #   @return [String]
    #
    # @!attribute [rw] company_code
    #   The identifier used by users to sign into the Amazon WorkLink app.
    #   @return [String]
    #
    # @!attribute [rw] fleet_status
    #   The status of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/FleetSummary AWS API Documentation
    #
    class FleetSummary < Struct.new(
      :fleet_arn,
      :created_time,
      :last_updated_time,
      :fleet_name,
      :display_name,
      :company_code,
      :fleet_status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDevicesRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :fleet_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   Information about the devices.
    #   @return [Array<Types::DeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDevicesResponse AWS API Documentation
    #
    class ListDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :fleet_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   Information about the domains.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFleetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListFleetsRequest AWS API Documentation
    #
    class ListFleetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_summary_list
    #   The summary list of the fleets.
    #   @return [Array<Types::FleetSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListFleetsResponse AWS API Documentation
    #
    class ListFleetsResponse < Struct.new(
      :fleet_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "FleetArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags attached to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWebsiteAuthorizationProvidersRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteAuthorizationProvidersRequest AWS API Documentation
    #
    class ListWebsiteAuthorizationProvidersRequest < Struct.new(
      :fleet_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] website_authorization_providers
    #   The website authorization providers.
    #   @return [Array<Types::WebsiteAuthorizationProviderSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteAuthorizationProvidersResponse AWS API Documentation
    #
    class ListWebsiteAuthorizationProvidersResponse < Struct.new(
      :website_authorization_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWebsiteCertificateAuthoritiesRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be included in the next page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteCertificateAuthoritiesRequest AWS API Documentation
    #
    class ListWebsiteCertificateAuthoritiesRequest < Struct.new(
      :fleet_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] website_certificate_authorities
    #   Information about the certificates.
    #   @return [Array<Types::WebsiteCaSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteCertificateAuthoritiesResponse AWS API Documentation
    #
    class ListWebsiteCertificateAuthoritiesResponse < Struct.new(
      :website_certificate_authorities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDomainAccessRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RestoreDomainAccessRequest AWS API Documentation
    #
    class RestoreDomainAccessRequest < Struct.new(
      :fleet_arn,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RestoreDomainAccessResponse AWS API Documentation
    #
    class RestoreDomainAccessResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RevokeDomainAccessRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RevokeDomainAccessRequest AWS API Documentation
    #
    class RevokeDomainAccessRequest < Struct.new(
      :fleet_arn,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RevokeDomainAccessResponse AWS API Documentation
    #
    class RevokeDomainAccessResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SignOutUserRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         username: "Username", # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/SignOutUserRequest AWS API Documentation
    #
    class SignOutUserRequest < Struct.new(
      :fleet_arn,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/SignOutUserResponse AWS API Documentation
    #
    class SignOutUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "FleetArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The number of requests exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "FleetArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAuditStreamConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         audit_stream_arn: "AuditStreamArn",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] audit_stream_arn
    #   The ARN of the Amazon Kinesis data stream that receives the audit
    #   events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateAuditStreamConfigurationRequest AWS API Documentation
    #
    class UpdateAuditStreamConfigurationRequest < Struct.new(
      :fleet_arn,
      :audit_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateAuditStreamConfigurationResponse AWS API Documentation
    #
    class UpdateAuditStreamConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCompanyNetworkConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC with connectivity to associated websites.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets used for X-ENI connections from Amazon WorkLink
    #   rendering containers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups associated with access to the provided subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateCompanyNetworkConfigurationRequest AWS API Documentation
    #
    class UpdateCompanyNetworkConfigurationRequest < Struct.new(
      :fleet_arn,
      :vpc_id,
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateCompanyNetworkConfigurationResponse AWS API Documentation
    #
    class UpdateCompanyNetworkConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDevicePolicyConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         device_ca_certificate: "CertificateChain",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] device_ca_certificate
    #   The certificate chain, including intermediate certificates and the
    #   root certificate authority certificate used to issue device
    #   certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDevicePolicyConfigurationRequest AWS API Documentation
    #
    class UpdateDevicePolicyConfigurationRequest < Struct.new(
      :fleet_arn,
      :device_ca_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDevicePolicyConfigurationResponse AWS API Documentation
    #
    class UpdateDevicePolicyConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDomainMetadataRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         domain_name: "DomainName", # required
    #         display_name: "DisplayName",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDomainMetadataRequest AWS API Documentation
    #
    class UpdateDomainMetadataRequest < Struct.new(
      :fleet_arn,
      :domain_name,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDomainMetadataResponse AWS API Documentation
    #
    class UpdateDomainMetadataResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFleetMetadataRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         display_name: "DisplayName",
    #         optimize_for_end_user_location: false,
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name to display. The existing DisplayName is unset if null
    #   is passed.
    #   @return [String]
    #
    # @!attribute [rw] optimize_for_end_user_location
    #   The option to optimize for better performance by routing traffic
    #   through the closest AWS Region to users, which may be outside of
    #   your home Region.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateFleetMetadataRequest AWS API Documentation
    #
    class UpdateFleetMetadataRequest < Struct.new(
      :fleet_arn,
      :display_name,
      :optimize_for_end_user_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateFleetMetadataResponse AWS API Documentation
    #
    class UpdateFleetMetadataResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateIdentityProviderConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         fleet_arn: "FleetArn", # required
    #         identity_provider_type: "SAML", # required, accepts SAML
    #         identity_provider_saml_metadata: "SamlMetadata",
    #       }
    #
    # @!attribute [rw] fleet_arn
    #   The ARN of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The type of identity provider.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_saml_metadata
    #   The SAML metadata document provided by the customer’s identity
    #   provider. The existing IdentityProviderSamlMetadata is unset if null
    #   is passed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateIdentityProviderConfigurationRequest AWS API Documentation
    #
    class UpdateIdentityProviderConfigurationRequest < Struct.new(
      :fleet_arn,
      :identity_provider_type,
      :identity_provider_saml_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateIdentityProviderConfigurationResponse AWS API Documentation
    #
    class UpdateIdentityProviderConfigurationResponse < Aws::EmptyStructure; end

    # The summary of the website authorization provider.
    #
    # @!attribute [rw] authorization_provider_id
    #   A unique identifier for the authorization provider.
    #   @return [String]
    #
    # @!attribute [rw] authorization_provider_type
    #   The authorization provider type.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the authorization provider. This applies only to
    #   SAML-based authorization providers.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time of creation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/WebsiteAuthorizationProviderSummary AWS API Documentation
    #
    class WebsiteAuthorizationProviderSummary < Struct.new(
      :authorization_provider_id,
      :authorization_provider_type,
      :domain_name,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the certificate authority (CA).
    #
    # @!attribute [rw] website_ca_id
    #   A unique identifier for the CA.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time when the CA was added.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/WebsiteCaSummary AWS API Documentation
    #
    class WebsiteCaSummary < Struct.new(
      :website_ca_id,
      :created_time,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

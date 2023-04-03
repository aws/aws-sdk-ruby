# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManager
  module Types

    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AcceptGrantRequest AWS API Documentation
    #
    class AcceptGrantRequest < Struct.new(
      :grant_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Grant ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AcceptGrantResponse AWS API Documentation
    #
    class AcceptGrantResponse < Struct.new(
      :grant_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access to resource denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services user account does not have permission to
    # perform the action. Check the IAM policy associated with this account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AuthorizationException AWS API Documentation
    #
    class AuthorizationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes automated discovery.
    #
    # @!attribute [rw] last_run_time
    #   Time that automated discovery last ran.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/AutomatedDiscoveryInformation AWS API Documentation
    #
    class AutomatedDiscoveryInformation < Struct.new(
      :last_run_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a borrow configuration.
    #
    # @!attribute [rw] allow_early_check_in
    #   Indicates whether early check-ins are allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_time_to_live_in_minutes
    #   Maximum time for the borrow configuration, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/BorrowConfiguration AWS API Documentation
    #
    class BorrowConfiguration < Struct.new(
      :allow_early_check_in,
      :max_time_to_live_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_consumption_token
    #   License consumption token.
    #   @return [String]
    #
    # @!attribute [rw] beneficiary
    #   License beneficiary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckInLicenseRequest AWS API Documentation
    #
    class CheckInLicenseRequest < Struct.new(
      :license_consumption_token,
      :beneficiary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckInLicenseResponse AWS API Documentation
    #
    class CheckInLicenseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license. The license must use the
    #   borrow consumption configuration.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   License entitlements. Partial checkouts are not supported.
    #   @return [Array<Types::EntitlementData>]
    #
    # @!attribute [rw] digital_signature_method
    #   Digital signature method. The possible value is JSON Web Signature
    #   (JWS) algorithm PS384. For more information, see [RFC 7518 Digital
    #   Signature with RSASSA-PSS][1].
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc7518#section-3.5
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   Node ID.
    #   @return [String]
    #
    # @!attribute [rw] checkout_metadata
    #   Information about constraints.
    #   @return [Array<Types::Metadata>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutBorrowLicenseRequest AWS API Documentation
    #
    class CheckoutBorrowLicenseRequest < Struct.new(
      :license_arn,
      :entitlements,
      :digital_signature_method,
      :node_id,
      :checkout_metadata,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] license_consumption_token
    #   License consumption token.
    #   @return [String]
    #
    # @!attribute [rw] entitlements_allowed
    #   Allowed license entitlements.
    #   @return [Array<Types::EntitlementData>]
    #
    # @!attribute [rw] node_id
    #   Node ID.
    #   @return [String]
    #
    # @!attribute [rw] signed_token
    #   Signed token.
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   Date and time at which the license checkout is issued.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   Date and time at which the license checkout expires.
    #   @return [String]
    #
    # @!attribute [rw] checkout_metadata
    #   Information about constraints.
    #   @return [Array<Types::Metadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutBorrowLicenseResponse AWS API Documentation
    #
    class CheckoutBorrowLicenseResponse < Struct.new(
      :license_arn,
      :license_consumption_token,
      :entitlements_allowed,
      :node_id,
      :signed_token,
      :issued_at,
      :expiration,
      :checkout_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_sku
    #   Product SKU.
    #   @return [String]
    #
    # @!attribute [rw] checkout_type
    #   Checkout type.
    #   @return [String]
    #
    # @!attribute [rw] key_fingerprint
    #   Key fingerprint identifying the license.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   License entitlements.
    #   @return [Array<Types::EntitlementData>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] beneficiary
    #   License beneficiary.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   Node ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutLicenseRequest AWS API Documentation
    #
    class CheckoutLicenseRequest < Struct.new(
      :product_sku,
      :checkout_type,
      :key_fingerprint,
      :entitlements,
      :client_token,
      :beneficiary,
      :node_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] checkout_type
    #   Checkout type.
    #   @return [String]
    #
    # @!attribute [rw] license_consumption_token
    #   License consumption token.
    #   @return [String]
    #
    # @!attribute [rw] entitlements_allowed
    #   Allowed license entitlements.
    #   @return [Array<Types::EntitlementData>]
    #
    # @!attribute [rw] signed_token
    #   Signed token.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   Node ID.
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   Date and time at which the license checkout is issued.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   Date and time at which the license checkout expires.
    #   @return [String]
    #
    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the checkout license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CheckoutLicenseResponse AWS API Documentation
    #
    class CheckoutLicenseResponse < Struct.new(
      :checkout_type,
      :license_consumption_token,
      :entitlements_allowed,
      :signed_token,
      :node_id,
      :issued_at,
      :expiration,
      :license_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict processing the request. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about license consumption.
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource consuming a license.
    #   @return [String]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses consumed by the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ConsumedLicenseSummary AWS API Documentation
    #
    class ConsumedLicenseSummary < Struct.new(
      :resource_type,
      :consumed_licenses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a consumption configuration.
    #
    # @!attribute [rw] renew_type
    #   Renewal frequency.
    #   @return [String]
    #
    # @!attribute [rw] provisional_configuration
    #   Details about a provisional configuration.
    #   @return [Types::ProvisionalConfiguration]
    #
    # @!attribute [rw] borrow_configuration
    #   Details about a borrow configuration.
    #   @return [Types::BorrowConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ConsumptionConfiguration AWS API Documentation
    #
    class ConsumptionConfiguration < Struct.new(
      :renew_type,
      :provisional_configuration,
      :borrow_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] grant_name
    #   Grant name.
    #   @return [String]
    #
    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   The grant principals. You can specify one of the following as an
    #   Amazon Resource Name (ARN):
    #
    #   * An Amazon Web Services account, which includes only the account
    #     specified.
    #
    #   ^
    #   ^
    #
    #   * An organizational unit (OU), which includes all accounts in the
    #     OU.
    #
    #   ^
    #   ^
    #
    #   * An organization, which will include all accounts across your
    #     organization.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] home_region
    #   Home Region of the grant.
    #   @return [String]
    #
    # @!attribute [rw] allowed_operations
    #   Allowed operations for the grant.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrantRequest AWS API Documentation
    #
    class CreateGrantRequest < Struct.new(
      :client_token,
      :grant_name,
      :license_arn,
      :principals,
      :home_region,
      :allowed_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Grant ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrantResponse AWS API Documentation
    #
    class CreateGrantResponse < Struct.new(
      :grant_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_name
    #   Grant name.
    #   @return [String]
    #
    # @!attribute [rw] allowed_operations
    #   Allowed operations for the grant.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Grant status reason.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Current version of the grant.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The options specified for the grant.
    #   @return [Types::Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrantVersionRequest AWS API Documentation
    #
    class CreateGrantVersionRequest < Struct.new(
      :client_token,
      :grant_arn,
      :grant_name,
      :allowed_operations,
      :status,
      :status_reason,
      :source_version,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Grant ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   New version of the grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateGrantVersionResponse AWS API Documentation
    #
    class CreateGrantVersionResponse < Struct.new(
      :grant_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_counting_type
    #   Dimension used to track the license inventory.
    #   @return [String]
    #
    # @!attribute [rw] license_count
    #   Number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Indicates whether hard or soft license enforcement is used.
    #   Exceeding a hard limit blocks the launch of new instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_rules
    #   License rules. The syntax is #name=value (for example,
    #   #allowedTenancy=EC2-DedicatedHost). The available rules vary by
    #   dimension, as follows.
    #
    #   * `Cores` dimension: `allowedTenancy` \| `licenseAffinityToHost` \|
    #     `maximumCores` \| `minimumCores`
    #
    #   * `Instances` dimension: `allowedTenancy` \| `maximumCores` \|
    #     `minimumCores` \| `maximumSockets` \| `minimumSockets` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   * `Sockets` dimension: `allowedTenancy` \| `licenseAffinityToHost`
    #     \| `maximumSockets` \| `minimumSockets`
    #
    #   * `vCPUs` dimension: `allowedTenancy` \| `honorVcpuOptimization` \|
    #     `maximumVcpus` \| `minimumVcpus`
    #
    #   The unit for `licenseAffinityToHost` is days and the range is 1 to
    #   180. The possible values for `allowedTenancy` are `EC2-Default`,
    #   `EC2-DedicatedHost`, and `EC2-DedicatedInstance`. The possible
    #   values for `honorVcpuOptimization` are `True` and `False`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags to add to the license configuration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #   @return [Boolean]
    #
    # @!attribute [rw] product_information_list
    #   Product information.
    #   @return [Array<Types::ProductInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConfigurationRequest AWS API Documentation
    #
    class CreateLicenseConfigurationRequest < Struct.new(
      :name,
      :description,
      :license_counting_type,
      :license_count,
      :license_count_hard_limit,
      :license_rules,
      :tags,
      :disassociate_when_not_found,
      :product_information_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConfigurationResponse AWS API Documentation
    #
    class CreateLicenseConfigurationResponse < Struct.new(
      :license_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource you are converting the
    #   license type for.
    #   @return [String]
    #
    # @!attribute [rw] source_license_context
    #   Information that identifies the license type you are converting
    #   from. For the structure of the source license, see [Convert a
    #   license type using the CLI ][1] in the *License Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli
    #   @return [Types::LicenseConversionContext]
    #
    # @!attribute [rw] destination_license_context
    #   Information that identifies the license type you are converting to.
    #   For the structure of the destination license, see [Convert a license
    #   type using the CLI ][1] in the *License Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli
    #   @return [Types::LicenseConversionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConversionTaskForResourceRequest AWS API Documentation
    #
    class CreateLicenseConversionTaskForResourceRequest < Struct.new(
      :resource_arn,
      :source_license_context,
      :destination_license_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_conversion_task_id
    #   The ID of the created license type conversion task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConversionTaskForResourceResponse AWS API Documentation
    #
    class CreateLicenseConversionTaskForResourceResponse < Struct.new(
      :license_conversion_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_generator_name
    #   Name of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of reports to generate. The following report types an be
    #   generated:
    #
    #   * License configuration report - Reports the number and details of
    #     consumed licenses for a license configuration.
    #
    #   * Resource report - Reports the tracked licenses and resource
    #     consumption for a license configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] report_context
    #   Defines the type of license configuration the report generator
    #   tracks.
    #   @return [Types::ReportContext]
    #
    # @!attribute [rw] report_frequency
    #   Frequency by which reports are generated. Reports can be generated
    #   daily, monthly, or weekly.
    #   @return [Types::ReportFrequency]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the report generator.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseManagerReportGeneratorRequest AWS API Documentation
    #
    class CreateLicenseManagerReportGeneratorRequest < Struct.new(
      :report_generator_name,
      :type,
      :report_context,
      :report_frequency,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_manager_report_generator_arn
    #   The Amazon Resource Name (ARN) of the new report generator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseManagerReportGeneratorResponse AWS API Documentation
    #
    class CreateLicenseManagerReportGeneratorResponse < Struct.new(
      :license_manager_report_generator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_name
    #   License name.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Product name.
    #   @return [String]
    #
    # @!attribute [rw] product_sku
    #   Product SKU.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   License issuer.
    #   @return [Types::Issuer]
    #
    # @!attribute [rw] home_region
    #   Home Region for the license.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   Date and time range during which the license is valid, in
    #   ISO8601-UTC format.
    #   @return [Types::DatetimeRange]
    #
    # @!attribute [rw] entitlements
    #   License entitlements.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] beneficiary
    #   License beneficiary.
    #   @return [String]
    #
    # @!attribute [rw] consumption_configuration
    #   Configuration for consumption of the license. Choose a provisional
    #   configuration for workloads running with continuous connectivity.
    #   Choose a borrow configuration for workloads with offline usage.
    #   @return [Types::ConsumptionConfiguration]
    #
    # @!attribute [rw] license_metadata
    #   Information about the license.
    #   @return [Array<Types::Metadata>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseRequest AWS API Documentation
    #
    class CreateLicenseRequest < Struct.new(
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :validity,
      :entitlements,
      :beneficiary,
      :consumption_configuration,
      :license_metadata,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   License status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   License version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseResponse AWS API Documentation
    #
    class CreateLicenseResponse < Struct.new(
      :license_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] license_name
    #   License name.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Product name.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   License issuer.
    #   @return [Types::Issuer]
    #
    # @!attribute [rw] home_region
    #   Home Region of the license.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   Date and time range during which the license is valid, in
    #   ISO8601-UTC format.
    #   @return [Types::DatetimeRange]
    #
    # @!attribute [rw] license_metadata
    #   Information about the license.
    #   @return [Array<Types::Metadata>]
    #
    # @!attribute [rw] entitlements
    #   License entitlements.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] consumption_configuration
    #   Configuration for consumption of the license. Choose a provisional
    #   configuration for workloads running with continuous connectivity.
    #   Choose a borrow configuration for workloads with offline usage.
    #   @return [Types::ConsumptionConfiguration]
    #
    # @!attribute [rw] status
    #   License status.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Current version of the license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseVersionRequest AWS API Documentation
    #
    class CreateLicenseVersionRequest < Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :issuer,
      :home_region,
      :validity,
      :license_metadata,
      :entitlements,
      :consumption_configuration,
      :status,
      :client_token,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   License ARN.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   New version of the license.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   License status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseVersionResponse AWS API Documentation
    #
    class CreateLicenseVersionResponse < Struct.new(
      :license_arn,
      :version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license. The ARN is mapped to the
    #   aud claim of the JWT token.
    #   @return [String]
    #
    # @!attribute [rw] role_arns
    #   Amazon Resource Name (ARN) of the IAM roles to embed in the token.
    #   License Manager does not check whether the roles are in use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expiration_in_days
    #   Token expiration, in days, counted from token creation. The default
    #   is 365 days.
    #   @return [Integer]
    #
    # @!attribute [rw] token_properties
    #   Data specified by the caller to be included in the JWT token. The
    #   data is mapped to the amr claim of the JWT token.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token, valid for 10 minutes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateTokenRequest AWS API Documentation
    #
    class CreateTokenRequest < Struct.new(
      :license_arn,
      :role_arns,
      :expiration_in_days,
      :token_properties,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_id
    #   Token ID.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Token type.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   Refresh token, encoded as a JWT token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateTokenResponse AWS API Documentation
    #
    class CreateTokenResponse < Struct.new(
      :token_id,
      :token_type,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a time range, in ISO8601-UTC format.
    #
    # @!attribute [rw] begin
    #   Start of the time range.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   End of the time range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DatetimeRange AWS API Documentation
    #
    class DatetimeRange < Struct.new(
      :begin,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The Status reason for the delete request.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Current version of the grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteGrantRequest AWS API Documentation
    #
    class DeleteGrantRequest < Struct.new(
      :grant_arn,
      :status_reason,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Grant ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteGrantResponse AWS API Documentation
    #
    class DeleteGrantResponse < Struct.new(
      :grant_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   ID of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseConfigurationRequest AWS API Documentation
    #
    class DeleteLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseConfigurationResponse AWS API Documentation
    #
    class DeleteLicenseConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseManagerReportGeneratorRequest AWS API Documentation
    #
    class DeleteLicenseManagerReportGeneratorRequest < Struct.new(
      :license_manager_report_generator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseManagerReportGeneratorResponse AWS API Documentation
    #
    class DeleteLicenseManagerReportGeneratorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Current version of the license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseRequest AWS API Documentation
    #
    class DeleteLicenseRequest < Struct.new(
      :license_arn,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   License status.
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   Date when the license is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseResponse AWS API Documentation
    #
    class DeleteLicenseResponse < Struct.new(
      :status,
      :deletion_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_id
    #   Token ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteTokenRequest AWS API Documentation
    #
    class DeleteTokenRequest < Struct.new(
      :token_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteTokenResponse AWS API Documentation
    #
    class DeleteTokenResponse < Aws::EmptyStructure; end

    # Describes a resource entitled for use with a license.
    #
    # @!attribute [rw] name
    #   Entitlement name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Entitlement resource. Use only if the unit is None.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   Maximum entitlement count. Use if the unit is not None.
    #   @return [Integer]
    #
    # @!attribute [rw] overage
    #   Indicates whether overages are allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] unit
    #   Entitlement unit.
    #   @return [String]
    #
    # @!attribute [rw] allow_check_in
    #   Indicates whether check-ins are allowed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :name,
      :value,
      :max_count,
      :overage,
      :unit,
      :allow_check_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data associated with an entitlement resource.
    #
    # @!attribute [rw] name
    #   Entitlement data name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Entitlement data value.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   Entitlement data unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/EntitlementData AWS API Documentation
    #
    class EntitlementData < Struct.new(
      :name,
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entitlement is not allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/EntitlementNotAllowedException AWS API Documentation
    #
    class EntitlementNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Usage associated with an entitlement resource.
    #
    # @!attribute [rw] name
    #   Entitlement usage name.
    #   @return [String]
    #
    # @!attribute [rw] consumed_value
    #   Resource usage consumed.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   Maximum entitlement usage count.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   Entitlement usage unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/EntitlementUsage AWS API Documentation
    #
    class EntitlementUsage < Struct.new(
      :name,
      :consumed_value,
      :max_count,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_consumption_token
    #   License consumption token.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request. Provides an error response if
    #   you do not have the required permissions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ExtendLicenseConsumptionRequest AWS API Documentation
    #
    class ExtendLicenseConsumptionRequest < Struct.new(
      :license_consumption_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_consumption_token
    #   License consumption token.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   Date and time at which the license consumption expires.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ExtendLicenseConsumptionResponse AWS API Documentation
    #
    class ExtendLicenseConsumptionResponse < Struct.new(
      :license_consumption_token,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependency required to run the API is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/FailedDependencyException AWS API Documentation
    #
    class FailedDependencyException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return more specific
    # results from a describe operation. Filters can be used to match a set
    # of resources by specific criteria, such as tags, attributes, or IDs.
    #
    # @!attribute [rw] name
    #   Name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter, which is case-sensitive. You can only
    #   specify one value for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request uses too many filters or too many filter values.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/FilterLimitExceededException AWS API Documentation
    #
    class FilterLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token
    #   Refresh token, encoded as a JWT token.
    #   @return [String]
    #
    # @!attribute [rw] token_properties
    #   Token properties to validate against those present in the JWT token.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetAccessTokenRequest AWS API Documentation
    #
    class GetAccessTokenRequest < Struct.new(
      :token,
      :token_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   Temporary access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetAccessTokenResponse AWS API Documentation
    #
    class GetAccessTokenResponse < Struct.new(
      :access_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetGrantRequest AWS API Documentation
    #
    class GetGrantRequest < Struct.new(
      :grant_arn,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant
    #   Grant details.
    #   @return [Types::Grant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetGrantResponse AWS API Documentation
    #
    class GetGrantResponse < Struct.new(
      :grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfigurationRequest AWS API Documentation
    #
    class GetLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_id
    #   Unique ID for the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_counting_type
    #   Dimension for which the licenses are counted.
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   License rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_count
    #   Number of available licenses.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Sets the number of available licenses as a hard limit.
    #   @return [Boolean]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses assigned to resources.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   License configuration status.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   Account ID of the owner of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] consumed_license_summary_list
    #   Summaries of the licenses consumed by resources.
    #   @return [Array<Types::ConsumedLicenseSummary>]
    #
    # @!attribute [rw] managed_resource_summary_list
    #   Summaries of the managed resources.
    #   @return [Array<Types::ManagedResourceSummary>]
    #
    # @!attribute [rw] tags
    #   Tags for the license configuration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] product_information_list
    #   Product information.
    #   @return [Array<Types::ProductInformation>]
    #
    # @!attribute [rw] automated_discovery_information
    #   Automated discovery information.
    #   @return [Types::AutomatedDiscoveryInformation]
    #
    # @!attribute [rw] disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfigurationResponse AWS API Documentation
    #
    class GetLicenseConfigurationResponse < Struct.new(
      :license_configuration_id,
      :license_configuration_arn,
      :name,
      :description,
      :license_counting_type,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :consumed_licenses,
      :status,
      :owner_account_id,
      :consumed_license_summary_list,
      :managed_resource_summary_list,
      :tags,
      :product_information_list,
      :automated_discovery_information,
      :disassociate_when_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_conversion_task_id
    #   ID of the license type conversion task to retrieve information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConversionTaskRequest AWS API Documentation
    #
    class GetLicenseConversionTaskRequest < Struct.new(
      :license_conversion_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_conversion_task_id
    #   ID of the license type conversion task.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Names (ARN) of the resources the license conversion
    #   task is associated with.
    #   @return [String]
    #
    # @!attribute [rw] source_license_context
    #   Information about the license type converted from.
    #   @return [Types::LicenseConversionContext]
    #
    # @!attribute [rw] destination_license_context
    #   Information about the license type converted to.
    #   @return [Types::LicenseConversionContext]
    #
    # @!attribute [rw] status_message
    #   The status message for the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the license type conversion task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Time at which the license type conversion task was started .
    #   @return [Time]
    #
    # @!attribute [rw] license_conversion_time
    #   Amount of time to complete the license type conversion.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time at which the license type conversion task was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConversionTaskResponse AWS API Documentation
    #
    class GetLicenseConversionTaskResponse < Struct.new(
      :license_conversion_task_id,
      :resource_arn,
      :source_license_context,
      :destination_license_context,
      :status_message,
      :status,
      :start_time,
      :license_conversion_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseManagerReportGeneratorRequest AWS API Documentation
    #
    class GetLicenseManagerReportGeneratorRequest < Struct.new(
      :license_manager_report_generator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_generator
    #   A report generator that creates periodic reports about your license
    #   configurations.
    #   @return [Types::ReportGenerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseManagerReportGeneratorResponse AWS API Documentation
    #
    class GetLicenseManagerReportGeneratorResponse < Struct.new(
      :report_generator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   License version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseRequest AWS API Documentation
    #
    class GetLicenseRequest < Struct.new(
      :license_arn,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license
    #   License details.
    #   @return [Types::License]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseResponse AWS API Documentation
    #
    class GetLicenseResponse < Struct.new(
      :license)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseUsageRequest AWS API Documentation
    #
    class GetLicenseUsageRequest < Struct.new(
      :license_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_usage
    #   License usage details.
    #   @return [Types::LicenseUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseUsageResponse AWS API Documentation
    #
    class GetLicenseUsageResponse < Struct.new(
      :license_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettingsRequest AWS API Documentation
    #
    class GetServiceSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] s3_bucket_arn
    #   Regional S3 bucket path for storing reports, license trail event
    #   data, discovery data, and so on.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   SNS topic configured to receive notifications from License Manager.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Indicates whether Organizations is integrated with License Manager
    #   for cross-account discovery.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] enable_cross_accounts_discovery
    #   Indicates whether cross-account discovery is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_manager_resource_share_arn
    #   Amazon Resource Name (ARN) of the resource share. The License
    #   Manager management account provides member accounts with access to
    #   this share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettingsResponse AWS API Documentation
    #
    class GetServiceSettingsResponse < Struct.new(
      :s3_bucket_arn,
      :sns_topic_arn,
      :organization_configuration,
      :enable_cross_accounts_discovery,
      :license_manager_resource_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a grant.
    #
    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_name
    #   Grant name.
    #   @return [String]
    #
    # @!attribute [rw] parent_arn
    #   Parent ARN.
    #   @return [String]
    #
    # @!attribute [rw] license_arn
    #   License ARN.
    #   @return [String]
    #
    # @!attribute [rw] grantee_principal_arn
    #   The grantee principal ARN.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   Home Region of the grant.
    #   @return [String]
    #
    # @!attribute [rw] grant_status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Grant status reason.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @!attribute [rw] granted_operations
    #   Granted operations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   The options specified for the grant.
    #   @return [Types::Options]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Grant AWS API Documentation
    #
    class Grant < Struct.new(
      :grant_arn,
      :grant_name,
      :parent_arn,
      :license_arn,
      :grantee_principal_arn,
      :home_region,
      :grant_status,
      :status_reason,
      :version,
      :granted_operations,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a license that is granted to a grantee.
    #
    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] license_name
    #   License name.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Product name.
    #   @return [String]
    #
    # @!attribute [rw] product_sku
    #   Product SKU.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   Granted license issuer.
    #   @return [Types::IssuerDetails]
    #
    # @!attribute [rw] home_region
    #   Home Region of the granted license.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Granted license status.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   Date and time range during which the granted license is valid, in
    #   ISO8601-UTC format.
    #   @return [Types::DatetimeRange]
    #
    # @!attribute [rw] beneficiary
    #   Granted license beneficiary.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   License entitlements.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] consumption_configuration
    #   Configuration for consumption of the license.
    #   @return [Types::ConsumptionConfiguration]
    #
    # @!attribute [rw] license_metadata
    #   Granted license metadata.
    #   @return [Array<Types::Metadata>]
    #
    # @!attribute [rw] create_time
    #   Creation time of the granted license.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the granted license.
    #   @return [String]
    #
    # @!attribute [rw] received_metadata
    #   Granted license received metadata.
    #   @return [Types::ReceivedMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GrantedLicense AWS API Documentation
    #
    class GrantedLicense < Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :status,
      :validity,
      :beneficiary,
      :entitlements,
      :consumption_configuration,
      :license_metadata,
      :create_time,
      :version,
      :received_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameter values are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # License Manager cannot allocate a license to a resource because of its
    # state.
    #
    # For example, you cannot allocate a license to an instance in the
    # process of shutting down.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/InvalidResourceStateException AWS API Documentation
    #
    class InvalidResourceStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inventory filter.
    #
    # @!attribute [rw] name
    #   Name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   Condition of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/InventoryFilter AWS API Documentation
    #
    class InventoryFilter < Struct.new(
      :name,
      :condition,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the issuer of a license.
    #
    # @!attribute [rw] name
    #   Issuer name.
    #   @return [String]
    #
    # @!attribute [rw] sign_key
    #   Asymmetric KMS key from Key Management Service. The KMS key must
    #   have a key usage of sign and verify, and support the RSASSA-PSS
    #   SHA-256 signing algorithm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Issuer AWS API Documentation
    #
    class Issuer < Struct.new(
      :name,
      :sign_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details associated with the issuer of a license.
    #
    # @!attribute [rw] name
    #   Issuer name.
    #   @return [String]
    #
    # @!attribute [rw] sign_key
    #   Asymmetric KMS key from Key Management Service. The KMS key must
    #   have a key usage of sign and verify, and support the RSASSA-PSS
    #   SHA-256 signing algorithm.
    #   @return [String]
    #
    # @!attribute [rw] key_fingerprint
    #   Issuer key fingerprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/IssuerDetails AWS API Documentation
    #
    class IssuerDetails < Struct.new(
      :name,
      :sign_key,
      :key_fingerprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Software license that is managed in License Manager.
    #
    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] license_name
    #   License name.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Product name.
    #   @return [String]
    #
    # @!attribute [rw] product_sku
    #   Product SKU.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   License issuer.
    #   @return [Types::IssuerDetails]
    #
    # @!attribute [rw] home_region
    #   Home Region of the license.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   License status.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   Date and time range during which the license is valid, in
    #   ISO8601-UTC format.
    #   @return [Types::DatetimeRange]
    #
    # @!attribute [rw] beneficiary
    #   License beneficiary.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   License entitlements.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] consumption_configuration
    #   Configuration for consumption of the license.
    #   @return [Types::ConsumptionConfiguration]
    #
    # @!attribute [rw] license_metadata
    #   License metadata.
    #   @return [Array<Types::Metadata>]
    #
    # @!attribute [rw] create_time
    #   License creation time.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   License version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/License AWS API Documentation
    #
    class License < Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :status,
      :validity,
      :beneficiary,
      :entitlements,
      :consumption_configuration,
      :license_metadata,
      :create_time,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A license configuration is an abstraction of a customer license
    # agreement that can be consumed and enforced by License Manager.
    # Components include specifications for the license type (licensing by
    # instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    # Dedicated Instance, Dedicated Host, or all of these), host affinity
    # (how long a VM must be associated with a host), and the number of
    # licenses purchased and used.
    #
    # @!attribute [rw] license_configuration_id
    #   Unique ID of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_counting_type
    #   Dimension to use to track the license inventory.
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   License rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_count
    #   Number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Number of available licenses as a hard limit.
    #   @return [Boolean]
    #
    # @!attribute [rw] disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #   @return [Boolean]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses consumed.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   Account ID of the license configuration's owner.
    #   @return [String]
    #
    # @!attribute [rw] consumed_license_summary_list
    #   Summaries for licenses consumed by various resources.
    #   @return [Array<Types::ConsumedLicenseSummary>]
    #
    # @!attribute [rw] managed_resource_summary_list
    #   Summaries for managed resources.
    #   @return [Array<Types::ManagedResourceSummary>]
    #
    # @!attribute [rw] product_information_list
    #   Product information.
    #   @return [Array<Types::ProductInformation>]
    #
    # @!attribute [rw] automated_discovery_information
    #   Automated discovery information.
    #   @return [Types::AutomatedDiscoveryInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConfiguration AWS API Documentation
    #
    class LicenseConfiguration < Struct.new(
      :license_configuration_id,
      :license_configuration_arn,
      :name,
      :description,
      :license_counting_type,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :disassociate_when_not_found,
      :consumed_licenses,
      :status,
      :owner_account_id,
      :consumed_license_summary_list,
      :managed_resource_summary_list,
      :product_information_list,
      :automated_discovery_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an association with a license configuration.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of server resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_id
    #   ID of the Amazon Web Services account that owns the resource
    #   consuming licenses.
    #   @return [String]
    #
    # @!attribute [rw] association_time
    #   Time when the license configuration was associated with the
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] ami_association_scope
    #   Scope of AMI associations. The possible value is `cross-account`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConfigurationAssociation AWS API Documentation
    #
    class LicenseConfigurationAssociation < Struct.new(
      :resource_arn,
      :resource_type,
      :resource_owner_id,
      :association_time,
      :ami_association_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the usage of a resource associated with a license
    # configuration.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_status
    #   Status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_id
    #   ID of the account that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] association_time
    #   Time when the license configuration was initially associated with
    #   the resource.
    #   @return [Time]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses consumed by the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConfigurationUsage AWS API Documentation
    #
    class LicenseConfigurationUsage < Struct.new(
      :resource_arn,
      :resource_type,
      :resource_status,
      :resource_owner_id,
      :association_time,
      :consumed_licenses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a license type conversion task.
    #
    # @!attribute [rw] usage_operation
    #   The Usage operation value that corresponds to the license type you
    #   are converting your resource from. For more information about which
    #   platforms correspond to which usage operation values see [Sample
    #   data: usage operation by platform ][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html#billing-info
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConversionContext AWS API Documentation
    #
    class LicenseConversionContext < Struct.new(
      :usage_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a license type conversion task.
    #
    # @!attribute [rw] license_conversion_task_id
    #   The ID of the license type conversion task.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   license type conversion task.
    #   @return [String]
    #
    # @!attribute [rw] source_license_context
    #   Information about the license type this conversion task converted
    #   from.
    #   @return [Types::LicenseConversionContext]
    #
    # @!attribute [rw] destination_license_context
    #   Information about the license type this conversion task converted
    #   to.
    #   @return [Types::LicenseConversionContext]
    #
    # @!attribute [rw] status
    #   The status of the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the conversion task was started at.
    #   @return [Time]
    #
    # @!attribute [rw] license_conversion_time
    #   The time the usage operation value of the resource was changed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the conversion task was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConversionTask AWS API Documentation
    #
    class LicenseConversionTask < Struct.new(
      :license_conversion_task_id,
      :resource_arn,
      :source_license_context,
      :destination_license_context,
      :status,
      :status_message,
      :start_time,
      :license_conversion_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the failure of a license operation.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] failure_time
    #   Failure time.
    #   @return [Time]
    #
    # @!attribute [rw] operation_name
    #   Name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_id
    #   ID of the Amazon Web Services account that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] operation_requested_by
    #   The requester is "License Manager Automated Discovery".
    #   @return [String]
    #
    # @!attribute [rw] metadata_list
    #   Reserved.
    #   @return [Array<Types::Metadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseOperationFailure AWS API Documentation
    #
    class LicenseOperationFailure < Struct.new(
      :resource_arn,
      :resource_type,
      :error_message,
      :failure_time,
      :operation_name,
      :resource_owner_id,
      :operation_requested_by,
      :metadata_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for associating a license configuration with a resource.
    #
    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] ami_association_scope
    #   Scope of AMI associations. The possible value is `cross-account`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseSpecification AWS API Documentation
    #
    class LicenseSpecification < Struct.new(
      :license_configuration_arn,
      :ami_association_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the entitlement usage associated with a license.
    #
    # @!attribute [rw] entitlement_usages
    #   License entitlement usages.
    #   @return [Array<Types::EntitlementUsage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseUsage AWS API Documentation
    #
    class LicenseUsage < Struct.new(
      :entitlement_usages)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have enough licenses available to support a new resource
    # launch.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseUsageException AWS API Documentation
    #
    class LicenseUsageException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of a license configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListAssociationsForLicenseConfigurationRequest AWS API Documentation
    #
    class ListAssociationsForLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_associations
    #   Information about the associations for the license configuration.
    #   @return [Array<Types::LicenseConfigurationAssociation>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListAssociationsForLicenseConfigurationResponse AWS API Documentation
    #
    class ListAssociationsForLicenseConfigurationResponse < Struct.new(
      :license_configuration_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arns
    #   Amazon Resource Names (ARNs) of the grants.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `LicenseArn`
    #
    #   * `GrantStatus`
    #
    #   * `GranteePrincipalARN`
    #
    #   * `ProductSKU`
    #
    #   * `LicenseIssuerName`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListDistributedGrantsRequest AWS API Documentation
    #
    class ListDistributedGrantsRequest < Struct.new(
      :grant_arns,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grants
    #   Distributed grant details.
    #   @return [Array<Types::Grant>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListDistributedGrantsResponse AWS API Documentation
    #
    class ListDistributedGrantsResponse < Struct.new(
      :grants,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListFailuresForLicenseConfigurationOperationsRequest AWS API Documentation
    #
    class ListFailuresForLicenseConfigurationOperationsRequest < Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_operation_failure_list
    #   License configuration operations that failed.
    #   @return [Array<Types::LicenseOperationFailure>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListFailuresForLicenseConfigurationOperationsResponse AWS API Documentation
    #
    class ListFailuresForLicenseConfigurationOperationsResponse < Struct.new(
      :license_operation_failure_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arns
    #   Amazon Resource Names (ARN) of the license configurations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `licenseCountingType` - The dimension for which licenses are
    #     counted. Possible values are `vCPU` \| `Instance` \| `Core` \|
    #     `Socket`. Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `enforceLicenseCount` - A Boolean value that indicates whether
    #     hard license enforcement is used. Logical operators are `EQUALS`
    #     \| `NOT_EQUALS`.
    #
    #   * `usagelimitExceeded` - A Boolean value that indicates whether the
    #     available licenses have been exceeded. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConfigurationsRequest AWS API Documentation
    #
    class ListLicenseConfigurationsRequest < Struct.new(
      :license_configuration_arns,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configurations
    #   Information about the license configurations.
    #   @return [Array<Types::LicenseConfiguration>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConfigurationsResponse AWS API Documentation
    #
    class ListLicenseConfigurationsResponse < Struct.new(
      :license_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. Valid filters are `ResourceArns` and
    #   `Status`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConversionTasksRequest AWS API Documentation
    #
    class ListLicenseConversionTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_conversion_tasks
    #   Information about the license configuration tasks for your account.
    #   @return [Array<Types::LicenseConversionTask>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConversionTasksResponse AWS API Documentation
    #
    class ListLicenseConversionTasksResponse < Struct.new(
      :license_conversion_tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `LicenseConfigurationArn`
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseManagerReportGeneratorsRequest AWS API Documentation
    #
    class ListLicenseManagerReportGeneratorsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_generators
    #   A report generator that creates periodic reports about your license
    #   configurations.
    #   @return [Array<Types::ReportGenerator>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseManagerReportGeneratorsResponse AWS API Documentation
    #
    class ListLicenseManagerReportGeneratorsResponse < Struct.new(
      :report_generators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of a resource that has an associated
    #   license configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseSpecificationsForResourceRequest AWS API Documentation
    #
    class ListLicenseSpecificationsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_specifications
    #   License configurations associated with a resource.
    #   @return [Array<Types::LicenseSpecification>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseSpecificationsForResourceResponse AWS API Documentation
    #
    class ListLicenseSpecificationsForResourceResponse < Struct.new(
      :license_specifications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseVersionsRequest AWS API Documentation
    #
    class ListLicenseVersionsRequest < Struct.new(
      :license_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] licenses
    #   License details.
    #   @return [Array<Types::License>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseVersionsResponse AWS API Documentation
    #
    class ListLicenseVersionsResponse < Struct.new(
      :licenses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arns
    #   Amazon Resource Names (ARNs) of the licenses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `Beneficiary`
    #
    #   * `ProductSKU`
    #
    #   * `Fingerprint`
    #
    #   * `Status`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicensesRequest AWS API Documentation
    #
    class ListLicensesRequest < Struct.new(
      :license_arns,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] licenses
    #   License details.
    #   @return [Array<Types::License>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicensesResponse AWS API Documentation
    #
    class ListLicensesResponse < Struct.new(
      :licenses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arn
    #   The Amazon Resource Name (ARN) of the received license.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ParentArn`
    #
    #   * `GranteePrincipalArn`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrantsForOrganizationRequest AWS API Documentation
    #
    class ListReceivedGrantsForOrganizationRequest < Struct.new(
      :license_arn,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grants
    #   Lists the grants the organization has received.
    #   @return [Array<Types::Grant>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrantsForOrganizationResponse AWS API Documentation
    #
    class ListReceivedGrantsForOrganizationResponse < Struct.new(
      :grants,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arns
    #   Amazon Resource Names (ARNs) of the grants.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ProductSKU`
    #
    #   * `LicenseIssuerName`
    #
    #   * `LicenseArn`
    #
    #   * `GrantStatus`
    #
    #   * `GranterAccountId`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrantsRequest AWS API Documentation
    #
    class ListReceivedGrantsRequest < Struct.new(
      :grant_arns,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grants
    #   Received grant details.
    #   @return [Array<Types::Grant>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedGrantsResponse AWS API Documentation
    #
    class ListReceivedGrantsResponse < Struct.new(
      :grants,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `Beneficiary`
    #
    #   * `ProductSKU`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicensesForOrganizationRequest AWS API Documentation
    #
    class ListReceivedLicensesForOrganizationRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] licenses
    #   Lists the licenses the organization has received.
    #   @return [Array<Types::GrantedLicense>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicensesForOrganizationResponse AWS API Documentation
    #
    class ListReceivedLicensesForOrganizationResponse < Struct.new(
      :licenses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_arns
    #   Amazon Resource Names (ARNs) of the licenses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters are supported:
    #
    #   * `ProductSKU`
    #
    #   * `Status`
    #
    #   * `Fingerprint`
    #
    #   * `IssuerName`
    #
    #   * `Beneficiary`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicensesRequest AWS API Documentation
    #
    class ListReceivedLicensesRequest < Struct.new(
      :license_arns,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] licenses
    #   Received license details.
    #   @return [Array<Types::GrantedLicense>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListReceivedLicensesResponse AWS API Documentation
    #
    class ListReceivedLicensesResponse < Struct.new(
      :licenses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `account_id` - The ID of the Amazon Web Services account that owns
    #     the resource. Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `application_name` - The name of the application. Logical
    #     operators are `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `license_included` - The type of license included. Logical
    #     operators are `EQUALS` \| `NOT_EQUALS`. Possible values are
    #     `sql-server-enterprise` \| `sql-server-standard` \|
    #     `sql-server-web` \| `windows-server-datacenter`.
    #
    #   * `platform` - The platform of the resource. Logical operators are
    #     `EQUALS` \| `BEGINS_WITH`.
    #
    #   * `resource_id` - The ID of the resource. Logical operators are
    #     `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `tag:<key>` - The key/value combination of a tag assigned to the
    #     resource. Logical operators are `EQUALS` (single account) or
    #     `EQUALS` \| `NOT_EQUALS` (cross account).
    #   @return [Array<Types::InventoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListResourceInventoryRequest AWS API Documentation
    #
    class ListResourceInventoryRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_inventory_list
    #   Information about the resources.
    #   @return [Array<Types::ResourceInventory>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListResourceInventoryResponse AWS API Documentation
    #
    class ListResourceInventoryResponse < Struct.new(
      :resource_inventory_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_ids
    #   Token IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filter is supported:
    #
    #   * `LicenseArns`
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTokensRequest AWS API Documentation
    #
    class ListTokensRequest < Struct.new(
      :token_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tokens
    #   Received token details.
    #   @return [Array<Types::TokenData>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTokensResponse AWS API Documentation
    #
    class ListTokensResponse < Struct.new(
      :tokens,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to scope the results. The following filters and logical
    #   operators are supported:
    #
    #   * `resourceArn` - The ARN of the license configuration resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceType` - The resource type (`EC2_INSTANCE` \| `EC2_HOST`
    #     \| `EC2_AMI` \| `SYSTEMS_MANAGER_MANAGED_INSTANCE`). Logical
    #     operators are `EQUALS` \| `NOT_EQUALS`.
    #
    #   * `resourceAccount` - The ID of the account that owns the resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListUsageForLicenseConfigurationRequest AWS API Documentation
    #
    class ListUsageForLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_usage_list
    #   Information about the license configurations.
    #   @return [Array<Types::LicenseConfigurationUsage>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListUsageForLicenseConfigurationResponse AWS API Documentation
    #
    class ListUsageForLicenseConfigurationResponse < Struct.new(
      :license_configuration_usage_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a managed resource.
    #
    # @!attribute [rw] resource_type
    #   Type of resource associated with a license.
    #   @return [String]
    #
    # @!attribute [rw] association_count
    #   Number of resources associated with licenses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ManagedResourceSummary AWS API Documentation
    #
    class ManagedResourceSummary < Struct.new(
      :resource_type,
      :association_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes key/value pairs.
    #
    # @!attribute [rw] name
    #   The key name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Metadata AWS API Documentation
    #
    class Metadata < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are no entitlements found for this license, or the entitlement
    # maximum count is reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/NoEntitlementsAllowedException AWS API Documentation
    #
    class NoEntitlementsAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options you can specify when you create a new version of a grant,
    # such as activation override behavior. For more information, see
    # [Granted licenses in License Manager][1] in the *License Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html
    #
    # @!attribute [rw] activation_override_behavior
    #   An activation option for your grant that determines the behavior of
    #   activating a grant. Activation options can only be used with granted
    #   licenses sourced from the Amazon Web Services Marketplace.
    #   Additionally, the operation must specify the value of `ACTIVE` for
    #   the `Status` parameter.
    #
    #   * As a license administrator, you can optionally specify an
    #     `ActivationOverrideBehavior` when activating a grant.
    #
    #   * As a grantor, you can optionally specify an
    #     `ActivationOverrideBehavior` when you activate a grant for a
    #     grantee account in your organization.
    #
    #   * As a grantee, if the grantor creating the distributed grant
    #     doesn’t specify an `ActivationOverrideBehavior`, you can
    #     optionally specify one when you are activating the grant.
    #
    #   DISTRIBUTED\_GRANTS\_ONLY
    #
    #   : Use this value to activate a grant without replacing any member
    #     account’s active grants for the same product.
    #
    #   ALL\_GRANTS\_PERMITTED\_BY\_ISSUER
    #
    #   : Use this value to activate a grant and disable other active grants
    #     in any member accounts for the same product. This action will also
    #     replace their previously activated grants with this activated
    #     grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Options AWS API Documentation
    #
    class Options < Struct.new(
      :activation_override_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for Organizations.
    #
    # @!attribute [rw] enable_integration
    #   Enables Organizations integration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/OrganizationConfiguration AWS API Documentation
    #
    class OrganizationConfiguration < Struct.new(
      :enable_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes product information for a license configuration.
    #
    # @!attribute [rw] resource_type
    #   Resource type. The possible values are `SSM_MANAGED` \| `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] product_information_filter_list
    #   A Product information filter consists of a
    #   `ProductInformationFilterComparator` which is a logical operator, a
    #   `ProductInformationFilterName` which specifies the type of filter
    #   being declared, and a `ProductInformationFilterValue` that specifies
    #   the value to filter on.
    #
    #   Accepted values for `ProductInformationFilterName` are listed here
    #   along with descriptions and valid options for
    #   `ProductInformationFilterComparator`.
    #
    #   The following filters and are supported when the resource type is
    #   `SSM_MANAGED`:
    #
    #   * `Application Name` - The name of the application. Logical operator
    #     is `EQUALS`.
    #
    #   * `Application Publisher` - The publisher of the application.
    #     Logical operator is `EQUALS`.
    #
    #   * `Application Version` - The version of the application. Logical
    #     operator is `EQUALS`.
    #
    #   * `Platform Name` - The name of the platform. Logical operator is
    #     `EQUALS`.
    #
    #   * `Platform Type` - The platform type. Logical operator is `EQUALS`.
    #
    #   * `Tag:key` - The key of a tag attached to an Amazon Web Services
    #     resource you wish to exclude from automated discovery. Logical
    #     operator is `NOT_EQUALS`. The key for your tag must be appended to
    #     `Tag:` following the example: `Tag:name-of-your-key`.
    #     `ProductInformationFilterValue` is optional if you are not using
    #     values for the key.
    #
    #   * `AccountId` - The 12-digit ID of an Amazon Web Services account
    #     you wish to exclude from automated discovery. Logical operator is
    #     `NOT_EQUALS`.
    #
    #   * `License Included` - The type of license included. Logical
    #     operators are `EQUALS` and `NOT_EQUALS`. Possible values are:
    #     `sql-server-enterprise` \| `sql-server-standard` \|
    #     `sql-server-web` \| `windows-server-datacenter`.
    #
    #   The following filters and logical operators are supported when the
    #   resource type is `RDS`:
    #
    #   * `Engine Edition` - The edition of the database engine. Logical
    #     operator is `EQUALS`. Possible values are: `oracle-ee` \|
    #     `oracle-se` \| `oracle-se1` \| `oracle-se2`.
    #
    #   * `License Pack` - The license pack. Logical operator is `EQUALS`.
    #     Possible values are: `data guard` \| `diagnostic pack sqlt` \|
    #     `tuning pack sqlt` \| `ols` \| `olap`.
    #   @return [Array<Types::ProductInformationFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ProductInformation AWS API Documentation
    #
    class ProductInformation < Struct.new(
      :resource_type,
      :product_information_filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes product information filters.
    #
    # @!attribute [rw] product_information_filter_name
    #   Filter name.
    #   @return [String]
    #
    # @!attribute [rw] product_information_filter_value
    #   Filter value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] product_information_filter_comparator
    #   Logical operator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ProductInformationFilter AWS API Documentation
    #
    class ProductInformationFilter < Struct.new(
      :product_information_filter_name,
      :product_information_filter_value,
      :product_information_filter_comparator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a provisional configuration.
    #
    # @!attribute [rw] max_time_to_live_in_minutes
    #   Maximum time for the provisional configuration, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ProvisionalConfiguration AWS API Documentation
    #
    class ProvisionalConfiguration < Struct.new(
      :max_time_to_live_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Too many requests have been submitted. Try again after a brief wait.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/RateLimitExceededException AWS API Documentation
    #
    class RateLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata associated with received licenses and grants.
    #
    # @!attribute [rw] received_status
    #   Received status.
    #   @return [String]
    #
    # @!attribute [rw] received_status_reason
    #   Received status reason.
    #   @return [String]
    #
    # @!attribute [rw] allowed_operations
    #   Allowed operations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ReceivedMetadata AWS API Documentation
    #
    class ReceivedMetadata < Struct.new(
      :received_status,
      :received_status_reason,
      :allowed_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is not the correct Region for the resource. Try again.
    #
    # @!attribute [rw] location
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/RedirectException AWS API Documentation
    #
    class RedirectException < Struct.new(
      :location,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Amazon Resource Name (ARN) of the grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/RejectGrantRequest AWS API Documentation
    #
    class RejectGrantRequest < Struct.new(
      :grant_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] grant_arn
    #   Grant ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Grant status.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Grant version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/RejectGrantResponse AWS API Documentation
    #
    class RejectGrantResponse < Struct.new(
      :grant_arn,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the license configuration that this generator reports on.
    #
    # @!attribute [rw] license_configuration_arns
    #   Amazon Resource Name (ARN) of the license configuration that this
    #   generator reports on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ReportContext AWS API Documentation
    #
    class ReportContext < Struct.new(
      :license_configuration_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about how frequently reports are generated.
    #
    # @!attribute [rw] value
    #   Number of times within the frequency period that a report is
    #   generated. The only supported value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   Time period between each report. The period can be daily, weekly, or
    #   monthly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ReportFrequency AWS API Documentation
    #
    class ReportFrequency < Struct.new(
      :value,
      :period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describe the details of a report generator.
    #
    # @!attribute [rw] report_generator_name
    #   Name of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   Type of reports that are generated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] report_context
    #   License configuration type for this generator.
    #   @return [Types::ReportContext]
    #
    # @!attribute [rw] report_frequency
    #   Details about how frequently reports are generated.
    #   @return [Types::ReportFrequency]
    #
    # @!attribute [rw] license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] last_run_status
    #   Status of the last report generation attempt.
    #   @return [String]
    #
    # @!attribute [rw] last_run_failure_reason
    #   Failure message for the last report generation attempt.
    #   @return [String]
    #
    # @!attribute [rw] last_report_generation_time
    #   Time the last report was generated at.
    #   @return [String]
    #
    # @!attribute [rw] report_creator_account
    #   The Amazon Web Services account ID used to create the report
    #   generator.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   Details of the S3 bucket that report generator reports are published
    #   to.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] create_time
    #   Time the report was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the report generator.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ReportGenerator AWS API Documentation
    #
    class ReportGenerator < Struct.new(
      :report_generator_name,
      :report_type,
      :report_context,
      :report_frequency,
      :license_manager_report_generator_arn,
      :last_run_status,
      :last_run_failure_reason,
      :last_report_generation_time,
      :report_creator_account,
      :description,
      :s3_location,
      :create_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a resource.
    #
    # @!attribute [rw] resource_id
    #   ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Platform of the resource.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   Platform version of the resource in the inventory.
    #   @return [String]
    #
    # @!attribute [rw] resource_owning_account_id
    #   ID of the account that owns the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ResourceInventory AWS API Documentation
    #
    class ResourceInventory < Struct.new(
      :resource_id,
      :resource_type,
      :resource_arn,
      :platform,
      :platform_version,
      :resource_owning_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your resource limits have been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the S3 bucket that report generator reports are published
    # to.
    #
    # @!attribute [rw] bucket
    #   Name of the S3 bucket reports are published to.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   Prefix of the S3 bucket reports are published to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server experienced an internal error. Try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ServerInternalException AWS API Documentation
    #
    class ServerInternalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a tag for a license configuration.
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes a token.
    #
    # @!attribute [rw] token_id
    #   Token ID.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Type of token generated. The supported value is `REFRESH_TOKEN`.
    #   @return [String]
    #
    # @!attribute [rw] license_arn
    #   Amazon Resource Name (ARN) of the license.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   Token expiration time, in ISO8601-UTC format.
    #   @return [String]
    #
    # @!attribute [rw] token_properties
    #   Data specified by the caller.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arns
    #   Amazon Resource Names (ARN) of the roles included in the token.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Token status. The possible values are `AVAILABLE` and `DELETED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TokenData AWS API Documentation
    #
    class TokenData < Struct.new(
      :token_id,
      :token_type,
      :license_arn,
      :expiration_time,
      :token_properties,
      :role_arns,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The digital signature method is unsupported. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UnsupportedDigitalSignatureMethodException AWS API Documentation
    #
    class UnsupportedDigitalSignatureMethodException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys identifying the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_status
    #   New status of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   New license rule. The only rule that you can add after you create a
    #   license configuration is licenseAffinityToHost.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_count
    #   New number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   New hard limit of the number of available licenses.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   New name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New description of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] product_information_list
    #   New product information.
    #   @return [Array<Types::ProductInformation>]
    #
    # @!attribute [rw] disassociate_when_not_found
    #   When true, disassociates a resource when software is uninstalled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseConfigurationRequest AWS API Documentation
    #
    class UpdateLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn,
      :license_configuration_status,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :name,
      :description,
      :product_information_list,
      :disassociate_when_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseConfigurationResponse AWS API Documentation
    #
    class UpdateLicenseConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_manager_report_generator_arn
    #   Amazon Resource Name (ARN) of the report generator to update.
    #   @return [String]
    #
    # @!attribute [rw] report_generator_name
    #   Name of the report generator.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of reports to generate. The following report types are
    #   supported:
    #
    #   * License configuration report - Reports the number and details of
    #     consumed licenses for a license configuration.
    #
    #   * Resource report - Reports the tracked licenses and resource
    #     consumption for a license configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] report_context
    #   The report context.
    #   @return [Types::ReportContext]
    #
    # @!attribute [rw] report_frequency
    #   Frequency by which reports are generated.
    #   @return [Types::ReportFrequency]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the report generator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseManagerReportGeneratorRequest AWS API Documentation
    #
    class UpdateLicenseManagerReportGeneratorRequest < Struct.new(
      :license_manager_report_generator_arn,
      :report_generator_name,
      :type,
      :report_context,
      :report_frequency,
      :client_token,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseManagerReportGeneratorResponse AWS API Documentation
    #
    class UpdateLicenseManagerReportGeneratorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] add_license_specifications
    #   ARNs of the license configurations to add.
    #   @return [Array<Types::LicenseSpecification>]
    #
    # @!attribute [rw] remove_license_specifications
    #   ARNs of the license configurations to remove.
    #   @return [Array<Types::LicenseSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseSpecificationsForResourceRequest AWS API Documentation
    #
    class UpdateLicenseSpecificationsForResourceRequest < Struct.new(
      :resource_arn,
      :add_license_specifications,
      :remove_license_specifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseSpecificationsForResourceResponse AWS API Documentation
    #
    class UpdateLicenseSpecificationsForResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] s3_bucket_arn
    #   Amazon Resource Name (ARN) of the Amazon S3 bucket where the License
    #   Manager information is stored.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Amazon Resource Name (ARN) of the Amazon SNS topic used for License
    #   Manager alerts.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Enables integration with Organizations for cross-account discovery.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] enable_cross_accounts_discovery
    #   Activates cross-account discovery.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateServiceSettingsRequest AWS API Documentation
    #
    class UpdateServiceSettingsRequest < Struct.new(
      :s3_bucket_arn,
      :sns_topic_arn,
      :organization_configuration,
      :enable_cross_accounts_discovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateServiceSettingsResponse AWS API Documentation
    #
    class UpdateServiceSettingsResponse < Aws::EmptyStructure; end

    # The provided input is not valid. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

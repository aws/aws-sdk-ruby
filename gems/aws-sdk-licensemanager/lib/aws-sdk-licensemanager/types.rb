# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManager
  module Types

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

    # The AWS user account does not have permission to perform the action.
    # Check the IAM policy associated with this account.
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

    # @note When making an API call, you may pass CreateLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "String",
    #         license_counting_type: "vCPU", # required, accepts vCPU, Instance, Core, Socket
    #         license_count: 1,
    #         license_count_hard_limit: false,
    #         license_rules: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         product_information_list: [
    #           {
    #             resource_type: "String", # required
    #             product_information_filter_list: [ # required
    #               {
    #                 product_information_filter_name: "String", # required
    #                 product_information_filter_value: ["String"], # required
    #                 product_information_filter_comparator: "String", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
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

    # @note When making an API call, you may pass DeleteLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #       }
    #
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

    # A dependency required to run the API is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/FailedDependencyException AWS API Documentation
    #
    class FailedDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return more specific
    # results from a describe operation. Filters can be used to match a set
    # of resources by specific criteria, such as tags, attributes, or IDs.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   Name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Filter values. Filter values are case-sensitive.
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

    # @note When making an API call, you may pass GetLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #       }
    #
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
    #   Dimension on which the licenses are counted.
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
      :automated_discovery_information)
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
    #   Indicates whether AWS Organizations has been integrated with License
    #   Manager for cross-account discovery.
    #   @return [Types::OrganizationConfiguration]
    #
    # @!attribute [rw] enable_cross_accounts_discovery
    #   Indicates whether cross-account discovery has been enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_manager_resource_share_arn
    #   Amazon Resource Name (ARN) of the AWS resource share. The License
    #   Manager master account will provide member accounts with access to
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
    # @note When making an API call, you may pass InventoryFilter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         condition: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, BEGINS_WITH, CONTAINS
    #         value: "String",
    #       }
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
    #   ID of the AWS account that owns the resource consuming licenses.
    #   @return [String]
    #
    # @!attribute [rw] association_time
    #   Time when the license configuration was associated with the
    #   resource.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseConfigurationAssociation AWS API Documentation
    #
    class LicenseConfigurationAssociation < Struct.new(
      :resource_arn,
      :resource_type,
      :resource_owner_id,
      :association_time)
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
    #   ID of the AWS account that owns the resource.
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
    # @note When making an API call, you may pass LicenseSpecification
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #       }
    #
    # @!attribute [rw] license_configuration_arn
    #   Amazon Resource Name (ARN) of the license configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseSpecification AWS API Documentation
    #
    class LicenseSpecification < Struct.new(
      :license_configuration_arn)
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

    # @note When making an API call, you may pass ListAssociationsForLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListFailuresForLicenseConfigurationOperationsRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListLicenseConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arns: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
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
    #   * `licenseCountingType` - The dimension on which licenses are
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

    # @note When making an API call, you may pass ListLicenseSpecificationsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListResourceInventoryRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             condition: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, BEGINS_WITH, CONTAINS
    #             value: "String",
    #           },
    #         ],
    #       }
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
    #   * `account_id` - The ID of the AWS account that owns the resource.
    #     Logical operators are `EQUALS` \| `NOT_EQUALS`.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListUsageForLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
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
    #   * `resourceType` - The resource type (EC2\_INSTANCE \| EC2\_HOST \|
    #     EC2\_AMI \| SYSTEMS\_MANAGER\_MANAGED\_INSTANCE). Logical
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

    # Reserved.
    #
    # @!attribute [rw] name
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Reserved.
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

    # Configuration information for AWS Organizations.
    #
    # @note When making an API call, you may pass OrganizationConfiguration
    #   data as a hash:
    #
    #       {
    #         enable_integration: false, # required
    #       }
    #
    # @!attribute [rw] enable_integration
    #   Enables AWS Organization integration.
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
    # @note When making an API call, you may pass ProductInformation
    #   data as a hash:
    #
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"], # required
    #             product_information_filter_comparator: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_type
    #   Resource type. The possible values are `SSM_MANAGED` \| `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] product_information_filter_list
    #   Product information filters.
    #
    #   The following filters and logical operators are supported when the
    #   resource type is `SSM_MANAGED`\:
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
    #   * `License Included` - The type of license included. Logical
    #     operators are `EQUALS` and `NOT_EQUALS`. Possible values are:
    #     `sql-server-enterprise` \| `sql-server-standard` \|
    #     `sql-server-web` \| `windows-server-datacenter`.
    #
    #   The following filters and logical operators are supported when the
    #   resource type is `RDS`\:
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
    # @note When making an API call, you may pass ProductInformationFilter
    #   data as a hash:
    #
    #       {
    #         product_information_filter_name: "String", # required
    #         product_information_filter_value: ["String"], # required
    #         product_information_filter_comparator: "String", # required
    #       }
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
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateLicenseConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #         license_configuration_status: "AVAILABLE", # accepts AVAILABLE, DISABLED
    #         license_rules: ["String"],
    #         license_count: 1,
    #         license_count_hard_limit: false,
    #         name: "String",
    #         description: "String",
    #         product_information_list: [
    #           {
    #             resource_type: "String", # required
    #             product_information_filter_list: [ # required
    #               {
    #                 product_information_filter_name: "String", # required
    #                 product_information_filter_value: ["String"], # required
    #                 product_information_filter_comparator: "String", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
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
      :product_information_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseConfigurationResponse AWS API Documentation
    #
    class UpdateLicenseConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateLicenseSpecificationsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         add_license_specifications: [
    #           {
    #             license_configuration_arn: "String", # required
    #           },
    #         ],
    #         remove_license_specifications: [
    #           {
    #             license_configuration_arn: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the AWS resource.
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

    # @note When making an API call, you may pass UpdateServiceSettingsRequest
    #   data as a hash:
    #
    #       {
    #         s3_bucket_arn: "String",
    #         sns_topic_arn: "String",
    #         organization_configuration: {
    #           enable_integration: false, # required
    #         },
    #         enable_cross_accounts_discovery: false,
    #       }
    #
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
    #   Enables integration with AWS Organizations for cross-account
    #   discovery.
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

  end
end

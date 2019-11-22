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
      include Aws::Structure
    end

    # Details about license consumption.
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource consuming a license (instance, host,
    #   or AMI).
    #   @return [String]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses consumed by a resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ConsumedLicenseSummary AWS API Documentation
    #
    class ConsumedLicenseSummary < Struct.new(
      :resource_type,
      :consumed_licenses)
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
    #       }
    #
    # @!attribute [rw] name
    #   Name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-friendly description of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_counting_type
    #   Dimension to use to track the license inventory.
    #   @return [String]
    #
    # @!attribute [rw] license_count
    #   Number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Flag indicating whether hard or soft license enforcement is used.
    #   Exceeding a hard limit results in the blocked deployment of new
    #   instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_rules
    #   Array of configured License Manager rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resources during launch. You can only tag
    #   instances and volumes on launch. The specified tags are applied to
    #   all instances or volumes that are created during launch. To tag a
    #   resource after it has been created, see CreateTags .
    #   @return [Array<Types::Tag>]
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
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_arn
    #   ARN of the license configuration object after its creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/CreateLicenseConfigurationResponse AWS API Documentation
    #
    class CreateLicenseConfigurationResponse < Struct.new(
      :license_configuration_arn)
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
    #   Unique ID of the configuration object to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/DeleteLicenseConfigurationRequest AWS API Documentation
    #
    class DeleteLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn)
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
      include Aws::Structure
    end

    # A filter name and value pair that is used to return a more specific
    # list of results from a describe operation. Filters can be used to
    # match a set of resources by specific criteria, such as tags,
    # attributes, or IDs. The filters supported by a `Describe` operation
    # are documented with the `Describe` operation.
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
    #   One or more filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
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
    #   ARN of the license configuration being requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetLicenseConfigurationRequest AWS API Documentation
    #
    class GetLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn)
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_id
    #   Unique ID for the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_arn
    #   ARN of the license configuration requested.
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
    #   Dimension on which the licenses are counted (for example, instances,
    #   cores, sockets, or VCPUs).
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   List of flexible text strings designating license rules.
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
    #   License configuration status (active, etc.).
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   Owner account ID for the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] consumed_license_summary_list
    #   List of summaries for consumed licenses used by various resources.
    #   @return [Array<Types::ConsumedLicenseSummary>]
    #
    # @!attribute [rw] managed_resource_summary_list
    #   List of summaries of managed resources.
    #   @return [Array<Types::ManagedResourceSummary>]
    #
    # @!attribute [rw] tags
    #   List of tags attached to the license configuration.
    #   @return [Array<Types::Tag>]
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
      :tags)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettingsRequest AWS API Documentation
    #
    class GetServiceSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] s3_bucket_arn
    #   Regional S3 bucket path for storing reports, license trail event
    #   data, discovery data, etc.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/GetServiceSettingsResponse AWS API Documentation
    #
    class GetServiceSettingsResponse < Struct.new(
      :s3_bucket_arn,
      :sns_topic_arn,
      :organization_configuration,
      :enable_cross_accounts_discovery)
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
      include Aws::Structure
    end

    # An inventory filter object.
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
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition of the filter.
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
      include Aws::Structure
    end

    # A license configuration is an abstraction of a customer license
    # agreement that can be consumed and enforced by License Manager.
    # Components include specifications for the license type (licensing by
    # instance, socket, CPU, or VCPU), tenancy (shared tenancy, Amazon EC2
    # Dedicated Instance, Amazon EC2 Dedicated Host, or any of these), host
    # affinity (how long a VM must be associated with a host), the number of
    # licenses purchased and used.
    #
    # @!attribute [rw] license_configuration_id
    #   Unique ID of the `LicenseConfiguration` object.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_arn
    #   ARN of the `LicenseConfiguration` object.
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
    #   Dimension to use to track license inventory.
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   Array of configured License Manager rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_count
    #   Number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Sets the number of available licenses as a hard limit.
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
    #   List of summaries for licenses consumed by various resources.
    #   @return [Array<Types::ConsumedLicenseSummary>]
    #
    # @!attribute [rw] managed_resource_summary_list
    #   List of summaries for managed resources.
    #   @return [Array<Types::ManagedResourceSummary>]
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
      :managed_resource_summary_list)
      include Aws::Structure
    end

    # Describes a server resource that is associated with a license
    # configuration.
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource associated with the license configuration.
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
      include Aws::Structure
    end

    # Contains details of the usage of each resource from the license pool.
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource associated with a license configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource associated with athe license configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_status
    #   Status of a resource associated with the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner_id
    #   ID of the account that owns a resource that is associated with the
    #   license configuration.
    #   @return [String]
    #
    # @!attribute [rw] association_time
    #   Time when the license configuration was initially associated with a
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] consumed_licenses
    #   Number of licenses consumed out of the total provisioned in the
    #   license configuration.
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
      include Aws::Structure
    end

    # Object used for associating a license configuration with a resource.
    #
    # @note When making an API call, you may pass LicenseSpecification
    #   data as a hash:
    #
    #       {
    #         license_configuration_arn: "String", # required
    #       }
    #
    # @!attribute [rw] license_configuration_arn
    #   ARN of the `LicenseConfiguration` object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/LicenseSpecification AWS API Documentation
    #
    class LicenseSpecification < Struct.new(
      :license_configuration_arn)
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
    #   ARN of a `LicenseConfiguration` object.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned
    #   `NextToken` value.
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
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_associations
    #   Lists association objects for the license configuration, each
    #   containing the association time, number of consumed licenses,
    #   resource ARN, resource ID, account ID that owns the resource,
    #   resource size, and resource type.
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
    #   An array of ARNs for the calling account’s license configurations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListLicenseConfigurationsRequest AWS API Documentation
    #
    class ListLicenseConfigurationsRequest < Struct.new(
      :license_configuration_arns,
      :max_results,
      :next_token,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] license_configurations
    #   Array of license configuration objects.
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
    #   ARN of an AMI or Amazon EC2 instance that has an associated license
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned
    #   `NextToken` value.
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
    #   Maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #   @return [Array<Types::InventoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListResourceInventoryRequest AWS API Documentation
    #
    class ListResourceInventoryRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] resource_inventory_list
    #   The detailed list of resources.
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
    #   ARN for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags attached to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
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
    #   ARN of the targeted `LicenseConfiguration` object.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   List of filters to apply.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/ListUsageForLicenseConfigurationRequest AWS API Documentation
    #
    class ListUsageForLicenseConfigurationRequest < Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] license_configuration_usage_list
    #   An array of `LicenseConfigurationUsage` objects.
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
      include Aws::Structure
    end

    # Summary for a resource.
    #
    # @!attribute [rw] resource_type
    #   Type of resource associated with a license (instance, host, or AMI).
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
      include Aws::Structure
    end

    # Object containing configuration information for AWS Organizations.
    #
    # @note When making an API call, you may pass OrganizationConfiguration
    #   data as a hash:
    #
    #       {
    #         enable_integration: false, # required
    #       }
    #
    # @!attribute [rw] enable_integration
    #   Flag to activate AWS Organization integration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/OrganizationConfiguration AWS API Documentation
    #
    class OrganizationConfiguration < Struct.new(
      :enable_integration)
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
      include Aws::Structure
    end

    # A set of attributes that describe a resource.
    #
    # @!attribute [rw] resource_id
    #   Unique ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the resource.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   Platform version of the resource in the inventory.
    #   @return [String]
    #
    # @!attribute [rw] resource_owning_account_id
    #   Unique ID of the account that owns the resource.
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
      include Aws::Structure
    end

    # Tag for a resource in a key-value format.
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
    #   Key for the resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value for the resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
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
    #   Resource of the ARN to be tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Names of the tags to attach to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
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
    #   ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List keys identifying tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
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
    #       }
    #
    # @!attribute [rw] license_configuration_arn
    #   ARN for a license configuration.
    #   @return [String]
    #
    # @!attribute [rw] license_configuration_status
    #   New status of the license configuration (`ACTIVE` or `INACTIVE`).
    #   @return [String]
    #
    # @!attribute [rw] license_rules
    #   List of flexible text strings designating license rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_count
    #   New number of licenses managed by the license configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] license_count_hard_limit
    #   Sets the number of available licenses as a hard limit.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   New name of the license configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New human-friendly description of the license configuration.
    #   @return [String]
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
      :description)
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
    #   ARN for an AWS server resource.
    #   @return [String]
    #
    # @!attribute [rw] add_license_specifications
    #   License configuration ARNs to be added to a resource.
    #   @return [Array<Types::LicenseSpecification>]
    #
    # @!attribute [rw] remove_license_specifications
    #   License configuration ARNs to be removed from a resource.
    #   @return [Array<Types::LicenseSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateLicenseSpecificationsForResourceRequest AWS API Documentation
    #
    class UpdateLicenseSpecificationsForResourceRequest < Struct.new(
      :resource_arn,
      :add_license_specifications,
      :remove_license_specifications)
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
    #   ARN of the Amazon S3 bucket where License Manager information is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   ARN of the Amazon SNS topic used for License Manager alerts.
    #   @return [String]
    #
    # @!attribute [rw] organization_configuration
    #   Integrates AWS Organizations with License Manager for cross-account
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01/UpdateServiceSettingsResponse AWS API Documentation
    #
    class UpdateServiceSettingsResponse < Aws::EmptyStructure; end

  end
end

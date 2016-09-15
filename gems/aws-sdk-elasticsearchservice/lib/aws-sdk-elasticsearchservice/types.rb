# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module ElasticsearchService
    module Types

      # The configured access rules for the domain\'s document and search
      # endpoints, and the current status of those rules.
      class AccessPoliciesStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   The access policy configured for the Elasticsearch domain. Access
        #   policies may be resource-based, IP-based, or IAM-based. See [
        #   Configuring Access Policies][1]for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the access policy for the Elasticsearch domain. See
        #   `OptionStatus` for the status information that\'s included.
        #   @return [Types::OptionStatus]

      end

      # Container for the parameters to the `AddTags` operation. Specify the
      # tags that you want to attach to the Elasticsearch domain.
      # @note When making an API call, pass AddTagsRequest
      #   data as a hash:
      #
      #       {
      #         arn: "ARN", # required
      #         tag_list: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue", # required
      #           },
      #         ],
      #       }
      class AddTagsRequest < Struct.new(
        :arn,
        :tag_list)

        include Aws::Structure

        # @!attribute [rw] arn
        #   Specify the `ARN` for which you want to add the tags.
        #   @return [String]

        # @!attribute [rw] tag_list
        #   List of `Tag` that need to be added for the Elasticsearch domain.
        #   @return [Array<Types::Tag>]

      end

      # Status of the advanced options for the specified Elasticsearch domain.
      # Currently, the following advanced options are available:
      #
      # * Option to allow references to indices in an HTTP request body. Must
      #   be `false` when configuring access to individual sub-resources. By
      #   default, the value is `true`. See [Configuration Advanced
      #   Options][1] for more information.
      # * Option to specify the percentage of heap space that is allocated to
      #   field data. By default, this setting is unbounded.
      #
      # For more information, see [Configuring Advanced Options][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
      class AdvancedOptionsStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   Specifies the status of advanced options for the specified
        #   Elasticsearch domain.
        #   @return [Hash<String,String>]

        # @!attribute [rw] status
        #   Specifies the status of `OptionStatus` for advanced options for the
        #   specified Elasticsearch domain.
        #   @return [Types::OptionStatus]

      end

      # @note When making an API call, pass CreateElasticsearchDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         elasticsearch_version: "ElasticsearchVersionString",
      #         elasticsearch_cluster_config: {
      #           instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #           instance_count: 1,
      #           dedicated_master_enabled: false,
      #           zone_awareness_enabled: false,
      #           dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #           dedicated_master_count: 1,
      #         },
      #         ebs_options: {
      #           ebs_enabled: false,
      #           volume_type: "standard", # accepts standard, gp2, io1
      #           volume_size: 1,
      #           iops: 1,
      #         },
      #         access_policies: "PolicyDocument",
      #         snapshot_options: {
      #           automated_snapshot_start_hour: 1,
      #         },
      #         advanced_options: {
      #           "String" => "String",
      #         },
      #       }
      class CreateElasticsearchDomainRequest < Struct.new(
        :domain_name,
        :elasticsearch_version,
        :elasticsearch_cluster_config,
        :ebs_options,
        :access_policies,
        :snapshot_options,
        :advanced_options)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The name of the Elasticsearch domain that you are creating. Domain
        #   names are unique across the domains owned by an account within an
        #   AWS region. Domain names must start with a letter or number and can
        #   contain the following characters: a-z (lowercase), 0-9, and -
        #   (hyphen).
        #   @return [String]

        # @!attribute [rw] elasticsearch_version
        #   String of format X.Y to specify version for the Elasticsearch domain
        #   eg. \"1.5\" or \"2.3\". For more information, see [Creating
        #   Elasticsearch Domains][1] in the *Amazon Elasticsearch Service
        #   Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
        #   @return [String]

        # @!attribute [rw] elasticsearch_cluster_config
        #   Configuration options for an Elasticsearch domain. Specifies the
        #   instance type and number of instances in the domain cluster.
        #   @return [Types::ElasticsearchClusterConfig]

        # @!attribute [rw] ebs_options
        #   Options to enable, disable and specify the type and size of EBS
        #   storage volumes.
        #   @return [Types::EBSOptions]

        # @!attribute [rw] access_policies
        #   IAM access policy as a JSON-formatted string.
        #   @return [String]

        # @!attribute [rw] snapshot_options
        #   Option to set time, in UTC format, of the daily automated snapshot.
        #   Default value is 0 hours.
        #   @return [Types::SnapshotOptions]

        # @!attribute [rw] advanced_options
        #   Option to allow references to indices in an HTTP request body. Must
        #   be `false` when configuring access to individual sub-resources. By
        #   default, the value is `true`. See [Configuration Advanced
        #   Options][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
        #   @return [Hash<String,String>]

      end

      # The result of a `CreateElasticsearchDomain` operation. Contains the
      # status of the newly created Elasticsearch domain.
      class CreateElasticsearchDomainResponse < Struct.new(
        :domain_status)

        include Aws::Structure

        # @!attribute [rw] domain_status
        #   The status of the newly created Elasticsearch domain.
        #   @return [Types::ElasticsearchDomainStatus]

      end

      # Container for the parameters to the `DeleteElasticsearchDomain`
      # operation. Specifies the name of the Elasticsearch domain that you
      # want to delete.
      # @note When making an API call, pass DeleteElasticsearchDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DeleteElasticsearchDomainRequest < Struct.new(
        :domain_name)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The name of the Elasticsearch domain that you want to permanently
        #   delete.
        #   @return [String]

      end

      # The result of a `DeleteElasticsearchDomain` request. Contains the
      # status of the pending deletion, or no status if the domain and all of
      # its resources have been deleted.
      class DeleteElasticsearchDomainResponse < Struct.new(
        :domain_status)

        include Aws::Structure

        # @!attribute [rw] domain_status
        #   The status of the Elasticsearch domain being deleted.
        #   @return [Types::ElasticsearchDomainStatus]

      end

      # Container for the parameters to the
      # `DescribeElasticsearchDomainConfig` operation. Specifies the domain
      # name for which you want configuration information.
      # @note When making an API call, pass DescribeElasticsearchDomainConfigRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DescribeElasticsearchDomainConfigRequest < Struct.new(
        :domain_name)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The Elasticsearch domain that you want to get information about.
        #   @return [String]

      end

      # The result of a `DescribeElasticsearchDomainConfig` request. Contains
      # the configuration information of the requested domain.
      class DescribeElasticsearchDomainConfigResponse < Struct.new(
        :domain_config)

        include Aws::Structure

        # @!attribute [rw] domain_config
        #   The configuration information of the domain requested in the
        #   `DescribeElasticsearchDomainConfig` request.
        #   @return [Types::ElasticsearchDomainConfig]

      end

      # Container for the parameters to the `DescribeElasticsearchDomain`
      # operation.
      # @note When making an API call, pass DescribeElasticsearchDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DescribeElasticsearchDomainRequest < Struct.new(
        :domain_name)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The name of the Elasticsearch domain for which you want information.
        #   @return [String]

      end

      # The result of a `DescribeElasticsearchDomain` request. Contains the
      # status of the domain specified in the request.
      class DescribeElasticsearchDomainResponse < Struct.new(
        :domain_status)

        include Aws::Structure

        # @!attribute [rw] domain_status
        #   The current status of the Elasticsearch domain.
        #   @return [Types::ElasticsearchDomainStatus]

      end

      # Container for the parameters to the `DescribeElasticsearchDomains`
      # operation. By default, the API returns the status of all Elasticsearch
      # domains.
      # @note When making an API call, pass DescribeElasticsearchDomainsRequest
      #   data as a hash:
      #
      #       {
      #         domain_names: ["DomainName"], # required
      #       }
      class DescribeElasticsearchDomainsRequest < Struct.new(
        :domain_names)

        include Aws::Structure

        # @!attribute [rw] domain_names
        #   The Elasticsearch domains for which you want information.
        #   @return [Array<String>]

      end

      # The result of a `DescribeElasticsearchDomains` request. Contains the
      # status of the specified domains or all domains owned by the account.
      class DescribeElasticsearchDomainsResponse < Struct.new(
        :domain_status_list)

        include Aws::Structure

        # @!attribute [rw] domain_status_list
        #   The status of the domains requested in the
        #   `DescribeElasticsearchDomains` request.
        #   @return [Array<Types::ElasticsearchDomainStatus>]

      end

      class DomainInfo < Struct.new(
        :domain_name)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   Specifies the `DomainName`.
        #   @return [String]

      end

      # Options to enable, disable, and specify the properties of EBS storage
      # volumes. For more information, see [ Configuring EBS-based
      # Storage][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
      # @note When making an API call, pass EBSOptions
      #   data as a hash:
      #
      #       {
      #         ebs_enabled: false,
      #         volume_type: "standard", # accepts standard, gp2, io1
      #         volume_size: 1,
      #         iops: 1,
      #       }
      class EBSOptions < Struct.new(
        :ebs_enabled,
        :volume_type,
        :volume_size,
        :iops)

        include Aws::Structure

        # @!attribute [rw] ebs_enabled
        #   Specifies whether EBS-based storage is enabled.
        #   @return [Boolean]

        # @!attribute [rw] volume_type
        #   Specifies the volume type for EBS-based storage.
        #   @return [String]

        # @!attribute [rw] volume_size
        #   Integer to specify the size of an EBS volume.
        #   @return [Integer]

        # @!attribute [rw] iops
        #   Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).
        #   @return [Integer]

      end

      # Status of the EBS options for the specified Elasticsearch domain.
      class EBSOptionsStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   Specifies the EBS options for the specified Elasticsearch domain.
        #   @return [Types::EBSOptions]

        # @!attribute [rw] status
        #   Specifies the status of the EBS options for the specified
        #   Elasticsearch domain.
        #   @return [Types::OptionStatus]

      end

      # Specifies the configuration for the domain cluster, such as the type
      # and number of instances.
      # @note When making an API call, pass ElasticsearchClusterConfig
      #   data as a hash:
      #
      #       {
      #         instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #         instance_count: 1,
      #         dedicated_master_enabled: false,
      #         zone_awareness_enabled: false,
      #         dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #         dedicated_master_count: 1,
      #       }
      class ElasticsearchClusterConfig < Struct.new(
        :instance_type,
        :instance_count,
        :dedicated_master_enabled,
        :zone_awareness_enabled,
        :dedicated_master_type,
        :dedicated_master_count)

        include Aws::Structure

        # @!attribute [rw] instance_type
        #   The instance type for an Elasticsearch cluster.
        #   @return [String]

        # @!attribute [rw] instance_count
        #   The number of instances in the specified domain cluster.
        #   @return [Integer]

        # @!attribute [rw] dedicated_master_enabled
        #   A boolean value to indicate whether a dedicated master node is
        #   enabled. See [About Dedicated Master Nodes][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes
        #   @return [Boolean]

        # @!attribute [rw] zone_awareness_enabled
        #   A boolean value to indicate whether zone awareness is enabled. See
        #   [About Zone Awareness][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness
        #   @return [Boolean]

        # @!attribute [rw] dedicated_master_type
        #   The instance type for a dedicated master node.
        #   @return [String]

        # @!attribute [rw] dedicated_master_count
        #   Total number of dedicated master nodes, active and on standby, for
        #   the cluster.
        #   @return [Integer]

      end

      # Specifies the configuration status for the specified Elasticsearch
      # domain.
      class ElasticsearchClusterConfigStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   Specifies the cluster configuration for the specified Elasticsearch
        #   domain.
        #   @return [Types::ElasticsearchClusterConfig]

        # @!attribute [rw] status
        #   Specifies the status of the configuration for the specified
        #   Elasticsearch domain.
        #   @return [Types::OptionStatus]

      end

      # The configuration of an Elasticsearch domain.
      class ElasticsearchDomainConfig < Struct.new(
        :elasticsearch_version,
        :elasticsearch_cluster_config,
        :ebs_options,
        :access_policies,
        :snapshot_options,
        :advanced_options)

        include Aws::Structure

        # @!attribute [rw] elasticsearch_version
        #   String of format X.Y to specify version for the Elasticsearch
        #   domain.
        #   @return [Types::ElasticsearchVersionStatus]

        # @!attribute [rw] elasticsearch_cluster_config
        #   Specifies the `ElasticsearchClusterConfig` for the Elasticsearch
        #   domain.
        #   @return [Types::ElasticsearchClusterConfigStatus]

        # @!attribute [rw] ebs_options
        #   Specifies the `EBSOptions` for the Elasticsearch domain.
        #   @return [Types::EBSOptionsStatus]

        # @!attribute [rw] access_policies
        #   IAM access policy as a JSON-formatted string.
        #   @return [Types::AccessPoliciesStatus]

        # @!attribute [rw] snapshot_options
        #   Specifies the `SnapshotOptions` for the Elasticsearch domain.
        #   @return [Types::SnapshotOptionsStatus]

        # @!attribute [rw] advanced_options
        #   Specifies the `AdvancedOptions` for the domain. See [Configuring
        #   Advanced Options][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
        #   @return [Types::AdvancedOptionsStatus]

      end

      # The current status of an Elasticsearch domain.
      class ElasticsearchDomainStatus < Struct.new(
        :domain_id,
        :domain_name,
        :arn,
        :created,
        :deleted,
        :endpoint,
        :processing,
        :elasticsearch_version,
        :elasticsearch_cluster_config,
        :ebs_options,
        :access_policies,
        :snapshot_options,
        :advanced_options)

        include Aws::Structure

        # @!attribute [rw] domain_id
        #   The unique identifier for the specified Elasticsearch domain.
        #   @return [String]

        # @!attribute [rw] domain_name
        #   The name of an Elasticsearch domain. Domain names are unique across
        #   the domains owned by an account within an AWS region. Domain names
        #   start with a letter or number and can contain the following
        #   characters: a-z (lowercase), 0-9, and - (hyphen).
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon resource name (ARN) of an Elasticsearch domain. See
        #   [Identifiers for IAM Entities][1] in *Using AWS Identity and Access
        #   Management* for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html
        #   @return [String]

        # @!attribute [rw] created
        #   The domain creation status. `True` if the creation of an
        #   Elasticsearch domain is complete. `False` if domain creation is
        #   still in progress.
        #   @return [Boolean]

        # @!attribute [rw] deleted
        #   The domain deletion status. `True` if a delete request has been
        #   received for the domain but resource cleanup is still in progress.
        #   `False` if the domain has not been deleted. Once domain deletion is
        #   complete, the status of the domain is no longer returned.
        #   @return [Boolean]

        # @!attribute [rw] endpoint
        #   The Elasticsearch domain endpoint that you use to submit index and
        #   search requests.
        #   @return [String]

        # @!attribute [rw] processing
        #   The status of the Elasticsearch domain configuration. `True` if
        #   Amazon Elasticsearch Service is processing configuration changes.
        #   `False` if the configuration is active.
        #   @return [Boolean]

        # @!attribute [rw] elasticsearch_version
        #   @return [String]

        # @!attribute [rw] elasticsearch_cluster_config
        #   The type and number of instances in the domain cluster.
        #   @return [Types::ElasticsearchClusterConfig]

        # @!attribute [rw] ebs_options
        #   The `EBSOptions` for the specified domain. See [Configuring
        #   EBS-based Storage][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
        #   @return [Types::EBSOptions]

        # @!attribute [rw] access_policies
        #   IAM access policy as a JSON-formatted string.
        #   @return [String]

        # @!attribute [rw] snapshot_options
        #   Specifies the status of the `SnapshotOptions`
        #   @return [Types::SnapshotOptions]

        # @!attribute [rw] advanced_options
        #   Specifies the status of the `AdvancedOptions`
        #   @return [Hash<String,String>]

      end

      # Status of the Elasticsearch version options for the specified
      # Elasticsearch domain.
      class ElasticsearchVersionStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   Specifies the Elasticsearch version for the specified Elasticsearch
        #   domain.
        #   @return [String]

        # @!attribute [rw] status
        #   Specifies the status of the Elasticsearch version options for the
        #   specified Elasticsearch domain.
        #   @return [Types::OptionStatus]

      end

      # The result of a `ListDomainNames` operation. Contains the names of all
      # Elasticsearch domains owned by this account.
      class ListDomainNamesResponse < Struct.new(
        :domain_names)

        include Aws::Structure

        # @!attribute [rw] domain_names
        #   List of Elasticsearch domain names.
        #   @return [Array<Types::DomainInfo>]

      end

      # Container for the parameters to the `ListTags` operation. Specify the
      # `ARN` for the Elasticsearch domain to which the tags are attached that
      # you want to view are attached.
      # @note When making an API call, pass ListTagsRequest
      #   data as a hash:
      #
      #       {
      #         arn: "ARN", # required
      #       }
      class ListTagsRequest < Struct.new(
        :arn)

        include Aws::Structure

        # @!attribute [rw] arn
        #   Specify the `ARN` for the Elasticsearch domain to which the tags are
        #   attached that you want to view.
        #   @return [String]

      end

      # The result of a `ListTags` operation. Contains tags for all requested
      # Elasticsearch domains.
      class ListTagsResponse < Struct.new(
        :tag_list)

        include Aws::Structure

        # @!attribute [rw] tag_list
        #   List of `Tag` for the requested Elasticsearch domain.
        #   @return [Array<Types::Tag>]

      end

      # Provides the current status of the entity.
      class OptionStatus < Struct.new(
        :creation_date,
        :update_date,
        :update_version,
        :state,
        :pending_deletion)

        include Aws::Structure

        # @!attribute [rw] creation_date
        #   Timestamp which tells the creation date for the entity.
        #   @return [Time]

        # @!attribute [rw] update_date
        #   Timestamp which tells the last updated time for the entity.
        #   @return [Time]

        # @!attribute [rw] update_version
        #   Specifies the latest version for the entity.
        #   @return [Integer]

        # @!attribute [rw] state
        #   Provides the `OptionState` for the Elasticsearch domain.
        #   @return [String]

        # @!attribute [rw] pending_deletion
        #   Indicates whether the Elasticsearch domain is being deleted.
        #   @return [Boolean]

      end

      # Container for the parameters to the `RemoveTags` operation. Specify
      # the `ARN` for the Elasticsearch domain from which you want to remove
      # the specified `TagKey`.
      # @note When making an API call, pass RemoveTagsRequest
      #   data as a hash:
      #
      #       {
      #         arn: "ARN", # required
      #         tag_keys: ["String"], # required
      #       }
      class RemoveTagsRequest < Struct.new(
        :arn,
        :tag_keys)

        include Aws::Structure

        # @!attribute [rw] arn
        #   Specifies the `ARN` for the Elasticsearch domain from which you want
        #   to delete the specified tags.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   Specifies the `TagKey` list which you want to remove from the
        #   Elasticsearch domain.
        #   @return [Array<String>]

      end

      # Specifies the time, in UTC format, when the service takes a daily
      # automated snapshot of the specified Elasticsearch domain. Default
      # value is `0` hours.
      # @note When making an API call, pass SnapshotOptions
      #   data as a hash:
      #
      #       {
      #         automated_snapshot_start_hour: 1,
      #       }
      class SnapshotOptions < Struct.new(
        :automated_snapshot_start_hour)

        include Aws::Structure

        # @!attribute [rw] automated_snapshot_start_hour
        #   Specifies the time, in UTC format, when the service takes a daily
        #   automated snapshot of the specified Elasticsearch domain. Default
        #   value is `0` hours.
        #   @return [Integer]

      end

      # Status of a daily automated snapshot.
      class SnapshotOptionsStatus < Struct.new(
        :options,
        :status)

        include Aws::Structure

        # @!attribute [rw] options
        #   Specifies the daily snapshot options specified for the Elasticsearch
        #   domain.
        #   @return [Types::SnapshotOptions]

        # @!attribute [rw] status
        #   Specifies the status of a daily automated snapshot.
        #   @return [Types::OptionStatus]

      end

      # Specifies a key value pair for a resource tag.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       }
      class Tag < Struct.new(
        :key,
        :value)

        include Aws::Structure

        # @!attribute [rw] key
        #   Specifies the `TagKey`, the name of the tag. Tag keys must be unique
        #   for the Elasticsearch domain to which they are attached.
        #   @return [String]

        # @!attribute [rw] value
        #   Specifies the `TagValue`, the value assigned to the corresponding
        #   tag key. Tag values can be null and do not have to be unique in a
        #   tag set. For example, you can have a key value pair in a tag set of
        #   `project : Trinity` and `cost-center : Trinity`
        #   @return [String]

      end

      # Container for the parameters to the `UpdateElasticsearchDomain`
      # operation. Specifies the type and number of instances in the domain
      # cluster.
      # @note When making an API call, pass UpdateElasticsearchDomainConfigRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         elasticsearch_cluster_config: {
      #           instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #           instance_count: 1,
      #           dedicated_master_enabled: false,
      #           zone_awareness_enabled: false,
      #           dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #           dedicated_master_count: 1,
      #         },
      #         ebs_options: {
      #           ebs_enabled: false,
      #           volume_type: "standard", # accepts standard, gp2, io1
      #           volume_size: 1,
      #           iops: 1,
      #         },
      #         snapshot_options: {
      #           automated_snapshot_start_hour: 1,
      #         },
      #         advanced_options: {
      #           "String" => "String",
      #         },
      #         access_policies: "PolicyDocument",
      #       }
      class UpdateElasticsearchDomainConfigRequest < Struct.new(
        :domain_name,
        :elasticsearch_cluster_config,
        :ebs_options,
        :snapshot_options,
        :advanced_options,
        :access_policies)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The name of the Elasticsearch domain that you are updating.
        #   @return [String]

        # @!attribute [rw] elasticsearch_cluster_config
        #   The type and number of instances to instantiate for the domain
        #   cluster.
        #   @return [Types::ElasticsearchClusterConfig]

        # @!attribute [rw] ebs_options
        #   Specify the type and size of the EBS volume that you want to use.
        #   @return [Types::EBSOptions]

        # @!attribute [rw] snapshot_options
        #   Option to set the time, in UTC format, for the daily automated
        #   snapshot. Default value is `0` hours.
        #   @return [Types::SnapshotOptions]

        # @!attribute [rw] advanced_options
        #   Modifies the advanced option to allow references to indices in an
        #   HTTP request body. Must be `false` when configuring access to
        #   individual sub-resources. By default, the value is `true`. See
        #   [Configuration Advanced Options][1] for more information.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
        #   @return [Hash<String,String>]

        # @!attribute [rw] access_policies
        #   IAM access policy as a JSON-formatted string.
        #   @return [String]

      end

      # The result of an `UpdateElasticsearchDomain` request. Contains the
      # status of the Elasticsearch domain being updated.
      class UpdateElasticsearchDomainConfigResponse < Struct.new(
        :domain_config)

        include Aws::Structure

        # @!attribute [rw] domain_config
        #   The status of the updated Elasticsearch domain.
        #   @return [Types::ElasticsearchDomainConfig]

      end

    end
  end
end

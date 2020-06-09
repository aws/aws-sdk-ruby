# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticsearchService
  module Types

    # Container for the parameters to the
    # `AcceptInboundCrossClusterSearchConnection` operation.
    #
    # @note When making an API call, you may pass AcceptInboundCrossClusterSearchConnectionRequest
    #   data as a hash:
    #
    #       {
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #       }
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to accept.
    #   @return [String]
    #
    class AcceptInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      include Aws::Structure
    end

    # The result of a `AcceptInboundCrossClusterSearchConnection` operation.
    # Contains details of accepted inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of accepted
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class AcceptInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      include Aws::Structure
    end

    # An error occurred because user does not have permissions to access the
    # resource. Returns HTTP status code 403.
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # The configured access rules for the domain's document and search
    # endpoints, and the current status of those rules.
    #
    # @!attribute [rw] options
    #   The access policy configured for the Elasticsearch domain. Access
    #   policies may be resource-based, IP-based, or IAM-based. See [
    #   Configuring Access Policies][1]for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access policy for the Elasticsearch domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    class AccessPoliciesStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Container for the parameters to the `AddTags` operation. Specify the
    # tags that you want to attach to the Elasticsearch domain.
    #
    # @note When making an API call, you may pass AddTagsRequest
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
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` for which you want to add the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` that need to be added for the Elasticsearch domain.
    #   @return [Array<Types::Tag>]
    #
    class AddTagsRequest < Struct.new(
      :arn,
      :tag_list)
      include Aws::Structure
    end

    # List of limits that are specific to a given InstanceType and for each
    # of it's ` InstanceRole ` .
    #
    # @!attribute [rw] limit_name
    #   Name of Additional Limit is specific to a given InstanceType and for
    #   each of it's ` InstanceRole ` etc.
    #    Attributes and their details:
    #    * MaximumNumberOfDataNodesSupported
    #   ` ESPartitionInstanceType `*
    #   MaximumNumberOfDataNodesWithoutMasterNode
    #   ` ESPartitionInstanceType `
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Value for given ` AdditionalLimit$LimitName ` .
    #   @return [Array<String>]
    #
    class AdditionalLimit < Struct.new(
      :limit_name,
      :limit_values)
      include Aws::Structure
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
    #
    # @!attribute [rw] options
    #   Specifies the status of advanced options for the specified
    #   Elasticsearch domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   Specifies the status of `OptionStatus` for advanced options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class AdvancedOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Specifies the advanced security configuration: whether advanced
    # security is enabled, whether the internal database option is enabled.
    #
    # @!attribute [rw] enabled
    #   True if advanced security is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True if the internal user database is enabled.
    #   @return [Boolean]
    #
    class AdvancedSecurityOptions < Struct.new(
      :enabled,
      :internal_user_database_enabled)
      include Aws::Structure
    end

    # Specifies the advanced security configuration: whether advanced
    # security is enabled, whether the internal database option is enabled,
    # master username and password (if internal database is enabled), and
    # master user ARN (if IAM is enabled).
    #
    # @note When making an API call, you may pass AdvancedSecurityOptionsInput
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         master_user_options: {
    #           master_user_arn: "ARN",
    #           master_user_name: "Username",
    #           master_user_password: "Password",
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   True if advanced security is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True if the internal user database is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_options
    #   Credentials for the master user: username and password, ARN, or
    #   both.
    #   @return [Types::MasterUserOptions]
    #
    class AdvancedSecurityOptionsInput < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options)
      include Aws::Structure
    end

    # Specifies the status of advanced security options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies advanced security options for the specified Elasticsearch
    #   domain.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] status
    #   Status of the advanced security options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class AdvancedSecurityOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Container for request parameters to ` AssociatePackage ` operation.
    #
    # @note When making an API call, you may pass AssociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that you want to associate the package with.
    #   @return [String]
    #
    class AssociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      include Aws::Structure
    end

    # Container for response returned by ` AssociatePackage ` operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    class AssociatePackageResponse < Struct.new(
      :domain_package_details)
      include Aws::Structure
    end

    # An error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    class BaseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `CancelElasticsearchServiceSoftwareUpdate` operation. Specifies the
    # name of the Elasticsearch domain that you wish to cancel a service
    # software update on.
    #
    # @note When making an API call, you may pass CancelElasticsearchServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to stop the latest service
    #   software update on.
    #   @return [String]
    #
    class CancelElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The result of a `CancelElasticsearchServiceSoftwareUpdate` operation.
    # Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    class CancelElasticsearchServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      include Aws::Structure
    end

    # Options to specify the Cognito user and identity pools for Kibana
    # authentication. For more information, see [Amazon Cognito
    # Authentication for Kibana][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #
    # @note When making an API call, you may pass CognitoOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies the option to enable Cognito for Kibana authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_pool_id
    #   Specifies the Cognito user pool ID for Kibana authentication.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   Specifies the Cognito identity pool ID for Kibana authentication.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies the role ARN that provides Elasticsearch permissions for
    #   accessing Cognito resources.
    #   @return [String]
    #
    class CognitoOptions < Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn)
      include Aws::Structure
    end

    # Status of the Cognito options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Cognito options for the specified Elasticsearch
    #   domain.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Cognito options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class CognitoOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # A map from an ` ElasticsearchVersion ` to a list of compatible `
    # ElasticsearchVersion ` s to which the domain can be upgraded.
    #
    # @!attribute [rw] source_version
    #   The current version of Elasticsearch on which a domain is.
    #   @return [String]
    #
    # @!attribute [rw] target_versions
    #   List of supported elastic search versions.
    #   @return [Array<String>]
    #
    class CompatibleVersionsMap < Struct.new(
      :source_version,
      :target_versions)
      include Aws::Structure
    end

    # An error occurred because the client attempts to remove a resource
    # that is currently in use. Returns HTTP status code 409.
    #
    class ConflictException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateElasticsearchDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         elasticsearch_version: "ElasticsearchVersionString",
    #         elasticsearch_cluster_config: {
    #           instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.elasticsearch", # accepts ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch
    #           warm_count: 1,
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
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you are creating. Domain
    #   names are unique across the domains owned by an account within an
    #   AWS region. Domain names must start with a lowercase letter and can
    #   contain the following characters: a-z (lowercase), 0-9, and -
    #   (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_version
    #   String of format X.Y to specify version for the Elasticsearch domain
    #   eg. "1.5" or "2.3". For more information, see [Creating
    #   Elasticsearch Domains][1] in the *Amazon Elasticsearch Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   Configuration options for an Elasticsearch domain. Specifies the
    #   instance type and number of instances in the domain cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Options to enable, disable and specify the type and size of EBS
    #   storage volumes.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set time, in UTC format, of the daily automated snapshot.
    #   Default value is 0 hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the Encryption At Rest Options.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the NodeToNodeEncryptionOptions.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
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
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of Elasticsearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    class CreateElasticsearchDomainRequest < Struct.new(
      :domain_name,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options)
      include Aws::Structure
    end

    # The result of a `CreateElasticsearchDomain` operation. Contains the
    # status of the newly created Elasticsearch domain.
    #
    # @!attribute [rw] domain_status
    #   The status of the newly created Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class CreateElasticsearchDomainResponse < Struct.new(
      :domain_status)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `CreateOutboundCrossClusterSearchConnection` operation.
    #
    # @note When making an API call, you may pass CreateOutboundCrossClusterSearchConnectionRequest
    #   data as a hash:
    #
    #       {
    #         source_domain_info: { # required
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region",
    #         },
    #         destination_domain_info: { # required
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region",
    #         },
    #         connection_alias: "ConnectionAlias", # required
    #       }
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias that will be used by the customer for
    #   this connection.
    #   @return [String]
    #
    class CreateOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias)
      include Aws::Structure
    end

    # The result of a `CreateOutboundCrossClusterSearchConnection` request.
    # Contains the details of the newly created cross-cluster search
    # connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias provided during the create connection
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `OutboundCrossClusterSearchConnectionStatus` for the
    #   newly created connection.
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Unique id for the created outbound connection, which is used for
    #   subsequent operations on connection.
    #   @return [String]
    #
    class CreateOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :connection_alias,
      :connection_status,
      :cross_cluster_search_connection_id)
      include Aws::Structure
    end

    # Container for request parameters to ` CreatePackage ` operation.
    #
    # @note When making an API call, you may pass CreatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_name: "PackageName", # required
    #         package_type: "TXT-DICTIONARY", # required, accepts TXT-DICTIONARY
    #         package_description: "PackageDescription",
    #         package_source: { # required
    #           s3_bucket_name: "S3BucketName",
    #           s3_key: "S3Key",
    #         },
    #       }
    #
    # @!attribute [rw] package_name
    #   Unique identifier for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Type of package. Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   Description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   The customer S3 location `PackageSource` for importing the package.
    #   @return [Types::PackageSource]
    #
    class CreatePackageRequest < Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source)
      include Aws::Structure
    end

    # Container for response returned by ` CreatePackage ` operation.
    #
    # @!attribute [rw] package_details
    #   Information about the package `PackageDetails`.
    #   @return [Types::PackageDetails]
    #
    class CreatePackageResponse < Struct.new(
      :package_details)
      include Aws::Structure
    end

    # Container for the parameters to the `DeleteElasticsearchDomain`
    # operation. Specifies the name of the Elasticsearch domain that you
    # want to delete.
    #
    # @note When making an API call, you may pass DeleteElasticsearchDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteElasticsearchDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The result of a `DeleteElasticsearchDomain` request. Contains the
    # status of the pending deletion, or no status if the domain and all of
    # its resources have been deleted.
    #
    # @!attribute [rw] domain_status
    #   The status of the Elasticsearch domain being deleted.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class DeleteElasticsearchDomainResponse < Struct.new(
      :domain_status)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DeleteInboundCrossClusterSearchConnection` operation.
    #
    # @note When making an API call, you may pass DeleteInboundCrossClusterSearchConnectionRequest
    #   data as a hash:
    #
    #       {
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #       }
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      include Aws::Structure
    end

    # The result of a `DeleteInboundCrossClusterSearchConnection` operation.
    # Contains details of deleted inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of deleted
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class DeleteInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DeleteOutboundCrossClusterSearchConnection` operation.
    #
    # @note When making an API call, you may pass DeleteOutboundCrossClusterSearchConnectionRequest
    #   data as a hash:
    #
    #       {
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #       }
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the outbound connection that you want to permanently
    #   delete.
    #   @return [String]
    #
    class DeleteOutboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      include Aws::Structure
    end

    # The result of a `DeleteOutboundCrossClusterSearchConnection`
    # operation. Contains details of deleted outbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `OutboundCrossClusterSearchConnection` of deleted
    #   outbound connection.
    #   @return [Types::OutboundCrossClusterSearchConnection]
    #
    class DeleteOutboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      include Aws::Structure
    end

    # Container for request parameters to ` DeletePackage ` operation.
    #
    # @note When making an API call, you may pass DeletePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to delete. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    class DeletePackageRequest < Struct.new(
      :package_id)
      include Aws::Structure
    end

    # Container for response parameters to ` DeletePackage ` operation.
    #
    # @!attribute [rw] package_details
    #   `PackageDetails`
    #   @return [Types::PackageDetails]
    #
    class DeletePackageResponse < Struct.new(
      :package_details)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeElasticsearchDomainConfig` operation. Specifies the domain
    # name for which you want configuration information.
    #
    # @note When making an API call, you may pass DescribeElasticsearchDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The Elasticsearch domain that you want to get information about.
    #   @return [String]
    #
    class DescribeElasticsearchDomainConfigRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomainConfig` request. Contains
    # the configuration information of the requested domain.
    #
    # @!attribute [rw] domain_config
    #   The configuration information of the domain requested in the
    #   `DescribeElasticsearchDomainConfig` request.
    #   @return [Types::ElasticsearchDomainConfig]
    #
    class DescribeElasticsearchDomainConfigResponse < Struct.new(
      :domain_config)
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeElasticsearchDomain`
    # operation.
    #
    # @note When making an API call, you may pass DescribeElasticsearchDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain for which you want information.
    #   @return [String]
    #
    class DescribeElasticsearchDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomain` request. Contains the
    # status of the domain specified in the request.
    #
    # @!attribute [rw] domain_status
    #   The current status of the Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainStatus]
    #
    class DescribeElasticsearchDomainResponse < Struct.new(
      :domain_status)
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeElasticsearchDomains`
    # operation. By default, the API returns the status of all Elasticsearch
    # domains.
    #
    # @note When making an API call, you may pass DescribeElasticsearchDomainsRequest
    #   data as a hash:
    #
    #       {
    #         domain_names: ["DomainName"], # required
    #       }
    #
    # @!attribute [rw] domain_names
    #   The Elasticsearch domains for which you want information.
    #   @return [Array<String>]
    #
    class DescribeElasticsearchDomainsRequest < Struct.new(
      :domain_names)
      include Aws::Structure
    end

    # The result of a `DescribeElasticsearchDomains` request. Contains the
    # status of the specified domains or all domains owned by the account.
    #
    # @!attribute [rw] domain_status_list
    #   The status of the domains requested in the
    #   `DescribeElasticsearchDomains` request.
    #   @return [Array<Types::ElasticsearchDomainStatus>]
    #
    class DescribeElasticsearchDomainsResponse < Struct.new(
      :domain_status_list)
      include Aws::Structure
    end

    # Container for the parameters to `
    # DescribeElasticsearchInstanceTypeLimits ` operation.
    #
    # @note When making an API call, you may pass DescribeElasticsearchInstanceTypeLimitsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #         instance_type: "m3.medium.elasticsearch", # required, accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #         elasticsearch_version: "ElasticsearchVersionString", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for
    #   Elasticsearch ` Limits ` for existing domain.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for an Elasticsearch cluster for which
    #   Elasticsearch ` Limits ` are needed.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_version
    #   Version of Elasticsearch for which ` Limits ` are needed.
    #   @return [String]
    #
    class DescribeElasticsearchInstanceTypeLimitsRequest < Struct.new(
      :domain_name,
      :instance_type,
      :elasticsearch_version)
      include Aws::Structure
    end

    # Container for the parameters received from `
    # DescribeElasticsearchInstanceTypeLimits ` operation.
    #
    # @!attribute [rw] limits_by_role
    #   Map of Role of the Instance and Limits that are applicable. Role
    #   performed by given Instance in Elasticsearch can be one of the
    #   following: * data: If the given InstanceType is used as data node
    #   * master: If the given InstanceType is used as master node
    #   * ultra\_warm: If the given InstanceType is used as warm node
    #   @return [Hash<String,Types::Limits>]
    #
    class DescribeElasticsearchInstanceTypeLimitsResponse < Struct.new(
      :limits_by_role)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeInboundCrossClusterSearchConnections` operation.
    #
    # @note When making an API call, you may pass DescribeInboundCrossClusterSearchConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   search connection. Available `Filter` names for this operation are:
    #   * cross-cluster-search-connection-id
    #   * source-domain-info.domain-name
    #   * source-domain-info.owner-id
    #   * source-domain-info.region
    #   * destination-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeInboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The result of a `DescribeInboundCrossClusterSearchConnections`
    # request. Contains the list of connections matching the filter
    # criteria.
    #
    # @!attribute [rw] cross_cluster_search_connections
    #   Consists of list of `InboundCrossClusterSearchConnection` matching
    #   the specified filter criteria.
    #   @return [Array<Types::InboundCrossClusterSearchConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    class DescribeInboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `DescribeOutboundCrossClusterSearchConnections` operation.
    #
    # @note When making an API call, you may pass DescribeOutboundCrossClusterSearchConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for outbound
    #   cross-cluster search connection. Available `Filter` names for this
    #   operation are: * cross-cluster-search-connection-id
    #   * destination-domain-info.domain-name
    #   * destination-domain-info.owner-id
    #   * destination-domain-info.region
    #   * source-domain-info.domain-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken is sent in case the earlier API call results contain the
    #   NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeOutboundCrossClusterSearchConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The result of a `DescribeOutboundCrossClusterSearchConnections`
    # request. Contains the list of connections matching the filter
    # criteria.
    #
    # @!attribute [rw] cross_cluster_search_connections
    #   Consists of list of `OutboundCrossClusterSearchConnection` matching
    #   the specified filter criteria.
    #   @return [Array<Types::OutboundCrossClusterSearchConnection>]
    #
    # @!attribute [rw] next_token
    #   If more results are available and NextToken is present, make the
    #   next request to the same API with the received NextToken to paginate
    #   the remaining results.
    #   @return [String]
    #
    class DescribeOutboundCrossClusterSearchConnectionsResponse < Struct.new(
      :cross_cluster_search_connections,
      :next_token)
      include Aws::Structure
    end

    # Filter to apply in `DescribePackage` response.
    #
    # @note When making an API call, you may pass DescribePackagesFilter
    #   data as a hash:
    #
    #       {
    #         name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #         value: ["DescribePackagesFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   Any field from `PackageDetails`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A list of values for the specified field.
    #   @return [Array<String>]
    #
    class DescribePackagesFilter < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # Container for request parameters to ` DescribePackage ` operation.
    #
    # @note When making an API call, you may pass DescribePackagesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #             value: ["DescribePackagesFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Only returns packages that match the `DescribePackagesFilterList`
    #   values.
    #   @return [Array<Types::DescribePackagesFilter>]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of packages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    class DescribePackagesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for response returned by ` DescribePackages ` operation.
    #
    # @!attribute [rw] package_details_list
    #   List of `PackageDetails` objects.
    #   @return [Array<Types::PackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class DescribePackagesResponse < Struct.new(
      :package_details_list,
      :next_token)
      include Aws::Structure
    end

    # Container for parameters to
    # `DescribeReservedElasticsearchInstanceOfferings`
    #
    # @note When making an API call, you may pass DescribeReservedElasticsearchInstanceOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         reserved_elasticsearch_instance_offering_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeReservedElasticsearchInstanceOfferingsRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for results from
    # `DescribeReservedElasticsearchInstanceOfferings`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offerings
    #   List of reserved Elasticsearch instance offerings
    #   @return [Array<Types::ReservedElasticsearchInstanceOffering>]
    #
    class DescribeReservedElasticsearchInstanceOfferingsResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instance_offerings)
      include Aws::Structure
    end

    # Container for parameters to `DescribeReservedElasticsearchInstances`
    #
    # @note When making an API call, you may pass DescribeReservedElasticsearchInstancesRequest
    #   data as a hash:
    #
    #       {
    #         reserved_elasticsearch_instance_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   Elasticsearch instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. If not
    #   specified, defaults to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class DescribeReservedElasticsearchInstancesRequest < Struct.new(
      :reserved_elasticsearch_instance_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for results from `DescribeReservedElasticsearchInstances`
    #
    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instances
    #   List of reserved Elasticsearch instances.
    #   @return [Array<Types::ReservedElasticsearchInstance>]
    #
    class DescribeReservedElasticsearchInstancesResponse < Struct.new(
      :next_token,
      :reserved_elasticsearch_instances)
      include Aws::Structure
    end

    # An error occured because the client wanted to access a not supported
    # operation. Gives http status code of 409.
    #
    class DisabledOperationException < Aws::EmptyStructure; end

    # Container for request parameters to ` DissociatePackage ` operation.
    #
    # @note When making an API call, you may pass DissociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package that you want to associate with a domain.
    #   Use `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that you want to associate the package with.
    #   @return [String]
    #
    class DissociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      include Aws::Structure
    end

    # Container for response returned by ` DissociatePackage ` operation.
    #
    # @!attribute [rw] domain_package_details
    #   `DomainPackageDetails`
    #   @return [Types::DomainPackageDetails]
    #
    class DissociatePackageResponse < Struct.new(
      :domain_package_details)
      include Aws::Structure
    end

    # Options to configure endpoint for the Elasticsearch domain.
    #
    # @note When making an API call, you may pass DomainEndpointOptions
    #   data as a hash:
    #
    #       {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #       }
    #
    # @!attribute [rw] enforce_https
    #   Specify if only HTTPS endpoint should be enabled for the
    #   Elasticsearch domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   Specify the TLS security policy that needs to be applied to the
    #   HTTPS endpoint of Elasticsearch domain.
    #    It can be one of the following values: *
    #   <b>Policy-Min-TLS-1-0-2019-07: </b> TLS security policy which
    #     supports TLSv1.0 and higher.
    #   * <b>Policy-Min-TLS-1-2-2019-07: </b> TLS security policy which
    #     supports only TLSv1.2
    #   @return [String]
    #
    class DomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy)
      include Aws::Structure
    end

    # The configured endpoint options for the domain and their current
    # status.
    #
    # @!attribute [rw] options
    #   Options to configure endpoint for the Elasticsearch domain.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] status
    #   The status of the endpoint options for the Elasticsearch domain. See
    #   `OptionStatus` for the status information that's included.
    #   @return [Types::OptionStatus]
    #
    class DomainEndpointOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   Specifies the `DomainName`.
    #   @return [String]
    #
    class DomainInfo < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DomainInformation
    #   data as a hash:
    #
    #       {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       }
    #
    # @!attribute [rw] owner_id
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   @return [String]
    #
    class DomainInformation < Struct.new(
      :owner_id,
      :domain_name,
      :region)
      include Aws::Structure
    end

    # Information on a package that is associated with a domain.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   Timestamp of the most-recent update to the association status.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain you've associated a package with.
    #   @return [String]
    #
    # @!attribute [rw] domain_package_status
    #   State of the association. Values are
    #   ASSOCIATING/ASSOCIATION\_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] reference_path
    #   The relative path on Amazon ES nodes, which can be used as
    #   synonym\_path when the package is synonym file.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    class DomainPackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :reference_path,
      :error_details)
      include Aws::Structure
    end

    # Options to enable, disable, and specify the properties of EBS storage
    # volumes. For more information, see [ Configuring EBS-based
    # Storage][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
    #
    # @note When making an API call, you may pass EBSOptions
    #   data as a hash:
    #
    #       {
    #         ebs_enabled: false,
    #         volume_type: "standard", # accepts standard, gp2, io1
    #         volume_size: 1,
    #         iops: 1,
    #       }
    #
    # @!attribute [rw] ebs_enabled
    #   Specifies whether EBS-based storage is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_type
    #   Specifies the volume type for EBS-based storage.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Integer to specify the size of an EBS volume.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).
    #   @return [Integer]
    #
    class EBSOptions < Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops)
      include Aws::Structure
    end

    # Status of the EBS options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the EBS options for the specified Elasticsearch domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the EBS options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class EBSOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Specifies the configuration for the domain cluster, such as the type
    # and number of instances.
    #
    # @note When making an API call, you may pass ElasticsearchClusterConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1,
    #         },
    #         dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.elasticsearch", # accepts ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch
    #         warm_count: 1,
    #       }
    #
    # @!attribute [rw] instance_type
    #   The instance type for an Elasticsearch cluster. UltraWarm instance
    #   types are not supported for data instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances in the specified domain cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   A boolean value to indicate whether a dedicated master node is
    #   enabled. See [About Dedicated Master Nodes][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   A boolean value to indicate whether zone awareness is enabled. See
    #   [About Zone Awareness][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_config
    #   Specifies the zone awareness configuration for a domain when zone
    #   awareness is enabled.
    #   @return [Types::ZoneAwarenessConfig]
    #
    # @!attribute [rw] dedicated_master_type
    #   The instance type for a dedicated master node.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_master_count
    #   Total number of dedicated master nodes, active and on standby, for
    #   the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] warm_enabled
    #   True to enable warm storage.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_type
    #   The instance type for the Elasticsearch cluster's warm nodes.
    #   @return [String]
    #
    # @!attribute [rw] warm_count
    #   The number of warm nodes in the cluster.
    #   @return [Integer]
    #
    class ElasticsearchClusterConfig < Struct.new(
      :instance_type,
      :instance_count,
      :dedicated_master_enabled,
      :zone_awareness_enabled,
      :zone_awareness_config,
      :dedicated_master_type,
      :dedicated_master_count,
      :warm_enabled,
      :warm_type,
      :warm_count)
      include Aws::Structure
    end

    # Specifies the configuration status for the specified Elasticsearch
    # domain.
    #
    # @!attribute [rw] options
    #   Specifies the cluster configuration for the specified Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] status
    #   Specifies the status of the configuration for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class ElasticsearchClusterConfigStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # The configuration of an Elasticsearch domain.
    #
    # @!attribute [rw] elasticsearch_version
    #   String of format X.Y to specify version for the Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchVersionStatus]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   Specifies the `ElasticsearchClusterConfig` for the Elasticsearch
    #   domain.
    #   @return [Types::ElasticsearchClusterConfigStatus]
    #
    # @!attribute [rw] ebs_options
    #   Specifies the `EBSOptions` for the Elasticsearch domain.
    #   @return [Types::EBSOptionsStatus]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [Types::AccessPoliciesStatus]
    #
    # @!attribute [rw] snapshot_options
    #   Specifies the `SnapshotOptions` for the Elasticsearch domain.
    #   @return [Types::SnapshotOptionsStatus]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [VPC Endpoints for Amazon Elasticsearch Service Domains][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #   @return [Types::VPCDerivedInfoStatus]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Amazon Cognito Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptionsStatus]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the `EncryptionAtRestOptions` for the Elasticsearch
    #   domain.
    #   @return [Types::EncryptionAtRestOptionsStatus]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the `NodeToNodeEncryptionOptions` for the Elasticsearch
    #   domain.
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    #
    # @!attribute [rw] advanced_options
    #   Specifies the `AdvancedOptions` for the domain. See [Configuring
    #   Advanced Options][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
    #   @return [Types::AdvancedOptionsStatus]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Types::LogPublishingOptionsStatus]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Specifies the `DomainEndpointOptions` for the Elasticsearch domain.
    #   @return [Types::DomainEndpointOptionsStatus]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies `AdvancedSecurityOptions` for the domain.
    #   @return [Types::AdvancedSecurityOptionsStatus]
    #
    class ElasticsearchDomainConfig < Struct.new(
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options)
      include Aws::Structure
    end

    # The current status of an Elasticsearch domain.
    #
    # @!attribute [rw] domain_id
    #   The unique identifier for the specified Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon resource name (ARN) of an Elasticsearch domain. See
    #   [Identifiers for IAM Entities][1] in *Using AWS Identity and Access
    #   Management* for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The domain creation status. `True` if the creation of an
    #   Elasticsearch domain is complete. `False` if domain creation is
    #   still in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] deleted
    #   The domain deletion status. `True` if a delete request has been
    #   received for the domain but resource cleanup is still in progress.
    #   `False` if the domain has not been deleted. Once domain deletion is
    #   complete, the status of the domain is no longer returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The Elasticsearch domain endpoint that you use to submit index and
    #   search requests.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Map containing the Elasticsearch domain endpoints used to submit
    #   index and search requests. Example `key, value`\:
    #   `'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] processing
    #   The status of the Elasticsearch domain configuration. `True` if
    #   Amazon Elasticsearch Service is processing configuration changes.
    #   `False` if the configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] upgrade_processing
    #   The status of an Elasticsearch domain version upgrade. `True` if
    #   Amazon Elasticsearch Service is undergoing a version upgrade.
    #   `False` if the configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] elasticsearch_version
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   The type and number of instances in the domain cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   The `EBSOptions` for the specified domain. See [Configuring
    #   EBS-based Storage][1] for more information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   Specifies the status of the `SnapshotOptions`
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   The `VPCOptions` for the specified domain. For more information, see
    #   [VPC Endpoints for Amazon Elasticsearch Service Domains][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] cognito_options
    #   The `CognitoOptions` for the specified domain. For more information,
    #   see [Amazon Cognito Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Specifies the status of the `EncryptionAtRestOptions`.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Specifies the status of the `NodeToNodeEncryptionOptions`.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Specifies the status of the `AdvancedOptions`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the given domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch domain's service software.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   The current status of the Elasticsearch domain's endpoint options.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   The current status of the Elasticsearch domain's advanced security
    #   options.
    #   @return [Types::AdvancedSecurityOptions]
    #
    class ElasticsearchDomainStatus < Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoints,
      :processing,
      :upgrade_processing,
      :elasticsearch_version,
      :elasticsearch_cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :service_software_options,
      :domain_endpoint_options,
      :advanced_security_options)
      include Aws::Structure
    end

    # Status of the Elasticsearch version options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Elasticsearch version for the specified Elasticsearch
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Elasticsearch version options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class ElasticsearchVersionStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Specifies the Encryption At Rest Options.
    #
    # @note When making an API call, you may pass EncryptionAtRestOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies the option to enable Encryption At Rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS Key ID for Encryption At Rest options.
    #   @return [String]
    #
    class EncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      include Aws::Structure
    end

    # Status of the Encryption At Rest options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the Encryption At Rest options for the specified
    #   Elasticsearch domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the Encryption At Rest options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class EncryptionAtRestOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] error_type
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    class ErrorDetails < Struct.new(
      :error_type,
      :error_message)
      include Aws::Structure
    end

    # A filter used to limit results when describing inbound or outbound
    # cross-cluster search connections. Multiple values can be specified per
    # filter. A cross-cluster search connection must match at least one of
    # the specified values for it to be returned from an operation.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Contains one or more values for the filter.
    #   @return [Array<String>]
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # Container for request parameters to `
    # GetCompatibleElasticsearchVersions ` operation.
    #
    # @note When making an API call, you may pass GetCompatibleElasticsearchVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    class GetCompatibleElasticsearchVersionsRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # Container for response returned by `
    # GetCompatibleElasticsearchVersions ` operation.
    #
    # @!attribute [rw] compatible_elasticsearch_versions
    #   A map of compatible Elasticsearch versions returned as part of the `
    #   GetCompatibleElasticsearchVersions ` operation.
    #   @return [Array<Types::CompatibleVersionsMap>]
    #
    class GetCompatibleElasticsearchVersionsResponse < Struct.new(
      :compatible_elasticsearch_versions)
      include Aws::Structure
    end

    # Container for request parameters to ` GetUpgradeHistory ` operation.
    #
    # @note When making an API call, you may pass GetUpgradeHistoryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class GetUpgradeHistoryRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for response returned by ` GetUpgradeHistory ` operation.
    #
    # @!attribute [rw] upgrade_histories
    #   A list of ` UpgradeHistory ` objects corresponding to each Upgrade
    #   or Upgrade Eligibility Check performed on a domain returned as part
    #   of ` GetUpgradeHistoryResponse ` object.
    #   @return [Array<Types::UpgradeHistory>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that needs to be supplied to the next call to get
    #   the next page of results
    #   @return [String]
    #
    class GetUpgradeHistoryResponse < Struct.new(
      :upgrade_histories,
      :next_token)
      include Aws::Structure
    end

    # Container for request parameters to ` GetUpgradeStatus ` operation.
    #
    # @note When making an API call, you may pass GetUpgradeStatusRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    class GetUpgradeStatusRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # Container for response returned by ` GetUpgradeStatus ` operation.
    #
    # @!attribute [rw] upgrade_step
    #   Represents one of 3 steps that an Upgrade or Upgrade Eligibility
    #   Check does through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] step_status
    #   One of 4 statuses that a step can go through returned as part of the
    #   ` GetUpgradeStatusResponse ` object. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the update briefly
    #   @return [String]
    #
    class GetUpgradeStatusResponse < Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name)
      include Aws::Structure
    end

    # Specifies details of an inbound connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Specifies the connection id for the inbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `InboundCrossClusterSearchConnectionStatus` for the
    #   outbound connection.
    #   @return [Types::InboundCrossClusterSearchConnectionStatus]
    #
    class InboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_status)
      include Aws::Structure
    end

    # Specifies the coonection status of an inbound cross-cluster search
    # connection.
    #
    # @!attribute [rw] status_code
    #   The state code for inbound connection. This can be one of the
    #   following:
    #
    #   * PENDING\_ACCEPTANCE: Inbound connection is not yet accepted by
    #     destination domain owner.
    #   * APPROVED: Inbound connection is pending acceptance by destination
    #     domain owner.
    #   * REJECTING: Inbound connection rejection is in process.
    #   * REJECTED: Inbound connection is rejected.
    #   * DELETING: Inbound connection deletion is in progress.
    #   * DELETED: Inbound connection is deleted and cannot be used further.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies verbose information for the inbound connection status.
    #   @return [String]
    #
    class InboundCrossClusterSearchConnectionStatus < Struct.new(
      :status_code,
      :message)
      include Aws::Structure
    end

    # InstanceCountLimits represents the limits on number of instances that
    # be created in Amazon Elasticsearch for given InstanceType.
    #
    # @!attribute [rw] minimum_instance_count
    #   Minimum number of Instances that can be instantiated for given
    #   InstanceType.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_instance_count
    #   Maximum number of Instances that can be instantiated for given
    #   InstanceType.
    #   @return [Integer]
    #
    class InstanceCountLimits < Struct.new(
      :minimum_instance_count,
      :maximum_instance_count)
      include Aws::Structure
    end

    # InstanceLimits represents the list of instance related attributes that
    # are available for given InstanceType.
    #
    # @!attribute [rw] instance_count_limits
    #   InstanceCountLimits represents the limits on number of instances
    #   that be created in Amazon Elasticsearch for given InstanceType.
    #   @return [Types::InstanceCountLimits]
    #
    class InstanceLimits < Struct.new(
      :instance_count_limits)
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure (the failure is internal to the service) . Gives
    # http status code of 500.
    #
    class InternalException < Aws::EmptyStructure; end

    # The request processing has failed because of invalid pagination token
    # provided by customer. Returns an HTTP status code of 400.
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # An exception for trying to create or access sub-resource that is
    # either invalid or not supported. Gives http status code of 409.
    #
    class InvalidTypeException < Aws::EmptyStructure; end

    # An exception for trying to create more than allowed resources or
    # sub-resources. Gives http status code of 409.
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # Limits for given InstanceType and for each of it's role.
    #  Limits contains following ` StorageTypes, ` ` InstanceLimits ` and `
    # AdditionalLimits `
    #
    # @!attribute [rw] storage_types
    #   StorageType represents the list of storage related types and
    #   attributes that are available for given InstanceType.
    #   @return [Array<Types::StorageType>]
    #
    # @!attribute [rw] instance_limits
    #   InstanceLimits represents the list of instance related attributes
    #   that are available for given InstanceType.
    #   @return [Types::InstanceLimits]
    #
    # @!attribute [rw] additional_limits
    #   List of additional limits that are specific to a given InstanceType
    #   and for each of it's ` InstanceRole ` .
    #   @return [Array<Types::AdditionalLimit>]
    #
    class Limits < Struct.new(
      :storage_types,
      :instance_limits,
      :additional_limits)
      include Aws::Structure
    end

    # The result of a `ListDomainNames` operation. Contains the names of all
    # Elasticsearch domains owned by this account.
    #
    # @!attribute [rw] domain_names
    #   List of Elasticsearch domain names.
    #   @return [Array<Types::DomainInfo>]
    #
    class ListDomainNamesResponse < Struct.new(
      :domain_names)
      include Aws::Structure
    end

    # Container for request parameters to ` ListDomainsForPackage `
    # operation.
    #
    # @note When making an API call, you may pass ListDomainsForPackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] package_id
    #   The package for which to list domains.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of domains.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    class ListDomainsForPackageRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for response parameters to ` ListDomainsForPackage `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    class ListDomainsForPackageResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the ` ListElasticsearchInstanceTypes `
    # operation.
    #
    # @note When making an API call, you may pass ListElasticsearchInstanceTypesRequest
    #   data as a hash:
    #
    #       {
    #         elasticsearch_version: "ElasticsearchVersionString", # required
    #         domain_name: "DomainName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] elasticsearch_version
    #   Version of Elasticsearch for which list of supported elasticsearch
    #   instance types are needed.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DomainName represents the name of the Domain that we are trying to
    #   modify. This should be present only if we are querying for list of
    #   available Elasticsearch instance types when modifying existing
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. Value
    #   provided must be greater than 30 else it wont be honored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   NextToken should be sent in case if earlier API call produced result
    #   containing NextToken. It is used for pagination.
    #   @return [String]
    #
    class ListElasticsearchInstanceTypesRequest < Struct.new(
      :elasticsearch_version,
      :domain_name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters returned by `
    # ListElasticsearchInstanceTypes ` operation.
    #
    # @!attribute [rw] elasticsearch_instance_types
    #   List of instance types supported by Amazon Elasticsearch service for
    #   given ` ElasticsearchVersion `
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   In case if there are more results available NextToken would be
    #   present, make further request to the same API with received
    #   NextToken to paginate remaining results.
    #   @return [String]
    #
    class ListElasticsearchInstanceTypesResponse < Struct.new(
      :elasticsearch_instance_types,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the ` ListElasticsearchVersions `
    # operation. Use ` MaxResults ` to control the maximum number of results
    # to
    # retrieve in a single call.
    #
    #  Use ` NextToken ` in response to retrieve more results. If the
    # received response does not contain a NextToken, then there are no more
    # results to retrieve.
    #
    # @note When making an API call, you may pass ListElasticsearchVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Set this value to limit the number of results returned. Value
    #   provided must be greater than 10 else it wont be honored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class ListElasticsearchVersionsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters for response received from `
    # ListElasticsearchVersions ` operation.
    #
    # @!attribute [rw] elasticsearch_versions
    #   List of supported elastic search versions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Paginated APIs accepts NextToken input to returns next page results
    #   and provides a NextToken output in the response which can be used by
    #   the client to retrieve more results.
    #   @return [String]
    #
    class ListElasticsearchVersionsResponse < Struct.new(
      :elasticsearch_versions,
      :next_token)
      include Aws::Structure
    end

    # Container for request parameters to ` ListPackagesForDomain `
    # operation.
    #
    # @note When making an API call, you may pass ListPackagesForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to list associated
    #   packages.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits results to a maximum number of packages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Used for pagination. Only necessary if a previous API call includes
    #   a non-null NextToken value. If provided, returns results for the
    #   next page.
    #   @return [String]
    #
    class ListPackagesForDomainRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for response parameters to ` ListPackagesForDomain `
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of `DomainPackageDetails` objects.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that needs to be supplied to the next call to get
    #   the next page of results.
    #   @return [String]
    #
    class ListPackagesForDomainResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the `ListTags` operation. Specify the
    # `ARN` for the Elasticsearch domain to which the tags are attached that
    # you want to view are attached.
    #
    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] arn
    #   Specify the `ARN` for the Elasticsearch domain to which the tags are
    #   attached that you want to view.
    #   @return [String]
    #
    class ListTagsRequest < Struct.new(
      :arn)
      include Aws::Structure
    end

    # The result of a `ListTags` operation. Contains tags for all requested
    # Elasticsearch domains.
    #
    # @!attribute [rw] tag_list
    #   List of `Tag` for the requested Elasticsearch domain.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsResponse < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # Log Publishing option that is set for given domain.
    # Attributes and their details: * CloudWatchLogsLogGroupArn: ARN of the
    # Cloudwatch log group to which
    #   log needs to be published.
    # * Enabled: Whether the log publishing for given log type is enabled or
    #   not
    #
    # @note When making an API call, you may pass LogPublishingOption
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   ARN of the Cloudwatch log group to which log needs to be published.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether given log publishing option is enabled or not.
    #   @return [Boolean]
    #
    class LogPublishingOption < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled)
      include Aws::Structure
    end

    # The configured log publishing options for the domain and their current
    # status.
    #
    # @!attribute [rw] options
    #   The log publishing options configured for the Elasticsearch domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] status
    #   The status of the log publishing options for the Elasticsearch
    #   domain. See `OptionStatus` for the status information that's
    #   included.
    #   @return [Types::OptionStatus]
    #
    class LogPublishingOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Credentials for the master user: username and password, ARN, or both.
    #
    # @note When making an API call, you may pass MasterUserOptions
    #   data as a hash:
    #
    #       {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       }
    #
    # @!attribute [rw] master_user_arn
    #   ARN for the master user (if IAM is enabled).
    #   @return [String]
    #
    # @!attribute [rw] master_user_name
    #   The master user's username, which is stored in the Amazon
    #   Elasticsearch Service domain's internal database.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The master user's password, which is stored in the Amazon
    #   Elasticsearch Service domain's internal database.
    #   @return [String]
    #
    class MasterUserOptions < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password)
      include Aws::Structure
    end

    # Specifies the node-to-node encryption options.
    #
    # @note When making an API call, you may pass NodeToNodeEncryptionOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specify true to enable node-to-node encryption.
    #   @return [Boolean]
    #
    class NodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Status of the node-to-node encryption options for the specified
    # Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the node-to-node encryption options for the specified
    #   Elasticsearch domain.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of the node-to-node encryption options for the
    #   specified Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class NodeToNodeEncryptionOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Provides the current status of the entity.
    #
    # @!attribute [rw] creation_date
    #   Timestamp which tells the creation date for the entity.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   Timestamp which tells the last updated time for the entity.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   Specifies the latest version for the entity.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   Provides the `OptionState` for the Elasticsearch domain.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the Elasticsearch domain is being deleted.
    #   @return [Boolean]
    #
    class OptionStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion)
      include Aws::Structure
    end

    # Specifies details of an outbound connection.
    #
    # @!attribute [rw] source_domain_info
    #   Specifies the `DomainInformation` for the source Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] destination_domain_info
    #   Specifies the `DomainInformation` for the destination Elasticsearch
    #   domain.
    #   @return [Types::DomainInformation]
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   Specifies the connection id for the outbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias
    #   Specifies the connection alias for the outbound cross-cluster search
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Specifies the `OutboundCrossClusterSearchConnectionStatus` for the
    #   outbound connection.
    #   @return [Types::OutboundCrossClusterSearchConnectionStatus]
    #
    class OutboundCrossClusterSearchConnection < Struct.new(
      :source_domain_info,
      :destination_domain_info,
      :cross_cluster_search_connection_id,
      :connection_alias,
      :connection_status)
      include Aws::Structure
    end

    # Specifies the connection status of an outbound cross-cluster search
    # connection.
    #
    # @!attribute [rw] status_code
    #   The state code for outbound connection. This can be one of the
    #   following:
    #
    #   * VALIDATING: The outbound connection request is being validated.
    #   * VALIDATION\_FAILED: Validation failed for the connection request.
    #   * PENDING\_ACCEPTANCE: Outbound connection request is validated and
    #     is not yet accepted by destination domain owner.
    #   * PROVISIONING: Outbound connection request is in process.
    #   * ACTIVE: Outbound connection is active and ready to use.
    #   * REJECTED: Outbound connection request is rejected by destination
    #     domain owner.
    #   * DELETING: Outbound connection deletion is in progress.
    #   * DELETED: Outbound connection is deleted and cannot be used
    #     further.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies verbose information for the outbound connection status.
    #   @return [String]
    #
    class OutboundCrossClusterSearchConnectionStatus < Struct.new(
      :status_code,
      :message)
      include Aws::Structure
    end

    # Basic information about a package.
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Currently supports only TXT-DICTIONARY.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   User-specified description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_status
    #   Current state of the package. Values are
    #   COPYING/COPY\_FAILED/AVAILABLE/DELETING/DELETE\_FAILED
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp which tells creation date of the package.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    class PackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :error_details)
      include Aws::Structure
    end

    # The S3 location for importing the package specified as `S3BucketName`
    # and `S3Key`
    #
    # @note When making an API call, you may pass PackageSource
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName",
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the bucket containing the package.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Key (file name) of the package.
    #   @return [String]
    #
    class PackageSource < Struct.new(
      :s3_bucket_name,
      :s3_key)
      include Aws::Structure
    end

    # Container for parameters to
    # `PurchaseReservedElasticsearchInstanceOffering`
    #
    # @note When making an API call, you may pass PurchaseReservedElasticsearchInstanceOfferingRequest
    #   data as a hash:
    #
    #       {
    #         reserved_elasticsearch_instance_offering_id: "GUID", # required
    #         reservation_name: "ReservationToken", # required
    #         instance_count: 1,
    #       }
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The ID of the reserved Elasticsearch instance offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of Elasticsearch instances to reserve.
    #   @return [Integer]
    #
    class PurchaseReservedElasticsearchInstanceOfferingRequest < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :reservation_name,
      :instance_count)
      include Aws::Structure
    end

    # Represents the output of a
    # `PurchaseReservedElasticsearchInstanceOffering` operation.
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   Details of the reserved Elasticsearch instance which was purchased.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier used to track this reservation.
    #   @return [String]
    #
    class PurchaseReservedElasticsearchInstanceOfferingResponse < Struct.new(
      :reserved_elasticsearch_instance_id,
      :reservation_name)
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for a
    # reserved Elasticsearch instance, or for a reserved Elasticsearch
    # instance offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `RejectInboundCrossClusterSearchConnection` operation.
    #
    # @note When making an API call, you may pass RejectInboundCrossClusterSearchConnectionRequest
    #   data as a hash:
    #
    #       {
    #         cross_cluster_search_connection_id: "CrossClusterSearchConnectionId", # required
    #       }
    #
    # @!attribute [rw] cross_cluster_search_connection_id
    #   The id of the inbound connection that you want to reject.
    #   @return [String]
    #
    class RejectInboundCrossClusterSearchConnectionRequest < Struct.new(
      :cross_cluster_search_connection_id)
      include Aws::Structure
    end

    # The result of a `RejectInboundCrossClusterSearchConnection` operation.
    # Contains details of rejected inbound connection.
    #
    # @!attribute [rw] cross_cluster_search_connection
    #   Specifies the `InboundCrossClusterSearchConnection` of rejected
    #   inbound connection.
    #   @return [Types::InboundCrossClusterSearchConnection]
    #
    class RejectInboundCrossClusterSearchConnectionResponse < Struct.new(
      :cross_cluster_search_connection)
      include Aws::Structure
    end

    # Container for the parameters to the `RemoveTags` operation. Specify
    # the `ARN` for the Elasticsearch domain from which you want to remove
    # the specified `TagKey`.
    #
    # @note When making an API call, you may pass RemoveTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   Specifies the `ARN` for the Elasticsearch domain from which you want
    #   to delete the specified tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the `TagKey` list which you want to remove from the
    #   Elasticsearch domain.
    #   @return [Array<String>]
    #
    class RemoveTagsRequest < Struct.new(
      :arn,
      :tag_keys)
      include Aws::Structure
    end

    # Details of a reserved Elasticsearch instance.
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_type
    #   The Elasticsearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the Elasticsearch instance is
    #   reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will paid to purchase the specific
    #   reserved Elasticsearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour for the domain that is using
    #   this reserved instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved Elasticsearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_count
    #   The number of Elasticsearch instances that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the reserved Elasticsearch instance.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option as defined in the reserved Elasticsearch instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    class ReservedElasticsearchInstance < Struct.new(
      :reservation_name,
      :reserved_elasticsearch_instance_id,
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :elasticsearch_instance_count,
      :state,
      :payment_option,
      :recurring_charges)
      include Aws::Structure
    end

    # Details of a reserved Elasticsearch instance offering.
    #
    # @!attribute [rw] reserved_elasticsearch_instance_offering_id
    #   The Elasticsearch reserved instance offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_instance_type
    #   The Elasticsearch instance type offered by the reserved instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the offering will reserve the
    #   Elasticsearch instance.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will pay to purchase the specific
    #   reserved Elasticsearch instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour the domain that is using the
    #   offering is running.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved Elasticsearch instance offering.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   Payment option for the reserved Elasticsearch instance offering
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any domains using the instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    class ReservedElasticsearchInstanceOffering < Struct.new(
      :reserved_elasticsearch_instance_offering_id,
      :elasticsearch_instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges)
      include Aws::Structure
    end

    # An exception for creating a resource that already exists. Gives http
    # status code of 400.
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An exception for accessing or deleting a resource that does not exist.
    # Gives http status code of 400.
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The current options of an Elasticsearch domain service software
    # options.
    #
    # @!attribute [rw] current_version
    #   The current service software version that is present on the domain.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The new service software version if one is available.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   `True` if you are able to update you service software version.
    #   `False` if you are not able to update your service software version.
    #   @return [Boolean]
    #
    # @!attribute [rw] cancellable
    #   `True` if you are able to cancel your service software version
    #   update. `False` if you are not able to cancel your service software
    #   version.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of your service software update. This field can take the
    #   following values: `ELIGIBLE`, `PENDING_UPDATE`, `IN_PROGRESS`,
    #   `COMPLETED`, and `NOT_ELIGIBLE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the `UpdateStatus`.
    #   @return [String]
    #
    # @!attribute [rw] automated_update_date
    #   Timestamp, in Epoch time, until which you can manually request a
    #   service software update. After this date, we automatically update
    #   your service software.
    #   @return [Time]
    #
    # @!attribute [rw] optional_deployment
    #   `True` if a service software is never automatically updated. `False`
    #   if a service software is automatically updated after
    #   `AutomatedUpdateDate`.
    #   @return [Boolean]
    #
    class ServiceSoftwareOptions < Struct.new(
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment)
      include Aws::Structure
    end

    # Specifies the time, in UTC format, when the service takes a daily
    # automated snapshot of the specified Elasticsearch domain. Default
    # value is `0` hours.
    #
    # @note When making an API call, you may pass SnapshotOptions
    #   data as a hash:
    #
    #       {
    #         automated_snapshot_start_hour: 1,
    #       }
    #
    # @!attribute [rw] automated_snapshot_start_hour
    #   Specifies the time, in UTC format, when the service takes a daily
    #   automated snapshot of the specified Elasticsearch domain. Default
    #   value is `0` hours.
    #   @return [Integer]
    #
    class SnapshotOptions < Struct.new(
      :automated_snapshot_start_hour)
      include Aws::Structure
    end

    # Status of a daily automated snapshot.
    #
    # @!attribute [rw] options
    #   Specifies the daily snapshot options specified for the Elasticsearch
    #   domain.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] status
    #   Specifies the status of a daily automated snapshot.
    #   @return [Types::OptionStatus]
    #
    class SnapshotOptionsStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Container for the parameters to the
    # `StartElasticsearchServiceSoftwareUpdate` operation. Specifies the
    # name of the Elasticsearch domain that you wish to schedule a service
    # software update on.
    #
    # @note When making an API call, you may pass StartElasticsearchServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #   @return [String]
    #
    class StartElasticsearchServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The result of a `StartElasticsearchServiceSoftwareUpdate` operation.
    # Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the Elasticsearch service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    class StartElasticsearchServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      include Aws::Structure
    end

    # StorageTypes represents the list of storage related types and their
    # attributes that are available for given InstanceType.
    #
    # @!attribute [rw] storage_type_name
    #   Type of the storage. List of available storage options: 1.  instance
    #   2.  ebs
    #   @return [String]
    #
    # @!attribute [rw] storage_sub_type_name
    #   SubType of the given storage type. List of available sub-storage
    #   options: For "instance" storageType we wont have any
    #   storageSubType, in case of "ebs" storageType we will have
    #   following valid storageSubTypes 1.  standard
    #   2.  gp2
    #   3.  io1
    #
    #    Refer `VolumeType` for more information regarding above EBS storage
    #   options.
    #   @return [String]
    #
    # @!attribute [rw] storage_type_limits
    #   List of limits that are applicable for given storage type.
    #   @return [Array<Types::StorageTypeLimit>]
    #
    class StorageType < Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits)
      include Aws::Structure
    end

    # Limits that are applicable for given storage type.
    #
    # @!attribute [rw] limit_name
    #   Name of storage limits that are applicable for given storage type.
    #   If ` StorageType ` is ebs, following storage options are applicable
    #   1.  MinimumVolumeSize
    #   2.  MaximumVolumeSize
    #   3.  MaximumIops
    #   4.  MinimumIops
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   Values for the ` StorageTypeLimit$LimitName ` .
    #   @return [Array<String>]
    #
    class StorageTypeLimit < Struct.new(
      :limit_name,
      :limit_values)
      include Aws::Structure
    end

    # Specifies a key value pair for a resource tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   Specifies the `TagKey`, the name of the tag. Tag keys must be unique
    #   for the Elasticsearch domain to which they are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the `TagValue`, the value assigned to the corresponding
    #   tag key. Tag values can be null and do not have to be unique in a
    #   tag set. For example, you can have a key value pair in a tag set of
    #   `project : Trinity` and `cost-center : Trinity`
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Container for the parameters to the `UpdateElasticsearchDomain`
    # operation. Specifies the type and number of instances in the domain
    # cluster.
    #
    # @note When making an API call, you may pass UpdateElasticsearchDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         elasticsearch_cluster_config: {
    #           instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, m5.large.elasticsearch, m5.xlarge.elasticsearch, m5.2xlarge.elasticsearch, m5.4xlarge.elasticsearch, m5.12xlarge.elasticsearch, r5.large.elasticsearch, r5.xlarge.elasticsearch, r5.2xlarge.elasticsearch, r5.4xlarge.elasticsearch, r5.12xlarge.elasticsearch, c5.large.elasticsearch, c5.xlarge.elasticsearch, c5.2xlarge.elasticsearch, c5.4xlarge.elasticsearch, c5.9xlarge.elasticsearch, c5.18xlarge.elasticsearch, ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.elasticsearch", # accepts ultrawarm1.medium.elasticsearch, ultrawarm1.large.elasticsearch
    #           warm_count: 1,
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
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         access_policies: "PolicyDocument",
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the Elasticsearch domain that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] elasticsearch_cluster_config
    #   The type and number of instances to instantiate for the domain
    #   cluster.
    #   @return [Types::ElasticsearchClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Specify the type and size of the EBS volume that you want to use.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for VPC endpoint.
    #   For more information, see [Creating a VPC][1] in *VPC Endpoints for
    #   Amazon Elasticsearch Service Domains*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Options to specify the Cognito user and identity pools for Kibana
    #   authentication. For more information, see [Amazon Cognito
    #   Authentication for Kibana][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
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
    #
    # @!attribute [rw] access_policies
    #   IAM access policy as a JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Map of `LogType` and `LogPublishingOption`, each containing options
    #   to publish a given type of Elasticsearch log.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Options to specify configuration that will be applied to the domain
    #   endpoint.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Specifies advanced security options.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    class UpdateElasticsearchDomainConfigRequest < Struct.new(
      :domain_name,
      :elasticsearch_cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options)
      include Aws::Structure
    end

    # The result of an `UpdateElasticsearchDomain` request. Contains the
    # status of the Elasticsearch domain being updated.
    #
    # @!attribute [rw] domain_config
    #   The status of the updated Elasticsearch domain.
    #   @return [Types::ElasticsearchDomainConfig]
    #
    class UpdateElasticsearchDomainConfigResponse < Struct.new(
      :domain_config)
      include Aws::Structure
    end

    # Container for request parameters to ` UpgradeElasticsearchDomain `
    # operation.
    #
    # @note When making an API call, you may pass UpgradeElasticsearchDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         target_version: "ElasticsearchVersionString", # required
    #         perform_check_only: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of Elasticsearch that you intend to upgrade the domain
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   This flag, when set to True, indicates that an Upgrade Eligibility
    #   Check needs to be performed. This will not actually perform the
    #   Upgrade.
    #   @return [Boolean]
    #
    class UpgradeElasticsearchDomainRequest < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only)
      include Aws::Structure
    end

    # Container for response returned by ` UpgradeElasticsearchDomain `
    # operation.
    #
    # @!attribute [rw] domain_name
    #   The name of an Elasticsearch domain. Domain names are unique across
    #   the domains owned by an account within an AWS region. Domain names
    #   start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The version of Elasticsearch that you intend to upgrade the domain
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   This flag, when set to True, indicates that an Upgrade Eligibility
    #   Check needs to be performed. This will not actually perform the
    #   Upgrade.
    #   @return [Boolean]
    #
    class UpgradeElasticsearchDomainResponse < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only)
      include Aws::Structure
    end

    # History of the last 10 Upgrades and Upgrade Eligibility Checks.
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the update briefly
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   UTC Timestamp at which the Upgrade API call was made in
    #   "yyyy-MM-ddTHH:mm:ssZ" format.
    #   @return [Time]
    #
    # @!attribute [rw] upgrade_status
    #   The overall status of the update. The status can take one of the
    #   following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] steps_list
    #   A list of ` UpgradeStepItem ` s representing information about each
    #   step performed as pard of a specific Upgrade or Upgrade Eligibility
    #   Check.
    #   @return [Array<Types::UpgradeStepItem>]
    #
    class UpgradeHistory < Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list)
      include Aws::Structure
    end

    # Represents a single step of the Upgrade or Upgrade Eligibility Check
    # workflow.
    #
    # @!attribute [rw] upgrade_step
    #   Represents one of 3 steps that an Upgrade or Upgrade Eligibility
    #   Check does through: * PreUpgradeCheck
    #   * Snapshot
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] upgrade_step_status
    #   The status of a particular step during an upgrade. The status can
    #   take one of the following values: * In Progress
    #   * Succeeded
    #   * Succeeded with Issues
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] issues
    #   A list of strings containing detailed information about the errors
    #   encountered in a particular step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] progress_percent
    #   The Floating point value representing progress percentage of a
    #   particular step.
    #   @return [Float]
    #
    class UpgradeStepItem < Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent)
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for VPC endpoint.
    # For more information, see [ VPC Endpoints for Amazon Elasticsearch
    # Service Domains][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #
    # @!attribute [rw] vpc_id
    #   The VPC Id for the Elasticsearch domain. Exists only if the domain
    #   was created with VPCOptions.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the subnets for VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   The availability zones for the Elasticsearch domain. Exists only if
    #   the domain was created with VPCOptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the security groups for VPC endpoint.
    #   @return [Array<String>]
    #
    class VPCDerivedInfo < Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids)
      include Aws::Structure
    end

    # Status of the VPC options for the specified Elasticsearch domain.
    #
    # @!attribute [rw] options
    #   Specifies the VPC options for the specified Elasticsearch domain.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   Specifies the status of the VPC options for the specified
    #   Elasticsearch domain.
    #   @return [Types::OptionStatus]
    #
    class VPCDerivedInfoStatus < Struct.new(
      :options,
      :status)
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for VPC endpoint.
    # For more information, see [ VPC Endpoints for Amazon Elasticsearch
    # Service Domains][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html
    #
    # @note When making an API call, you may pass VPCOptions
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the subnets for VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the security groups for VPC endpoint.
    #   @return [Array<String>]
    #
    class VPCOptions < Struct.new(
      :subnet_ids,
      :security_group_ids)
      include Aws::Structure
    end

    # An exception for missing / invalid input fields. Gives http status
    # code of 400.
    #
    class ValidationException < Aws::EmptyStructure; end

    # Specifies the zone awareness configuration for the domain cluster,
    # such as the number of availability zones.
    #
    # @note When making an API call, you may pass ZoneAwarenessConfig
    #   data as a hash:
    #
    #       {
    #         availability_zone_count: 1,
    #       }
    #
    # @!attribute [rw] availability_zone_count
    #   An integer value to indicate the number of availability zones for a
    #   domain when zone awareness is enabled. This should be equal to
    #   number of subnets if VPC endpoints is enabled
    #   @return [Integer]
    #
    class ZoneAwarenessConfig < Struct.new(
      :availability_zone_count)
      include Aws::Structure
    end

  end
end

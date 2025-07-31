# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Inspector2
  module Types

    # You do not have sufficient access to perform this action.
    #
    # For `Enable`, you receive this error if you attempt to use a feature
    # in an unsupported Amazon Web Services Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Web Services account within your environment that Amazon
    # Inspector has been enabled for.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @!attribute [rw] resource_status
    #   Details of the status of Amazon Inspector scans by resource type.
    #   @return [Types::ResourceStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Account AWS API Documentation
    #
    class Account < Struct.new(
      :account_id,
      :status,
      :resource_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about an aggregation response based on
    # Amazon Web Services accounts.
    #
    # @!attribute [rw] finding_type
    #   The type of finding.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountAggregation AWS API Documentation
    #
    class AccountAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation of findings by Amazon Web Services account ID.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   The number of findings by severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] exploit_available_count
    #   The number of findings that have an exploit available.
    #   @return [Integer]
    #
    # @!attribute [rw] fix_available_count
    #   Details about the number of fixes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountAggregationResponse AWS API Documentation
    #
    class AccountAggregationResponse < Struct.new(
      :account_id,
      :severity_counts,
      :exploit_available_count,
      :fix_available_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object with details the status of an Amazon Web Services account
    # within your Amazon Inspector environment.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   An object detailing the status of Amazon Inspector for the account.
    #   @return [Types::State]
    #
    # @!attribute [rw] resource_state
    #   An object detailing which resources Amazon Inspector is enabled to
    #   scan for the account.
    #   @return [Types::ResourceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountState AWS API Documentation
    #
    class AccountState < Struct.new(
      :account_id,
      :state,
      :resource_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an aggregation request.
    #
    # @note AggregationRequest is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] account_aggregation
    #   An object that contains details about an aggregation request based
    #   on Amazon Web Services account IDs.
    #   @return [Types::AccountAggregation]
    #
    # @!attribute [rw] ami_aggregation
    #   An object that contains details about an aggregation request based
    #   on Amazon Machine Images (AMIs).
    #   @return [Types::AmiAggregation]
    #
    # @!attribute [rw] aws_ecr_container_aggregation
    #   An object that contains details about an aggregation request based
    #   on Amazon ECR container images.
    #   @return [Types::AwsEcrContainerAggregation]
    #
    # @!attribute [rw] ec2_instance_aggregation
    #   An object that contains details about an aggregation request based
    #   on Amazon EC2 instances.
    #   @return [Types::Ec2InstanceAggregation]
    #
    # @!attribute [rw] finding_type_aggregation
    #   An object that contains details about an aggregation request based
    #   on finding types.
    #   @return [Types::FindingTypeAggregation]
    #
    # @!attribute [rw] image_layer_aggregation
    #   An object that contains details about an aggregation request based
    #   on container image layers.
    #   @return [Types::ImageLayerAggregation]
    #
    # @!attribute [rw] package_aggregation
    #   An object that contains details about an aggregation request based
    #   on operating system package type.
    #   @return [Types::PackageAggregation]
    #
    # @!attribute [rw] repository_aggregation
    #   An object that contains details about an aggregation request based
    #   on Amazon ECR repositories.
    #   @return [Types::RepositoryAggregation]
    #
    # @!attribute [rw] title_aggregation
    #   An object that contains details about an aggregation request based
    #   on finding title.
    #   @return [Types::TitleAggregation]
    #
    # @!attribute [rw] lambda_layer_aggregation
    #   Returns an object with findings aggregated by Amazon Web Services
    #   Lambda layer.
    #   @return [Types::LambdaLayerAggregation]
    #
    # @!attribute [rw] lambda_function_aggregation
    #   Returns an object with findings aggregated by Amazon Web Services
    #   Lambda function.
    #   @return [Types::LambdaFunctionAggregation]
    #
    # @!attribute [rw] code_repository_aggregation
    #   An object that contains details about an aggregation request based
    #   on code repositories.
    #   @return [Types::CodeRepositoryAggregation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AggregationRequest AWS API Documentation
    #
    class AggregationRequest < Struct.new(
      :account_aggregation,
      :ami_aggregation,
      :aws_ecr_container_aggregation,
      :ec2_instance_aggregation,
      :finding_type_aggregation,
      :image_layer_aggregation,
      :package_aggregation,
      :repository_aggregation,
      :title_aggregation,
      :lambda_layer_aggregation,
      :lambda_function_aggregation,
      :code_repository_aggregation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AccountAggregation < AggregationRequest; end
      class AmiAggregation < AggregationRequest; end
      class AwsEcrContainerAggregation < AggregationRequest; end
      class Ec2InstanceAggregation < AggregationRequest; end
      class FindingTypeAggregation < AggregationRequest; end
      class ImageLayerAggregation < AggregationRequest; end
      class PackageAggregation < AggregationRequest; end
      class RepositoryAggregation < AggregationRequest; end
      class TitleAggregation < AggregationRequest; end
      class LambdaLayerAggregation < AggregationRequest; end
      class LambdaFunctionAggregation < AggregationRequest; end
      class CodeRepositoryAggregation < AggregationRequest; end
      class Unknown < AggregationRequest; end
    end

    # A structure that contains details about the results of an aggregation
    # type.
    #
    # @note AggregationResponse is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AggregationResponse corresponding to the set member.
    #
    # @!attribute [rw] account_aggregation
    #   An object that contains details about an aggregation response based
    #   on Amazon Web Services account IDs.
    #   @return [Types::AccountAggregationResponse]
    #
    # @!attribute [rw] ami_aggregation
    #   An object that contains details about an aggregation response based
    #   on Amazon Machine Images (AMIs).
    #   @return [Types::AmiAggregationResponse]
    #
    # @!attribute [rw] aws_ecr_container_aggregation
    #   An object that contains details about an aggregation response based
    #   on Amazon ECR container images.
    #   @return [Types::AwsEcrContainerAggregationResponse]
    #
    # @!attribute [rw] ec2_instance_aggregation
    #   An object that contains details about an aggregation response based
    #   on Amazon EC2 instances.
    #   @return [Types::Ec2InstanceAggregationResponse]
    #
    # @!attribute [rw] finding_type_aggregation
    #   An object that contains details about an aggregation response based
    #   on finding types.
    #   @return [Types::FindingTypeAggregationResponse]
    #
    # @!attribute [rw] image_layer_aggregation
    #   An object that contains details about an aggregation response based
    #   on container image layers.
    #   @return [Types::ImageLayerAggregationResponse]
    #
    # @!attribute [rw] package_aggregation
    #   An object that contains details about an aggregation response based
    #   on operating system package type.
    #   @return [Types::PackageAggregationResponse]
    #
    # @!attribute [rw] repository_aggregation
    #   An object that contains details about an aggregation response based
    #   on Amazon ECR repositories.
    #   @return [Types::RepositoryAggregationResponse]
    #
    # @!attribute [rw] title_aggregation
    #   An object that contains details about an aggregation response based
    #   on finding title.
    #   @return [Types::TitleAggregationResponse]
    #
    # @!attribute [rw] lambda_layer_aggregation
    #   An aggregation of findings by Amazon Web Services Lambda layer.
    #   @return [Types::LambdaLayerAggregationResponse]
    #
    # @!attribute [rw] lambda_function_aggregation
    #   An aggregation of findings by Amazon Web Services Lambda function.
    #   @return [Types::LambdaFunctionAggregationResponse]
    #
    # @!attribute [rw] code_repository_aggregation
    #   An object that contains details about an aggregation response based
    #   on code repositories.
    #   @return [Types::CodeRepositoryAggregationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AggregationResponse AWS API Documentation
    #
    class AggregationResponse < Struct.new(
      :account_aggregation,
      :ami_aggregation,
      :aws_ecr_container_aggregation,
      :ec2_instance_aggregation,
      :finding_type_aggregation,
      :image_layer_aggregation,
      :package_aggregation,
      :repository_aggregation,
      :title_aggregation,
      :lambda_layer_aggregation,
      :lambda_function_aggregation,
      :code_repository_aggregation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AccountAggregation < AggregationResponse; end
      class AmiAggregation < AggregationResponse; end
      class AwsEcrContainerAggregation < AggregationResponse; end
      class Ec2InstanceAggregation < AggregationResponse; end
      class FindingTypeAggregation < AggregationResponse; end
      class ImageLayerAggregation < AggregationResponse; end
      class PackageAggregation < AggregationResponse; end
      class RepositoryAggregation < AggregationResponse; end
      class TitleAggregation < AggregationResponse; end
      class LambdaLayerAggregation < AggregationResponse; end
      class LambdaFunctionAggregation < AggregationResponse; end
      class CodeRepositoryAggregation < AggregationResponse; end
      class Unknown < AggregationResponse; end
    end

    # The details that define an aggregation based on Amazon machine images
    # (AMIs).
    #
    # @!attribute [rw] amis
    #   The IDs of AMIs to aggregate findings for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AmiAggregation AWS API Documentation
    #
    class AmiAggregation < Struct.new(
      :amis,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by AMI.
    #
    # @!attribute [rw] ami
    #   The ID of the AMI that findings were aggregated for.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the AMI.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] affected_instances
    #   The IDs of Amazon EC2 instances using this AMI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AmiAggregationResponse AWS API Documentation
    #
    class AmiAggregationResponse < Struct.new(
      :ami,
      :account_id,
      :severity_counts,
      :affected_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a request to associate a code repository with a
    # scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Identifies a specific resource in a code repository that will be
    #   scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AssociateConfigurationRequest AWS API Documentation
    #
    class AssociateConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member account to be
    #   associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AssociateMemberRequest AWS API Documentation
    #
    class AssociateMemberRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the successfully associated
    #   member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AssociateMemberResponse AWS API Documentation
    #
    class AssociateMemberResponse < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Threat Intel Group (ATIG) details for a
    # specific vulnerability.
    #
    # @!attribute [rw] first_seen
    #   The date and time this vulnerability was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] last_seen
    #   The date and time this vulnerability was last observed.
    #   @return [Time]
    #
    # @!attribute [rw] targets
    #   The commercial sectors this vulnerability targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ttps
    #   The [MITRE ATT&amp;CK][1] tactics, techniques, and procedures (TTPs)
    #   associated with vulnerability.
    #
    #
    #
    #   [1]: https://attack.mitre.org/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AtigData AWS API Documentation
    #
    class AtigData < Struct.new(
      :first_seen,
      :last_seen,
      :targets,
      :ttps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents which scan types are automatically enabled for new members
    # of your Amazon Inspector organization.
    #
    # @!attribute [rw] ec2
    #   Represents whether Amazon EC2 scans are automatically enabled for
    #   new members of your Amazon Inspector organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] ecr
    #   Represents whether Amazon ECR scans are automatically enabled for
    #   new members of your Amazon Inspector organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda
    #   Represents whether Amazon Web Services Lambda standard scans are
    #   automatically enabled for new members of your Amazon Inspector
    #   organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_code
    #   Represents whether Lambda code scans are automatically enabled for
    #   new members of your Amazon Inspector organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] code_repository
    #   Represents whether code repository scans are automatically enabled
    #   for new members of your Amazon Inspector organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AutoEnable AWS API Documentation
    #
    class AutoEnable < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Amazon EC2 instance involved in a finding.
    #
    # @!attribute [rw] type
    #   The type of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The image ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IPv4 addresses of the Amazon EC2 instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses of the Amazon EC2 instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair used to launch the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM instance profile ARN of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   The date and time the Amazon EC2 instance was launched at.
    #   @return [Time]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEc2InstanceDetails AWS API Documentation
    #
    class AwsEc2InstanceDetails < Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation of information about Amazon ECR containers.
    #
    # @!attribute [rw] resource_ids
    #   The container resource IDs.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] image_shas
    #   The image SHA values.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] repositories
    #   The container repositories.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] architectures
    #   The architecture of the containers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] image_tags
    #   The image tags.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort by.
    #   @return [String]
    #
    # @!attribute [rw] last_in_use_at
    #   The last time an Amazon ECR image was used in an Amazon ECS task or
    #   Amazon EKS pod.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] in_use_count
    #   The number of Amazon ECS tasks or Amazon EKS pods where the Amazon
    #   ECR container image is in use.
    #   @return [Array<Types::NumberFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerAggregation AWS API Documentation
    #
    class AwsEcrContainerAggregation < Struct.new(
      :resource_ids,
      :image_shas,
      :repositories,
      :architectures,
      :image_tags,
      :sort_order,
      :sort_by,
      :last_in_use_at,
      :in_use_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation of information about Amazon ECR containers.
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the container.
    #   @return [String]
    #
    # @!attribute [rw] image_sha
    #   The SHA value of the container image.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The container repository.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the container.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The container image stags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the account that owns the
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   The number of finding by severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] last_in_use_at
    #   The last time an Amazon ECR image was used in an Amazon ECS task or
    #   Amazon EKS pod.
    #   @return [Time]
    #
    # @!attribute [rw] in_use_count
    #   The number of Amazon ECS tasks or Amazon EKS pods where the Amazon
    #   ECR container image is in use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerAggregationResponse AWS API Documentation
    #
    class AwsEcrContainerAggregationResponse < Struct.new(
      :resource_id,
      :image_sha,
      :repository,
      :architecture,
      :image_tags,
      :account_id,
      :severity_counts,
      :last_in_use_at,
      :in_use_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image details of the Amazon ECR container image.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository the Amazon ECR container image resides
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The image tags attached to the Amazon ECR container image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pushed_at
    #   The date and time the Amazon ECR container image was pushed.
    #   @return [Time]
    #
    # @!attribute [rw] author
    #   The image author of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] image_hash
    #   The image hash of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] registry
    #   The registry for the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] last_in_use_at
    #   The last time an Amazon ECR image was used in an Amazon ECS task or
    #   Amazon EKS pod.
    #   @return [Time]
    #
    # @!attribute [rw] in_use_count
    #   The number of Amazon ECS tasks or Amazon EKS pods where the Amazon
    #   ECR container image is in use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerImageDetails AWS API Documentation
    #
    class AwsEcrContainerImageDetails < Struct.new(
      :repository_name,
      :image_tags,
      :pushed_at,
      :author,
      :architecture,
      :image_hash,
      :registry,
      :platform,
      :last_in_use_at,
      :in_use_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about tasks where an image was in use.
    #
    # @!attribute [rw] details_group
    #   The details group information for a task in a cluster.
    #   @return [String]
    #
    # @!attribute [rw] task_definition_arn
    #   The task definition ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcsMetadataDetails AWS API Documentation
    #
    class AwsEcsMetadataDetails < Struct.new(
      :details_group,
      :task_definition_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for an Amazon EKS pod where an Amazon ECR image is in
    # use.
    #
    # @!attribute [rw] namespace
    #   The namespace for an Amazon EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] workload_info_list
    #   The list of workloads.
    #   @return [Array<Types::AwsEksWorkloadInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEksMetadataDetails AWS API Documentation
    #
    class AwsEksMetadataDetails < Struct.new(
      :namespace,
      :workload_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the workload.
    #
    # @!attribute [rw] name
    #   The name of the workload.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The workload type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEksWorkloadInfo AWS API Documentation
    #
    class AwsEksWorkloadInfo < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about the Amazon Web Services Lambda
    # function.
    #
    # @!attribute [rw] function_name
    #   The name of the Amazon Web Services Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Amazon Web Services Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the Amazon Web Services Lambda function's
    #   deployment package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Amazon Web Services Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Web Services Lambda function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The Amazon Web Services Lambda function's [ layers][1]. A Lambda
    #   function can have up to five layers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_config
    #   The Amazon Web Services Lambda function's networking configuration.
    #   @return [Types::LambdaVpcConfig]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set `Zip` for .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the Amazon Web Services Lambda
    #   function supports. Architecture is a string array with one of the
    #   valid values. The default architecture value is `x86_64`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1]
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsLambdaFunctionDetails AWS API Documentation
    #
    class AwsLambdaFunctionDetails < Struct.new(
      :function_name,
      :runtime,
      :code_sha_256,
      :version,
      :execution_role_arn,
      :layers,
      :vpc_config,
      :package_type,
      :architectures,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more tags submitted as part of the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_configuration_requests
    #   A list of code repositories to associate with the specified scan
    #   configuration.
    #   @return [Array<Types::AssociateConfigurationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchAssociateCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class BatchAssociateCodeSecurityScanConfigurationRequest < Struct.new(
      :associate_configuration_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_associations
    #   Details of any code repositories that failed to be associated with
    #   the scan configuration.
    #   @return [Array<Types::FailedAssociationResult>]
    #
    # @!attribute [rw] successful_associations
    #   Details of code repositories that were successfully associated with
    #   the scan configuration.
    #   @return [Array<Types::SuccessfulAssociationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchAssociateCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class BatchAssociateCodeSecurityScanConfigurationResponse < Struct.new(
      :failed_associations,
      :successful_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disassociate_configuration_requests
    #   A list of code repositories to disassociate from the specified scan
    #   configuration.
    #   @return [Array<Types::DisassociateConfigurationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchDisassociateCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class BatchDisassociateCodeSecurityScanConfigurationRequest < Struct.new(
      :disassociate_configuration_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_associations
    #   Details of any code repositories that failed to be disassociated
    #   from the scan configuration.
    #   @return [Array<Types::FailedAssociationResult>]
    #
    # @!attribute [rw] successful_associations
    #   Details of code repositories that were successfully disassociated
    #   from the scan configuration.
    #   @return [Array<Types::SuccessfulAssociationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchDisassociateCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class BatchDisassociateCodeSecurityScanConfigurationResponse < Struct.new(
      :failed_associations,
      :successful_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The 12-digit Amazon Web Services account IDs of the accounts to
    #   retrieve Amazon Inspector status for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetAccountStatusRequest AWS API Documentation
    #
    class BatchGetAccountStatusRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   An array of objects that provide details on the status of Amazon
    #   Inspector for each of the requested accounts.
    #   @return [Array<Types::AccountState>]
    #
    # @!attribute [rw] failed_accounts
    #   An array of objects detailing any accounts that failed to enable
    #   Amazon Inspector and why.
    #   @return [Array<Types::FailedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetAccountStatusResponse AWS API Documentation
    #
    class BatchGetAccountStatusResponse < Struct.new(
      :accounts,
      :failed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_arns
    #   An array of finding ARNs for the findings you want to retrieve code
    #   snippets from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetCodeSnippetRequest AWS API Documentation
    #
    class BatchGetCodeSnippetRequest < Struct.new(
      :finding_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_snippet_results
    #   The retrieved code snippets associated with the provided finding
    #   ARNs.
    #   @return [Array<Types::CodeSnippetResult>]
    #
    # @!attribute [rw] errors
    #   Any errors Amazon Inspector encountered while trying to retrieve the
    #   requested code snippets.
    #   @return [Array<Types::CodeSnippetError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetCodeSnippetResponse AWS API Documentation
    #
    class BatchGetCodeSnippetResponse < Struct.new(
      :code_snippet_results,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_arns
    #   A list of finding ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFindingDetailsRequest AWS API Documentation
    #
    class BatchGetFindingDetailsRequest < Struct.new(
      :finding_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_details
    #   A finding's vulnerability details.
    #   @return [Array<Types::FindingDetail>]
    #
    # @!attribute [rw] errors
    #   Error information for findings that details could not be returned
    #   for.
    #   @return [Array<Types::FindingDetailsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFindingDetailsResponse AWS API Documentation
    #
    class BatchGetFindingDetailsResponse < Struct.new(
      :finding_details,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The account IDs to get free trial status for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFreeTrialInfoRequest AWS API Documentation
    #
    class BatchGetFreeTrialInfoRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   An array of objects that provide Amazon Inspector free trial details
    #   for each of the requested accounts.
    #   @return [Array<Types::FreeTrialAccountInfo>]
    #
    # @!attribute [rw] failed_accounts
    #   An array of objects detailing any accounts that free trial data
    #   could not be returned for.
    #   @return [Array<Types::FreeTrialInfoError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFreeTrialInfoResponse AWS API Documentation
    #
    class BatchGetFreeTrialInfoResponse < Struct.new(
      :accounts,
      :failed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The unique identifiers for the Amazon Web Services accounts to
    #   retrieve Amazon Inspector deep inspection activation status for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetMemberEc2DeepInspectionStatusRequest AWS API Documentation
    #
    class BatchGetMemberEc2DeepInspectionStatusRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   An array of objects that provide details on the activation status of
    #   Amazon Inspector deep inspection for each of the requested accounts.
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatusState>]
    #
    # @!attribute [rw] failed_account_ids
    #   An array of objects that provide details on any accounts that failed
    #   to activate Amazon Inspector deep inspection and why.
    #   @return [Array<Types::FailedMemberAccountEc2DeepInspectionStatusState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetMemberEc2DeepInspectionStatusResponse AWS API Documentation
    #
    class BatchGetMemberEc2DeepInspectionStatusResponse < Struct.new(
      :account_ids,
      :failed_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The unique identifiers for the Amazon Web Services accounts to
    #   change Amazon Inspector deep inspection status for.
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchUpdateMemberEc2DeepInspectionStatusRequest AWS API Documentation
    #
    class BatchUpdateMemberEc2DeepInspectionStatusRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   An array of objects that provide details for each of the accounts
    #   that Amazon Inspector deep inspection status was successfully
    #   changed for.
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatusState>]
    #
    # @!attribute [rw] failed_account_ids
    #   An array of objects that provide details for each of the accounts
    #   that Amazon Inspector deep inspection status could not be
    #   successfully changed for.
    #   @return [Array<Types::FailedMemberAccountEc2DeepInspectionStatusState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchUpdateMemberEc2DeepInspectionStatusResponse AWS API Documentation
    #
    class BatchUpdateMemberEc2DeepInspectionStatusResponse < Struct.new(
      :account_ids,
      :failed_account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The ID of the report to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelFindingsReportRequest AWS API Documentation
    #
    class CancelFindingsReportRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The ID of the canceled report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelFindingsReportResponse AWS API Documentation
    #
    class CancelFindingsReportResponse < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The report ID of the SBOM export to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelSbomExportRequest AWS API Documentation
    #
    class CancelSbomExportRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The report ID of the canceled SBOM export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelSbomExportResponse AWS API Documentation
    #
    class CancelSbomExportResponse < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CIS check.
    #
    # @!attribute [rw] scan_arn
    #   The scan ARN for the CIS check scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] check_id
    #   The check ID for the CIS check.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The CIS check title.
    #   @return [String]
    #
    # @!attribute [rw] check_description
    #   The description for the CIS check.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The CIS check level.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID for the CIS check.
    #   @return [String]
    #
    # @!attribute [rw] status_counts
    #   The CIS check status counts.
    #   @return [Types::StatusCounts]
    #
    # @!attribute [rw] platform
    #   The CIS check platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisCheckAggregation AWS API Documentation
    #
    class CisCheckAggregation < Struct.new(
      :scan_arn,
      :check_id,
      :title,
      :check_description,
      :level,
      :account_id,
      :status_counts,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS date filter.
    #
    # @!attribute [rw] earliest_scan_start_time
    #   The CIS date filter's earliest scan start time.
    #   @return [Time]
    #
    # @!attribute [rw] latest_scan_start_time
    #   The CIS date filter's latest scan start time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisDateFilter AWS API Documentation
    #
    class CisDateFilter < Struct.new(
      :earliest_scan_start_time,
      :latest_scan_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS finding status filter.
    #
    # @!attribute [rw] comparison
    #   The comparison value of the CIS finding status filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CIS finding status filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisFindingStatusFilter AWS API Documentation
    #
    class CisFindingStatusFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS number filter.
    #
    # @!attribute [rw] upper_inclusive
    #   The CIS number filter's upper inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] lower_inclusive
    #   The CIS number filter's lower inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisNumberFilter AWS API Documentation
    #
    class CisNumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS result status filter.
    #
    # @!attribute [rw] comparison
    #   The comparison value of the CIS result status filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CIS result status filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisResultStatusFilter AWS API Documentation
    #
    class CisResultStatusFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS scan.
    #
    # @!attribute [rw] scan_arn
    #   The CIS scan's ARN.
    #   @return [String]
    #
    # @!attribute [rw] scan_configuration_arn
    #   The CIS scan's configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The CIS scan's status.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The the name of the scan configuration that's associated with this
    #   scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_date
    #   The CIS scan's date.
    #   @return [Time]
    #
    # @!attribute [rw] failed_checks
    #   The CIS scan's failed checks.
    #   @return [Integer]
    #
    # @!attribute [rw] total_checks
    #   The CIS scan's total checks.
    #   @return [Integer]
    #
    # @!attribute [rw] targets
    #   The CIS scan's targets.
    #   @return [Types::CisTargets]
    #
    # @!attribute [rw] scheduled_by
    #   The account or organization that schedules the CIS scan.
    #   @return [String]
    #
    # @!attribute [rw] security_level
    #   The security level for the CIS scan. Security level refers to the
    #   Benchmark levels that CIS assigns to a profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScan AWS API Documentation
    #
    class CisScan < Struct.new(
      :scan_arn,
      :scan_configuration_arn,
      :status,
      :scan_name,
      :scan_date,
      :failed_checks,
      :total_checks,
      :targets,
      :scheduled_by,
      :security_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The CIS scan configuration's scan configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The CIS scan configuration's owner ID.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the CIS scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_level
    #   The CIS scan configuration's security level.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The CIS scan configuration's schedule.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] targets
    #   The CIS scan configuration's targets.
    #   @return [Types::CisTargets]
    #
    # @!attribute [rw] tags
    #   The CIS scan configuration's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanConfiguration AWS API Documentation
    #
    class CisScanConfiguration < Struct.new(
      :scan_configuration_arn,
      :owner_id,
      :scan_name,
      :security_level,
      :schedule,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS scan result details.
    #
    # @!attribute [rw] scan_arn
    #   The CIS scan result details' scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The CIS scan result details' account ID.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_id
    #   The CIS scan result details' target resource ID.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The CIS scan result details' platform.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The CIS scan result details' status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The CIS scan result details' status reason.
    #   @return [String]
    #
    # @!attribute [rw] check_id
    #   The CIS scan result details' check ID.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The CIS scan result details' title.
    #   @return [String]
    #
    # @!attribute [rw] check_description
    #   The account ID that's associated with the CIS scan result details.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The CIS scan result details' remediation.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The CIS scan result details' level.
    #   @return [String]
    #
    # @!attribute [rw] finding_arn
    #   The CIS scan result details' finding ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanResultDetails AWS API Documentation
    #
    class CisScanResultDetails < Struct.new(
      :scan_arn,
      :account_id,
      :target_resource_id,
      :platform,
      :status,
      :status_reason,
      :check_id,
      :title,
      :check_description,
      :remediation,
      :level,
      :finding_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS scan result details filter criteria.
    #
    # @!attribute [rw] finding_status_filters
    #   The criteria's finding status filters.
    #   @return [Array<Types::CisFindingStatusFilter>]
    #
    # @!attribute [rw] check_id_filters
    #   The criteria's check ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] title_filters
    #   The criteria's title filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] security_level_filters
    #   The criteria's security level filters. . Security level refers to
    #   the Benchmark levels that CIS assigns to a profile.
    #   @return [Array<Types::CisSecurityLevelFilter>]
    #
    # @!attribute [rw] finding_arn_filters
    #   The criteria's finding ARN filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanResultDetailsFilterCriteria AWS API Documentation
    #
    class CisScanResultDetailsFilterCriteria < Struct.new(
      :finding_status_filters,
      :check_id_filters,
      :title_filters,
      :security_level_filters,
      :finding_arn_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scan results aggregated by checks filter criteria.
    #
    # @!attribute [rw] account_id_filters
    #   The criteria's account ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] check_id_filters
    #   The criteria's check ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] title_filters
    #   The criteria's title filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] platform_filters
    #   The criteria's platform filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] failed_resources_filters
    #   The criteria's failed resources filters.
    #   @return [Array<Types::CisNumberFilter>]
    #
    # @!attribute [rw] security_level_filters
    #   The criteria's security level filters.
    #   @return [Array<Types::CisSecurityLevelFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanResultsAggregatedByChecksFilterCriteria AWS API Documentation
    #
    class CisScanResultsAggregatedByChecksFilterCriteria < Struct.new(
      :account_id_filters,
      :check_id_filters,
      :title_filters,
      :platform_filters,
      :failed_resources_filters,
      :security_level_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scan results aggregated by target resource filter criteria.
    #
    # @!attribute [rw] account_id_filters
    #   The criteria's account ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] status_filters
    #   The criteria's status filter.
    #   @return [Array<Types::CisResultStatusFilter>]
    #
    # @!attribute [rw] check_id_filters
    #   The criteria's check ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] target_resource_id_filters
    #   The criteria's target resource ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] target_resource_tag_filters
    #   The criteria's target resource tag filters.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] platform_filters
    #   The criteria's platform filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] target_status_filters
    #   The criteria's target status filters.
    #   @return [Array<Types::CisTargetStatusFilter>]
    #
    # @!attribute [rw] target_status_reason_filters
    #   The criteria's target status reason filters.
    #   @return [Array<Types::CisTargetStatusReasonFilter>]
    #
    # @!attribute [rw] failed_checks_filters
    #   The criteria's failed checks filters.
    #   @return [Array<Types::CisNumberFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanResultsAggregatedByTargetResourceFilterCriteria AWS API Documentation
    #
    class CisScanResultsAggregatedByTargetResourceFilterCriteria < Struct.new(
      :account_id_filters,
      :status_filters,
      :check_id_filters,
      :target_resource_id_filters,
      :target_resource_tag_filters,
      :platform_filters,
      :target_status_filters,
      :target_status_reason_filters,
      :failed_checks_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS scan status filter.
    #
    # @!attribute [rw] comparison
    #   The filter comparison value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisScanStatusFilter AWS API Documentation
    #
    class CisScanStatusFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS security level filter. Security level refers to the Benchmark
    # levels that CIS assigns to a profile.
    #
    # @!attribute [rw] comparison
    #   The CIS security filter comparison value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The CIS security filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisSecurityLevelFilter AWS API Documentation
    #
    class CisSecurityLevelFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS session message.
    #
    # @!attribute [rw] rule_id
    #   The rule ID for the CIS session message.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the CIS session message.
    #   @return [String]
    #
    # @!attribute [rw] cis_rule_details
    #   The CIS rule details for the CIS session message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisSessionMessage AWS API Documentation
    #
    class CisSessionMessage < Struct.new(
      :rule_id,
      :status,
      :cis_rule_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS string filter.
    #
    # @!attribute [rw] comparison
    #   The comparison value of the CIS string filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CIS string filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisStringFilter AWS API Documentation
    #
    class CisStringFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS target resource aggregation.
    #
    # @!attribute [rw] scan_arn
    #   The scan ARN for the CIS target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_id
    #   The ID of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID for the CIS target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_tags
    #   The tag for the target resource.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] status_counts
    #   The target resource status counts.
    #   @return [Types::StatusCounts]
    #
    # @!attribute [rw] platform
    #   The platform for the CIS target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The status of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_status_reason
    #   The reason for the target resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisTargetResourceAggregation AWS API Documentation
    #
    class CisTargetResourceAggregation < Struct.new(
      :scan_arn,
      :target_resource_id,
      :account_id,
      :target_resource_tags,
      :status_counts,
      :platform,
      :target_status,
      :target_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS target status filter.
    #
    # @!attribute [rw] comparison
    #   The comparison value of the CIS target status filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CIS target status filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisTargetStatusFilter AWS API Documentation
    #
    class CisTargetStatusFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS target status reason filter.
    #
    # @!attribute [rw] comparison
    #   The comparison value of the CIS target status reason filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the CIS target status reason filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisTargetStatusReasonFilter AWS API Documentation
    #
    class CisTargetStatusReasonFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIS targets.
    #
    # @!attribute [rw] account_ids
    #   The CIS target account ids.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_resource_tags
    #   The CIS target resource tags.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisTargets AWS API Documentation
    #
    class CisTargets < Struct.new(
      :account_ids,
      :target_resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Cybersecurity and Infrastructure Security Agency (CISA) details
    # for a specific vulnerability.
    #
    # @!attribute [rw] date_added
    #   The date and time CISA added this vulnerability to their catalogue.
    #   @return [Time]
    #
    # @!attribute [rw] date_due
    #   The date and time CISA expects a fix to have been provided
    #   vulnerability.
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The remediation action recommended by CISA for this vulnerability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisaData AWS API Documentation
    #
    class CisaData < Struct.new(
      :date_added,
      :date_due,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the task or pod in the cluster.
    #
    # @!attribute [rw] last_in_use
    #   The last timestamp when Amazon Inspector recorded the image in use
    #   in the task or pod in the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] running_unit_count
    #   The number of tasks or pods where an image was running on the
    #   cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_unit_count
    #   The number of tasks or pods where an image was stopped on the
    #   cluster in the last 24 hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_metadata
    #   The metadata for a cluster.
    #   @return [Types::ClusterMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ClusterDetails AWS API Documentation
    #
    class ClusterDetails < Struct.new(
      :last_in_use,
      :running_unit_count,
      :stopped_unit_count,
      :cluster_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter criteria to be used.
    #
    # @!attribute [rw] resource_id
    #   The resource Id to be used in the filter criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ClusterForImageFilterCriteria AWS API Documentation
    #
    class ClusterForImageFilterCriteria < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The cluster ARN.
    #   @return [String]
    #
    # @!attribute [rw] cluster_details
    #   Details about the cluster.
    #   @return [Array<Types::ClusterDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ClusterInformation AWS API Documentation
    #
    class ClusterInformation < Struct.new(
      :cluster_arn,
      :cluster_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for a cluster.
    #
    # @note ClusterMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ClusterMetadata corresponding to the set member.
    #
    # @!attribute [rw] aws_ecs_metadata_details
    #   The details for an Amazon ECS cluster in the cluster metadata.
    #   @return [Types::AwsEcsMetadataDetails]
    #
    # @!attribute [rw] aws_eks_metadata_details
    #   The details for an Amazon EKS cluster in the cluster metadata.
    #   @return [Types::AwsEksMetadataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ClusterMetadata AWS API Documentation
    #
    class ClusterMetadata < Struct.new(
      :aws_ecs_metadata_details,
      :aws_eks_metadata_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsEcsMetadataDetails < ClusterMetadata; end
      class AwsEksMetadataDetails < ClusterMetadata; end
      class Unknown < ClusterMetadata; end
    end

    # Contains information on where a code vulnerability is located in your
    # Lambda function.
    #
    # @!attribute [rw] file_name
    #   The name of the file the code vulnerability was found in.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file path to the code that a vulnerability was found in.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   The line number of the first line of code that a vulnerability was
    #   found in.
    #   @return [Integer]
    #
    # @!attribute [rw] end_line
    #   The line number of the last line of code that a vulnerability was
    #   found in.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeFilePath AWS API Documentation
    #
    class CodeFilePath < Struct.new(
      :file_name,
      :file_path,
      :start_line,
      :end_line)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the lines of code associated with a code
    # snippet.
    #
    # @!attribute [rw] content
    #   The content of a line of code
    #   @return [String]
    #
    # @!attribute [rw] line_number
    #   The line number that a section of code is located at.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeLine AWS API Documentation
    #
    class CodeLine < Struct.new(
      :content,
      :line_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on code repositories.
    #
    # @!attribute [rw] project_names
    #   The project names to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] provider_types
    #   The repository provider types to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by (ascending or descending) in the code
    #   repository aggregation.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by in the code repository aggregation.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeRepositoryAggregation AWS API Documentation
    #
    class CodeRepositoryAggregation < Struct.new(
      :project_names,
      :provider_types,
      :sort_order,
      :sort_by,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by code
    # repository.
    #
    # @!attribute [rw] project_names
    #   The names of the projects associated with the code repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of repository provider for the code repository.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the counts of aggregated finding per
    #   severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] exploit_available_active_findings_count
    #   The number of active findings that have an exploit available for the
    #   code repository.
    #   @return [Integer]
    #
    # @!attribute [rw] fix_available_active_findings_count
    #   The number of active findings that have a fix available for the code
    #   repository.
    #   @return [Integer]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the code
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the code repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeRepositoryAggregationResponse AWS API Documentation
    #
    class CodeRepositoryAggregationResponse < Struct.new(
      :project_names,
      :provider_type,
      :severity_counts,
      :exploit_available_active_findings_count,
      :fix_available_active_findings_count,
      :account_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a code repository associated with a finding.
    #
    # @!attribute [rw] project_name
    #   The name of the project in the code repository.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration
    #   associated with the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of repository provider (such as GitHub, GitLab, etc.).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeRepositoryDetails AWS API Documentation
    #
    class CodeRepositoryDetails < Struct.new(
      :project_name,
      :integration_arn,
      :provider_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata information about a code repository that is being
    # scanned by Amazon Inspector.
    #
    # @!attribute [rw] project_name
    #   The name of the project in the code repository.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration
    #   associated with the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of repository provider (such as GitHub, GitLab, etc.).
    #   @return [String]
    #
    # @!attribute [rw] provider_type_visibility
    #   The visibility setting of the repository (public or private).
    #   @return [String]
    #
    # @!attribute [rw] last_scanned_commit_id
    #   The ID of the last commit that was scanned in the repository.
    #   @return [String]
    #
    # @!attribute [rw] scan_configuration
    #   The scan configuration settings applied to the code repository.
    #   @return [Types::ProjectCodeSecurityScanConfiguration]
    #
    # @!attribute [rw] on_demand_scan
    #   Information about on-demand scans performed on the repository.
    #   @return [Types::CodeRepositoryOnDemandScan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeRepositoryMetadata AWS API Documentation
    #
    class CodeRepositoryMetadata < Struct.new(
      :project_name,
      :integration_arn,
      :provider_type,
      :provider_type_visibility,
      :last_scanned_commit_id,
      :scan_configuration,
      :on_demand_scan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about on-demand scans performed on a code
    # repository.
    #
    # @!attribute [rw] last_scanned_commit_id
    #   The ID of the last commit that was scanned during an on-demand scan.
    #   @return [String]
    #
    # @!attribute [rw] last_scan_at
    #   The timestamp when the last on-demand scan was performed.
    #   @return [Time]
    #
    # @!attribute [rw] scan_status
    #   The status of the scan.
    #   @return [Types::ScanStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeRepositoryOnDemandScan AWS API Documentation
    #
    class CodeRepositoryOnDemandScan < Struct.new(
      :last_scanned_commit_id,
      :last_scan_at,
      :scan_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a code security integration.
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of repository provider for the integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The timestamp when the code security integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_on
    #   The timestamp when the code security integration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the code security integration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSecurityIntegrationSummary AWS API Documentation
    #
    class CodeSecurityIntegrationSummary < Struct.new(
      :integration_arn,
      :name,
      :type,
      :status,
      :status_reason,
      :created_on,
      :last_update_on,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a specific resource in a code repository that will be
    # scanned.
    #
    # @note CodeSecurityResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CodeSecurityResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CodeSecurityResource corresponding to the set member.
    #
    # @!attribute [rw] project_id
    #   The unique identifier of the project in the code repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSecurityResource AWS API Documentation
    #
    class CodeSecurityResource < Struct.new(
      :project_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ProjectId < CodeSecurityResource; end
      class Unknown < CodeSecurityResource; end
    end

    # Contains the configuration settings for code security scans.
    #
    # @!attribute [rw] periodic_scan_configuration
    #   Configuration settings for periodic scans that run on a scheduled
    #   basis.
    #   @return [Types::PeriodicScanConfiguration]
    #
    # @!attribute [rw] continuous_integration_scan_configuration
    #   Configuration settings for continuous integration scans that run
    #   automatically when code changes are made.
    #   @return [Types::ContinuousIntegrationScanConfiguration]
    #
    # @!attribute [rw] rule_set_categories
    #   The categories of security rules to be applied during the scan.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSecurityScanConfiguration AWS API Documentation
    #
    class CodeSecurityScanConfiguration < Struct.new(
      :periodic_scan_configuration,
      :continuous_integration_scan_configuration,
      :rule_set_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an association between a code repository and a scan
    # configuration.
    #
    # @!attribute [rw] resource
    #   Identifies a specific resource in a code repository that will be
    #   scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSecurityScanConfigurationAssociationSummary AWS API Documentation
    #
    class CodeSecurityScanConfigurationAssociationSummary < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about a code security scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID that owns the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] periodic_scan_frequency
    #   The frequency at which periodic scans are performed.
    #   @return [String]
    #
    # @!attribute [rw] frequency_expression
    #   The schedule expression for periodic scans, in cron format.
    #   @return [String]
    #
    # @!attribute [rw] continuous_integration_scan_supported_events
    #   The repository events that trigger continuous integration scans.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_set_categories
    #   The categories of security rules applied during the scan.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope_settings
    #   The scope settings that define which repositories will be scanned.
    #   If the `ScopeSetting` parameter is `ALL` the scan configuration
    #   applies to all existing and future projects imported into Amazon
    #   Inspector.
    #   @return [Types::ScopeSettings]
    #
    # @!attribute [rw] tags
    #   The tags associated with the scan configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSecurityScanConfigurationSummary AWS API Documentation
    #
    class CodeSecurityScanConfigurationSummary < Struct.new(
      :scan_configuration_arn,
      :name,
      :owner_account_id,
      :periodic_scan_frequency,
      :frequency_expression,
      :continuous_integration_scan_supported_events,
      :rule_set_categories,
      :scope_settings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about any errors encountered while trying to
    # retrieve a code snippet.
    #
    # @!attribute [rw] finding_arn
    #   The ARN of the finding that a code snippet couldn't be retrieved
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for the error that prevented a code snippet from
    #   being retrieved.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message received when Amazon Inspector failed to retrieve
    #   a code snippet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSnippetError AWS API Documentation
    #
    class CodeSnippetError < Struct.new(
      :finding_arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a code snippet retrieved by Amazon Inspector
    # from a code vulnerability finding.
    #
    # @!attribute [rw] finding_arn
    #   The ARN of a finding that the code snippet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   The line number of the first line of a code snippet.
    #   @return [Integer]
    #
    # @!attribute [rw] end_line
    #   The line number of the last line of a code snippet.
    #   @return [Integer]
    #
    # @!attribute [rw] code_snippet
    #   Contains information on the retrieved code snippet.
    #   @return [Array<Types::CodeLine>]
    #
    # @!attribute [rw] suggested_fixes
    #   Details of a suggested code fix.
    #   @return [Array<Types::SuggestedFix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSnippetResult AWS API Documentation
    #
    class CodeSnippetResult < Struct.new(
      :finding_arn,
      :start_line,
      :end_line,
      :code_snippet,
      :suggested_fixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the code vulnerability identified in your
    # Lambda function.
    #
    # @!attribute [rw] file_path
    #   Contains information on where the code vulnerability is located in
    #   your code.
    #   @return [Types::CodeFilePath]
    #
    # @!attribute [rw] detector_tags
    #   The detector tag associated with the vulnerability. Detector tags
    #   group related vulnerabilities by common themes or tactics. For a
    #   list of available tags by programming language, see [Java tags][1],
    #   or [Python tags][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/detector-library/java/tags/
    #   [2]: https://docs.aws.amazon.com/codeguru/detector-library/python/tags/
    #   @return [Array<String>]
    #
    # @!attribute [rw] reference_urls
    #   A URL containing supporting documentation about the code
    #   vulnerability detected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_id
    #   The identifier for a rule that was used to detect the code
    #   vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] source_lambda_layer_arn
    #   The Amazon Resource Name (ARN) of the Lambda layer that the code
    #   vulnerability was detected in.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The ID for the Amazon CodeGuru detector associated with the finding.
    #   For more information on detectors see [Amazon CodeGuru Detector
    #   Library][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/detector-library
    #   @return [String]
    #
    # @!attribute [rw] detector_name
    #   The name of the detector used to identify the code vulnerability.
    #   For more information on detectors see [CodeGuru Detector
    #   Library][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/detector-library
    #   @return [String]
    #
    # @!attribute [rw] cwes
    #   The Common Weakness Enumeration (CWE) item associated with the
    #   detected vulnerability.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeVulnerabilityDetails AWS API Documentation
    #
    class CodeVulnerabilityDetails < Struct.new(
      :file_path,
      :detector_tags,
      :reference_urls,
      :rule_id,
      :source_lambda_layer_arn,
      :detector_id,
      :detector_name,
      :cwes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A compute platform.
    #
    # @!attribute [rw] vendor
    #   The compute platform vendor.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   The compute platform product.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The compute platform version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ComputePlatform AWS API Documentation
    #
    class ComputePlatform < Struct.new(
      :vendor,
      :product,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict occurred. This exception occurs when the same resource is
    # being modified by concurrent requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for continuous integration scans that run
    # automatically when code changes are made.
    #
    # @!attribute [rw] supported_events
    #   The repository events that trigger continuous integration scans,
    #   such as pull requests or commits.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ContinuousIntegrationScanConfiguration AWS API Documentation
    #
    class ContinuousIntegrationScanConfiguration < Struct.new(
      :supported_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # a structure that contains information on the count of resources within
    # a group.
    #
    # @!attribute [rw] count
    #   The number of resources.
    #   @return [Integer]
    #
    # @!attribute [rw] group_key
    #   The key associated with this group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Counts AWS API Documentation
    #
    class Counts < Struct.new(
      :count,
      :group_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of a coverage date filter.
    #
    # @!attribute [rw] start_inclusive
    #   A timestamp representing the start of the time period to filter
    #   results by.
    #   @return [Time]
    #
    # @!attribute [rw] end_inclusive
    #   A timestamp representing the end of the time period to filter
    #   results by.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageDateFilter AWS API Documentation
    #
    class CoverageDateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that identifies filter criteria for
    # `GetCoverageStatistics`.
    #
    # @!attribute [rw] scan_status_code
    #   The scan status code to filter on. Valid values are:
    #   `ValidationException`, `InternalServerException`,
    #   `ResourceNotFoundException`, `BadRequestException`, and
    #   `ThrottlingException`.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] scan_status_reason
    #   The scan status reason to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] account_id
    #   An array of Amazon Web Services account IDs to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] resource_id
    #   An array of Amazon Web Services resource IDs to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] resource_type
    #   An array of Amazon Web Services resource types to return coverage
    #   statistics for. The values can be `AWS_EC2_INSTANCE`,
    #   `AWS_LAMBDA_FUNCTION`, `AWS_ECR_CONTAINER_IMAGE`,
    #   `AWS_ECR_REPOSITORY` or `AWS_ACCOUNT`.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] scan_type
    #   An array of Amazon Inspector scan types to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] ecr_repository_name
    #   The Amazon ECR repository name to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] ecr_image_tags
    #   The Amazon ECR image tags to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] ec2_instance_tags
    #   The Amazon EC2 instance tags to filter on.
    #   @return [Array<Types::CoverageMapFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   Returns coverage statistics for Amazon Web Services Lambda functions
    #   filtered by function names.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] lambda_function_tags
    #   Returns coverage statistics for Amazon Web Services Lambda functions
    #   filtered by tag.
    #   @return [Array<Types::CoverageMapFilter>]
    #
    # @!attribute [rw] lambda_function_runtime
    #   Returns coverage statistics for Amazon Web Services Lambda functions
    #   filtered by runtime.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] last_scanned_at
    #   Filters Amazon Web Services resources based on whether Amazon
    #   Inspector has checked them for vulnerabilities within the specified
    #   time range.
    #   @return [Array<Types::CoverageDateFilter>]
    #
    # @!attribute [rw] scan_mode
    #   The filter to search for Amazon EC2 instance coverage by scan mode.
    #   Valid values are `EC2_SSM_AGENT_BASED` and `EC2_AGENTLESS`.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] image_pulled_at
    #   The date an image was last pulled at.
    #   @return [Array<Types::CoverageDateFilter>]
    #
    # @!attribute [rw] ecr_image_last_in_use_at
    #   The Amazon ECR image that was last in use.
    #   @return [Array<Types::CoverageDateFilter>]
    #
    # @!attribute [rw] ecr_image_in_use_count
    #   The number of Amazon ECR images in use.
    #   @return [Array<Types::CoverageNumberFilter>]
    #
    # @!attribute [rw] code_repository_project_name
    #   Filter criteria for code repositories based on project name.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] code_repository_provider_type
    #   Filter criteria for code repositories based on provider type (such
    #   as GitHub, GitLab, etc.).
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] code_repository_provider_type_visibility
    #   Filter criteria for code repositories based on visibility setting
    #   (public or private).
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] last_scanned_commit_id
    #   Filter criteria for code repositories based on the ID of the last
    #   scanned commit.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageFilterCriteria AWS API Documentation
    #
    class CoverageFilterCriteria < Struct.new(
      :scan_status_code,
      :scan_status_reason,
      :account_id,
      :resource_id,
      :resource_type,
      :scan_type,
      :ecr_repository_name,
      :ecr_image_tags,
      :ec2_instance_tags,
      :lambda_function_name,
      :lambda_function_tags,
      :lambda_function_runtime,
      :last_scanned_at,
      :scan_mode,
      :image_pulled_at,
      :ecr_image_last_in_use_at,
      :ecr_image_in_use_count,
      :code_repository_project_name,
      :code_repository_provider_type,
      :code_repository_provider_type_visibility,
      :last_scanned_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of a coverage map filter.
    #
    # @!attribute [rw] comparison
    #   The operator to compare coverage on.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag key associated with the coverage map filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value associated with the coverage map filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageMapFilter AWS API Documentation
    #
    class CoverageMapFilter < Struct.new(
      :comparison,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The coverage number to be used in the filter.
    #
    # @!attribute [rw] upper_inclusive
    #   The upper inclusive for the coverage number.&gt;
    #   @return [Integer]
    #
    # @!attribute [rw] lower_inclusive
    #   The lower inclusive for the coverage number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageNumberFilter AWS API Documentation
    #
    class CoverageNumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of a coverage string filter.
    #
    # @!attribute [rw] comparison
    #   The operator to compare strings on.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to compare strings on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageStringFilter AWS API Documentation
    #
    class CoverageStringFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about a resource covered by Amazon
    # Inspector.
    #
    # @!attribute [rw] resource_type
    #   The type of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The Amazon Inspector scan type covering the resource.
    #   @return [String]
    #
    # @!attribute [rw] scan_status
    #   The status of the scan covering the resource.
    #   @return [Types::ScanStatus]
    #
    # @!attribute [rw] resource_metadata
    #   An object that contains details about the metadata.
    #   @return [Types::ResourceScanMetadata]
    #
    # @!attribute [rw] last_scanned_at
    #   The date and time the resource was last checked for vulnerabilities.
    #   @return [Time]
    #
    # @!attribute [rw] scan_mode
    #   The scan method that is applied to the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoveredResource AWS API Documentation
    #
    class CoveredResource < Struct.new(
      :resource_type,
      :resource_id,
      :account_id,
      :scan_type,
      :scan_status,
      :resource_metadata,
      :last_scanned_at,
      :scan_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_name
    #   The scan name for the CIS scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_level
    #   The security level for the CIS scan configuration. Security level
    #   refers to the Benchmark levels that CIS assigns to a profile.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for the CIS scan configuration.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] targets
    #   The targets for the CIS scan configuration.
    #   @return [Types::CreateCisTargets]
    #
    # @!attribute [rw] tags
    #   The tags for the CIS scan configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCisScanConfigurationRequest AWS API Documentation
    #
    class CreateCisScanConfigurationRequest < Struct.new(
      :scan_name,
      :security_level,
      :schedule,
      :targets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The scan configuration ARN for the CIS scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCisScanConfigurationResponse AWS API Documentation
    #
    class CreateCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates CIS targets.
    #
    # @!attribute [rw] account_ids
    #   The CIS target account ids.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_resource_tags
    #   The CIS target resource tags.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCisTargets AWS API Documentation
    #
    class CreateCisTargets < Struct.new(
      :account_ids,
      :target_resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of repository provider for the integration.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The integration details specific to the repository provider type.
    #   @return [Types::CreateIntegrationDetail]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the code security integration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityIntegrationRequest AWS API Documentation
    #
    class CreateCodeSecurityIntegrationRequest < Struct.new(
      :name,
      :type,
      :details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the created code security
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] authorization_url
    #   The URL used to authorize the integration with the repository
    #   provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityIntegrationResponse AWS API Documentation
    #
    class CreateCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :status,
      :authorization_url)
      SENSITIVE = [:authorization_url]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The security level for the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration settings for the code security scan.
    #   @return [Types::CodeSecurityScanConfiguration]
    #
    # @!attribute [rw] scope_settings
    #   The scope settings that define which repositories will be scanned.
    #   Include this parameter to create a default scan configuration.
    #   Otherwise Amazon Inspector creates a general scan configuration.
    #
    #   A default scan configuration automatically applies to all existing
    #   and future projects imported into Amazon Inspector. Use the
    #   `BatchAssociateCodeSecurityScanConfiguration` operation to associate
    #   a general scan configuration with projects.
    #   @return [Types::ScopeSettings]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the scan configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class CreateCodeSecurityScanConfigurationRequest < Struct.new(
      :name,
      :level,
      :configuration,
      :scope_settings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the created scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class CreateCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   Defines the action that is to be applied to the findings that match
    #   the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Defines the criteria to be used in the filter for querying findings.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] name
    #   The name of the filter. Minimum length of 3. Maximum length of 64.
    #   Valid characters include alphanumeric characters, dot (.),
    #   underscore (\_), and dash (-). Spaces are not allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags for the filter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] reason
    #   The reason for creating the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFilterRequest AWS API Documentation
    #
    class CreateFilterRequest < Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :tags,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) of the successfully created filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFilterResponse AWS API Documentation
    #
    class CreateFilterResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   The filter criteria to apply to the results of the finding report.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] report_format
    #   The format to generate the report in.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   The Amazon S3 export destination for the report.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFindingsReportRequest AWS API Documentation
    #
    class CreateFindingsReportRequest < Struct.new(
      :filter_criteria,
      :report_format,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The ID of the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFindingsReportResponse AWS API Documentation
    #
    class CreateFindingsReportResponse < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details required to create an integration with a self-managed
    # GitLab instance.
    #
    # @!attribute [rw] instance_url
    #   The URL of the self-managed GitLab instance.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The personal access token used to authenticate with the self-managed
    #   GitLab instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateGitLabSelfManagedIntegrationDetail AWS API Documentation
    #
    class CreateGitLabSelfManagedIntegrationDetail < Struct.new(
      :instance_url,
      :access_token)
      SENSITIVE = [:instance_url, :access_token]
      include Aws::Structure
    end

    # Contains details required to create a code security integration with a
    # specific repository provider.
    #
    # @note CreateIntegrationDetail is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] gitlab_self_managed
    #   Details specific to creating an integration with a self-managed
    #   GitLab instance.
    #   @return [Types::CreateGitLabSelfManagedIntegrationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateIntegrationDetail AWS API Documentation
    #
    class CreateIntegrationDetail < Struct.new(
      :gitlab_self_managed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GitlabSelfManaged < CreateIntegrationDetail; end
      class Unknown < CreateIntegrationDetail; end
    end

    # @!attribute [rw] resource_filter_criteria
    #   The resource filter criteria for the software bill of materials
    #   (SBOM) report.
    #   @return [Types::ResourceFilterCriteria]
    #
    # @!attribute [rw] report_format
    #   The output format for the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateSbomExportRequest AWS API Documentation
    #
    class CreateSbomExportRequest < Struct.new(
      :resource_filter_criteria,
      :report_format,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The report ID for the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateSbomExportResponse AWS API Documentation
    #
    class CreateSbomExportResponse < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Common Vulnerability Scoring System (CVSS) version 2 details for
    # the vulnerability.
    #
    # @!attribute [rw] base_score
    #   The CVSS v2 base score for the vulnerability.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The scoring vector associated with the CVSS v2 score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Cvss2 AWS API Documentation
    #
    class Cvss2 < Struct.new(
      :base_score,
      :scoring_vector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Common Vulnerability Scoring System (CVSS) version 3 details for
    # the vulnerability.
    #
    # @!attribute [rw] base_score
    #   The CVSS v3 base score for the vulnerability.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The scoring vector associated with the CVSS v3 score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Cvss3 AWS API Documentation
    #
    class Cvss3 < Struct.new(
      :base_score,
      :scoring_vector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CVSS score for a finding.
    #
    # @!attribute [rw] base_score
    #   The base CVSS score used for the finding.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The vector string of the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of CVSS used for the score.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the CVSS score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CvssScore AWS API Documentation
    #
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :version,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on adjustments Amazon Inspector made to the CVSS score for a
    # finding.
    #
    # @!attribute [rw] metric
    #   The metric used to adjust the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the CVSS score has been adjustment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CvssScoreAdjustment AWS API Documentation
    #
    class CvssScoreAdjustment < Struct.new(
      :metric,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the CVSS score.
    #
    # @!attribute [rw] score_source
    #   The source for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] cvss_source
    #   The source of the CVSS data.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The CVSS version used in scoring.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The vector for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] adjustments
    #   An object that contains details about adjustment Amazon Inspector
    #   made to the CVSS score.
    #   @return [Array<Types::CvssScoreAdjustment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CvssScoreDetails AWS API Documentation
    #
    class CvssScoreDetails < Struct.new(
      :score_source,
      :cvss_source,
      :version,
      :score,
      :scoring_vector,
      :adjustments)
      SENSITIVE = []
      include Aws::Structure
    end

    # A daily schedule.
    #
    # @!attribute [rw] start_time
    #   The schedule start time.
    #   @return [Types::Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DailySchedule AWS API Documentation
    #
    class DailySchedule < Struct.new(
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details on the time range used to filter findings.
    #
    # @!attribute [rw] start_inclusive
    #   A timestamp representing the start of the time period filtered on.
    #   @return [Time]
    #
    # @!attribute [rw] end_inclusive
    #   A timestamp representing the end of the time period filtered on.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Amazon Inspector delegated administrator for your
    # organization.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator for your organization.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the Amazon Inspector delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DelegatedAdmin AWS API Documentation
    #
    class DelegatedAdmin < Struct.new(
      :account_id,
      :relationship_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Amazon Inspector delegated administrator for your
    # organization.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator for your organization.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Inspector delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DelegatedAdminAccount AWS API Documentation
    #
    class DelegatedAdminAccount < Struct.new(
      :account_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The ARN of the CIS scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCisScanConfigurationRequest AWS API Documentation
    #
    class DeleteCisScanConfigurationRequest < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The ARN of the CIS scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCisScanConfigurationResponse AWS API Documentation
    #
    class DeleteCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityIntegrationRequest AWS API Documentation
    #
    class DeleteCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the deleted code security
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityIntegrationResponse AWS API Documentation
    #
    class DeleteCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class DeleteCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the deleted scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class DeleteCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) of the filter to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteFilterRequest AWS API Documentation
    #
    class DeleteFilterRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) of the filter that has been
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteFilterResponse AWS API Documentation
    #
    class DeleteFilterResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable
    #   The scan types are automatically enabled for new members of your
    #   organization.
    #   @return [Types::AutoEnable]
    #
    # @!attribute [rw] max_account_limit_reached
    #   Represents whether your organization has reached the maximum Amazon
    #   Web Services account limit for Amazon Inspector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      :max_account_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the Amazon S3 bucket and KMS key used to export
    # findings.
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket to export findings to.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The prefix that the findings will be written under.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt data when exporting findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :bucket_name,
      :key_prefix,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the current Amazon Inspector
    #   delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableDelegatedAdminAccountRequest AWS API Documentation
    #
    class DisableDelegatedAdminAccountRequest < Struct.new(
      :delegated_admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the successfully disabled
    #   delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableDelegatedAdminAccountResponse AWS API Documentation
    #
    class DisableDelegatedAdminAccountResponse < Struct.new(
      :delegated_admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   An array of account IDs you want to disable Amazon Inspector scans
    #   for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The resource scan types you want to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableRequest AWS API Documentation
    #
    class DisableRequest < Struct.new(
      :account_ids,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   Information on the accounts that have had Amazon Inspector scans
    #   successfully disabled. Details are provided for each account.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] failed_accounts
    #   Information on any accounts for which Amazon Inspector scans could
    #   not be disabled. Details are provided for each account.
    #   @return [Array<Types::FailedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableResponse AWS API Documentation
    #
    class DisableResponse < Struct.new(
      :accounts,
      :failed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a request to disassociate a code repository
    # from a scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to
    #   disassociate from a code repository.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Identifies a specific resource in a code repository that will be
    #   scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisassociateConfigurationRequest AWS API Documentation
    #
    class DisassociateConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member account to
    #   disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisassociateMemberRequest AWS API Documentation
    #
    class DisassociateMemberRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the successfully disassociated
    #   member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisassociateMemberResponse AWS API Documentation
    #
    class DisassociateMemberResponse < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables agent-based scanning, which scans instances that are not
    # managed by SSM.
    #
    # @!attribute [rw] scan_mode
    #   The scan method that is applied to the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2Configuration AWS API Documentation
    #
    class Ec2Configuration < Struct.new(
      :scan_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of the EC2 scan configuration for your
    # environment.
    #
    # @!attribute [rw] scan_mode_state
    #   An object that contains details about the state of the Amazon EC2
    #   scan mode.
    #   @return [Types::Ec2ScanModeState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2ConfigurationState AWS API Documentation
    #
    class Ec2ConfigurationState < Struct.new(
      :scan_mode_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on Amazon EC2 instances.
    #
    # @!attribute [rw] amis
    #   The AMI IDs associated with the Amazon EC2 instances to aggregate
    #   findings for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] operating_systems
    #   The operating system types to aggregate findings for. Valid values
    #   must be uppercase and underscore separated, examples are
    #   `ORACLE_LINUX_7` and `ALPINE_LINUX_3_8`.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] instance_ids
    #   The Amazon EC2 instance IDs to aggregate findings for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] instance_tags
    #   The Amazon EC2 instance tags to aggregate findings for.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2InstanceAggregation AWS API Documentation
    #
    class Ec2InstanceAggregation < Struct.new(
      :amis,
      :operating_systems,
      :instance_ids,
      :instance_tags,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by
    # Amazon EC2 instance.
    #
    # @!attribute [rw] instance_id
    #   The Amazon EC2 instance ID.
    #   @return [String]
    #
    # @!attribute [rw] ami
    #   The Amazon Machine Image (AMI) of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_tags
    #   The tags attached to the instance.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account for the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] network_findings
    #   The number of network findings for the Amazon EC2 instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2InstanceAggregationResponse AWS API Documentation
    #
    class Ec2InstanceAggregationResponse < Struct.new(
      :instance_id,
      :ami,
      :operating_system,
      :instance_tags,
      :account_id,
      :severity_counts,
      :network_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Meta data details of an Amazon EC2 instance.
    #
    # @!attribute [rw] tags
    #   The tags attached to the instance.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ami_id
    #   The ID of the Amazon Machine Image (AMI) used to launch the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2Metadata AWS API Documentation
    #
    class Ec2Metadata < Struct.new(
      :tags,
      :ami_id,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of your Amazon EC2 scan mode configuration.
    #
    # @!attribute [rw] scan_mode
    #   The scan method that is applied to the instance.
    #   @return [String]
    #
    # @!attribute [rw] scan_mode_status
    #   The status of the Amazon EC2 scan mode setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2ScanModeState AWS API Documentation
    #
    class Ec2ScanModeState < Struct.new(
      :scan_mode,
      :scan_mode_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the ECR automated re-scan duration setting for your
    # environment.
    #
    # @!attribute [rw] rescan_duration
    #   The rescan duration configured for image push date.
    #   @return [String]
    #
    # @!attribute [rw] pull_date_rescan_duration
    #   The rescan duration configured for image pull date.
    #   @return [String]
    #
    # @!attribute [rw] pull_date_rescan_mode
    #   The pull date for the re-scan mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrConfiguration AWS API Documentation
    #
    class EcrConfiguration < Struct.new(
      :rescan_duration,
      :pull_date_rescan_duration,
      :pull_date_rescan_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of the ECR scans for your environment.
    #
    # @!attribute [rw] rescan_duration_state
    #   An object that contains details about the state of the ECR re-scan
    #   settings.
    #   @return [Types::EcrRescanDurationState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrConfigurationState AWS API Documentation
    #
    class EcrConfigurationState < Struct.new(
      :rescan_duration_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the Amazon ECR image metadata associated with a
    # finding.
    #
    # @!attribute [rw] tags
    #   Tags associated with the Amazon ECR image metadata.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_pulled_at
    #   The date an image was last pulled at.
    #   @return [Time]
    #
    # @!attribute [rw] last_in_use_at
    #   The last time an Amazon ECR image was used in an Amazon ECS task or
    #   Amazon EKS pod.
    #   @return [Time]
    #
    # @!attribute [rw] in_use_count
    #   The number of Amazon ECS tasks or Amazon EKS pods where the Amazon
    #   ECR container image is in use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrContainerImageMetadata AWS API Documentation
    #
    class EcrContainerImageMetadata < Struct.new(
      :tags,
      :image_pulled_at,
      :last_in_use_at,
      :in_use_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the Amazon ECR repository metadata associated with a
    # finding.
    #
    # @!attribute [rw] name
    #   The name of the Amazon ECR repository.
    #   @return [String]
    #
    # @!attribute [rw] scan_frequency
    #   The frequency of scans.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrRepositoryMetadata AWS API Documentation
    #
    class EcrRepositoryMetadata < Struct.new(
      :name,
      :scan_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of your ECR re-scan duration settings. The ECR
    # re-scan duration defines how long an ECR image will be actively
    # scanned by Amazon Inspector. When the number of days since an image
    # was last pushed exceeds the duration configured for image pull date,
    # and the duration configured for image pull date, the monitoring state
    # of that image becomes `inactive` and all associated findings are
    # scheduled for closure.
    #
    # @!attribute [rw] rescan_duration
    #   The rescan duration configured for image push date.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of changes to the ECR automated re-scan duration.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   A timestamp representing when the last time the ECR scan duration
    #   setting was changed.
    #   @return [Time]
    #
    # @!attribute [rw] pull_date_rescan_duration
    #   The rescan duration configured for image pull date.
    #   @return [String]
    #
    # @!attribute [rw] pull_date_rescan_mode
    #   The pull date for the re-scan mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrRescanDurationState AWS API Documentation
    #
    class EcrRescanDurationState < Struct.new(
      :rescan_duration,
      :status,
      :updated_at,
      :pull_date_rescan_duration,
      :pull_date_rescan_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableDelegatedAdminAccountRequest AWS API Documentation
    #
    class EnableDelegatedAdminAccountRequest < Struct.new(
      :delegated_admin_account_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the successfully Amazon
    #   Inspector delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableDelegatedAdminAccountResponse AWS API Documentation
    #
    class EnableDelegatedAdminAccountResponse < Struct.new(
      :delegated_admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   A list of account IDs you want to enable Amazon Inspector scans for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The resource scan types you want to enable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableRequest AWS API Documentation
    #
    class EnableRequest < Struct.new(
      :account_ids,
      :resource_types,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   Information on the accounts that have had Amazon Inspector scans
    #   successfully enabled. Details are provided for each account.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] failed_accounts
    #   Information on any accounts for which Amazon Inspector scans could
    #   not be enabled. Details are provided for each account.
    #   @return [Array<Types::FailedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableResponse AWS API Documentation
    #
    class EnableResponse < Struct.new(
      :accounts,
      :failed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Exploit Prediction Scoring System (EPSS) score.
    #
    # @!attribute [rw] score
    #   The Exploit Prediction Scoring System (EPSS) score.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Epss AWS API Documentation
    #
    class Epss < Struct.new(
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the Exploit Prediction Scoring System (EPSS) score for a
    # finding.
    #
    # @!attribute [rw] score
    #   The EPSS score.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EpssDetails AWS API Documentation
    #
    class EpssDetails < Struct.new(
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the evidence for a vulnerability identified in a finding.
    #
    # @!attribute [rw] evidence_rule
    #   The evidence rule.
    #   @return [String]
    #
    # @!attribute [rw] evidence_detail
    #   The evidence details.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The evidence severity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Evidence AWS API Documentation
    #
    class Evidence < Struct.new(
      :evidence_rule,
      :evidence_detail,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on when this exploit was observed.
    #
    # @!attribute [rw] last_seen
    #   The date an time when the exploit was last seen.
    #   @return [Time]
    #
    # @!attribute [rw] first_seen
    #   The date an time when the exploit was first seen.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ExploitObserved AWS API Documentation
    #
    class ExploitObserved < Struct.new(
      :last_seen,
      :first_seen)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an exploit available for a finding discovered in your
    # environment.
    #
    # @!attribute [rw] last_known_exploit_at
    #   The date and time of the last exploit associated with a finding
    #   discovered in your environment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ExploitabilityDetails AWS API Documentation
    #
    class ExploitabilityDetails < Struct.new(
      :last_known_exploit_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object with details on why an account failed to enable Amazon
    # Inspector.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @!attribute [rw] resource_status
    #   An object detailing which resources Amazon Inspector is enabled to
    #   scan for the account.
    #   @return [Types::ResourceStatus]
    #
    # @!attribute [rw] error_code
    #   The error code explaining why the account failed to enable Amazon
    #   Inspector.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message received when the account failed to enable Amazon
    #   Inspector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FailedAccount AWS API Documentation
    #
    class FailedAccount < Struct.new(
      :account_id,
      :status,
      :resource_status,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a failed attempt to associate or disassociate a code
    # repository with a scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration that failed
    #   to be associated or disassociated.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Identifies a specific resource in a code repository that will be
    #   scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @!attribute [rw] status_code
    #   The status code indicating why the association or disassociation
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message explaining why the association or disassociation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FailedAssociationResult AWS API Documentation
    #
    class FailedAssociationResult < Struct.new(
      :scan_configuration_arn,
      :resource,
      :status_code,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about a member account in your
    # organization that failed to activate Amazon Inspector deep inspection.
    #
    # @!attribute [rw] account_id
    #   The unique identifier for the Amazon Web Services account of the
    #   organization member that failed to activate Amazon Inspector deep
    #   inspection.
    #   @return [String]
    #
    # @!attribute [rw] ec2_scan_status
    #   The status of EC2 scanning in the account that failed to activate
    #   Amazon Inspector deep inspection.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining why the account failed to activate
    #   Amazon Inspector deep inspection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FailedMemberAccountEc2DeepInspectionStatusState AWS API Documentation
    #
    class FailedMemberAccountEc2DeepInspectionStatusState < Struct.new(
      :account_id,
      :ec2_scan_status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a filter.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) associated with this filter.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the account that created the
    #   filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] criteria
    #   Details on the filter criteria associated with this filter.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] action
    #   The action that is to be applied to the findings that match the
    #   filter.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time this filter was created at.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the filter was last updated at.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the filter.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the filter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :arn,
      :owner_id,
      :name,
      :criteria,
      :action,
      :created_at,
      :updated_at,
      :description,
      :reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on the criteria used to define the filter.
    #
    # @!attribute [rw] finding_arn
    #   Details on the finding ARNs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   Details of the Amazon Web Services account IDs used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_type
    #   Details on the finding types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] severity
    #   Details on the severity used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   Details on the date and time a finding was first seen used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   Details on the date and time a finding was last seen used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   Details on the date and time a finding was last updated at used to
    #   filter findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] finding_status
    #   Details on the finding status types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] title
    #   Details on the finding title used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] inspector_score
    #   The Amazon Inspector score to filter on.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] resource_type
    #   Details on the resource types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   Details on the resource IDs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   Details on the resource tags used to filter findings.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] ec2_instance_image_id
    #   Details of the Amazon EC2 instance image IDs used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ec2_instance_vpc_id
    #   Details of the Amazon EC2 instance VPC IDs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ec2_instance_subnet_id
    #   Details of the Amazon EC2 instance subnet IDs used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_pushed_at
    #   Details on the Amazon ECR image push date and time used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] ecr_image_architecture
    #   Details of the Amazon ECR image architecture types used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_registry
    #   Details on the Amazon ECR registry used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_repository_name
    #   Details on the name of the Amazon ECR repository used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_tags
    #   The tags attached to the Amazon ECR container image.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_hash
    #   Details of the Amazon ECR image hashes used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_last_in_use_at
    #   Filter criteria indicating when an Amazon ECR image was last used in
    #   an Amazon ECS cluster task or Amazon EKS cluster pod.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] ecr_image_in_use_count
    #   Filter criteria indicating when details for an Amazon ECR image
    #   include when an Amazon ECR image is in use.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] port_range
    #   Details on the port ranges used to filter findings.
    #   @return [Array<Types::PortRangeFilter>]
    #
    # @!attribute [rw] network_protocol
    #   Details on network protocol used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] component_id
    #   Details of the component IDs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] component_type
    #   Details of the component types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vulnerability_id
    #   Details on the vulnerability ID used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vulnerability_source
    #   Details on the vulnerability type used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vendor_severity
    #   Details on the vendor severity used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vulnerable_packages
    #   Details on the vulnerable packages used to filter findings.
    #   @return [Array<Types::PackageFilter>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   Details on the related vulnerabilities used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] fix_available
    #   Details on whether a fix is available through a version update. This
    #   value can be `YES`, `NO`, or `PARTIAL`. A `PARTIAL` fix means that
    #   some, but not all, of the packages identified in the finding have
    #   fixes available through updated versions.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   Filters the list of Amazon Web Services Lambda functions by the name
    #   of the function.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_layers
    #   Filters the list of Amazon Web Services Lambda functions by the
    #   function's [ layers][1]. A Lambda function can have up to five
    #   layers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_runtime
    #   Filters the list of Amazon Web Services Lambda functions by the
    #   runtime environment for the Lambda function.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_last_modified_at
    #   Filters the list of Amazon Web Services Lambda functions by the date
    #   and time that a user last updated the configuration, in [ISO 8601
    #   format][1]
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] lambda_function_execution_role_arn
    #   Filters the list of Amazon Web Services Lambda functions by
    #   execution role.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] exploit_available
    #   Filters the list of Amazon Web Services Lambda findings by the
    #   availability of exploits.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] code_vulnerability_detector_name
    #   The name of the detector used to identify a code vulnerability in a
    #   Lambda function used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] code_vulnerability_detector_tags
    #   The detector type tag associated with the vulnerability used to
    #   filter findings. Detector tags group related vulnerabilities by
    #   common themes or tactics. For a list of available tags by
    #   programming language, see [Java tags][1], or [Python tags][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/detector-library/java/tags/
    #   [2]: https://docs.aws.amazon.com/codeguru/detector-library/python/tags/
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] code_vulnerability_file_path
    #   The file path to the file in a Lambda function that contains a code
    #   vulnerability used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] epss_score
    #   The EPSS score used to filter findings.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] code_repository_project_name
    #   Filter criteria for findings based on the project name in a code
    #   repository.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] code_repository_provider_type
    #   Filter criteria for findings based on the repository provider type
    #   (such as GitHub, GitLab, etc.).
    #   @return [Array<Types::StringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :finding_arn,
      :aws_account_id,
      :finding_type,
      :severity,
      :first_observed_at,
      :last_observed_at,
      :updated_at,
      :finding_status,
      :title,
      :inspector_score,
      :resource_type,
      :resource_id,
      :resource_tags,
      :ec2_instance_image_id,
      :ec2_instance_vpc_id,
      :ec2_instance_subnet_id,
      :ecr_image_pushed_at,
      :ecr_image_architecture,
      :ecr_image_registry,
      :ecr_image_repository_name,
      :ecr_image_tags,
      :ecr_image_hash,
      :ecr_image_last_in_use_at,
      :ecr_image_in_use_count,
      :port_range,
      :network_protocol,
      :component_id,
      :component_type,
      :vulnerability_id,
      :vulnerability_source,
      :vendor_severity,
      :vulnerable_packages,
      :related_vulnerabilities,
      :fix_available,
      :lambda_function_name,
      :lambda_function_layers,
      :lambda_function_runtime,
      :lambda_function_last_modified_at,
      :lambda_function_execution_role_arn,
      :exploit_available,
      :code_vulnerability_detector_name,
      :code_vulnerability_detector_tags,
      :code_vulnerability_file_path,
      :epss_score,
      :code_repository_project_name,
      :code_repository_provider_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon Inspector finding.
    #
    # @!attribute [rw] finding_arn
    #   The Amazon Resource Number (ARN) of the finding.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the finding. The `type` value determines the valid
    #   values for `resource` in your request. For more information, see
    #   [Finding types][1] in the Amazon Inspector user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/latest/user/findings-types.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   An object that contains the details about how to remediate a
    #   finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] severity
    #   The severity of the finding. `UNTRIAGED` applies to
    #   `PACKAGE_VULNERABILITY` type findings that the vendor has not
    #   assigned a severity yet. For more information, see [Severity levels
    #   for findings][1] in the Amazon Inspector user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html
    #   @return [String]
    #
    # @!attribute [rw] first_observed_at
    #   The date and time that the finding was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] last_observed_at
    #   The date and time the finding was last observed. This timestamp for
    #   this field remains unchanged until a finding is updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the finding was last updated at.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Contains information on the resources involved in a finding. The
    #   `resource` value determines the valid values for `type` in your
    #   request. For more information, see [Finding types][1] in the Amazon
    #   Inspector user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/latest/user/findings-types.html
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] inspector_score
    #   The Amazon Inspector score given to the finding.
    #   @return [Float]
    #
    # @!attribute [rw] inspector_score_details
    #   An object that contains details of the Amazon Inspector score.
    #   @return [Types::InspectorScoreDetails]
    #
    # @!attribute [rw] network_reachability_details
    #   An object that contains the details of a network reachability
    #   finding.
    #   @return [Types::NetworkReachabilityDetails]
    #
    # @!attribute [rw] package_vulnerability_details
    #   An object that contains the details of a package vulnerability
    #   finding.
    #   @return [Types::PackageVulnerabilityDetails]
    #
    # @!attribute [rw] fix_available
    #   Details on whether a fix is available through a version update. This
    #   value can be `YES`, `NO`, or `PARTIAL`. A `PARTIAL` fix means that
    #   some, but not all, of the packages identified in the finding have
    #   fixes available through updated versions.
    #   @return [String]
    #
    # @!attribute [rw] exploit_available
    #   If a finding discovered in your environment has an exploit
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] exploitability_details
    #   The details of an exploit available for a finding discovered in your
    #   environment.
    #   @return [Types::ExploitabilityDetails]
    #
    # @!attribute [rw] code_vulnerability_details
    #   Details about the code vulnerability identified in a Lambda function
    #   used to filter findings.
    #   @return [Types::CodeVulnerabilityDetails]
    #
    # @!attribute [rw] epss
    #   The finding's EPSS score.
    #   @return [Types::EpssDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :finding_arn,
      :aws_account_id,
      :type,
      :description,
      :title,
      :remediation,
      :severity,
      :first_observed_at,
      :last_observed_at,
      :updated_at,
      :status,
      :resources,
      :inspector_score,
      :inspector_score_details,
      :network_reachability_details,
      :package_vulnerability_details,
      :fix_available,
      :exploit_available,
      :exploitability_details,
      :code_vulnerability_details,
      :epss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the vulnerability identified in a finding.
    #
    # @!attribute [rw] finding_arn
    #   The finding ARN that the vulnerability details are associated with.
    #   @return [String]
    #
    # @!attribute [rw] cisa_data
    #   The Cybersecurity and Infrastructure Security Agency (CISA) details
    #   for a specific vulnerability.
    #   @return [Types::CisaData]
    #
    # @!attribute [rw] risk_score
    #   The risk score of the vulnerability.
    #   @return [Integer]
    #
    # @!attribute [rw] evidences
    #   Information on the evidence of the vulnerability.
    #   @return [Array<Types::Evidence>]
    #
    # @!attribute [rw] ttps
    #   The MITRE adversary tactics, techniques, or procedures (TTPs)
    #   associated with the vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tools
    #   The known malware tools or kits that can exploit the vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exploit_observed
    #   Contains information on when this exploit was observed.
    #   @return [Types::ExploitObserved]
    #
    # @!attribute [rw] reference_urls
    #   The reference URLs for the vulnerability data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cwes
    #   The Common Weakness Enumerations (CWEs) associated with the
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] epss_score
    #   The Exploit Prediction Scoring System (EPSS) score of the
    #   vulnerability.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingDetail AWS API Documentation
    #
    class FindingDetail < Struct.new(
      :finding_arn,
      :cisa_data,
      :risk_score,
      :evidences,
      :ttps,
      :tools,
      :exploit_observed,
      :reference_urls,
      :cwes,
      :epss_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an error encountered when trying to return vulnerability
    # data for a finding.
    #
    # @!attribute [rw] finding_arn
    #   The finding ARN that returned an error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingDetailsError AWS API Documentation
    #
    class FindingDetailsError < Struct.new(
      :finding_arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on finding type.
    #
    # @!attribute [rw] finding_type
    #   The finding type to aggregate.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to aggregate.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingTypeAggregation AWS API Documentation
    #
    class FindingTypeAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding type aggregation.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   The value to sort results by.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] exploit_available_count
    #   The number of findings that have an exploit available.
    #   @return [Integer]
    #
    # @!attribute [rw] fix_available_count
    #   Details about the number of fixes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingTypeAggregationResponse AWS API Documentation
    #
    class FindingTypeAggregationResponse < Struct.new(
      :account_id,
      :severity_counts,
      :exploit_available_count,
      :fix_available_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Inspector free trial for an account.
    #
    # @!attribute [rw] account_id
    #   The account associated with the Amazon Inspector free trial
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] free_trial_info
    #   Contains information about the Amazon Inspector free trial for an
    #   account.
    #   @return [Array<Types::FreeTrialInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FreeTrialAccountInfo AWS API Documentation
    #
    class FreeTrialAccountInfo < Struct.new(
      :account_id,
      :free_trial_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the Amazon Inspector free
    # trial for an account.
    #
    # @!attribute [rw] type
    #   The type of scan covered by the Amazon Inspector free trail.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The date and time that the Amazon Inspector free trail started for a
    #   given account.
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The date and time that the Amazon Inspector free trail ends for a
    #   given account.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FreeTrialInfo AWS API Documentation
    #
    class FreeTrialInfo < Struct.new(
      :type,
      :start,
      :end,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an error received while accessing free trail data
    # for an account.
    #
    # @!attribute [rw] account_id
    #   The account associated with the Amazon Inspector free trial
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FreeTrialInfoError AWS API Documentation
    #
    class FreeTrialInfoError < Struct.new(
      :account_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_arn
    #   The scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] target_accounts
    #   The target accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] report_format
    #   The format of the report. Valid values are `PDF` and `CSV`. If no
    #   value is specified, the report format defaults to `PDF`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanReportRequest AWS API Documentation
    #
    class GetCisScanReportRequest < Struct.new(
      :scan_arn,
      :target_accounts,
      :report_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The URL where a PDF or CSV of the CIS scan report can be downloaded.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanReportResponse AWS API Documentation
    #
    class GetCisScanReportResponse < Struct.new(
      :url,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_arn
    #   The scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_id
    #   The target resource ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   The filter criteria.
    #   @return [Types::CisScanResultDetailsFilterCriteria]
    #
    # @!attribute [rw] sort_by
    #   The sort by order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of CIS scan result details to be returned in a
    #   single page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanResultDetailsRequest AWS API Documentation
    #
    class GetCisScanResultDetailsRequest < Struct.new(
      :scan_arn,
      :target_resource_id,
      :account_id,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_result_details
    #   The scan result details.
    #   @return [Array<Types::CisScanResultDetails>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCisScanResultDetailsResponse AWS API Documentation
    #
    class GetCisScanResultDetailsResponse < Struct.new(
      :scan_result_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The resource Id for the Amazon ECR image.
    #   @return [Types::ClusterForImageFilterCriteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in a single page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request used to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetClustersForImageRequest AWS API Documentation
    #
    class GetClustersForImageRequest < Struct.new(
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A unit of work inside of a cluster, which can include metadata about
    #   the cluster.
    #   @return [Array<Types::ClusterInformation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request used to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetClustersForImageResponse AWS API Documentation
    #
    class GetClustersForImageResponse < Struct.new(
      :cluster,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the code security integration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityIntegrationRequest AWS API Documentation
    #
    class GetCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of repository provider for the integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the code security integration.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The timestamp when the code security integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_on
    #   The timestamp when the code security integration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the code security integration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorization_url
    #   The URL used to authorize the integration with the repository
    #   provider. This is only returned if reauthorization is required to
    #   fix a connection issue. Otherwise, it is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityIntegrationResponse AWS API Documentation
    #
    class GetCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :name,
      :type,
      :status,
      :status_reason,
      :created_on,
      :last_update_on,
      :tags,
      :authorization_url)
      SENSITIVE = [:authorization_url]
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class GetCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration settings for the code security scan.
    #   @return [Types::CodeSecurityScanConfiguration]
    #
    # @!attribute [rw] level
    #   The security level for the scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] scope_settings
    #   The scope settings that define which repositories will be scanned.
    #   If the `ScopeSetting` parameter is `ALL` the scan configuration
    #   applies to all existing and future projects imported into Amazon
    #   Inspector.
    #   @return [Types::ScopeSettings]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the scan configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the scan configuration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the scan configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class GetCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      :name,
      :configuration,
      :level,
      :scope_settings,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource
    #   The resource identifier for the code repository that was scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @!attribute [rw] scan_id
    #   The unique identifier of the scan to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScanRequest AWS API Documentation
    #
    class GetCodeSecurityScanRequest < Struct.new(
      :resource,
      :scan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_id
    #   The unique identifier of the scan.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource identifier for the code repository that was scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the scan.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the scan.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the scan.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the scan was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the scan was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_commit_id
    #   The identifier of the last commit that was scanned. This is only
    #   returned if the scan was successful or skipped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetCodeSecurityScanResponse AWS API Documentation
    #
    class GetCodeSecurityScanResponse < Struct.new(
      :scan_id,
      :resource,
      :account_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      :last_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetConfigurationRequest AWS API Documentation
    #
    class GetConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] ecr_configuration
    #   Specifies how the ECR automated re-scan duration is currently
    #   configured for your environment.
    #   @return [Types::EcrConfigurationState]
    #
    # @!attribute [rw] ec2_configuration
    #   Specifies how the Amazon EC2 automated scan mode is currently
    #   configured for your environment.
    #   @return [Types::Ec2ConfigurationState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetConfigurationResponse AWS API Documentation
    #
    class GetConfigurationResponse < Struct.new(
      :ecr_configuration,
      :ec2_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetDelegatedAdminAccountRequest AWS API Documentation
    #
    class GetDelegatedAdminAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] delegated_admin
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator.
    #   @return [Types::DelegatedAdmin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetDelegatedAdminAccountResponse AWS API Documentation
    #
    class GetDelegatedAdminAccountResponse < Struct.new(
      :delegated_admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEc2DeepInspectionConfigurationRequest AWS API Documentation
    #
    class GetEc2DeepInspectionConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] package_paths
    #   The Amazon Inspector deep inspection custom paths for your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] org_package_paths
    #   The Amazon Inspector deep inspection custom paths for your
    #   organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The activation status of Amazon Inspector deep inspection in your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message explaining why Amazon Inspector deep inspection
    #   configurations could not be retrieved for your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEc2DeepInspectionConfigurationResponse AWS API Documentation
    #
    class GetEc2DeepInspectionConfigurationResponse < Struct.new(
      :package_paths,
      :org_package_paths,
      :status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_type
    #   The scan type the key encrypts.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type the key encrypts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEncryptionKeyRequest AWS API Documentation
    #
    class GetEncryptionKeyRequest < Struct.new(
      :scan_type,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   A kms key ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEncryptionKeyResponse AWS API Documentation
    #
    class GetEncryptionKeyResponse < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The ID of the report to retrieve the status of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetFindingsReportStatusRequest AWS API Documentation
    #
    class GetFindingsReportStatusRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The ID of the report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the report.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code of the report.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of the report.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination of the report.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] filter_criteria
    #   The filter criteria associated with the report.
    #   @return [Types::FilterCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetFindingsReportStatusResponse AWS API Documentation
    #
    class GetFindingsReportStatusResponse < Struct.new(
      :report_id,
      :status,
      :error_code,
      :error_message,
      :destination,
      :filter_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member account to retrieve
    #   information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetMemberRequest AWS API Documentation
    #
    class GetMemberRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   Details of the retrieved member account.
    #   @return [Types::Member]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetMemberResponse AWS API Documentation
    #
    class GetMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The report ID of the SBOM export to get details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetSbomExportRequest AWS API Documentation
    #
    class GetSbomExportRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   The report ID of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings
    #   @return [Types::Destination]
    #
    # @!attribute [rw] filter_criteria
    #   Contains details about the resource filter criteria used for the
    #   software bill of materials (SBOM) report.
    #   @return [Types::ResourceFilterCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetSbomExportResponse AWS API Documentation
    #
    class GetSbomExportResponse < Struct.new(
      :report_id,
      :format,
      :status,
      :error_code,
      :error_message,
      :s3_destination,
      :filter_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on container image
    # layers.
    #
    # @!attribute [rw] repositories
    #   The repository associated with the container image hosting the
    #   layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The ID of the container image layer.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] layer_hashes
    #   The hashes associated with the layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ImageLayerAggregation AWS API Documentation
    #
    class ImageLayerAggregation < Struct.new(
      :repositories,
      :resource_ids,
      :layer_hashes,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by image
    # layer.
    #
    # @!attribute [rw] repository
    #   The repository the layer resides in.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the container image layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_hash
    #   The layer hash.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account that owns the container
    #   image hosting the layer image.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that represents the count of matched findings per
    #   severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ImageLayerAggregationResponse AWS API Documentation
    #
    class ImageLayerAggregationResponse < Struct.new(
      :repository,
      :resource_id,
      :layer_hash,
      :account_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Inspector score given to a finding.
    #
    # @!attribute [rw] adjusted_cvss
    #   An object that contains details about the CVSS score given to a
    #   finding.
    #   @return [Types::CvssScoreDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/InspectorScoreDetails AWS API Documentation
    #
    class InspectorScoreDetails < Struct.new(
      :adjusted_cvss)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to an internal failure of the Amazon
    # Inspector service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define a findings aggregation based on Amazon Web
    # Services Lambda functions.
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] function_names
    #   The Amazon Web Services Lambda function names to include in the
    #   aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] runtimes
    #   Returns findings aggregated by Amazon Web Services Lambda function
    #   runtime environments.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] function_tags
    #   The tags to include in the aggregation results.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to use for sorting the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The finding severity to use for sorting the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionAggregation AWS API Documentation
    #
    class LambdaFunctionAggregation < Struct.new(
      :resource_ids,
      :function_names,
      :runtimes,
      :function_tags,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of an Amazon Web Services Lambda
    # function finding aggregation.
    #
    # @!attribute [rw] resource_id
    #   The resource IDs included in the aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The Amazon Web Services Lambda function names included in the
    #   aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtimes included in the aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] lambda_tags
    #   The tags included in the aggregation results.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account that owns the Amazon Web
    #   Services Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the counts of aggregated finding per
    #   severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] last_modified_at
    #   The date that the Amazon Web Services Lambda function included in
    #   the aggregation results was last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionAggregationResponse AWS API Documentation
    #
    class LambdaFunctionAggregationResponse < Struct.new(
      :resource_id,
      :function_name,
      :runtime,
      :lambda_tags,
      :account_id,
      :severity_counts,
      :last_modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Lambda function metadata.
    #
    # @!attribute [rw] function_tags
    #   The resource tags on an Amazon Web Services Lambda function.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] layers
    #   The layers for an Amazon Web Services Lambda function. A Lambda
    #   function can have up to five layers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] function_name
    #   The name of a function.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   An Amazon Web Services Lambda function's runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionMetadata AWS API Documentation
    #
    class LambdaFunctionMetadata < Struct.new(
      :function_tags,
      :layers,
      :function_name,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define a findings aggregation based on an Amazon Web
    # Services Lambda function's layers.
    #
    # @!attribute [rw] function_names
    #   The names of the Amazon Web Services Lambda functions associated
    #   with the layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs for the Amazon Web Services Lambda function layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] layer_arns
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Lambda
    #   function layer.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to use for sorting the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The finding severity to use for sorting the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaLayerAggregation AWS API Documentation
    #
    class LambdaLayerAggregation < Struct.new(
      :function_names,
      :resource_ids,
      :layer_arns,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of an Amazon Web Services Lambda
    # function layer finding aggregation.
    #
    # @!attribute [rw] function_name
    #   The names of the Amazon Web Services Lambda functions associated
    #   with the layers.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource ID of the Amazon Web Services Lambda function layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Lambda
    #   function layer.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the Amazon Web Services Lambda function layer.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the counts of aggregated finding per
    #   severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaLayerAggregationResponse AWS API Documentation
    #
    class LambdaLayerAggregationResponse < Struct.new(
      :function_name,
      :resource_id,
      :layer_arn,
      :account_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to an Amazon Web
    # Services Lambda function. For more information, see [VPC Settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security groups and subnets that are attached to an Amazon
    #   Web Services Lambda function. For more information, see [VPC
    #   Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaVpcConfig AWS API Documentation
    #
    class LambdaVpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The service scan type to check permissions for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the NextToken value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissionsRequest AWS API Documentation
    #
    class ListAccountPermissionsRequest < Struct.new(
      :service,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   Contains details on the permissions an account has to configure
    #   Amazon Inspector.
    #   @return [Array<Types::Permission>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissionsResponse AWS API Documentation
    #
    class ListAccountPermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CIS scan configurations filter criteria.
    #
    # @!attribute [rw] scan_name_filters
    #   The list of scan name filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] target_resource_tag_filters
    #   The list of target resource tag filters.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] scan_configuration_arn_filters
    #   The list of scan configuration ARN filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanConfigurationsFilterCriteria AWS API Documentation
    #
    class ListCisScanConfigurationsFilterCriteria < Struct.new(
      :scan_name_filters,
      :target_resource_tag_filters,
      :scan_configuration_arn_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   The CIS scan configuration filter criteria.
    #   @return [Types::ListCisScanConfigurationsFilterCriteria]
    #
    # @!attribute [rw] sort_by
    #   The CIS scan configuration sort by order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The CIS scan configuration sort order order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of CIS scan configurations to be returned in a
    #   single page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanConfigurationsRequest AWS API Documentation
    #
    class ListCisScanConfigurationsRequest < Struct.new(
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configurations
    #   The CIS scan configuration scan configurations.
    #   @return [Array<Types::CisScanConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanConfigurationsResponse AWS API Documentation
    #
    class ListCisScanConfigurationsResponse < Struct.new(
      :scan_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_arn
    #   The scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   The filter criteria.
    #   @return [Types::CisScanResultsAggregatedByChecksFilterCriteria]
    #
    # @!attribute [rw] sort_by
    #   The sort by order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scan results aggregated by checks to be
    #   returned in a single page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByChecksRequest AWS API Documentation
    #
    class ListCisScanResultsAggregatedByChecksRequest < Struct.new(
      :scan_arn,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] check_aggregations
    #   The check aggregations.
    #   @return [Array<Types::CisCheckAggregation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByChecksResponse AWS API Documentation
    #
    class ListCisScanResultsAggregatedByChecksResponse < Struct.new(
      :check_aggregations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_arn
    #   The scan ARN.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   The filter criteria.
    #   @return [Types::CisScanResultsAggregatedByTargetResourceFilterCriteria]
    #
    # @!attribute [rw] sort_by
    #   The sort by order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scan results aggregated by a target resource
    #   to be returned in a single page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByTargetResourceRequest AWS API Documentation
    #
    class ListCisScanResultsAggregatedByTargetResourceRequest < Struct.new(
      :scan_arn,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_resource_aggregations
    #   The resource aggregations.
    #   @return [Array<Types::CisTargetResourceAggregation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScanResultsAggregatedByTargetResourceResponse AWS API Documentation
    #
    class ListCisScanResultsAggregatedByTargetResourceResponse < Struct.new(
      :target_resource_aggregations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CIS scans filter criteria.
    #
    # @!attribute [rw] scan_name_filters
    #   The list of scan name filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] target_resource_tag_filters
    #   The list of target resource tag filters.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] target_resource_id_filters
    #   The list of target resource ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] scan_status_filters
    #   The list of scan status filters.
    #   @return [Array<Types::CisScanStatusFilter>]
    #
    # @!attribute [rw] scan_at_filters
    #   The list of scan at filters.
    #   @return [Array<Types::CisDateFilter>]
    #
    # @!attribute [rw] scan_configuration_arn_filters
    #   The list of scan configuration ARN filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] scan_arn_filters
    #   The list of scan ARN filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] scheduled_by_filters
    #   The list of scheduled by filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @!attribute [rw] failed_checks_filters
    #   The list of failed checks filters.
    #   @return [Array<Types::CisNumberFilter>]
    #
    # @!attribute [rw] target_account_id_filters
    #   The list of target account ID filters.
    #   @return [Array<Types::CisStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScansFilterCriteria AWS API Documentation
    #
    class ListCisScansFilterCriteria < Struct.new(
      :scan_name_filters,
      :target_resource_tag_filters,
      :target_resource_id_filters,
      :scan_status_filters,
      :scan_at_filters,
      :scan_configuration_arn_filters,
      :scan_arn_filters,
      :scheduled_by_filters,
      :failed_checks_filters,
      :target_account_id_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   The CIS scan filter criteria.
    #   @return [Types::ListCisScansFilterCriteria]
    #
    # @!attribute [rw] detail_level
    #   The detail applied to the CIS scan.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The CIS scans sort by order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The CIS scans sort order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScansRequest AWS API Documentation
    #
    class ListCisScansRequest < Struct.new(
      :filter_criteria,
      :detail_level,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scans
    #   The CIS scans.
    #   @return [Array<Types::CisScan>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request that's used to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCisScansResponse AWS API Documentation
    #
    class ListCisScansResponse < Struct.new(
      :scans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityIntegrationsRequest AWS API Documentation
    #
    class ListCodeSecurityIntegrationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integrations
    #   A list of code security integration summaries.
    #   @return [Array<Types::CodeSecurityIntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityIntegrationsResponse AWS API Documentation
    #
    class ListCodeSecurityIntegrationsResponse < Struct.new(
      :integrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to list
    #   associations for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurationAssociationsRequest AWS API Documentation
    #
    class ListCodeSecurityScanConfigurationAssociationsRequest < Struct.new(
      :scan_configuration_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   A list of associations between code repositories and scan
    #   configurations.
    #   @return [Array<Types::CodeSecurityScanConfigurationAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurationAssociationsResponse AWS API Documentation
    #
    class ListCodeSecurityScanConfigurationAssociationsResponse < Struct.new(
      :associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurationsRequest AWS API Documentation
    #
    class ListCodeSecurityScanConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   A list of code security scan configuration summaries.
    #   @return [Array<Types::CodeSecurityScanConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the NextToken value returned from
    #   the previous request to continue listing results after the first
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCodeSecurityScanConfigurationsResponse AWS API Documentation
    #
    class ListCodeSecurityScanConfigurationsResponse < Struct.new(
      :configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #   @return [Types::CoverageFilterCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageRequest AWS API Documentation
    #
    class ListCoverageRequest < Struct.new(
      :max_results,
      :next_token,
      :filter_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @!attribute [rw] covered_resources
    #   An object that contains details on the covered resources in your
    #   environment.
    #   @return [Array<Types::CoveredResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageResponse AWS API Documentation
    #
    class ListCoverageResponse < Struct.new(
      :next_token,
      :covered_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #   @return [Types::CoverageFilterCriteria]
    #
    # @!attribute [rw] group_by
    #   The value to group the results by.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageStatisticsRequest AWS API Documentation
    #
    class ListCoverageStatisticsRequest < Struct.new(
      :filter_criteria,
      :group_by,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] counts_by_group
    #   An array with the number for each group.
    #   @return [Array<Types::Counts>]
    #
    # @!attribute [rw] total_counts
    #   The total number for all groups.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageStatisticsResponse AWS API Documentation
    #
    class ListCoverageStatisticsResponse < Struct.new(
      :counts_by_group,
      :total_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListDelegatedAdminAccountsRequest AWS API Documentation
    #
    class ListDelegatedAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_admin_accounts
    #   Details of the Amazon Inspector delegated administrator of your
    #   organization.
    #   @return [Array<Types::DelegatedAdminAccount>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListDelegatedAdminAccountsResponse AWS API Documentation
    #
    class ListDelegatedAdminAccountsResponse < Struct.new(
      :delegated_admin_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arns
    #   The Amazon resource number (ARN) of the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] action
    #   The action the filter applies to matched findings.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFiltersRequest AWS API Documentation
    #
    class ListFiltersRequest < Struct.new(
      :arns,
      :action,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Contains details on the filters associated with your account.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFiltersResponse AWS API Documentation
    #
    class ListFiltersResponse < Struct.new(
      :filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_type
    #   The type of the aggregation request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] account_ids
    #   The Amazon Web Services account IDs to retrieve finding aggregation
    #   data for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aggregation_request
    #   Details of the aggregation request that is used to filter your
    #   aggregation results.
    #   @return [Types::AggregationRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregationsRequest AWS API Documentation
    #
    class ListFindingAggregationsRequest < Struct.new(
      :aggregation_type,
      :next_token,
      :max_results,
      :account_ids,
      :aggregation_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_type
    #   The type of aggregation to perform.
    #   @return [String]
    #
    # @!attribute [rw] responses
    #   Objects that contain the results of an aggregation operation.
    #   @return [Array<Types::AggregationResponse>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregationsResponse AWS API Documentation
    #
    class ListFindingAggregationsResponse < Struct.new(
      :aggregation_type,
      :responses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Details on the filters to apply to your finding results.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] sort_criteria
    #   Details on the sort criteria to apply to your finding results.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :max_results,
      :next_token,
      :filter_criteria,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   Contains details on the findings in your environment.
    #   @return [Array<Types::Finding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :next_token,
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] only_associated
    #   Specifies whether to list only currently associated members if
    #   `True` or to list all members within the organization if `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :only_associated,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   An object that contains details for each member account.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon resource number (ARN) of the resource to list tags of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results the response can return. If your
    #   request would return more than the maximum the response will return
    #   a `nextToken` value, use this value when you call the action again
    #   to get the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. If your response returns more than the
    #   `maxResults` maximum value it will also return a `nextToken` value.
    #   For subsequent calls, use the `nextToken` value returned from the
    #   previous request to continue listing results after the first page.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The Amazon Web Services account IDs to retrieve usage totals for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListUsageTotalsRequest AWS API Documentation
    #
    class ListUsageTotalsRequest < Struct.new(
      :max_results,
      :next_token,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @!attribute [rw] totals
    #   An object with details on the total usage for the requested account.
    #   @return [Array<Types::UsageTotal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListUsageTotalsResponse AWS API Documentation
    #
    class ListUsageTotalsResponse < Struct.new(
      :next_token,
      :totals)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes details of a map filter.
    #
    # @!attribute [rw] comparison
    #   The operator to use when comparing values in the filter.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag key used in the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value used in the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/MapFilter AWS API Documentation
    #
    class MapFilter < Struct.new(
      :comparison,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a member account in your organization.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the member account.
    #   @return [String]
    #
    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator for this member account.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   A timestamp showing when the status of this member was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :relationship_status,
      :delegated_admin_account_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the status of Amazon Inspector
    # deep inspection for a member account in your organization.
    #
    # @!attribute [rw] account_id
    #   The unique identifier for the Amazon Web Services account of the
    #   organization member.
    #   @return [String]
    #
    # @!attribute [rw] activate_deep_inspection
    #   Whether Amazon Inspector deep inspection is active in the account.
    #   If `TRUE` Amazon Inspector deep inspection is active, if `FALSE` it
    #   is not active.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/MemberAccountEc2DeepInspectionStatus AWS API Documentation
    #
    class MemberAccountEc2DeepInspectionStatus < Struct.new(
      :account_id,
      :activate_deep_inspection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the state of Amazon Inspector
    # deep inspection for a member account.
    #
    # @!attribute [rw] account_id
    #   The unique identifier for the Amazon Web Services account of the
    #   organization member
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of Amazon Inspector deep inspection in the member account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message explaining why the account failed to activate
    #   Amazon Inspector deep inspection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/MemberAccountEc2DeepInspectionStatusState AWS API Documentation
    #
    class MemberAccountEc2DeepInspectionStatusState < Struct.new(
      :account_id,
      :status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A monthly schedule.
    #
    # @!attribute [rw] start_time
    #   The monthly schedule's start time.
    #   @return [Types::Time]
    #
    # @!attribute [rw] day
    #   The monthly schedule's day.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/MonthlySchedule AWS API Documentation
    #
    class MonthlySchedule < Struct.new(
      :start_time,
      :day)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the network path associated with a finding.
    #
    # @!attribute [rw] steps
    #   The details on the steps in the network path.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/NetworkPath AWS API Documentation
    #
    class NetworkPath < Struct.new(
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a network reachability finding.
    #
    # @!attribute [rw] open_port_range
    #   An object that contains details about the open port range associated
    #   with a finding.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] protocol
    #   The protocol associated with a finding.
    #   @return [String]
    #
    # @!attribute [rw] network_path
    #   An object that contains details about a network path associated with
    #   a finding.
    #   @return [Types::NetworkPath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/NetworkReachabilityDetails AWS API Documentation
    #
    class NetworkReachabilityDetails < Struct.new(
      :open_port_range,
      :protocol,
      :network_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the details of a number filter.
    #
    # @!attribute [rw] upper_inclusive
    #   The highest number to be included in the filter.
    #   @return [Float]
    #
    # @!attribute [rw] lower_inclusive
    #   The lowest number to be included in the filter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A one time schedule.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/OneTimeSchedule AWS API Documentation
    #
    class OneTimeSchedule < Aws::EmptyStructure; end

    # The details that define an aggregation based on operating system
    # package type.
    #
    # @!attribute [rw] package_names
    #   The names of packages to aggregate findings on.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageAggregation AWS API Documentation
    #
    class PackageAggregation < Struct.new(
      :package_names,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by image
    # layer.
    #
    # @!attribute [rw] package_name
    #   The name of the operating system package.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageAggregationResponse AWS API Documentation
    #
    class PackageAggregationResponse < Struct.new(
      :package_name,
      :account_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the details of a package filter.
    #
    # @!attribute [rw] name
    #   An object that contains details on the name of the package to filter
    #   on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] version
    #   The package version to filter on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] epoch
    #   An object that contains details on the package epoch to filter on.
    #   @return [Types::NumberFilter]
    #
    # @!attribute [rw] release
    #   An object that contains details on the package release to filter on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] architecture
    #   An object that contains details on the package architecture type to
    #   filter on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] source_layer_hash
    #   An object that contains details on the source layer hash to filter
    #   on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] source_lambda_layer_arn
    #   An object that describes the details of a string filter.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] file_path
    #   An object that contains details on the package file path to filter
    #   on.
    #   @return [Types::StringFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageFilter AWS API Documentation
    #
    class PackageFilter < Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture,
      :source_layer_hash,
      :source_lambda_layer_arn,
      :file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a package vulnerability finding.
    #
    # @!attribute [rw] vulnerability_id
    #   The ID given to this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   The packages impacted by this vulnerability.
    #   @return [Array<Types::VulnerablePackage>]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] cvss
    #   An object that contains details about the CVSS score of a finding.
    #   @return [Array<Types::CvssScore>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   One or more vulnerabilities related to the one identified in this
    #   finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_url
    #   A URL to the source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] vendor_severity
    #   The severity the vendor has given to this vulnerability type.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time that this vulnerability was first added to the
    #   vendor's database.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time the vendor last updated this vulnerability in
    #   their database.
    #   @return [Time]
    #
    # @!attribute [rw] reference_urls
    #   One or more URLs that contain details about this vulnerability type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageVulnerabilityDetails AWS API Documentation
    #
    class PackageVulnerabilityDetails < Struct.new(
      :vulnerability_id,
      :vulnerable_packages,
      :source,
      :cvss,
      :related_vulnerabilities,
      :source_url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at,
      :reference_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for periodic scans that run on a scheduled
    # basis.
    #
    # @!attribute [rw] frequency
    #   The frequency at which periodic scans are performed (such as weekly
    #   or monthly).
    #
    #   If you don't provide the `frequencyExpression` Amazon Inspector
    #   chooses day for the scan to run. If you provide the
    #   `frequencyExpression`, the schedule must match the specified
    #   `frequency`.
    #   @return [String]
    #
    # @!attribute [rw] frequency_expression
    #   The schedule expression for periodic scans, in cron format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PeriodicScanConfiguration AWS API Documentation
    #
    class PeriodicScanConfiguration < Struct.new(
      :frequency,
      :frequency_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the permissions an account has within Amazon
    # Inspector.
    #
    # @!attribute [rw] service
    #   The services that the permissions allow an account to perform the
    #   given operations for.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operations that can be performed with the given permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :service,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the port range associated with a finding.
    #
    # @!attribute [rw] begin
    #   The beginning port in a port range.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The ending port in a port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :begin,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the details of a port range filter.
    #
    # @!attribute [rw] begin_inclusive
    #   The port number the port range begins at.
    #   @return [Integer]
    #
    # @!attribute [rw] end_inclusive
    #   The port number the port range ends at.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PortRangeFilter AWS API Documentation
    #
    class PortRangeFilter < Struct.new(
      :begin_inclusive,
      :end_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the scan configuration settings applied to a specific project
    # in a code repository.
    #
    # @!attribute [rw] periodic_scan_configurations
    #   The periodic scan configurations applied to the project.
    #   @return [Array<Types::ProjectPeriodicScanConfiguration>]
    #
    # @!attribute [rw] continuous_integration_scan_configurations
    #   The continuous integration scan configurations applied to the
    #   project.
    #   @return [Array<Types::ProjectContinuousIntegrationScanConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ProjectCodeSecurityScanConfiguration AWS API Documentation
    #
    class ProjectCodeSecurityScanConfiguration < Struct.new(
      :periodic_scan_configurations,
      :continuous_integration_scan_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the continuous integration scan configuration settings
    # applied to a specific project.
    #
    # @!attribute [rw] supported_event
    #   The repository event that triggers continuous integration scans for
    #   the project.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_categories
    #   The categories of security rules applied during continuous
    #   integration scans for the project.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ProjectContinuousIntegrationScanConfiguration AWS API Documentation
    #
    class ProjectContinuousIntegrationScanConfiguration < Struct.new(
      :supported_event,
      :rule_set_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the periodic scan configuration settings applied to a
    # specific project.
    #
    # @!attribute [rw] frequency_expression
    #   The schedule expression for periodic scans, in cron format, applied
    #   to the project.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_categories
    #   The categories of security rules applied during periodic scans for
    #   the project.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ProjectPeriodicScanConfiguration AWS API Documentation
    #
    class ProjectPeriodicScanConfiguration < Struct.new(
      :frequency_expression,
      :rule_set_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the recommended course of action to remediate the
    # finding.
    #
    # @!attribute [rw] text
    #   The recommended course of action to remediate the finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL address to the CVE remediation recommendations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on how to remediate a finding.
    #
    # @!attribute [rw] recommendation
    #   An object that contains information about the recommended course of
    #   action to remediate the finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on repository.
    #
    # @!attribute [rw] repositories
    #   The names of repositories to aggregate findings on.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/RepositoryAggregation AWS API Documentation
    #
    class RepositoryAggregation < Struct.new(
      :repositories,
      :sort_order,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains details on the results of a finding
    # aggregation by repository.
    #
    # @!attribute [rw] repository
    #   The name of the repository associated with the findings.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that represent the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @!attribute [rw] affected_images
    #   The number of container images impacted by the findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/RepositoryAggregationResponse AWS API Documentation
    #
    class RepositoryAggregationResponse < Struct.new(
      :repository,
      :account_id,
      :severity_counts,
      :affected_images)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_type
    #   The scan type the key encrypts.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type the key encrypts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKeyRequest AWS API Documentation
    #
    class ResetEncryptionKeyRequest < Struct.new(
      :scan_type,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKeyResponse AWS API Documentation
    #
    class ResetEncryptionKeyResponse < Aws::EmptyStructure; end

    # Details about the resource involved in a finding.
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The partition of the resource.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region the impacted resource is located in.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] details
    #   An object that contains details about the resource involved in a
    #   finding.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :tags,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the resource involved in the finding.
    #
    # @!attribute [rw] aws_ec2_instance
    #   An object that contains details about the Amazon EC2 instance
    #   involved in the finding.
    #   @return [Types::AwsEc2InstanceDetails]
    #
    # @!attribute [rw] aws_ecr_container_image
    #   An object that contains details about the Amazon ECR container image
    #   involved in the finding.
    #   @return [Types::AwsEcrContainerImageDetails]
    #
    # @!attribute [rw] aws_lambda_function
    #   A summary of the information about an Amazon Web Services Lambda
    #   function affected by a finding.
    #   @return [Types::AwsLambdaFunctionDetails]
    #
    # @!attribute [rw] code_repository
    #   Contains details about a code repository resource associated with a
    #   finding.
    #   @return [Types::CodeRepositoryDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_ec2_instance,
      :aws_ecr_container_image,
      :aws_lambda_function,
      :code_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource filter criteria for a Software bill of materials (SBOM)
    # report.
    #
    # @!attribute [rw] account_id
    #   The account IDs used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The resource IDs used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] resource_type
    #   The resource types used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] ecr_repository_name
    #   The ECR repository names used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   The Amazon Web Services Lambda function name used as resource filter
    #   criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] ecr_image_tags
    #   The ECR image tags used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] ec2_instance_tags
    #   The EC2 instance tags used as resource filter criteria.
    #   @return [Array<Types::ResourceMapFilter>]
    #
    # @!attribute [rw] lambda_function_tags
    #   The Amazon Web Services Lambda function tags used as resource filter
    #   criteria.
    #   @return [Array<Types::ResourceMapFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceFilterCriteria AWS API Documentation
    #
    class ResourceFilterCriteria < Struct.new(
      :account_id,
      :resource_id,
      :resource_type,
      :ecr_repository_name,
      :lambda_function_name,
      :ecr_image_tags,
      :ec2_instance_tags,
      :lambda_function_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource map filter for a software bill of material report.
    #
    # @!attribute [rw] comparison
    #   The filter's comparison.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The filter's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceMapFilter AWS API Documentation
    #
    class ResourceMapFilter < Struct.new(
      :comparison,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation tried to access an invalid resource. Make sure the
    # resource is specified correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the metadata for an Amazon ECR
    # resource.
    #
    # @!attribute [rw] ecr_repository
    #   An object that contains details about the repository an Amazon ECR
    #   image resides in.
    #   @return [Types::EcrRepositoryMetadata]
    #
    # @!attribute [rw] ecr_image
    #   An object that contains details about the container metadata for an
    #   Amazon ECR image.
    #   @return [Types::EcrContainerImageMetadata]
    #
    # @!attribute [rw] ec2
    #   An object that contains metadata details for an Amazon EC2 instance.
    #   @return [Types::Ec2Metadata]
    #
    # @!attribute [rw] lambda_function
    #   An object that contains metadata details for an Amazon Web Services
    #   Lambda function.
    #   @return [Types::LambdaFunctionMetadata]
    #
    # @!attribute [rw] code_repository
    #   Contains metadata about scan coverage for a code repository
    #   resource.
    #   @return [Types::CodeRepositoryMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceScanMetadata AWS API Documentation
    #
    class ResourceScanMetadata < Struct.new(
      :ecr_repository,
      :ecr_image,
      :ec2,
      :lambda_function,
      :code_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details the state of Amazon Inspector for each resource type Amazon
    # Inspector scans.
    #
    # @!attribute [rw] ec2
    #   An object detailing the state of Amazon Inspector scanning for
    #   Amazon EC2 resources.
    #   @return [Types::State]
    #
    # @!attribute [rw] ecr
    #   An object detailing the state of Amazon Inspector scanning for
    #   Amazon ECR resources.
    #   @return [Types::State]
    #
    # @!attribute [rw] lambda
    #   An object that described the state of Amazon Inspector scans for an
    #   account.
    #   @return [Types::State]
    #
    # @!attribute [rw] lambda_code
    #   An object that described the state of Amazon Inspector scans for an
    #   account.
    #   @return [Types::State]
    #
    # @!attribute [rw] code_repository
    #   An object that described the state of Amazon Inspector scans for an
    #   account.
    #   @return [Types::State]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceState AWS API Documentation
    #
    class ResourceState < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details the status of Amazon Inspector for each resource type Amazon
    # Inspector scans.
    #
    # @!attribute [rw] ec2
    #   The status of Amazon Inspector scanning for Amazon EC2 resources.
    #   @return [String]
    #
    # @!attribute [rw] ecr
    #   The status of Amazon Inspector scanning for Amazon ECR resources.
    #   @return [String]
    #
    # @!attribute [rw] lambda
    #   The status of Amazon Inspector scanning for Amazon Web Services
    #   Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] lambda_code
    #   The status of Amazon Inspector scanning for custom application code
    #   for Amazon Web Services Lambda functions.
    #   @return [String]
    #
    # @!attribute [rw] code_repository
    #   The status of Amazon Inspector scanning for code repositories.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceStatus AWS API Documentation
    #
    class ResourceStatus < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource string filter for a software bill of materials report.
    #
    # @!attribute [rw] comparison
    #   The filter's comparison.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceStringFilter AWS API Documentation
    #
    class ResourceStringFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the scan.
    #
    # @!attribute [rw] status_code
    #   The status code of the scan.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The scan status. Possible return values and descriptions are:
    #
    #   `ACCESS_DENIED` - Resource access policy restricting Amazon
    #   Inspector access. Please update the IAM policy.
    #
    #   `ACCESS_DENIED_TO_ENCRYPTION_KEY` - The KMS key policy doesn't
    #   allow Amazon Inspector access. Update the key policy.
    #
    #   `DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED` - Amazon Inspector
    #   failed to extract the package inventory because the package
    #   collection time exceeding the maximum threshold of 15 minutes.
    #
    #   `DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED` - The SSM agent
    #   couldn't send inventory to Amazon Inspector because the SSM quota
    #   for Inventory data collected per instance per day has already been
    #   reached for this instance.
    #
    #   `DEEP_INSPECTION_NO_INVENTORY` - The Amazon Inspector plugin hasn't
    #   yet been able to collect an inventory of packages for this instance.
    #   This is usually the result of a pending scan, however, if this
    #   status persists after 6 hours, use SSM to ensure that the required
    #   Amazon Inspector associations exist and are running for the
    #   instance.
    #
    #   `DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED` - The instance
    #   has exceeded the 5000 package limit for Amazon Inspector Deep
    #   inspection. To resume Deep inspection for this instance you can try
    #   to adjust the custom paths associated with the account.
    #
    #   `EC2_INSTANCE_STOPPED` - This EC2 instance is in a stopped state,
    #   therefore, Amazon Inspector will pause scanning. The existing
    #   findings will continue to exist until the instance is terminated.
    #   Once the instance is re-started, Inspector will automatically start
    #   scanning the instance again. Please note that you will not be
    #   charged for this instance while it's in a stopped state.
    #
    #   `EXCLUDED_BY_TAG` - This resource was not scanned because it has
    #   been excluded by a tag.
    #
    #   `IMAGE_SIZE_EXCEEDED` - Reserved for future use.
    #
    #   `INTEGRATION_CONNNECTION_LOST` - Amazon Inspector couldn't
    #   communicate with the source code management platform.
    #
    #   `INTERNAL_ERROR` - Amazon Inspector has encountered an internal
    #   error for this resource. Amazon Inspector service will automatically
    #   resolve the issue and resume the scanning. No action required from
    #   the user.
    #
    #   `NO INVENTORY` - Amazon Inspector couldn't find software
    #   application inventory to scan for vulnerabilities. This might be
    #   caused due to required Amazon Inspector associations being deleted
    #   or failing to run on your resource. Please verify the status of
    #   `InspectorInventoryCollection-do-not-delete` association in the SSM
    #   console for the resource. Additionally, you can verify the
    #   instance's inventory in the SSM Fleet Manager console.
    #
    #   `NO_RESOURCES_FOUND` - Reserved for future use.
    #
    #   `NO_SCAN_CONFIGURATION_ASSOCIATED` - The code repository resource
    #   doesn't have an associated scan configuration.
    #
    #   `PENDING_DISABLE` - This resource is pending cleanup during
    #   disablement. The customer will not be billed while a resource is in
    #   the pending disable status.
    #
    #   `PENDING_INITIAL_SCAN` - This resource has been identified for
    #   scanning, results will be available soon.
    #
    #   `RESOURCE_TERMINATED` - This resource has been terminated. The
    #   findings and coverage associated with this resource are in the
    #   process of being cleaned up.
    #
    #   `SCAN_ELIGIBILITY_EXPIRED` - The configured scan duration has lapsed
    #   for this image.
    #
    #   `SCAN_FREQUENCY_MANUAL` - This image will not be covered by Amazon
    #   Inspector due to the repository scan frequency configuration.
    #
    #   `SCAN_FREQUENCY_SCAN_ON_PUSH` - This image will be scanned one time
    #   and will not new findings because of the scan frequency
    #   configuration.
    #
    #   `SCAN_IN_PROGRESS` - The resource is currently being scanned.
    #
    #   `STALE_INVENTORY` - Amazon Inspector wasn't able to collect an
    #   updated software application inventory in the last 7 days. Please
    #   confirm the required Amazon Inspector associations still exist and
    #   you can still see an updated inventory in the SSM console.
    #
    #   `SUCCESSFUL` - The scan was successful.
    #
    #   `UNMANAGED_EC2_INSTANCE` - The EC2 instance is not managed by SSM,
    #   please use the following SSM automation to remediate the issue:
    #   [https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html][1].
    #   Once the instance becomes managed by SSM, Inspector will
    #   automatically begin scanning this instance.
    #
    #   `UNSUPPORTED_CONFIG_FILE` - Reserved for future use.
    #
    #   `UNSUPPORTED_LANGUAGE` - The scan was unsuccessful because the
    #   repository contains files in an unsupported programming language.
    #
    #   `UNSUPPORTED_MEDIA_TYPE `- The ECR image has an unsupported media
    #   type.
    #
    #   `UNSUPPORTED_OS` - Amazon Inspector does not support this OS,
    #   architecture, or image manifest type at this time. To see a complete
    #   list of supported operating systems see:
    #   [https://docs.aws.amazon.com/inspector/latest/user/supported.html](
    #   https://docs.aws.amazon.com/inspector/latest/user/supported.html).
    #
    #   `UNSUPPORTED_RUNTIME` - The function was not scanned because it has
    #   an unsupported runtime. To see a complete list of supported runtimes
    #   see:
    #   [https://docs.aws.amazon.com/inspector/latest/user/supported.html](
    #   https://docs.aws.amazon.com/inspector/latest/user/supported.html).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ScanStatus AWS API Documentation
    #
    class ScanStatus < Struct.new(
      :status_code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schedule.
    #
    # @note Schedule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Schedule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Schedule corresponding to the set member.
    #
    # @!attribute [rw] one_time
    #   The schedule's one time.
    #   @return [Types::OneTimeSchedule]
    #
    # @!attribute [rw] daily
    #   The schedule's daily.
    #   @return [Types::DailySchedule]
    #
    # @!attribute [rw] weekly
    #   The schedule's weekly.
    #   @return [Types::WeeklySchedule]
    #
    # @!attribute [rw] monthly
    #   The schedule's monthly.
    #   @return [Types::MonthlySchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :one_time,
      :daily,
      :weekly,
      :monthly,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OneTime < Schedule; end
      class Daily < Schedule; end
      class Weekly < Schedule; end
      class Monthly < Schedule; end
      class Unknown < Schedule; end
    end

    # Defines the scope of repositories to be included in code security
    # scans.
    #
    # @!attribute [rw] project_selection_scope
    #   The scope of projects to be selected for scanning within the
    #   integrated repositories. Setting the value to `ALL` applies the
    #   scope settings to all existing and future projects imported into
    #   Amazon Inspector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ScopeSettings AWS API Documentation
    #
    class ScopeSettings < Struct.new(
      :project_selection_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on the criteria used to define the filter for a vulnerability
    # search.
    #
    # @!attribute [rw] vulnerability_ids
    #   The IDs for specific vulnerabilities.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilitiesFilterCriteria AWS API Documentation
    #
    class SearchVulnerabilitiesFilterCriteria < Struct.new(
      :vulnerability_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   The criteria used to filter the results of a vulnerability search.
    #   @return [Types::SearchVulnerabilitiesFilterCriteria]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilitiesRequest AWS API Documentation
    #
    class SearchVulnerabilitiesRequest < Struct.new(
      :filter_criteria,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vulnerabilities
    #   Details about the listed vulnerability.
    #   @return [Array<Types::Vulnerability>]
    #
    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilitiesResponse AWS API Documentation
    #
    class SearchVulnerabilitiesResponse < Struct.new(
      :vulnerabilities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_job_id
    #   A unique identifier for the scan job.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The unique token that identifies the CIS session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionHealthRequest AWS API Documentation
    #
    class SendCisSessionHealthRequest < Struct.new(
      :scan_job_id,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionHealthResponse AWS API Documentation
    #
    class SendCisSessionHealthResponse < Aws::EmptyStructure; end

    # @!attribute [rw] scan_job_id
    #   A unique identifier for the scan job.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The unique token that identifies the CIS session.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The CIS session telemetry messages.
    #   @return [Array<Types::CisSessionMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionTelemetryRequest AWS API Documentation
    #
    class SendCisSessionTelemetryRequest < Struct.new(
      :scan_job_id,
      :session_token,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SendCisSessionTelemetryResponse AWS API Documentation
    #
    class SendCisSessionTelemetryResponse < Aws::EmptyStructure; end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use Service Quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that exceeds a service quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the counts of aggregated finding per severity.
    #
    # @!attribute [rw] all
    #   The total count of findings from all severities.
    #   @return [Integer]
    #
    # @!attribute [rw] medium
    #   The total count of medium severity findings.
    #   @return [Integer]
    #
    # @!attribute [rw] high
    #   The total count of high severity findings.
    #   @return [Integer]
    #
    # @!attribute [rw] critical
    #   The total count of critical severity findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SeverityCounts AWS API Documentation
    #
    class SeverityCounts < Struct.new(
      :all,
      :medium,
      :high,
      :critical)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the criteria used to sort finding results.
    #
    # @!attribute [rw] field
    #   The finding detail field by which results are sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order by which findings are sorted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SortCriteria AWS API Documentation
    #
    class SortCriteria < Struct.new(
      :field,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start CIS session message.
    #
    # @!attribute [rw] session_token
    #   The unique token that identifies the CIS session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCisSessionMessage AWS API Documentation
    #
    class StartCisSessionMessage < Struct.new(
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_job_id
    #   A unique identifier for the scan job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The start CIS session message.
    #   @return [Types::StartCisSessionMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCisSessionRequest AWS API Documentation
    #
    class StartCisSessionRequest < Struct.new(
      :scan_job_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCisSessionResponse AWS API Documentation
    #
    class StartCisSessionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource identifier for the code repository to scan.
    #   @return [Types::CodeSecurityResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCodeSecurityScanRequest AWS API Documentation
    #
    class StartCodeSecurityScanRequest < Struct.new(
      :client_token,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_id
    #   The unique identifier of the initiated scan.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the initiated scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StartCodeSecurityScanResponse AWS API Documentation
    #
    class StartCodeSecurityScanResponse < Struct.new(
      :scan_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that described the state of Amazon Inspector scans for an
    # account.
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code explaining why the account failed to enable Amazon
    #   Inspector.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message received when the account failed to enable Amazon
    #   Inspector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/State AWS API Documentation
    #
    class State < Struct.new(
      :status,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status counts.
    #
    # @!attribute [rw] failed
    #   The number of checks that failed.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped
    #   The number of checks that were skipped.
    #   @return [Integer]
    #
    # @!attribute [rw] passed
    #   The number of checks that passed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StatusCounts AWS API Documentation
    #
    class StatusCounts < Struct.new(
      :failed,
      :skipped,
      :passed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the step associated with a finding.
    #
    # @!attribute [rw] component_id
    #   The component ID.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The component type.
    #   @return [String]
    #
    # @!attribute [rw] component_arn
    #   The component ARN. The ARN can be null and is not displayed in the
    #   Amazon Web Services console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Step AWS API Documentation
    #
    class Step < Struct.new(
      :component_id,
      :component_type,
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stop CIS message progress.
    #
    # @!attribute [rw] total_checks
    #   The progress' total checks.
    #   @return [Integer]
    #
    # @!attribute [rw] successful_checks
    #   The progress' successful checks.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_checks
    #   The progress' failed checks.
    #   @return [Integer]
    #
    # @!attribute [rw] not_evaluated_checks
    #   The progress' not evaluated checks.
    #   @return [Integer]
    #
    # @!attribute [rw] unknown_checks
    #   The progress' unknown checks.
    #   @return [Integer]
    #
    # @!attribute [rw] not_applicable_checks
    #   The progress' not applicable checks.
    #   @return [Integer]
    #
    # @!attribute [rw] informational_checks
    #   The progress' informational checks.
    #   @return [Integer]
    #
    # @!attribute [rw] error_checks
    #   The progress' error checks.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StopCisMessageProgress AWS API Documentation
    #
    class StopCisMessageProgress < Struct.new(
      :total_checks,
      :successful_checks,
      :failed_checks,
      :not_evaluated_checks,
      :unknown_checks,
      :not_applicable_checks,
      :informational_checks,
      :error_checks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stop CIS session message.
    #
    # @!attribute [rw] status
    #   The status of the message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the message.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the message.
    #   @return [Types::StopCisMessageProgress]
    #
    # @!attribute [rw] compute_platform
    #   The message compute platform.
    #   @return [Types::ComputePlatform]
    #
    # @!attribute [rw] benchmark_version
    #   The message benchmark version.
    #   @return [String]
    #
    # @!attribute [rw] benchmark_profile
    #   The message benchmark profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StopCisSessionMessage AWS API Documentation
    #
    class StopCisSessionMessage < Struct.new(
      :status,
      :reason,
      :progress,
      :compute_platform,
      :benchmark_version,
      :benchmark_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_job_id
    #   A unique identifier for the scan job.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The unique token that identifies the CIS session.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The stop CIS session message.
    #   @return [Types::StopCisSessionMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StopCisSessionRequest AWS API Documentation
    #
    class StopCisSessionRequest < Struct.new(
      :scan_job_id,
      :session_token,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StopCisSessionResponse AWS API Documentation
    #
    class StopCisSessionResponse < Aws::EmptyStructure; end

    # An object that describes the details of a string filter.
    #
    # @!attribute [rw] comparison
    #   The operator to use when comparing values in the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :comparison,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a successful association or disassociation between a
    # code repository and a scan configuration.
    #
    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration that was
    #   successfully associated or disassociated.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   Identifies a specific resource in a code repository that will be
    #   scanned.
    #   @return [Types::CodeSecurityResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SuccessfulAssociationResult AWS API Documentation
    #
    class SuccessfulAssociationResult < Struct.new(
      :scan_configuration_arn,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # A suggested fix for a vulnerability in your Lambda function code.
    #
    # @!attribute [rw] description
    #   The fix's description.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The fix's code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SuggestedFix AWS API Documentation
    #
    class SuggestedFix < Struct.new(
      :description,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag filter.
    #
    # @!attribute [rw] comparison
    #   The tag filter comparison value.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The tag filter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :comparison,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply a tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time.
    #
    # @!attribute [rw] time_of_day
    #   The time of day in 24-hour format (00:00).
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Time AWS API Documentation
    #
    class Time < Struct.new(
      :time_of_day,
      :timezone)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on finding title.
    #
    # @!attribute [rw] titles
    #   The finding titles to aggregate on.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vulnerability_ids
    #   The vulnerability IDs of the findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   The resource type to aggregate on.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] finding_type
    #   The type of finding to aggregate on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TitleAggregation AWS API Documentation
    #
    class TitleAggregation < Struct.new(
      :titles,
      :vulnerability_ids,
      :resource_type,
      :sort_order,
      :sort_by,
      :finding_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains details on the results of a finding
    # aggregation by title.
    #
    # @!attribute [rw] title
    #   The title that the findings were aggregated on.
    #   @return [String]
    #
    # @!attribute [rw] vulnerability_id
    #   The vulnerability ID of the finding.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that represent the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TitleAggregationResponse AWS API Documentation
    #
    class TitleAggregationResponse < Struct.new(
      :title,
      :vulnerability_id,
      :account_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] scan_configuration_arn
    #   The CIS scan configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The scan name for the CIS scan configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_level
    #   The security level for the CIS scan configuration. Security level
    #   refers to the Benchmark levels that CIS assigns to a profile.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for the CIS scan configuration.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] targets
    #   The targets for the CIS scan configuration.
    #   @return [Types::UpdateCisTargets]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCisScanConfigurationRequest AWS API Documentation
    #
    class UpdateCisScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :scan_name,
      :security_level,
      :schedule,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The CIS scan configuration ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCisScanConfigurationResponse AWS API Documentation
    #
    class UpdateCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates CIS targets.
    #
    # @!attribute [rw] account_ids
    #   The target account ids.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_resource_tags
    #   The target resource tags.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCisTargets AWS API Documentation
    #
    class UpdateCisTargets < Struct.new(
      :account_ids,
      :target_resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the code security integration to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The updated integration details specific to the repository provider
    #   type.
    #   @return [Types::UpdateIntegrationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityIntegrationRequest AWS API Documentation
    #
    class UpdateCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the updated code security
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated code security integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityIntegrationResponse AWS API Documentation
    #
    class UpdateCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the scan configuration to update.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The updated configuration settings for the code security scan.
    #   @return [Types::CodeSecurityScanConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityScanConfigurationRequest AWS API Documentation
    #
    class UpdateCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_configuration_arn
    #   The Amazon Resource Name (ARN) of the updated scan configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateCodeSecurityScanConfigurationResponse AWS API Documentation
    #
    class UpdateCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ecr_configuration
    #   Specifies how the ECR automated re-scan will be updated for your
    #   environment.
    #   @return [Types::EcrConfiguration]
    #
    # @!attribute [rw] ec2_configuration
    #   Specifies how the Amazon EC2 automated scan will be updated for your
    #   environment.
    #   @return [Types::Ec2Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateConfigurationRequest AWS API Documentation
    #
    class UpdateConfigurationRequest < Struct.new(
      :ecr_configuration,
      :ec2_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateConfigurationResponse AWS API Documentation
    #
    class UpdateConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] activate_deep_inspection
    #   Specify `TRUE` to activate Amazon Inspector deep inspection in your
    #   account, or `FALSE` to deactivate. Member accounts in an
    #   organization cannot deactivate deep inspection, instead the
    #   delegated administrator for the organization can deactivate a member
    #   account using [BatchUpdateMemberEc2DeepInspectionStatus][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html
    #   @return [Boolean]
    #
    # @!attribute [rw] package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEc2DeepInspectionConfigurationRequest AWS API Documentation
    #
    class UpdateEc2DeepInspectionConfigurationRequest < Struct.new(
      :activate_deep_inspection,
      :package_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package_paths
    #   The current Amazon Inspector deep inspection custom paths for your
    #   account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] org_package_paths
    #   The current Amazon Inspector deep inspection custom paths for the
    #   organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector deep inspection in your account.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message explaining why new Amazon Inspector deep inspection
    #   custom paths could not be added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEc2DeepInspectionConfigurationResponse AWS API Documentation
    #
    class UpdateEc2DeepInspectionConfigurationResponse < Struct.new(
      :package_paths,
      :org_package_paths,
      :status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   A KMS key ID for the encryption key.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The scan type for the encryption key.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for the encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEncryptionKeyRequest AWS API Documentation
    #
    class UpdateEncryptionKeyRequest < Struct.new(
      :kms_key_id,
      :scan_type,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEncryptionKeyResponse AWS API Documentation
    #
    class UpdateEncryptionKeyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] action
    #   Specifies the action that is to be applied to the findings that
    #   match the filter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Defines the criteria to be update in the filter.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_arn
    #   The Amazon Resource Number (ARN) of the filter to update.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the filter was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateFilterRequest AWS API Documentation
    #
    class UpdateFilterRequest < Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :filter_arn,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) of the successfully updated filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateFilterResponse AWS API Documentation
    #
    class UpdateFilterResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details required to update an integration with GitHub.
    #
    # @!attribute [rw] code
    #   The authorization code received from GitHub to update the
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   The installation ID of the GitHub App associated with the
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateGitHubIntegrationDetail AWS API Documentation
    #
    class UpdateGitHubIntegrationDetail < Struct.new(
      :code,
      :installation_id)
      SENSITIVE = [:code]
      include Aws::Structure
    end

    # Contains details required to update an integration with a self-managed
    # GitLab instance.
    #
    # @!attribute [rw] auth_code
    #   The authorization code received from the self-managed GitLab
    #   instance to update the integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateGitLabSelfManagedIntegrationDetail AWS API Documentation
    #
    class UpdateGitLabSelfManagedIntegrationDetail < Struct.new(
      :auth_code)
      SENSITIVE = [:auth_code]
      include Aws::Structure
    end

    # Contains details required to update a code security integration with a
    # specific repository provider.
    #
    # @note UpdateIntegrationDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] gitlab_self_managed
    #   Details specific to updating an integration with a self-managed
    #   GitLab instance.
    #   @return [Types::UpdateGitLabSelfManagedIntegrationDetail]
    #
    # @!attribute [rw] github
    #   Details specific to updating an integration with GitHub.
    #   @return [Types::UpdateGitHubIntegrationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateIntegrationDetails AWS API Documentation
    #
    class UpdateIntegrationDetails < Struct.new(
      :gitlab_self_managed,
      :github,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GitlabSelfManaged < UpdateIntegrationDetails; end
      class Github < UpdateIntegrationDetails; end
      class Unknown < UpdateIntegrationDetails; end
    end

    # @!attribute [rw] org_package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrgEc2DeepInspectionConfigurationRequest AWS API Documentation
    #
    class UpdateOrgEc2DeepInspectionConfigurationRequest < Struct.new(
      :org_package_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrgEc2DeepInspectionConfigurationResponse AWS API Documentation
    #
    class UpdateOrgEc2DeepInspectionConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable
    #   Defines which scan types are enabled automatically for new members
    #   of your Amazon Inspector organization.
    #   @return [Types::AutoEnable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_enable
    #   The updated status of scan types automatically enabled for new
    #   members of your Amazon Inspector organization.
    #   @return [Types::AutoEnable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrganizationConfigurationResponse AWS API Documentation
    #
    class UpdateOrganizationConfigurationResponse < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains usage information about the cost of Amazon Inspector
    # operation.
    #
    # @!attribute [rw] type
    #   The type scan.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   The total of usage.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_monthly_cost
    #   The estimated monthly cost of Amazon Inspector.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency type used when calculating usage data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Usage AWS API Documentation
    #
    class Usage < Struct.new(
      :type,
      :total,
      :estimated_monthly_cost,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The total of usage for an account ID.
    #
    # @!attribute [rw] account_id
    #   The account ID of the account that usage data was retrieved for.
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   An object representing the total usage for an account.
    #   @return [Array<Types::Usage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UsageTotal AWS API Documentation
    #
    class UsageTotal < Struct.new(
      :account_id,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed validation due to missing required fields or
    # having invalid inputs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes a validation exception.
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The validation exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a specific vulnerability Amazon Inspector can
    # detect.
    #
    # @!attribute [rw] id
    #   The ID for the specific vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] cwes
    #   The Common Weakness Enumeration (CWE) associated with the
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cisa_data
    #   An object that contains the Cybersecurity and Infrastructure
    #   Security Agency (CISA) details for the vulnerability.
    #   @return [Types::CisaData]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information. Possible results are
    #   `RHEL`, `AMAZON_CVE`, `DEBIAN` or `NVD`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] atig_data
    #   An object that contains information about the Amazon Web Services
    #   Threat Intel Group (ATIG) details for the vulnerability.
    #   @return [Types::AtigData]
    #
    # @!attribute [rw] vendor_severity
    #   The severity assigned by the vendor.
    #   @return [String]
    #
    # @!attribute [rw] cvss3
    #   An object that contains the Common Vulnerability Scoring System
    #   (CVSS) Version 3 details for the vulnerability.
    #   @return [Types::Cvss3]
    #
    # @!attribute [rw] related_vulnerabilities
    #   A list of related vulnerabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cvss2
    #   An object that contains the Common Vulnerability Scoring System
    #   (CVSS) Version 2 details for the vulnerability.
    #   @return [Types::Cvss2]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time when the vendor created this vulnerability.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time when the vendor last updated this vulnerability.
    #   @return [Time]
    #
    # @!attribute [rw] source_url
    #   A link to the official source material for this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] reference_urls
    #   Links to various resources with more information on this
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exploit_observed
    #   An object that contains details on when the exploit was observed.
    #   @return [Types::ExploitObserved]
    #
    # @!attribute [rw] detection_platforms
    #   Platforms that the vulnerability can be detected on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] epss
    #   An object that contains the Exploit Prediction Scoring System (EPSS)
    #   score for a vulnerability.
    #   @return [Types::Epss]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Vulnerability AWS API Documentation
    #
    class Vulnerability < Struct.new(
      :id,
      :cwes,
      :cisa_data,
      :source,
      :description,
      :atig_data,
      :vendor_severity,
      :cvss3,
      :related_vulnerabilities,
      :cvss2,
      :vendor_created_at,
      :vendor_updated_at,
      :source_url,
      :reference_urls,
      :exploit_observed,
      :detection_platforms,
      :epss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the vulnerable package identified by a finding.
    #
    # @!attribute [rw] name
    #   The name of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_hash
    #   The source layer hash of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the vulnerable package.
    #   @return [Integer]
    #
    # @!attribute [rw] release
    #   The release of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] arch
    #   The architecture of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The package manager of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file path of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] fixed_in_version
    #   The version of the package that contains the vulnerability fix.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The code to run in your environment to update packages with a fix
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] source_lambda_layer_arn
    #   The Amazon Resource Number (ARN) of the Amazon Web Services Lambda
    #   function affected by a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/VulnerablePackage AWS API Documentation
    #
    class VulnerablePackage < Struct.new(
      :name,
      :version,
      :source_layer_hash,
      :epoch,
      :release,
      :arch,
      :package_manager,
      :file_path,
      :fixed_in_version,
      :remediation,
      :source_lambda_layer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A weekly schedule.
    #
    # @!attribute [rw] start_time
    #   The weekly schedule's start time.
    #   @return [Types::Time]
    #
    # @!attribute [rw] days
    #   The weekly schedule's days.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/WeeklySchedule AWS API Documentation
    #
    class WeeklySchedule < Struct.new(
      :start_time,
      :days)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


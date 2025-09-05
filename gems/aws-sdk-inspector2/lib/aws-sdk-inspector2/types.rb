# frozen_string_literal: true

# This is generated code!

module Aws::Inspector2
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #          <p> For <code>Enable</code>, you receive this error if you attempt to use a feature in an
    #          unsupported Amazon Web Services Region. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon Web Services account within your environment that Amazon Inspector has been enabled for.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #   @return [String]
    # @!attribute resource_status
    #   <p>Details of the status of Amazon Inspector scans by resource type.</p>
    #   @return [Types::ResourceStatus]
    class Account < Struct.new(
      :account_id,
      :status,
      :resource_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about an aggregation response based on
    #          Amazon Web Services accounts.</p>
    # @!attribute finding_type
    #   <p>The type of finding.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort by.</p>
    #   @return [String]
    class AccountAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An aggregation of findings by Amazon Web Services account ID.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>The number of findings by severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute exploit_available_count
    #   <p> The number of findings that have an exploit available. </p>
    #   @return [Integer]
    # @!attribute fix_available_count
    #   <p> Details about the number of fixes. </p>
    #   @return [Integer]
    class AccountAggregationResponse < Struct.new(
      :account_id,
      :severity_counts,
      :exploit_available_count,
      :fix_available_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object with details the status of an Amazon Web Services account within your Amazon Inspector
    #          environment.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute state
    #   <p>An object detailing the status of Amazon Inspector for the account.</p>
    #   @return [Types::State]
    # @!attribute resource_state
    #   <p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>
    #   @return [Types::ResourceState]
    class AccountState < Struct.new(
      :account_id,
      :state,
      :resource_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an aggregation request.</p>
    # @!attribute account_aggregation
    #   <p>An object that contains details about an aggregation request based on Amazon Web Services account
    #            IDs.</p>
    #   @return [Types::AccountAggregation]
    # @!attribute ami_aggregation
    #   <p>An object that contains details about an aggregation request based on Amazon Machine
    #            Images (AMIs).</p>
    #   @return [Types::AmiAggregation]
    # @!attribute aws_ecr_container_aggregation
    #   <p>An object that contains details about an aggregation request based on Amazon ECR container
    #            images.</p>
    #   @return [Types::AwsEcrContainerAggregation]
    # @!attribute ec2_instance_aggregation
    #   <p>An object that contains details about an aggregation request based on Amazon EC2
    #            instances.</p>
    #   @return [Types::Ec2InstanceAggregation]
    # @!attribute finding_type_aggregation
    #   <p>An object that contains details about an aggregation request based on finding
    #            types.</p>
    #   @return [Types::FindingTypeAggregation]
    # @!attribute image_layer_aggregation
    #   <p>An object that contains details about an aggregation request based on container image
    #            layers.</p>
    #   @return [Types::ImageLayerAggregation]
    # @!attribute package_aggregation
    #   <p>An object that contains details about an aggregation request based on operating system
    #            package type.</p>
    #   @return [Types::PackageAggregation]
    # @!attribute repository_aggregation
    #   <p>An object that contains details about an aggregation request based on Amazon ECR
    #            repositories.</p>
    #   @return [Types::RepositoryAggregation]
    # @!attribute title_aggregation
    #   <p>An object that contains details about an aggregation request based on finding
    #            title.</p>
    #   @return [Types::TitleAggregation]
    # @!attribute lambda_layer_aggregation
    #   <p>Returns an object with findings aggregated by Amazon Web Services Lambda layer.</p>
    #   @return [Types::LambdaLayerAggregation]
    # @!attribute lambda_function_aggregation
    #   <p>Returns an object with findings aggregated by Amazon Web Services Lambda function.</p>
    #   @return [Types::LambdaFunctionAggregation]
    # @!attribute code_repository_aggregation
    #   <p>An object that contains details about an aggregation request based on code
    #            repositories.</p>
    #   @return [Types::CodeRepositoryAggregation]
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
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

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

    # <p>A structure that contains details about the results of an aggregation type.</p>
    # @!attribute account_aggregation
    #   <p>An object that contains details about an aggregation response based on Amazon Web Services account
    #            IDs.</p>
    #   @return [Types::AccountAggregationResponse]
    # @!attribute ami_aggregation
    #   <p>An object that contains details about an aggregation response based on Amazon Machine
    #            Images (AMIs).</p>
    #   @return [Types::AmiAggregationResponse]
    # @!attribute aws_ecr_container_aggregation
    #   <p>An object that contains details about an aggregation response based on Amazon ECR container
    #            images.</p>
    #   @return [Types::AwsEcrContainerAggregationResponse]
    # @!attribute ec2_instance_aggregation
    #   <p>An object that contains details about an aggregation response based on Amazon EC2
    #            instances.</p>
    #   @return [Types::Ec2InstanceAggregationResponse]
    # @!attribute finding_type_aggregation
    #   <p>An object that contains details about an aggregation response based on finding
    #            types.</p>
    #   @return [Types::FindingTypeAggregationResponse]
    # @!attribute image_layer_aggregation
    #   <p>An object that contains details about an aggregation response based on container image
    #            layers.</p>
    #   @return [Types::ImageLayerAggregationResponse]
    # @!attribute package_aggregation
    #   <p>An object that contains details about an aggregation response based on operating system
    #            package type.</p>
    #   @return [Types::PackageAggregationResponse]
    # @!attribute repository_aggregation
    #   <p>An object that contains details about an aggregation response based on Amazon ECR
    #            repositories.</p>
    #   @return [Types::RepositoryAggregationResponse]
    # @!attribute title_aggregation
    #   <p>An object that contains details about an aggregation response based on finding
    #            title.</p>
    #   @return [Types::TitleAggregationResponse]
    # @!attribute lambda_layer_aggregation
    #   <p>An aggregation of findings by Amazon Web Services Lambda layer.</p>
    #   @return [Types::LambdaLayerAggregationResponse]
    # @!attribute lambda_function_aggregation
    #   <p>An aggregation of findings by Amazon Web Services Lambda function.</p>
    #   @return [Types::LambdaFunctionAggregationResponse]
    # @!attribute code_repository_aggregation
    #   <p>An object that contains details about an aggregation response based on code
    #            repositories.</p>
    #   @return [Types::CodeRepositoryAggregationResponse]
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
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

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

    # <p>The details that define an aggregation based on Amazon machine images (AMIs).</p>
    # @!attribute amis
    #   <p>The IDs of AMIs to aggregate findings for.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class AmiAggregation < Struct.new(
      :amis,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding aggregation by AMI.</p>
    # @!attribute ami
    #   <p>The ID of the AMI that findings were aggregated for.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the AMI.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute affected_instances
    #   <p>The IDs of Amazon EC2 instances using this AMI.</p>
    #   @return [Integer]
    class AmiAggregationResponse < Struct.new(
      :ami,
      :account_id,
      :severity_counts,
      :affected_instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a request to associate a code repository with a scan
    #          configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Identifies a specific resource in a code repository that will be scanned.</p>
    #   @return [Types::CodeSecurityResource]
    class AssociateConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to be associated.</p>
    #   @return [String]
    class AssociateMemberInput < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the successfully associated member account.</p>
    #   @return [String]
    class AssociateMemberOutput < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Threat Intel Group (ATIG) details for a specific
    #          vulnerability.</p>
    # @!attribute first_seen
    #   <p>The date and time this vulnerability was first observed.</p>
    #   @return [Time]
    # @!attribute last_seen
    #   <p>The date and time this vulnerability was last observed.</p>
    #   @return [Time]
    # @!attribute targets
    #   <p>The commercial sectors this vulnerability targets.</p>
    #   @return [Array<String>]
    # @!attribute ttps
    #   <p>The <a href="https://attack.mitre.org/">MITRE ATT&amp;CK</a> tactics, techniques,
    #            and procedures (TTPs) associated with vulnerability.</p>
    #   @return [Array<String>]
    class AtigData < Struct.new(
      :first_seen,
      :last_seen,
      :targets,
      :ttps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents which scan types are automatically enabled for new members of your Amazon Inspector
    #          organization.</p>
    # @!attribute ec2
    #   <p>Represents whether Amazon EC2 scans are automatically enabled for new members of your Amazon Inspector
    #            organization.</p>
    #   @return [Boolean]
    # @!attribute ecr
    #   <p>Represents whether Amazon ECR scans are automatically enabled for new members of your Amazon Inspector
    #            organization.</p>
    #   @return [Boolean]
    # @!attribute lambda
    #   <p>Represents whether Amazon Web Services Lambda standard scans are automatically enabled
    #            for new members of your Amazon Inspector organization. </p>
    #   @return [Boolean]
    # @!attribute lambda_code
    #   <p>Represents whether Lambda code scans are automatically enabled for new members of your
    #            Amazon Inspector organization. </p>
    #   @return [Boolean]
    # @!attribute code_repository
    #   <p>Represents whether code repository scans are automatically enabled for new members of
    #            your Amazon Inspector organization.</p>
    #   @return [Boolean]
    class AutoEnable < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Amazon EC2 instance involved in a finding.</p>
    # @!attribute type
    #   <p>The type of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The image ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute ip_v4_addresses
    #   <p>The IPv4 addresses of the Amazon EC2 instance.</p>
    #   @return [Array<String>]
    # @!attribute ip_v6_addresses
    #   <p>The IPv6 addresses of the Amazon EC2 instance.</p>
    #   @return [Array<String>]
    # @!attribute key_name
    #   <p>The name of the key pair used to launch the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute iam_instance_profile_arn
    #   <p>The IAM instance profile ARN of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The subnet ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute launched_at
    #   <p>The date and time the Amazon EC2 instance was launched at.</p>
    #   @return [Time]
    # @!attribute platform
    #   <p>The platform of the Amazon EC2 instance.</p>
    #   @return [String]
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
      :platform,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An aggregation of information about Amazon ECR containers.</p>
    # @!attribute resource_ids
    #   <p>The container resource IDs.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute image_shas
    #   <p>The image SHA values.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute repositories
    #   <p>The container repositories.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute architectures
    #   <p>The architecture of the containers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute image_tags
    #   <p>The image tags.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort by.</p>
    #   @return [String]
    # @!attribute last_in_use_at
    #   <p>The last time an Amazon ECR image was used in an Amazon ECS task or
    #               Amazon EKS pod.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute in_use_count
    #   <p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>
    #   @return [Array<Types::NumberFilter>]
    class AwsEcrContainerAggregation < Struct.new(
      :resource_ids,
      :image_shas,
      :repositories,
      :architectures,
      :image_tags,
      :sort_order,
      :sort_by,
      :last_in_use_at,
      :in_use_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An aggregation of information about Amazon ECR containers.</p>
    # @!attribute resource_id
    #   <p>The resource ID of the container.</p>
    #   @return [String]
    # @!attribute image_sha
    #   <p>The SHA value of the container image.</p>
    #   @return [String]
    # @!attribute repository
    #   <p>The container repository.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The architecture of the container.</p>
    #   @return [String]
    # @!attribute image_tags
    #   <p>The container image stags.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the account that owns the container.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>The number of finding by severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute last_in_use_at
    #   <p>The last time an Amazon ECR image was used in an Amazon ECS task or
    #               Amazon EKS pod.</p>
    #   @return [Time]
    # @!attribute in_use_count
    #   <p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>
    #   @return [Integer]
    class AwsEcrContainerAggregationResponse < Struct.new(
      :resource_id,
      :image_sha,
      :repository,
      :architecture,
      :image_tags,
      :account_id,
      :severity_counts,
      :last_in_use_at,
      :in_use_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The image details of the Amazon ECR container image.</p>
    # @!attribute repository_name
    #   <p>The name of the repository the Amazon ECR container image resides in.</p>
    #   @return [String]
    # @!attribute image_tags
    #   <p>The image tags attached to the Amazon ECR container image.</p>
    #   @return [Array<String>]
    # @!attribute pushed_at
    #   <p>The date and time the Amazon ECR container image was pushed.</p>
    #   @return [Time]
    # @!attribute author
    #   <p>The image author of the Amazon ECR container image.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The architecture of the Amazon ECR container image.</p>
    #   @return [String]
    # @!attribute image_hash
    #   <p>The image hash of the Amazon ECR container image.</p>
    #   @return [String]
    # @!attribute registry
    #   <p>The registry for the Amazon ECR container image.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the Amazon ECR container image.</p>
    #   @return [String]
    # @!attribute last_in_use_at
    #   <p>The last time an Amazon ECR image was used in an Amazon ECS task or
    #               Amazon EKS pod.</p>
    #   @return [Time]
    # @!attribute in_use_count
    #   <p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>
    #   @return [Integer]
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
      :in_use_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata about tasks where an image was in use.</p>
    # @!attribute details_group
    #   <p>The details group information for a task in a cluster.</p>
    #   @return [String]
    # @!attribute task_definition_arn
    #   <p>The task definition ARN.</p>
    #   @return [String]
    class AwsEcsMetadataDetails < Struct.new(
      :details_group,
      :task_definition_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for an Amazon EKS pod where an Amazon ECR image is in
    #          use.</p>
    # @!attribute namespace
    #   <p>The namespace for an Amazon EKS cluster.</p>
    #   @return [String]
    # @!attribute workload_info_list
    #   <p>The list of workloads.</p>
    #   @return [Array<Types::AwsEksWorkloadInfo>]
    class AwsEksMetadataDetails < Struct.new(
      :namespace,
      :workload_info_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the workload.</p>
    # @!attribute name
    #   <p>The name of the workload.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The workload type.</p>
    #   @return [String]
    class AwsEksWorkloadInfo < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of information about the Amazon Web Services Lambda function.</p>
    # @!attribute function_name
    #   <p>The name of the Amazon Web Services Lambda function.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime environment for the Amazon Web Services Lambda function.</p>
    #   @return [String]
    # @!attribute code_sha256
    #   <p>The SHA256 hash of the Amazon Web Services Lambda function's deployment package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Amazon Web Services Lambda function.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Web Services Lambda function's execution role.</p>
    #   @return [String]
    # @!attribute layers
    #   <p>The Amazon Web Services Lambda function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html"> layers</a>. A
    #            Lambda function can have up to five layers.</p>
    #   @return [Array<String>]
    # @!attribute vpc_config
    #   <p>The Amazon Web Services Lambda function's networking configuration.</p>
    #   @return [Types::LambdaVpcConfig]
    # @!attribute package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set
    #               <code>Zip</code> for .zip file archive.</p>
    #   @return [String]
    # @!attribute architectures
    #   <p>The instruction set architecture that the Amazon Web Services Lambda function supports.
    #            Architecture is a string array with one of the valid values. The default architecture value
    #            is <code>x86_64</code>.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_at
    #   <p>The date and time that a user last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601
    #            format</a>
    #            </p>
    #   @return [Time]
    class AwsLambdaFunctionDetails < Struct.new(
      :function_name,
      :runtime,
      :code_sha256,
      :version,
      :execution_role_arn,
      :layers,
      :vpc_config,
      :package_type,
      :architectures,
      :last_modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more tags submitted as part of the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute associate_configuration_requests
    #   <p>A list of code repositories to associate with the specified scan configuration.</p>
    #   @return [Array<Types::AssociateConfigurationRequest>]
    class BatchAssociateCodeSecurityScanConfigurationRequest < Struct.new(
      :associate_configuration_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_associations
    #   <p>Details of any code repositories that failed to be associated with the scan
    #            configuration.</p>
    #   @return [Array<Types::FailedAssociationResult>]
    # @!attribute successful_associations
    #   <p>Details of code repositories that were successfully associated with the scan
    #            configuration.</p>
    #   @return [Array<Types::SuccessfulAssociationResult>]
    class BatchAssociateCodeSecurityScanConfigurationResponse < Struct.new(
      :failed_associations,
      :successful_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disassociate_configuration_requests
    #   <p>A list of code repositories to disassociate from the specified scan
    #            configuration.</p>
    #   @return [Array<Types::DisassociateConfigurationRequest>]
    class BatchDisassociateCodeSecurityScanConfigurationRequest < Struct.new(
      :disassociate_configuration_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_associations
    #   <p>Details of any code repositories that failed to be disassociated from the scan
    #            configuration.</p>
    #   @return [Array<Types::FailedAssociationResult>]
    # @!attribute successful_associations
    #   <p>Details of code repositories that were successfully disassociated from the scan
    #            configuration.</p>
    #   @return [Array<Types::SuccessfulAssociationResult>]
    class BatchDisassociateCodeSecurityScanConfigurationResponse < Struct.new(
      :failed_associations,
      :successful_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The 12-digit Amazon Web Services account IDs of the accounts to retrieve Amazon Inspector status for.</p>
    #   @return [Array<String>]
    class BatchGetAccountStatusInput < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>An array of objects that provide details on the status of Amazon Inspector for each of the
    #            requested accounts.</p>
    #   @return [Array<Types::AccountState>]
    # @!attribute failed_accounts
    #   <p>An array of objects detailing any accounts that failed to enable Amazon Inspector and why.</p>
    #   @return [Array<Types::FailedAccount>]
    class BatchGetAccountStatusOutput < Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>An array of finding ARNs for the findings you want to retrieve code snippets
    #            from.</p>
    #   @return [Array<String>]
    class BatchGetCodeSnippetRequest < Struct.new(
      :finding_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_snippet_results
    #   <p>The retrieved code snippets associated with the provided finding ARNs.</p>
    #   @return [Array<Types::CodeSnippetResult>]
    # @!attribute errors
    #   <p>Any errors Amazon Inspector encountered while trying to retrieve the requested code
    #            snippets.</p>
    #   @return [Array<Types::CodeSnippetError>]
    class BatchGetCodeSnippetResponse < Struct.new(
      :code_snippet_results,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_arns
    #   <p>A list of finding ARNs.</p>
    #   @return [Array<String>]
    class BatchGetFindingDetailsRequest < Struct.new(
      :finding_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_details
    #   <p>A finding's vulnerability details.</p>
    #   @return [Array<Types::FindingDetail>]
    # @!attribute errors
    #   <p>Error information for findings that details could not be returned for.</p>
    #   @return [Array<Types::FindingDetailsError>]
    class BatchGetFindingDetailsResponse < Struct.new(
      :finding_details,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The account IDs to get free trial status for.</p>
    #   @return [Array<String>]
    class BatchGetFreeTrialInfoInput < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>An array of objects that provide Amazon Inspector free trial details for each of the requested
    #            accounts. </p>
    #   @return [Array<Types::FreeTrialAccountInfo>]
    # @!attribute failed_accounts
    #   <p>An array of objects detailing any accounts that free trial data could not be returned
    #            for.</p>
    #   @return [Array<Types::FreeTrialInfoError>]
    class BatchGetFreeTrialInfoOutput < Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The unique identifiers for the Amazon Web Services accounts to retrieve Amazon Inspector deep inspection
    #            activation status for. </p>
    #   @return [Array<String>]
    class BatchGetMemberEc2DeepInspectionStatusRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>An array of objects that provide details on the activation status of Amazon Inspector deep
    #            inspection for each of the requested accounts. </p>
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatusState>]
    # @!attribute failed_account_ids
    #   <p>An array of objects that provide details on any accounts that failed to activate Amazon Inspector
    #            deep inspection and why. </p>
    #   @return [Array<Types::FailedMemberAccountEc2DeepInspectionStatusState>]
    class BatchGetMemberEc2DeepInspectionStatusResponse < Struct.new(
      :account_ids,
      :failed_account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The unique identifiers for the Amazon Web Services accounts to change Amazon Inspector deep inspection status
    #            for.</p>
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatus>]
    class BatchUpdateMemberEc2DeepInspectionStatusRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>An array of objects that provide details for each of the accounts that Amazon Inspector deep
    #            inspection status was successfully changed for. </p>
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatusState>]
    # @!attribute failed_account_ids
    #   <p>An array of objects that provide details for each of the accounts that Amazon Inspector deep
    #            inspection status could not be successfully changed for. </p>
    #   @return [Array<Types::FailedMemberAccountEc2DeepInspectionStatusState>]
    class BatchUpdateMemberEc2DeepInspectionStatusResponse < Struct.new(
      :account_ids,
      :failed_account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report to be canceled.</p>
    #   @return [String]
    class CancelFindingsReportInput < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the canceled report.</p>
    #   @return [String]
    class CancelFindingsReportOutput < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The report ID of the SBOM export to cancel.</p>
    #   @return [String]
    class CancelSbomExportRequest < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The report ID of the canceled SBOM export.</p>
    #   @return [String]
    class CancelSbomExportResponse < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CIS check.</p>
    # @!attribute scan_arn
    #   <p>The scan ARN for the CIS check scan ARN.</p>
    #   @return [String]
    # @!attribute check_id
    #   <p>The check ID for the CIS check.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The CIS check title.</p>
    #   @return [String]
    # @!attribute check_description
    #   <p>The description for the CIS check.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The CIS check level.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID for the CIS check.</p>
    #   @return [String]
    # @!attribute status_counts
    #   <p>The CIS check status counts.</p>
    #   @return [Types::StatusCounts]
    # @!attribute platform
    #   <p>The CIS check platform.</p>
    #   @return [String]
    class CisCheckAggregation < Struct.new(
      :scan_arn,
      :check_id,
      :title,
      :check_description,
      :level,
      :account_id,
      :status_counts,
      :platform,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS date filter.</p>
    # @!attribute earliest_scan_start_time
    #   <p>The CIS date filter's earliest scan start time.</p>
    #   @return [Time]
    # @!attribute latest_scan_start_time
    #   <p>The CIS date filter's latest scan start time.</p>
    #   @return [Time]
    class CisDateFilter < Struct.new(
      :earliest_scan_start_time,
      :latest_scan_start_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS finding status filter.</p>
    # @!attribute comparison
    #   <p>The comparison value of the CIS finding status filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CIS finding status filter.</p>
    #   @return [String]
    class CisFindingStatusFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS number filter.</p>
    # @!attribute upper_inclusive
    #   <p>The CIS number filter's upper inclusive.</p>
    #   @return [Integer]
    # @!attribute lower_inclusive
    #   <p>The CIS number filter's lower inclusive.</p>
    #   @return [Integer]
    class CisNumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS result status filter.</p>
    # @!attribute comparison
    #   <p>The comparison value of the CIS result status filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CIS result status filter.</p>
    #   @return [String]
    class CisResultStatusFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS scan.</p>
    # @!attribute scan_arn
    #   <p>The CIS scan's ARN.</p>
    #   @return [String]
    # @!attribute scan_configuration_arn
    #   <p>The CIS scan's configuration ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The CIS scan's status.</p>
    #   @return [String]
    # @!attribute scan_name
    #   <p>The the name of the scan configuration that's associated with this scan.</p>
    #   @return [String]
    # @!attribute scan_date
    #   <p>The CIS scan's date.</p>
    #   @return [Time]
    # @!attribute failed_checks
    #   <p>The CIS scan's failed checks.</p>
    #   @return [Integer]
    # @!attribute total_checks
    #   <p>The CIS scan's total checks.</p>
    #   @return [Integer]
    # @!attribute targets
    #   <p>The CIS scan's targets.</p>
    #   @return [Types::CisTargets]
    # @!attribute scheduled_by
    #   <p>The account or organization that schedules the CIS scan.</p>
    #   @return [String]
    # @!attribute security_level
    #   <p> The security level for the CIS scan. Security level refers to the Benchmark levels that
    #            CIS assigns to a profile. </p>
    #   @return [String]
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
      :security_level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS scan configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The CIS scan configuration's scan configuration ARN.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The CIS scan configuration's owner ID.</p>
    #   @return [String]
    # @!attribute scan_name
    #   <p>The name of the CIS scan configuration.</p>
    #   @return [String]
    # @!attribute security_level
    #   <p>The CIS scan configuration's security level.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The CIS scan configuration's schedule.</p>
    #   @return [Types::Schedule]
    # @!attribute targets
    #   <p>The CIS scan configuration's targets.</p>
    #   @return [Types::CisTargets]
    # @!attribute tags
    #   <p>The CIS scan configuration's tags.</p>
    #   @return [Hash<String, String>]
    class CisScanConfiguration < Struct.new(
      :scan_configuration_arn,
      :owner_id,
      :scan_name,
      :security_level,
      :schedule,
      :targets,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS scan result details.</p>
    # @!attribute scan_arn
    #   <p>The CIS scan result details' scan ARN.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The CIS scan result details' account ID.</p>
    #   @return [String]
    # @!attribute target_resource_id
    #   <p>The CIS scan result details' target resource ID.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The CIS scan result details' platform.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The CIS scan result details' status.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The CIS scan result details' status reason.</p>
    #   @return [String]
    # @!attribute check_id
    #   <p>The CIS scan result details' check ID.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The CIS scan result details' title.</p>
    #   @return [String]
    # @!attribute check_description
    #   <p>The account ID that's associated with the CIS scan result details.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The CIS scan result details' remediation.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The CIS scan result details' level.</p>
    #   @return [String]
    # @!attribute finding_arn
    #   <p>The CIS scan result details' finding ARN.</p>
    #   @return [String]
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
      :finding_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS scan result details filter criteria.</p>
    # @!attribute finding_status_filters
    #   <p>The criteria's finding status filters.</p>
    #   @return [Array<Types::CisFindingStatusFilter>]
    # @!attribute check_id_filters
    #   <p>The criteria's check ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute title_filters
    #   <p>The criteria's title filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute security_level_filters
    #   <p> The criteria's security level filters. . Security level refers to the Benchmark levels
    #            that CIS assigns to a profile. </p>
    #   @return [Array<Types::CisSecurityLevelFilter>]
    # @!attribute finding_arn_filters
    #   <p>The criteria's finding ARN filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    class CisScanResultDetailsFilterCriteria < Struct.new(
      :finding_status_filters,
      :check_id_filters,
      :title_filters,
      :security_level_filters,
      :finding_arn_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The scan results aggregated by checks filter criteria.</p>
    # @!attribute account_id_filters
    #   <p>The criteria's account ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute check_id_filters
    #   <p>The criteria's check ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute title_filters
    #   <p>The criteria's title filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute platform_filters
    #   <p>The criteria's platform filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute failed_resources_filters
    #   <p>The criteria's failed resources filters.</p>
    #   @return [Array<Types::CisNumberFilter>]
    # @!attribute security_level_filters
    #   <p>The criteria's security level filters.</p>
    #   @return [Array<Types::CisSecurityLevelFilter>]
    class CisScanResultsAggregatedByChecksFilterCriteria < Struct.new(
      :account_id_filters,
      :check_id_filters,
      :title_filters,
      :platform_filters,
      :failed_resources_filters,
      :security_level_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The scan results aggregated by target resource filter criteria.</p>
    # @!attribute account_id_filters
    #   <p>The criteria's account ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute status_filters
    #   <p>The criteria's status filter.</p>
    #   @return [Array<Types::CisResultStatusFilter>]
    # @!attribute check_id_filters
    #   <p>The criteria's check ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute target_resource_id_filters
    #   <p>The criteria's target resource ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute target_resource_tag_filters
    #   <p>The criteria's target resource tag filters.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute platform_filters
    #   <p>The criteria's platform filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute target_status_filters
    #   <p>The criteria's target status filters.</p>
    #   @return [Array<Types::CisTargetStatusFilter>]
    # @!attribute target_status_reason_filters
    #   <p>The criteria's target status reason filters.</p>
    #   @return [Array<Types::CisTargetStatusReasonFilter>]
    # @!attribute failed_checks_filters
    #   <p>The criteria's failed checks filters.</p>
    #   @return [Array<Types::CisNumberFilter>]
    class CisScanResultsAggregatedByTargetResourceFilterCriteria < Struct.new(
      :account_id_filters,
      :status_filters,
      :check_id_filters,
      :target_resource_id_filters,
      :target_resource_tag_filters,
      :platform_filters,
      :target_status_filters,
      :target_status_reason_filters,
      :failed_checks_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS scan status filter.</p>
    # @!attribute comparison
    #   <p>The filter comparison value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The filter value.</p>
    #   @return [String]
    class CisScanStatusFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The CIS security level filter. Security level refers to the Benchmark levels that CIS
    #          assigns to a profile. </p>
    # @!attribute comparison
    #   <p>The CIS security filter comparison value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The CIS security filter value.</p>
    #   @return [String]
    class CisSecurityLevelFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS session message.</p>
    # @!attribute rule_id
    #   <p>The rule ID for the CIS session message.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the CIS session message.</p>
    #   @return [String]
    # @!attribute cis_rule_details
    #   <p>The CIS rule details for the CIS session message.</p>
    #   @return [String]
    class CisSessionMessage < Struct.new(
      :rule_id,
      :status,
      :cis_rule_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS string filter.</p>
    # @!attribute comparison
    #   <p>The comparison value of the CIS string filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CIS string filter.</p>
    #   @return [String]
    class CisStringFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS target resource aggregation.</p>
    # @!attribute scan_arn
    #   <p>The scan ARN for the CIS target resource.</p>
    #   @return [String]
    # @!attribute target_resource_id
    #   <p>The ID of the target resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID for the CIS target resource.</p>
    #   @return [String]
    # @!attribute target_resource_tags
    #   <p>The tag for the target resource.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute status_counts
    #   <p>The target resource status counts.</p>
    #   @return [Types::StatusCounts]
    # @!attribute platform
    #   <p>The platform for the CIS target resource.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The status of the target resource.</p>
    #   @return [String]
    # @!attribute target_status_reason
    #   <p>The reason for the target resource.</p>
    #   @return [String]
    class CisTargetResourceAggregation < Struct.new(
      :scan_arn,
      :target_resource_id,
      :account_id,
      :target_resource_tags,
      :status_counts,
      :platform,
      :target_status,
      :target_status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS target status filter.</p>
    # @!attribute comparison
    #   <p>The comparison value of the CIS target status filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CIS target status filter.</p>
    #   @return [String]
    class CisTargetStatusFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS target status reason filter.</p>
    # @!attribute comparison
    #   <p>The comparison value of the CIS target status reason filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the CIS target status reason filter.</p>
    #   @return [String]
    class CisTargetStatusReasonFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CIS targets.</p>
    # @!attribute account_ids
    #   <p>The CIS target account ids.</p>
    #   @return [Array<String>]
    # @!attribute target_resource_tags
    #   <p>The CIS target resource tags.</p>
    #   @return [Hash<String, Array<String>>]
    class CisTargets < Struct.new(
      :account_ids,
      :target_resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Cybersecurity and Infrastructure Security Agency (CISA) details for a specific
    #          vulnerability.</p>
    # @!attribute date_added
    #   <p>The date and time CISA added this vulnerability to their catalogue.</p>
    #   @return [Time]
    # @!attribute date_due
    #   <p>The date and time CISA expects a fix to have been provided vulnerability.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The remediation action recommended by CISA for this vulnerability.</p>
    #   @return [String]
    class CisaData < Struct.new(
      :date_added,
      :date_due,
      :action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the task or pod in the cluster.</p>
    # @!attribute last_in_use
    #   <p>The last timestamp when Amazon Inspector recorded the image in use in the task or pod
    #            in the cluster.</p>
    #   @return [Time]
    # @!attribute running_unit_count
    #   <p>The number of tasks or pods where an image was running on the cluster.</p>
    #   @return [Integer]
    # @!attribute stopped_unit_count
    #   <p>The number of tasks or pods where an image was stopped on the cluster in the last 24
    #            hours.</p>
    #   @return [Integer]
    # @!attribute cluster_metadata
    #   <p>The metadata for a cluster.</p>
    #   @return [Types::ClusterMetadata]
    class ClusterDetails < Struct.new(
      :last_in_use,
      :running_unit_count,
      :stopped_unit_count,
      :cluster_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter criteria to be used.</p>
    # @!attribute resource_id
    #   <p>The resource Id to be used in the filter criteria.</p>
    #   @return [String]
    class ClusterForImageFilterCriteria < Struct.new(
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the cluster.</p>
    # @!attribute cluster_arn
    #   <p>The cluster ARN.</p>
    #   @return [String]
    # @!attribute cluster_details
    #   <p>Details about the cluster.</p>
    #   @return [Array<Types::ClusterDetails>]
    class ClusterInformation < Struct.new(
      :cluster_arn,
      :cluster_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for a cluster.</p>
    # @!attribute aws_ecs_metadata_details
    #   <p>The details for an Amazon ECS cluster in the cluster metadata.</p>
    #   @return [Types::AwsEcsMetadataDetails]
    # @!attribute aws_eks_metadata_details
    #   <p>The details for an Amazon EKS cluster in the cluster metadata.</p>
    #   @return [Types::AwsEksMetadataDetails]
    class ClusterMetadata < Struct.new(
      :aws_ecs_metadata_details,
      :aws_eks_metadata_details,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AwsEcsMetadataDetails < ClusterMetadata; end
      class AwsEksMetadataDetails < ClusterMetadata; end
      class Unknown < ClusterMetadata; end
    end

    # <p>Contains information on where a code vulnerability is located in your Lambda
    #          function.</p>
    # @!attribute file_name
    #   <p>The name of the file the code vulnerability was found in.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The file path to the code that a vulnerability was found in.</p>
    #   @return [String]
    # @!attribute start_line
    #   <p>The line number of the first line of code that a vulnerability was found in.</p>
    #   @return [Integer]
    # @!attribute end_line
    #   <p>The line number of the last line of code that a vulnerability was found in.</p>
    #   @return [Integer]
    class CodeFilePath < Struct.new(
      :file_name,
      :file_path,
      :start_line,
      :end_line,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_line] = nil unless options.key?(:start_line)
        options[:end_line] = nil unless options.key?(:end_line)
        super
      end
    end

    # <p>Contains information on the lines of code associated with a code snippet.</p>
    # @!attribute content
    #   <p>The content of a line of code</p>
    #   @return [String]
    # @!attribute line_number
    #   <p>The line number that a section of code is located at.</p>
    #   @return [Integer]
    class CodeLine < Struct.new(
      :content,
      :line_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on code repositories.</p>
    # @!attribute project_names
    #   <p>The project names to include in the aggregation results.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute provider_types
    #   <p>The repository provider types to include in the aggregation results.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by (ascending or descending) in the code repository
    #            aggregation.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by in the code repository aggregation.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>The resource IDs to include in the aggregation results.</p>
    #   @return [Array<Types::StringFilter>]
    class CodeRepositoryAggregation < Struct.new(
      :project_names,
      :provider_types,
      :sort_order,
      :sort_by,
      :resource_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding aggregation by code repository.</p>
    # @!attribute project_names
    #   <p>The names of the projects associated with the code repository.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of repository provider for the code repository.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the counts of aggregated finding per severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute exploit_available_active_findings_count
    #   <p>The number of active findings that have an exploit available for the code
    #            repository.</p>
    #   @return [Integer]
    # @!attribute fix_available_active_findings_count
    #   <p>The number of active findings that have a fix available for the code repository.</p>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the code repository.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the code repository.</p>
    #   @return [String]
    class CodeRepositoryAggregationResponse < Struct.new(
      :project_names,
      :provider_type,
      :severity_counts,
      :exploit_available_active_findings_count,
      :fix_available_active_findings_count,
      :account_id,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a code repository associated with a finding.</p>
    # @!attribute project_name
    #   <p>The name of the project in the code repository.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration associated with the
    #            repository.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of repository provider (such as GitHub, GitLab, etc.).</p>
    #   @return [String]
    class CodeRepositoryDetails < Struct.new(
      :project_name,
      :integration_arn,
      :provider_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata information about a code repository that is being scanned by Amazon
    #          Inspector.</p>
    # @!attribute project_name
    #   <p>The name of the project in the code repository.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration associated with the
    #            repository.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of repository provider (such as GitHub, GitLab, etc.).</p>
    #   @return [String]
    # @!attribute provider_type_visibility
    #   <p>The visibility setting of the repository (public or private).</p>
    #   @return [String]
    # @!attribute last_scanned_commit_id
    #   <p>The ID of the last commit that was scanned in the repository.</p>
    #   @return [String]
    # @!attribute scan_configuration
    #   <p>The scan configuration settings applied to the code repository.</p>
    #   @return [Types::ProjectCodeSecurityScanConfiguration]
    # @!attribute on_demand_scan
    #   <p>Information about on-demand scans performed on the repository.</p>
    #   @return [Types::CodeRepositoryOnDemandScan]
    class CodeRepositoryMetadata < Struct.new(
      :project_name,
      :integration_arn,
      :provider_type,
      :provider_type_visibility,
      :last_scanned_commit_id,
      :scan_configuration,
      :on_demand_scan,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about on-demand scans performed on a code repository.</p>
    # @!attribute last_scanned_commit_id
    #   <p>The ID of the last commit that was scanned during an on-demand scan.</p>
    #   @return [String]
    # @!attribute last_scan_at
    #   <p>The timestamp when the last on-demand scan was performed.</p>
    #   @return [Time]
    # @!attribute scan_status
    #   <p>The status of the scan.</p>
    #   @return [Types::ScanStatus]
    class CodeRepositoryOnDemandScan < Struct.new(
      :last_scanned_commit_id,
      :last_scan_at,
      :scan_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a code security integration.</p>
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code security integration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of repository provider for the integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code security integration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the code security integration.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The timestamp when the code security integration was created.</p>
    #   @return [Time]
    # @!attribute last_update_on
    #   <p>The timestamp when the code security integration was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated with the code security integration.</p>
    #   @return [Hash<String, String>]
    class CodeSecurityIntegrationSummary < Struct.new(
      :integration_arn,
      :name,
      :type,
      :status,
      :status_reason,
      :created_on,
      :last_update_on,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a specific resource in a code repository that will be scanned.</p>
    # @!attribute project_id
    #   <p>The unique identifier of the project in the code repository.</p>
    #   @return [String]
    class CodeSecurityResource < Struct.new(
      :project_id,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ProjectId < CodeSecurityResource; end
      class Unknown < CodeSecurityResource; end
    end

    # <p>Contains the configuration settings for code security scans.</p>
    # @!attribute periodic_scan_configuration
    #   <p>Configuration settings for periodic scans that run on a scheduled basis.</p>
    #   @return [Types::PeriodicScanConfiguration]
    # @!attribute continuous_integration_scan_configuration
    #   <p>Configuration settings for continuous integration scans that run automatically when code
    #            changes are made.</p>
    #   @return [Types::ContinuousIntegrationScanConfiguration]
    # @!attribute rule_set_categories
    #   <p>The categories of security rules to be applied during the scan.</p>
    #   @return [Array<String>]
    class CodeSecurityScanConfiguration < Struct.new(
      :periodic_scan_configuration,
      :continuous_integration_scan_configuration,
      :rule_set_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an association between a code repository and a scan configuration.</p>
    # @!attribute resource
    #   <p>Identifies a specific resource in a code repository that will be scanned.</p>
    #   @return [Types::CodeSecurityResource]
    class CodeSecurityScanConfigurationAssociationSummary < Struct.new(
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a code security scan configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the scan configuration.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The Amazon Web Services account ID that owns the scan configuration.</p>
    #   @return [String]
    # @!attribute periodic_scan_frequency
    #   <p>The frequency at which periodic scans are performed.</p>
    #   @return [String]
    # @!attribute frequency_expression
    #   <p>The schedule expression for periodic scans, in cron format.</p>
    #   @return [String]
    # @!attribute continuous_integration_scan_supported_events
    #   <p>The repository events that trigger continuous integration scans.</p>
    #   @return [Array<String>]
    # @!attribute rule_set_categories
    #   <p>The categories of security rules applied during the scan.</p>
    #   @return [Array<String>]
    # @!attribute scope_settings
    #   <p>The scope settings that define which repositories will be scanned. If the
    #               <code>ScopeSetting</code> parameter is <code>ALL</code> the scan configuration applies
    #            to all existing and future projects imported into Amazon Inspector.</p>
    #   @return [Types::ScopeSettings]
    # @!attribute tags
    #   <p>The tags associated with the scan configuration.</p>
    #   @return [Hash<String, String>]
    class CodeSecurityScanConfigurationSummary < Struct.new(
      :scan_configuration_arn,
      :name,
      :owner_account_id,
      :periodic_scan_frequency,
      :frequency_expression,
      :continuous_integration_scan_supported_events,
      :rule_set_categories,
      :scope_settings,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about any errors encountered while trying to retrieve a code
    #          snippet.</p>
    # @!attribute finding_arn
    #   <p>The ARN of the finding that a code snippet couldn't be retrieved for.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for the error that prevented a code snippet from being retrieved.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message received when Amazon Inspector failed to retrieve a code snippet.</p>
    #   @return [String]
    class CodeSnippetError < Struct.new(
      :finding_arn,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a code snippet retrieved by Amazon Inspector from a code vulnerability
    #          finding.</p>
    # @!attribute finding_arn
    #   <p>The ARN of a finding that the code snippet is associated with.</p>
    #   @return [String]
    # @!attribute start_line
    #   <p>The line number of the first line of a code snippet.</p>
    #   @return [Integer]
    # @!attribute end_line
    #   <p>The line number of the last line of a code snippet.</p>
    #   @return [Integer]
    # @!attribute code_snippet
    #   <p>Contains information on the retrieved code snippet.</p>
    #   @return [Array<Types::CodeLine>]
    # @!attribute suggested_fixes
    #   <p>Details of a suggested code fix.</p>
    #   @return [Array<Types::SuggestedFix>]
    class CodeSnippetResult < Struct.new(
      :finding_arn,
      :start_line,
      :end_line,
      :code_snippet,
      :suggested_fixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the code vulnerability identified in your Lambda
    #          function.</p>
    # @!attribute file_path
    #   <p>Contains information on where the code vulnerability is located in your code.</p>
    #   @return [Types::CodeFilePath]
    # @!attribute detector_tags
    #   <p>The detector tag associated with the vulnerability. Detector tags group related
    #            vulnerabilities by common themes or tactics. For a list of available tags by programming
    #            language, see <a href="https://docs.aws.amazon.com/codeguru/detector-library/java/tags/">Java
    #               tags</a>, or <a href="https://docs.aws.amazon.com/codeguru/detector-library/python/tags/">Python tags</a>. </p>
    #   @return [Array<String>]
    # @!attribute reference_urls
    #   <p>A URL containing supporting documentation about the code vulnerability detected.</p>
    #   @return [Array<String>]
    # @!attribute rule_id
    #   <p>The identifier for a rule that was used to detect the code vulnerability.</p>
    #   @return [String]
    # @!attribute source_lambda_layer_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda layer that the code vulnerability was
    #            detected in.</p>
    #   @return [String]
    # @!attribute detector_id
    #   <p>The ID for the Amazon CodeGuru detector associated with the finding. For more
    #            information on detectors see <a href="https://docs.aws.amazon.com/codeguru/detector-library">Amazon CodeGuru Detector Library</a>.</p>
    #   @return [String]
    # @!attribute detector_name
    #   <p>The name of the detector used to identify the code vulnerability. For more information
    #            on detectors see <a href="https://docs.aws.amazon.com/codeguru/detector-library">CodeGuru
    #               Detector Library</a>.</p>
    #   @return [String]
    # @!attribute cwes
    #   <p>The Common Weakness Enumeration (CWE) item associated with the detected
    #            vulnerability.</p>
    #   @return [Array<String>]
    class CodeVulnerabilityDetails < Struct.new(
      :file_path,
      :detector_tags,
      :reference_urls,
      :rule_id,
      :source_lambda_layer_arn,
      :detector_id,
      :detector_name,
      :cwes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A compute platform.</p>
    # @!attribute vendor
    #   <p>The compute platform vendor.</p>
    #   @return [String]
    # @!attribute product
    #   <p>The compute platform product.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The compute platform version.</p>
    #   @return [String]
    class ComputePlatform < Struct.new(
      :vendor,
      :product,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict occurred. This exception occurs when the same resource is being modified by
    #          concurrent requests.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    # @!attribute resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for continuous integration scans that run automatically when code
    #          changes are made.</p>
    # @!attribute supported_events
    #   <p>The repository events that trigger continuous integration scans, such as pull requests
    #            or commits.</p>
    #   @return [Array<String>]
    class ContinuousIntegrationScanConfiguration < Struct.new(
      :supported_events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>a structure that contains information on the count of resources within a group.</p>
    # @!attribute count
    #   <p>The number of resources.</p>
    #   @return [Integer]
    # @!attribute group_key
    #   <p>The key associated with this group</p>
    #   @return [String]
    class Counts < Struct.new(
      :count,
      :group_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Contains details of a coverage date filter.</p>
    # @!attribute start_inclusive
    #   <p>A timestamp representing the start of the time period to filter results by.</p>
    #   @return [Time]
    # @!attribute end_inclusive
    #   <p>A timestamp representing the end of the time period to filter results by.</p>
    #   @return [Time]
    class CoverageDateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that identifies filter criteria for
    #          <code>GetCoverageStatistics</code>.</p>
    # @!attribute scan_status_code
    #   <p>The scan status code to filter on. Valid values are: <code>ValidationException</code>,
    #               <code>InternalServerException</code>, <code>ResourceNotFoundException</code>,
    #               <code>BadRequestException</code>, and <code>ThrottlingException</code>.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute scan_status_reason
    #   <p>The scan status reason to filter on.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute account_id
    #   <p>An array of Amazon Web Services account IDs to return coverage statistics for.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute resource_id
    #   <p>An array of Amazon Web Services resource IDs to return coverage statistics for.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute resource_type
    #   <p>An array of Amazon Web Services resource types to return coverage statistics for. The values can be
    #               <code>AWS_EC2_INSTANCE</code>, <code>AWS_LAMBDA_FUNCTION</code>,
    #               <code>AWS_ECR_CONTAINER_IMAGE</code>, <code>AWS_ECR_REPOSITORY</code> or
    #               <code>AWS_ACCOUNT</code>.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute scan_type
    #   <p>An array of Amazon Inspector scan types to return coverage statistics for.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute ecr_repository_name
    #   <p>The Amazon ECR repository name to filter on.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute ecr_image_tags
    #   <p>The Amazon ECR image tags to filter on.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute ec2_instance_tags
    #   <p>The Amazon EC2 instance tags to filter on.</p>
    #   @return [Array<Types::CoverageMapFilter>]
    # @!attribute lambda_function_name
    #   <p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by function
    #            names.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute lambda_function_tags
    #   <p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by
    #            tag.</p>
    #   @return [Array<Types::CoverageMapFilter>]
    # @!attribute lambda_function_runtime
    #   <p>Returns coverage statistics for Amazon Web Services Lambda functions filtered by
    #            runtime.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute last_scanned_at
    #   <p>Filters Amazon Web Services resources based on whether Amazon Inspector has checked them for vulnerabilities
    #            within the specified time range.</p>
    #   @return [Array<Types::CoverageDateFilter>]
    # @!attribute scan_mode
    #   <p>The filter to search for Amazon EC2 instance coverage by scan mode. Valid values are
    #               <code>EC2_SSM_AGENT_BASED</code> and <code>EC2_AGENTLESS</code>.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute image_pulled_at
    #   <p>The date an image was last pulled at.</p>
    #   @return [Array<Types::CoverageDateFilter>]
    # @!attribute ecr_image_last_in_use_at
    #   <p>The Amazon ECR image that was last in use.</p>
    #   @return [Array<Types::CoverageDateFilter>]
    # @!attribute ecr_image_in_use_count
    #   <p>The number of Amazon ECR images in use.</p>
    #   @return [Array<Types::CoverageNumberFilter>]
    # @!attribute code_repository_project_name
    #   <p>Filter criteria for code repositories based on project name.</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute code_repository_provider_type
    #   <p>Filter criteria for code repositories based on provider type (such as GitHub, GitLab,
    #            etc.).</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute code_repository_provider_type_visibility
    #   <p>Filter criteria for code repositories based on visibility setting (public or
    #            private).</p>
    #   @return [Array<Types::CoverageStringFilter>]
    # @!attribute last_scanned_commit_id
    #   <p>Filter criteria for code repositories based on the ID of the last scanned commit.</p>
    #   @return [Array<Types::CoverageStringFilter>]
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
      :last_scanned_commit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of a coverage map filter.</p>
    # @!attribute comparison
    #   <p>The operator to compare coverage on.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag key associated with the coverage map filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value associated with the coverage map filter.</p>
    #   @return [String]
    class CoverageMapFilter < Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The coverage number to be used in the filter.</p>
    # @!attribute upper_inclusive
    #   <p>The upper inclusive for the coverage number.&gt;</p>
    #   @return [Integer]
    # @!attribute lower_inclusive
    #   <p>The lower inclusive for the coverage number.</p>
    #   @return [Integer]
    class CoverageNumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of a coverage string filter.</p>
    # @!attribute comparison
    #   <p>The operator to compare strings on.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to compare strings on.</p>
    #   @return [String]
    class CoverageStringFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about a resource covered by Amazon Inspector.</p>
    # @!attribute resource_type
    #   <p>The type of the covered resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the covered resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the covered resource.</p>
    #   @return [String]
    # @!attribute scan_type
    #   <p>The Amazon Inspector scan type covering the resource.</p>
    #   @return [String]
    # @!attribute scan_status
    #   <p>The status of the scan covering the resource.</p>
    #   @return [Types::ScanStatus]
    # @!attribute resource_metadata
    #   <p>An object that contains details about the metadata.</p>
    #   @return [Types::ResourceScanMetadata]
    # @!attribute last_scanned_at
    #   <p>The date and time the resource was last checked for vulnerabilities.</p>
    #   @return [Time]
    # @!attribute scan_mode
    #   <p>The scan method that is applied to the instance.</p>
    #   @return [String]
    class CoveredResource < Struct.new(
      :resource_type,
      :resource_id,
      :account_id,
      :scan_type,
      :scan_status,
      :resource_metadata,
      :last_scanned_at,
      :scan_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The scan name for the CIS scan configuration.</p>
    #   @return [String]
    # @!attribute security_level
    #   <p> The security level for the CIS scan configuration. Security level refers to the
    #            Benchmark levels that CIS assigns to a profile. </p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for the CIS scan configuration.</p>
    #   @return [Types::Schedule]
    # @!attribute targets
    #   <p>The targets for the CIS scan configuration.</p>
    #   @return [Types::CreateCisTargets]
    # @!attribute tags
    #   <p>The tags for the CIS scan configuration.</p>
    #   @return [Hash<String, String>]
    class CreateCisScanConfigurationRequest < Struct.new(
      :scan_name,
      :security_level,
      :schedule,
      :targets,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The scan configuration ARN for the CIS scan configuration.</p>
    #   @return [String]
    class CreateCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Creates CIS targets.</p>
    # @!attribute account_ids
    #   <p>The CIS target account ids.</p>
    #   @return [Array<String>]
    # @!attribute target_resource_tags
    #   <p>The CIS target resource tags.</p>
    #   @return [Hash<String, Array<String>>]
    class CreateCisTargets < Struct.new(
      :account_ids,
      :target_resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the code security integration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of repository provider for the integration.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The integration details specific to the repository provider type.</p>
    #   @return [Types::CreateIntegrationDetail]
    # @!attribute tags
    #   <p>The tags to apply to the code security integration.</p>
    #   @return [Hash<String, String>]
    class CreateCodeSecurityIntegrationRequest < Struct.new(
      :name,
      :type,
      :details,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the created code security integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code security integration.</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>The URL used to authorize the integration with the repository provider.</p>
    #   @return [String]
    class CreateCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :status,
      :authorization_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the scan configuration.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The security level for the scan configuration.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for the code security scan.</p>
    #   @return [Types::CodeSecurityScanConfiguration]
    # @!attribute scope_settings
    #   <p>The scope settings that define which repositories will be scanned. Include this
    #            parameter to create a default scan configuration. Otherwise Amazon Inspector creates a general scan
    #            configuration. </p>
    #            <p>A default scan configuration automatically applies to all existing and future projects
    #            imported into Amazon Inspector. Use the <code>BatchAssociateCodeSecurityScanConfiguration</code>
    #            operation to associate a general scan configuration with projects.</p>
    #   @return [Types::ScopeSettings]
    # @!attribute tags
    #   <p>The tags to apply to the scan configuration.</p>
    #   @return [Hash<String, String>]
    class CreateCodeSecurityScanConfigurationRequest < Struct.new(
      :name,
      :level,
      :configuration,
      :scope_settings,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the created scan configuration.</p>
    #   @return [String]
    class CreateCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>Defines the action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the filter.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>Defines the criteria to be used in the filter for querying findings.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters
    #            include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not
    #            allowed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags for the filter.</p>
    #   @return [Hash<String, String>]
    # @!attribute reason
    #   <p>The reason for creating the filter.</p>
    #   @return [String]
    class CreateFilterInput < Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :tags,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the successfully created filter.</p>
    #   @return [String]
    class CreateFilterOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_criteria
    #   <p>The filter criteria to apply to the results of the finding report.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute report_format
    #   <p>The format to generate the report in.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>The Amazon S3 export destination for the report.</p>
    #   @return [Types::Destination]
    class CreateFindingsReportInput < Struct.new(
      :filter_criteria,
      :report_format,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #   @return [String]
    class CreateFindingsReportOutput < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details required to create an integration with a self-managed GitLab
    #          instance.</p>
    # @!attribute instance_url
    #   <p>The URL of the self-managed GitLab instance.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The personal access token used to authenticate with the self-managed GitLab
    #            instance.</p>
    #   @return [String]
    class CreateGitLabSelfManagedIntegrationDetail < Struct.new(
      :instance_url,
      :access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details required to create a code security integration with a specific
    #          repository provider.</p>
    # @!attribute gitlab_self_managed
    #   <p>Details specific to creating an integration with a self-managed GitLab instance.</p>
    #   @return [Types::CreateGitLabSelfManagedIntegrationDetail]
    class CreateIntegrationDetail < Struct.new(
      :gitlab_self_managed,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class GitlabSelfManaged < CreateIntegrationDetail; end
      class Unknown < CreateIntegrationDetail; end
    end

    # @!attribute resource_filter_criteria
    #   <p>The resource filter criteria for the software bill of materials (SBOM) report.</p>
    #   @return [Types::ResourceFilterCriteria]
    # @!attribute report_format
    #   <p>The output format for the software bill of materials (SBOM) report.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Contains details of the Amazon S3 bucket and KMS key used to export findings.</p>
    #   @return [Types::Destination]
    class CreateSbomExportRequest < Struct.new(
      :resource_filter_criteria,
      :report_format,
      :s3_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The report ID for the software bill of materials (SBOM) report.</p>
    #   @return [String]
    class CreateSbomExportResponse < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Common Vulnerability Scoring System (CVSS) version 2 details for the
    #          vulnerability.</p>
    # @!attribute base_score
    #   <p>The CVSS v2 base score for the vulnerability.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The scoring vector associated with the CVSS v2 score.</p>
    #   @return [String]
    class Cvss2 < Struct.new(
      :base_score,
      :scoring_vector,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:base_score] = 0 unless options.key?(:base_score)
        super
      end
    end

    # <p>The Common Vulnerability Scoring System (CVSS) version 3 details for the
    #          vulnerability.</p>
    # @!attribute base_score
    #   <p>The CVSS v3 base score for the vulnerability.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The scoring vector associated with the CVSS v3 score.</p>
    #   @return [String]
    class Cvss3 < Struct.new(
      :base_score,
      :scoring_vector,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:base_score] = 0 unless options.key?(:base_score)
        super
      end
    end

    # <p>The Common Vulnerability Scoring System (CVSS) version 4 details for the vulnerability.</p>
    # @!attribute base_score
    #   <p>The base CVSS v4 score for the vulnerability finding, which rates the severity of the vulnerability on a scale from 0 to 10.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The CVSS v4 scoring vector, which contains the metrics and measurements that were used to calculate the base score.</p>
    #   @return [String]
    class Cvss4 < Struct.new(
      :base_score,
      :scoring_vector,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:base_score] = 0 unless options.key?(:base_score)
        super
      end
    end

    # <p>The CVSS score for a finding.</p>
    # @!attribute base_score
    #   <p>The base CVSS score used for the finding.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The vector string of the CVSS score.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of CVSS used for the score.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the CVSS score.</p>
    #   @return [String]
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :version,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details on adjustments Amazon Inspector made to the CVSS score for a finding.</p>
    # @!attribute metric
    #   <p>The metric used to adjust the CVSS score.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the CVSS score has been adjustment.</p>
    #   @return [String]
    class CvssScoreAdjustment < Struct.new(
      :metric,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the CVSS score.</p>
    # @!attribute score_source
    #   <p>The source for the CVSS score.</p>
    #   @return [String]
    # @!attribute cvss_source
    #   <p>The source of the CVSS data.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The CVSS version used in scoring.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The CVSS score.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The vector for the CVSS score.</p>
    #   @return [String]
    # @!attribute adjustments
    #   <p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>
    #   @return [Array<Types::CvssScoreAdjustment>]
    class CvssScoreDetails < Struct.new(
      :score_source,
      :cvss_source,
      :version,
      :score,
      :scoring_vector,
      :adjustments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A daily schedule.</p>
    # @!attribute start_time
    #   <p>The schedule start time.</p>
    #   @return [Types::Time]
    class DailySchedule < Struct.new(
      :start_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details on the time range used to filter findings.</p>
    # @!attribute start_inclusive
    #   <p>A timestamp representing the start of the time period filtered on.</p>
    #   @return [Time]
    # @!attribute end_inclusive
    #   <p>A timestamp representing the end of the time period filtered on.</p>
    #   @return [Time]
    class DateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Amazon Inspector delegated administrator for your organization.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the Amazon Inspector delegated administrator.</p>
    #   @return [String]
    class DelegatedAdmin < Struct.new(
      :account_id,
      :relationship_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Amazon Inspector delegated administrator for your organization.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon Inspector delegated administrator.</p>
    #   @return [String]
    class DelegatedAdminAccount < Struct.new(
      :account_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The ARN of the CIS scan configuration.</p>
    #   @return [String]
    class DeleteCisScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The ARN of the CIS scan configuration.</p>
    #   @return [String]
    class DeleteCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to delete.</p>
    #   @return [String]
    class DeleteCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted code security integration.</p>
    #   @return [String]
    class DeleteCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to delete.</p>
    #   @return [String]
    class DeleteCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted scan configuration.</p>
    #   @return [String]
    class DeleteCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the filter to be deleted.</p>
    #   @return [String]
    class DeleteFilterInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the filter that has been deleted.</p>
    #   @return [String]
    class DeleteFilterOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DescribeOrganizationConfigurationInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable
    #   <p>The scan types are automatically enabled for new members of your organization.</p>
    #   @return [Types::AutoEnable]
    # @!attribute max_account_limit_reached
    #   <p>Represents whether your organization has reached the maximum Amazon Web Services account limit for
    #            Amazon Inspector.</p>
    #   @return [Boolean]
    class DescribeOrganizationConfigurationOutput < Struct.new(
      :auto_enable,
      :max_account_limit_reached,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the Amazon S3 bucket and KMS key used to export findings.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket to export findings to.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The prefix that the findings will be written under.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt data when exporting findings.</p>
    #   @return [String]
    class Destination < Struct.new(
      :bucket_name,
      :key_prefix,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the current Amazon Inspector delegated administrator.</p>
    #   @return [String]
    class DisableDelegatedAdminAccountInput < Struct.new(
      :delegated_admin_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the successfully disabled delegated administrator.</p>
    #   @return [String]
    class DisableDelegatedAdminAccountOutput < Struct.new(
      :delegated_admin_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>An array of account IDs you want to disable Amazon Inspector scans for.</p>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The resource scan types you want to disable.</p>
    #   @return [Array<String>]
    class DisableInput < Struct.new(
      :account_ids,
      :resource_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>Information on the accounts that have had Amazon Inspector scans successfully disabled. Details are
    #            provided for each account.</p>
    #   @return [Array<Types::Account>]
    # @!attribute failed_accounts
    #   <p>Information on any accounts for which Amazon Inspector scans could not be disabled. Details are
    #            provided for each account.</p>
    #   @return [Array<Types::FailedAccount>]
    class DisableOutput < Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a request to disassociate a code repository from a scan
    #          configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to disassociate from a code
    #            repository.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Identifies a specific resource in a code repository that will be scanned.</p>
    #   @return [Types::CodeSecurityResource]
    class DisassociateConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to disassociate.</p>
    #   @return [String]
    class DisassociateMemberInput < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the successfully disassociated member.</p>
    #   @return [String]
    class DisassociateMemberOutput < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Enables agent-based scanning, which scans instances that are not managed by SSM.</p>
    # @!attribute scan_mode
    #   <p>The scan method that is applied to the instance.</p>
    #   @return [String]
    class Ec2Configuration < Struct.new(
      :scan_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the state of the EC2 scan configuration for your environment.</p>
    # @!attribute scan_mode_state
    #   <p>An object that contains details about the state of the Amazon EC2 scan mode.</p>
    #   @return [Types::Ec2ScanModeState]
    class Ec2ConfigurationState < Struct.new(
      :scan_mode_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on Amazon EC2 instances.</p>
    # @!attribute amis
    #   <p>The AMI IDs associated with the Amazon EC2 instances to aggregate findings for.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute operating_systems
    #   <p>The operating system types to aggregate findings for. Valid values must be uppercase and
    #            underscore separated, examples are <code>ORACLE_LINUX_7</code> and
    #               <code>ALPINE_LINUX_3_8</code>.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute instance_ids
    #   <p>The Amazon EC2 instance IDs to aggregate findings for.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute instance_tags
    #   <p>The Amazon EC2 instance tags to aggregate findings for.</p>
    #   @return [Array<Types::MapFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class Ec2InstanceAggregation < Struct.new(
      :amis,
      :operating_systems,
      :instance_ids,
      :instance_tags,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding aggregation by Amazon EC2 instance.</p>
    # @!attribute instance_id
    #   <p>The Amazon EC2 instance ID.</p>
    #   @return [String]
    # @!attribute ami
    #   <p>The Amazon Machine Image (AMI) of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>The operating system of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute instance_tags
    #   <p>The tags attached to the instance.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>The Amazon Web Services account for the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute network_findings
    #   <p>The number of network findings for the Amazon EC2 instance.</p>
    #   @return [Integer]
    class Ec2InstanceAggregationResponse < Struct.new(
      :instance_id,
      :ami,
      :operating_system,
      :instance_tags,
      :account_id,
      :severity_counts,
      :network_findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Meta data details of an Amazon EC2 instance.</p>
    # @!attribute tags
    #   <p>The tags attached to the instance.</p>
    #   @return [Hash<String, String>]
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) used to launch the instance.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the instance.</p>
    #   @return [String]
    class Ec2Metadata < Struct.new(
      :tags,
      :ami_id,
      :platform,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of your Amazon EC2 scan mode configuration.</p>
    # @!attribute scan_mode
    #   <p>The scan method that is applied to the instance.</p>
    #   @return [String]
    # @!attribute scan_mode_status
    #   <p>The status of the Amazon EC2 scan mode setting.</p>
    #   @return [String]
    class Ec2ScanModeState < Struct.new(
      :scan_mode,
      :scan_mode_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the ECR automated re-scan duration setting for your environment.</p>
    # @!attribute rescan_duration
    #   <p>The rescan duration configured for image push date.</p>
    #   @return [String]
    # @!attribute pull_date_rescan_duration
    #   <p>The rescan duration configured for image pull date.</p>
    #   @return [String]
    # @!attribute pull_date_rescan_mode
    #   <p>The pull date for the re-scan mode.</p>
    #   @return [String]
    class EcrConfiguration < Struct.new(
      :rescan_duration,
      :pull_date_rescan_duration,
      :pull_date_rescan_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the state of the ECR scans for your environment.</p>
    # @!attribute rescan_duration_state
    #   <p>An object that contains details about the state of the ECR re-scan settings.</p>
    #   @return [Types::EcrRescanDurationState]
    class EcrConfigurationState < Struct.new(
      :rescan_duration_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the Amazon ECR image metadata associated with a finding.</p>
    # @!attribute tags
    #   <p>Tags associated with the Amazon ECR image metadata.</p>
    #   @return [Array<String>]
    # @!attribute image_pulled_at
    #   <p>The date an image was last pulled at.</p>
    #   @return [Time]
    # @!attribute last_in_use_at
    #   <p>The last time an Amazon ECR image was used in an Amazon ECS task or
    #               Amazon EKS pod.</p>
    #   @return [Time]
    # @!attribute in_use_count
    #   <p>The number of Amazon ECS tasks or Amazon EKS pods where the Amazon ECR container image is in use.</p>
    #   @return [Integer]
    class EcrContainerImageMetadata < Struct.new(
      :tags,
      :image_pulled_at,
      :last_in_use_at,
      :in_use_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the Amazon ECR repository metadata associated with a finding.</p>
    # @!attribute name
    #   <p>The name of the Amazon ECR repository.</p>
    #   @return [String]
    # @!attribute scan_frequency
    #   <p>The frequency of scans.</p>
    #   @return [String]
    class EcrRepositoryMetadata < Struct.new(
      :name,
      :scan_frequency,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the state of your ECR re-scan duration settings. The ECR re-scan duration
    #          defines how long an ECR image will be actively scanned by Amazon Inspector. When the number of days
    #          since an image was last pushed exceeds the duration configured for image pull date, and the
    #          duration configured for image pull date, the monitoring state of that image becomes
    #             <code>inactive</code> and all associated findings are scheduled for closure.</p>
    # @!attribute rescan_duration
    #   <p>The rescan duration configured for image push date. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of changes to the ECR automated re-scan duration.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>A timestamp representing when the last time the ECR scan duration setting was
    #            changed.</p>
    #   @return [Time]
    # @!attribute pull_date_rescan_duration
    #   <p>The rescan duration configured for image pull date.</p>
    #   @return [String]
    # @!attribute pull_date_rescan_mode
    #   <p>The pull date for the re-scan mode.</p>
    #   @return [String]
    class EcrRescanDurationState < Struct.new(
      :rescan_duration,
      :status,
      :updated_at,
      :pull_date_rescan_duration,
      :pull_date_rescan_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #   @return [String]
    class EnableDelegatedAdminAccountInput < Struct.new(
      :delegated_admin_account_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the successfully Amazon Inspector delegated administrator.</p>
    #   @return [String]
    class EnableDelegatedAdminAccountOutput < Struct.new(
      :delegated_admin_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>A list of account IDs you want to enable Amazon Inspector scans for.</p>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>The resource scan types you want to enable.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #   @return [String]
    class EnableInput < Struct.new(
      :account_ids,
      :resource_types,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>Information on the accounts that have had Amazon Inspector scans successfully enabled. Details are
    #            provided for each account.</p>
    #   @return [Array<Types::Account>]
    # @!attribute failed_accounts
    #   <p>Information on any accounts for which Amazon Inspector scans could not be enabled. Details are
    #            provided for each account.</p>
    #   @return [Array<Types::FailedAccount>]
    class EnableOutput < Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Exploit Prediction Scoring System (EPSS) score.</p>
    # @!attribute score
    #   <p>The Exploit Prediction Scoring System (EPSS) score.</p>
    #   @return [Float]
    class Epss < Struct.new(
      :score,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    # <p>Details about the Exploit Prediction Scoring System (EPSS) score for a finding.</p>
    # @!attribute score
    #   <p>The EPSS score.</p>
    #   @return [Float]
    class EpssDetails < Struct.new(
      :score,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    # <p>Details of the evidence for a vulnerability identified in a finding.</p>
    # @!attribute evidence_rule
    #   <p>The evidence rule.</p>
    #   @return [String]
    # @!attribute evidence_detail
    #   <p>The evidence details.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The evidence severity.</p>
    #   @return [String]
    class Evidence < Struct.new(
      :evidence_rule,
      :evidence_detail,
      :severity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on when this exploit was observed.</p>
    # @!attribute last_seen
    #   <p>The date an time when the exploit was last seen.</p>
    #   @return [Time]
    # @!attribute first_seen
    #   <p>The date an time when the exploit was first seen.</p>
    #   @return [Time]
    class ExploitObserved < Struct.new(
      :last_seen,
      :first_seen,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an exploit available for a finding discovered in your environment.</p>
    # @!attribute last_known_exploit_at
    #   <p>The date and time of the last exploit associated with a finding discovered in your
    #            environment.</p>
    #   @return [Time]
    class ExploitabilityDetails < Struct.new(
      :last_known_exploit_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object with details on why an account failed to enable Amazon Inspector.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #   @return [String]
    # @!attribute resource_status
    #   <p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>
    #   @return [Types::ResourceStatus]
    # @!attribute error_code
    #   <p>The error code explaining why the account failed to enable Amazon Inspector.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message received when the account failed to enable Amazon Inspector.</p>
    #   @return [String]
    class FailedAccount < Struct.new(
      :account_id,
      :status,
      :resource_status,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a failed attempt to associate or disassociate a code repository with a
    #          scan configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration that failed to be associated or
    #            disassociated.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Identifies a specific resource in a code repository that will be scanned.</p>
    #   @return [Types::CodeSecurityResource]
    # @!attribute status_code
    #   <p>The status code indicating why the association or disassociation failed.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message explaining why the association or disassociation failed.</p>
    #   @return [String]
    class FailedAssociationResult < Struct.new(
      :scan_configuration_arn,
      :resource,
      :status_code,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about a member account in your organization that failed
    #          to activate Amazon Inspector deep inspection.</p>
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account of the organization member that failed to
    #            activate Amazon Inspector deep inspection.</p>
    #   @return [String]
    # @!attribute ec2_scan_status
    #   <p>The status of EC2 scanning in the account that failed to activate Amazon Inspector deep
    #            inspection.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message explaining why the account failed to activate Amazon Inspector deep
    #            inspection.</p>
    #   @return [String]
    class FailedMemberAccountEc2DeepInspectionStatusState < Struct.new(
      :account_id,
      :ec2_scan_status,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a filter.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) associated with this filter.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the account that created the filter.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute criteria
    #   <p>Details on the filter criteria associated with this filter.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute action
    #   <p>The action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time this filter was created at.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the filter was last updated at.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the filter.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the filter.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the filter.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details on the criteria used to define the filter.</p>
    # @!attribute finding_arn
    #   <p>Details on the finding ARNs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute aws_account_id
    #   <p>Details of the Amazon Web Services account IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute finding_type
    #   <p>Details on the finding types used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute severity
    #   <p>Details on the severity used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute first_observed_at
    #   <p>Details on the date and time a finding was first seen used to filter findings.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute last_observed_at
    #   <p>Details on the date and time a finding was last seen used to filter findings.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute updated_at
    #   <p>Details on the date and time a finding was last updated at used to filter
    #            findings.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute finding_status
    #   <p>Details on the finding status types used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute title
    #   <p>Details on the finding title used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute inspector_score
    #   <p>The Amazon Inspector score to filter on.</p>
    #   @return [Array<Types::NumberFilter>]
    # @!attribute resource_type
    #   <p>Details on the resource types used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute resource_id
    #   <p>Details on the resource IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute resource_tags
    #   <p>Details on the resource tags used to filter findings.</p>
    #   @return [Array<Types::MapFilter>]
    # @!attribute ec2_instance_image_id
    #   <p>Details of the Amazon EC2 instance image IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ec2_instance_vpc_id
    #   <p>Details of the Amazon EC2 instance VPC IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ec2_instance_subnet_id
    #   <p>Details of the Amazon EC2 instance subnet IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_pushed_at
    #   <p>Details on the Amazon ECR image push date and time used to filter findings.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute ecr_image_architecture
    #   <p>Details of the Amazon ECR image architecture types used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_registry
    #   <p>Details on the Amazon ECR registry used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_repository_name
    #   <p>Details on the name of the Amazon ECR repository used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_tags
    #   <p>The tags attached to the Amazon ECR container image.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_hash
    #   <p>Details of the Amazon ECR image hashes used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute ecr_image_last_in_use_at
    #   <p>Filter criteria indicating when an Amazon ECR image was last used in an Amazon ECS cluster task or Amazon EKS cluster pod.</p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute ecr_image_in_use_count
    #   <p>Filter criteria indicating when details for an Amazon ECR image include when an
    #               Amazon ECR image is in use.</p>
    #   @return [Array<Types::NumberFilter>]
    # @!attribute port_range
    #   <p>Details on the port ranges used to filter findings.</p>
    #   @return [Array<Types::PortRangeFilter>]
    # @!attribute network_protocol
    #   <p>Details on network protocol used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute component_id
    #   <p>Details of the component IDs used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute component_type
    #   <p>Details of the component types used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute vulnerability_id
    #   <p>Details on the vulnerability ID used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute vulnerability_source
    #   <p>Details on the vulnerability type used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute vendor_severity
    #   <p>Details on the vendor severity used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute vulnerable_packages
    #   <p>Details on the vulnerable packages used to filter findings.</p>
    #   @return [Array<Types::PackageFilter>]
    # @!attribute related_vulnerabilities
    #   <p>Details on the related vulnerabilities used to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute fix_available
    #   <p>Details on whether a fix is available through a version update. This value can be
    #               <code>YES</code>, <code>NO</code>, or <code>PARTIAL</code>. A <code>PARTIAL</code> fix
    #            means that some, but not all, of the packages identified in the finding have fixes
    #            available through updated versions.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute lambda_function_name
    #   <p>Filters the list of Amazon Web Services Lambda functions by the name of the
    #            function.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute lambda_function_layers
    #   <p>Filters the list of Amazon Web Services Lambda functions by the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html"> layers</a>. A
    #            Lambda function can have up to five layers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute lambda_function_runtime
    #   <p>Filters the list of Amazon Web Services Lambda functions by the runtime environment for
    #            the Lambda function.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute lambda_function_last_modified_at
    #   <p>Filters the list of Amazon Web Services Lambda functions by the date and time that a user
    #            last updated the configuration, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601
    #            format</a>
    #            </p>
    #   @return [Array<Types::DateFilter>]
    # @!attribute lambda_function_execution_role_arn
    #   <p>Filters the list of Amazon Web Services Lambda functions by execution role.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute exploit_available
    #   <p>Filters the list of Amazon Web Services Lambda findings by the availability of
    #            exploits.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute code_vulnerability_detector_name
    #   <p>The name of the detector used to identify a code vulnerability in a Lambda function used
    #            to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute code_vulnerability_detector_tags
    #   <p>The detector type tag associated with the vulnerability used to filter findings.
    #            Detector tags group related vulnerabilities by common themes or tactics. For a list of
    #            available tags by programming language, see <a href="https://docs.aws.amazon.com/codeguru/detector-library/java/tags/">Java tags</a>, or <a href="https://docs.aws.amazon.com/codeguru/detector-library/python/tags/">Python tags</a>.
    #         </p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute code_vulnerability_file_path
    #   <p>The file path to the file in a Lambda function that contains a code vulnerability used
    #            to filter findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute epss_score
    #   <p>The EPSS score used to filter findings.</p>
    #   @return [Array<Types::NumberFilter>]
    # @!attribute code_repository_project_name
    #   <p>Filter criteria for findings based on the project name in a code repository.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute code_repository_provider_type
    #   <p>Filter criteria for findings based on the repository provider type (such as GitHub,
    #            GitLab, etc.).</p>
    #   @return [Array<Types::StringFilter>]
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
      :code_repository_provider_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an Amazon Inspector finding.</p>
    # @!attribute finding_arn
    #   <p>The Amazon Resource Number (ARN) of the finding.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with the finding.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the finding. The <code>type</code> value determines the valid values for
    #               <code>resource</code> in your request. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/user/findings-types.html">Finding
    #               types</a> in the Amazon Inspector user guide.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the finding.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the finding.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>An object that contains the details about how to remediate a finding.</p>
    #   @return [Types::Remediation]
    # @!attribute severity
    #   <p>The severity of the finding. <code>UNTRIAGED</code> applies to
    #               <code>PACKAGE_VULNERABILITY</code> type findings that the vendor has not assigned a
    #            severity yet. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html">Severity levels for findings</a> in the Amazon Inspector user guide.</p>
    #   @return [String]
    # @!attribute first_observed_at
    #   <p>The date and time that the finding was first observed.</p>
    #   @return [Time]
    # @!attribute last_observed_at
    #   <p> The date and time the finding was last observed. This timestamp for this field remains
    #            unchanged until a finding is updated. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the finding was last updated at.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the finding.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>Contains information on the resources involved in a finding. The <code>resource</code>
    #            value determines the valid values for <code>type</code> in your request. For more
    #            information, see <a href="https://docs.aws.amazon.com/inspector/latest/user/findings-types.html">Finding
    #               types</a> in the Amazon Inspector user guide.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute inspector_score
    #   <p>The Amazon Inspector score given to the finding.</p>
    #   @return [Float]
    # @!attribute inspector_score_details
    #   <p>An object that contains details of the Amazon Inspector score.</p>
    #   @return [Types::InspectorScoreDetails]
    # @!attribute network_reachability_details
    #   <p>An object that contains the details of a network reachability finding.</p>
    #   @return [Types::NetworkReachabilityDetails]
    # @!attribute package_vulnerability_details
    #   <p>An object that contains the details of a package vulnerability finding.</p>
    #   @return [Types::PackageVulnerabilityDetails]
    # @!attribute fix_available
    #   <p>Details on whether a fix is available through a version update. This value can be
    #               <code>YES</code>, <code>NO</code>, or <code>PARTIAL</code>. A <code>PARTIAL</code> fix
    #            means that some, but not all, of the packages identified in the finding have fixes
    #            available through updated versions.</p>
    #   @return [String]
    # @!attribute exploit_available
    #   <p>If a finding discovered in your environment has an exploit available.</p>
    #   @return [String]
    # @!attribute exploitability_details
    #   <p>The details of an exploit available for a finding discovered in your environment.</p>
    #   @return [Types::ExploitabilityDetails]
    # @!attribute code_vulnerability_details
    #   <p>Details about the code vulnerability identified in a Lambda function used to filter
    #            findings.</p>
    #   @return [Types::CodeVulnerabilityDetails]
    # @!attribute epss
    #   <p>The finding's EPSS score.</p>
    #   @return [Types::EpssDetails]
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
      :epss,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the vulnerability identified in a finding.</p>
    # @!attribute finding_arn
    #   <p>The finding ARN that the vulnerability details are associated with.</p>
    #   @return [String]
    # @!attribute cisa_data
    #   <p>The Cybersecurity and Infrastructure Security Agency (CISA) details for a specific
    #            vulnerability.</p>
    #   @return [Types::CisaData]
    # @!attribute risk_score
    #   <p>The risk score of the vulnerability.</p>
    #   @return [Integer]
    # @!attribute evidences
    #   <p>Information on the evidence of the vulnerability.</p>
    #   @return [Array<Types::Evidence>]
    # @!attribute ttps
    #   <p>The MITRE adversary tactics, techniques, or procedures (TTPs) associated with the
    #            vulnerability.</p>
    #   @return [Array<String>]
    # @!attribute tools
    #   <p>The known malware tools or kits that can exploit the vulnerability.</p>
    #   @return [Array<String>]
    # @!attribute exploit_observed
    #   <p>Contains information on when this exploit was observed.</p>
    #   @return [Types::ExploitObserved]
    # @!attribute reference_urls
    #   <p>The reference URLs for the vulnerability data.</p>
    #   @return [Array<String>]
    # @!attribute cwes
    #   <p>The Common Weakness Enumerations (CWEs) associated with the vulnerability.</p>
    #   @return [Array<String>]
    # @!attribute epss_score
    #   <p>The Exploit Prediction Scoring System (EPSS) score of the vulnerability.</p>
    #   @return [Float]
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
      :epss_score,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an error encountered when trying to return vulnerability data for a
    #          finding.</p>
    # @!attribute finding_arn
    #   <p>The finding ARN that returned an error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class FindingDetailsError < Struct.new(
      :finding_arn,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on finding type.</p>
    # @!attribute finding_type
    #   <p>The finding type to aggregate.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type to aggregate.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class FindingTypeAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding type aggregation.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>The value to sort results by.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute exploit_available_count
    #   <p>The number of findings that have an exploit available.</p>
    #   @return [Integer]
    # @!attribute fix_available_count
    #   <p> Details about the number of fixes. </p>
    #   @return [Integer]
    class FindingTypeAggregationResponse < Struct.new(
      :account_id,
      :severity_counts,
      :exploit_available_count,
      :fix_available_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon Inspector free trial for an account.</p>
    # @!attribute account_id
    #   <p>The account associated with the Amazon Inspector free trial information.</p>
    #   @return [String]
    # @!attribute free_trial_info
    #   <p>Contains information about the Amazon Inspector free trial for an account.</p>
    #   @return [Array<Types::FreeTrialInfo>]
    class FreeTrialAccountInfo < Struct.new(
      :account_id,
      :free_trial_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the Amazon Inspector free trial for an account.</p>
    # @!attribute type
    #   <p>The type of scan covered by the Amazon Inspector free trail.</p>
    #   @return [String]
    # @!attribute start
    #   <p>The date and time that the Amazon Inspector free trail started for a given account.</p>
    #   @return [Time]
    # @!attribute end
    #   <p>The date and time that the Amazon Inspector free trail ends for a given account.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The order to sort results by.</p>
    #   @return [String]
    class FreeTrialInfo < Struct.new(
      :type,
      :start,
      :end,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an error received while accessing free trail data for an
    #          account.</p>
    # @!attribute account_id
    #   <p>The account associated with the Amazon Inspector free trial information.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message returned.</p>
    #   @return [String]
    class FreeTrialInfoError < Struct.new(
      :account_id,
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_arn
    #   <p>The scan ARN.</p>
    #   @return [String]
    # @!attribute target_accounts
    #   <p>The target accounts.</p>
    #   @return [Array<String>]
    # @!attribute report_format
    #   <p> The format of the report. Valid values are <code>PDF</code> and <code>CSV</code>. If no
    #            value is specified, the report format defaults to <code>PDF</code>. </p>
    #   @return [String]
    class GetCisScanReportRequest < Struct.new(
      :scan_arn,
      :target_accounts,
      :report_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p> The URL where a PDF or CSV of the CIS scan report can be downloaded. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    class GetCisScanReportResponse < Struct.new(
      :url,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_arn
    #   <p>The scan ARN.</p>
    #   @return [String]
    # @!attribute target_resource_id
    #   <p>The target resource ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>The filter criteria.</p>
    #   @return [Types::CisScanResultDetailsFilterCriteria]
    # @!attribute sort_by
    #   <p>The sort by order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of CIS scan result details to be returned in a single page of
    #            results.</p>
    #   @return [Integer]
    class GetCisScanResultDetailsRequest < Struct.new(
      :scan_arn,
      :target_resource_id,
      :account_id,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_result_details
    #   <p>The scan result details.</p>
    #   @return [Array<Types::CisScanResultDetails>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class GetCisScanResultDetailsResponse < Struct.new(
      :scan_result_details,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The resource Id for the Amazon ECR image.</p>
    #   @return [Types::ClusterForImageFilterCriteria]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned in a single page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous request used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class GetClustersForImageRequest < Struct.new(
      :filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A unit of work inside of a cluster, which can include metadata about the cluster.</p>
    #   @return [Array<Types::ClusterInformation>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class GetClustersForImageResponse < Struct.new(
      :cluster,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to retrieve.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the code security integration.</p>
    #   @return [Hash<String, String>]
    class GetCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code security integration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of repository provider for the integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code security integration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the code security integration.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The timestamp when the code security integration was created.</p>
    #   @return [Time]
    # @!attribute last_update_on
    #   <p>The timestamp when the code security integration was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated with the code security integration.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorization_url
    #   <p>The URL used to authorize the integration with the repository provider. This is only
    #            returned if reauthorization is required to fix a connection issue. Otherwise, it is
    #            null.</p>
    #   @return [String]
    class GetCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :name,
      :type,
      :status,
      :status_reason,
      :created_on,
      :last_update_on,
      :tags,
      :authorization_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to retrieve.</p>
    #   @return [String]
    class GetCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the scan configuration.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for the code security scan.</p>
    #   @return [Types::CodeSecurityScanConfiguration]
    # @!attribute level
    #   <p>The security level for the scan configuration.</p>
    #   @return [String]
    # @!attribute scope_settings
    #   <p>The scope settings that define which repositories will be scanned. If the
    #               <code>ScopeSetting</code> parameter is <code>ALL</code> the scan configuration applies
    #            to all existing and future projects imported into Amazon Inspector.</p>
    #   @return [Types::ScopeSettings]
    # @!attribute created_at
    #   <p>The timestamp when the scan configuration was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the scan configuration was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated with the scan configuration.</p>
    #   @return [Hash<String, String>]
    class GetCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      :name,
      :configuration,
      :level,
      :scope_settings,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource identifier for the code repository that was scanned.</p>
    #   @return [Types::CodeSecurityResource]
    # @!attribute scan_id
    #   <p>The unique identifier of the scan to retrieve.</p>
    #   @return [String]
    class GetCodeSecurityScanRequest < Struct.new(
      :resource,
      :scan_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_id
    #   <p>The unique identifier of the scan.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource identifier for the code repository that was scanned.</p>
    #   @return [Types::CodeSecurityResource]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the scan.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the scan.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the scan.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the scan was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the scan was last updated.</p>
    #   @return [Time]
    # @!attribute last_commit_id
    #   <p>The identifier of the last commit that was scanned. This is only returned if the scan
    #            was successful or skipped.</p>
    #   @return [String]
    class GetCodeSecurityScanResponse < Struct.new(
      :scan_id,
      :resource,
      :account_id,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      :last_commit_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetConfigurationInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ecr_configuration
    #   <p>Specifies how the ECR automated re-scan duration is currently configured for your
    #            environment.</p>
    #   @return [Types::EcrConfigurationState]
    # @!attribute ec2_configuration
    #   <p>Specifies how the Amazon EC2 automated scan mode is currently configured for your
    #            environment.</p>
    #   @return [Types::Ec2ConfigurationState]
    class GetConfigurationOutput < Struct.new(
      :ecr_configuration,
      :ec2_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetDelegatedAdminAccountInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    #   @return [Types::DelegatedAdmin]
    class GetDelegatedAdminAccountOutput < Struct.new(
      :delegated_admin,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetEc2DeepInspectionConfigurationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_paths
    #   <p>The Amazon Inspector deep inspection custom paths for your account.</p>
    #   @return [Array<String>]
    # @!attribute org_package_paths
    #   <p>The Amazon Inspector deep inspection custom paths for your organization.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The activation status of Amazon Inspector deep inspection in your account.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message explaining why Amazon Inspector deep inspection configurations could not be
    #            retrieved for your account.</p>
    #   @return [String]
    class GetEc2DeepInspectionConfigurationResponse < Struct.new(
      :package_paths,
      :org_package_paths,
      :status,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_type
    #   <p>The scan type the key encrypts.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type the key encrypts.</p>
    #   @return [String]
    class GetEncryptionKeyRequest < Struct.new(
      :scan_type,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute kms_key_id
    #   <p>A kms key ID.</p>
    #   @return [String]
    class GetEncryptionKeyResponse < Struct.new(
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report to retrieve the status of.</p>
    #   @return [String]
    class GetFindingsReportStatusInput < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the report.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code of the report.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message of the report.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination of the report.</p>
    #   @return [Types::Destination]
    # @!attribute filter_criteria
    #   <p>The filter criteria associated with the report.</p>
    #   @return [Types::FilterCriteria]
    class GetFindingsReportStatusOutput < Struct.new(
      :report_id,
      :status,
      :error_code,
      :error_message,
      :destination,
      :filter_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to retrieve information on.</p>
    #   @return [String]
    class GetMemberInput < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute member
    #   <p>Details of the retrieved member account.</p>
    #   @return [Types::Member]
    class GetMemberOutput < Struct.new(
      :member,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The report ID of the SBOM export to get details for.</p>
    #   @return [String]
    class GetSbomExportRequest < Struct.new(
      :report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The report ID of the software bill of materials (SBOM) report.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the software bill of materials (SBOM) report.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the software bill of materials (SBOM) report.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message.</p>
    #   @return [String]
    # @!attribute s3_destination
    #   <p>Contains details of the Amazon S3 bucket and KMS key used to export findings</p>
    #   @return [Types::Destination]
    # @!attribute filter_criteria
    #   <p>Contains details about the resource filter criteria used for the software bill of
    #            materials (SBOM) report.</p>
    #   @return [Types::ResourceFilterCriteria]
    class GetSbomExportResponse < Struct.new(
      :report_id,
      :format,
      :status,
      :error_code,
      :error_message,
      :s3_destination,
      :filter_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on container image layers.</p>
    # @!attribute repositories
    #   <p>The repository associated with the container image hosting the layers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute resource_ids
    #   <p>The ID of the container image layer.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute layer_hashes
    #   <p>The hashes associated with the layers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class ImageLayerAggregation < Struct.new(
      :repositories,
      :resource_ids,
      :layer_hashes,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding aggregation by image layer.</p>
    # @!attribute repository
    #   <p>The repository the layer resides in.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the container image layer.</p>
    #   @return [String]
    # @!attribute layer_hash
    #   <p>The layer hash.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the container image hosting the layer
    #            image.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that represents the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    class ImageLayerAggregationResponse < Struct.new(
      :repository,
      :resource_id,
      :layer_hash,
      :account_id,
      :severity_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon Inspector score given to a finding.</p>
    # @!attribute adjusted_cvss
    #   <p>An object that contains details about the CVSS score given to a finding.</p>
    #   @return [Types::CvssScoreDetails]
    class InspectorScoreDetails < Struct.new(
      :adjusted_cvss,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed due to an internal failure of the Amazon Inspector service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define a findings aggregation based on Amazon Web Services Lambda
    #          functions.</p>
    # @!attribute resource_ids
    #   <p>The resource IDs to include in the aggregation results.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute function_names
    #   <p>The Amazon Web Services Lambda function names to include in the aggregation
    #            results.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute runtimes
    #   <p>Returns findings aggregated by Amazon Web Services Lambda function runtime
    #            environments.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute function_tags
    #   <p>The tags to include in the aggregation results.</p>
    #   @return [Array<Types::MapFilter>]
    # @!attribute sort_order
    #   <p>The order to use for sorting the results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The finding severity to use for sorting the results.</p>
    #   @return [String]
    class LambdaFunctionAggregation < Struct.new(
      :resource_ids,
      :function_names,
      :runtimes,
      :function_tags,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of an Amazon Web Services Lambda function finding
    #          aggregation.</p>
    # @!attribute resource_id
    #   <p>The resource IDs included in the aggregation results.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The Amazon Web Services Lambda function names included in the aggregation results.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtimes included in the aggregation results.</p>
    #   @return [String]
    # @!attribute lambda_tags
    #   <p>The tags included in the aggregation results.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the Amazon Web Services Lambda
    #            function. </p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the counts of aggregated finding per severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute last_modified_at
    #   <p>The date that the Amazon Web Services Lambda function included in the aggregation results
    #            was last changed.</p>
    #   @return [Time]
    class LambdaFunctionAggregationResponse < Struct.new(
      :resource_id,
      :function_name,
      :runtime,
      :lambda_tags,
      :account_id,
      :severity_counts,
      :last_modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Lambda function metadata.</p>
    # @!attribute function_tags
    #   <p>The resource tags on an Amazon Web Services Lambda function.</p>
    #   @return [Hash<String, String>]
    # @!attribute layers
    #   <p>The layers for an Amazon Web Services Lambda function. A Lambda function can have up to
    #            five layers.</p>
    #   @return [Array<String>]
    # @!attribute function_name
    #   <p>The name of a function.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>An Amazon Web Services Lambda function's runtime.</p>
    #   @return [String]
    class LambdaFunctionMetadata < Struct.new(
      :function_tags,
      :layers,
      :function_name,
      :runtime,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define a findings aggregation based on an Amazon Web Services Lambda
    #          function's layers.</p>
    # @!attribute function_names
    #   <p>The names of the Amazon Web Services Lambda functions associated with the layers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute resource_ids
    #   <p>The resource IDs for the Amazon Web Services Lambda function layers.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute layer_arns
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Lambda function layer. </p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to use for sorting the results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The finding severity to use for sorting the results.</p>
    #   @return [String]
    class LambdaLayerAggregation < Struct.new(
      :function_names,
      :resource_ids,
      :layer_arns,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of an Amazon Web Services Lambda function layer
    #          finding aggregation.</p>
    # @!attribute function_name
    #   <p>The names of the Amazon Web Services Lambda functions associated with the layers.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The Resource ID of the Amazon Web Services Lambda function layer.</p>
    #   @return [String]
    # @!attribute layer_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Lambda function layer.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the Amazon Web Services Lambda function layer.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the counts of aggregated finding per severity.</p>
    #   @return [Types::SeverityCounts]
    class LambdaLayerAggregationResponse < Struct.new(
      :function_name,
      :resource_id,
      :layer_arn,
      :account_id,
      :severity_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC security groups and subnets that are attached to an Amazon Web Services Lambda
    #          function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The VPC security groups and subnets that are attached to an Amazon Web Services Lambda
    #            function. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    class LambdaVpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service scan type to check permissions for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the NextToken value returned
    #            from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    class ListAccountPermissionsInput < Struct.new(
      :service,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute permissions
    #   <p>Contains details on the permissions an account has to configure Amazon Inspector.</p>
    #   @return [Array<Types::Permission>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListAccountPermissionsOutput < Struct.new(
      :permissions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CIS scan configurations filter criteria.</p>
    # @!attribute scan_name_filters
    #   <p>The list of scan name filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute target_resource_tag_filters
    #   <p>The list of target resource tag filters.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute scan_configuration_arn_filters
    #   <p>The list of scan configuration ARN filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    class ListCisScanConfigurationsFilterCriteria < Struct.new(
      :scan_name_filters,
      :target_resource_tag_filters,
      :scan_configuration_arn_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_criteria
    #   <p>The CIS scan configuration filter criteria.</p>
    #   @return [Types::ListCisScanConfigurationsFilterCriteria]
    # @!attribute sort_by
    #   <p>The CIS scan configuration sort by order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The CIS scan configuration sort order order.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of CIS scan configurations to be returned in a single page of
    #            results.</p>
    #   @return [Integer]
    class ListCisScanConfigurationsRequest < Struct.new(
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configurations
    #   <p>The CIS scan configuration scan configurations.</p>
    #   @return [Array<Types::CisScanConfiguration>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class ListCisScanConfigurationsResponse < Struct.new(
      :scan_configurations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_arn
    #   <p>The scan ARN.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>The filter criteria.</p>
    #   @return [Types::CisScanResultsAggregatedByChecksFilterCriteria]
    # @!attribute sort_by
    #   <p>The sort by order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scan results aggregated by checks to be returned in a single page
    #            of results.</p>
    #   @return [Integer]
    class ListCisScanResultsAggregatedByChecksRequest < Struct.new(
      :scan_arn,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_aggregations
    #   <p>The check aggregations.</p>
    #   @return [Array<Types::CisCheckAggregation>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class ListCisScanResultsAggregatedByChecksResponse < Struct.new(
      :check_aggregations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_arn
    #   <p>The scan ARN.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>The filter criteria.</p>
    #   @return [Types::CisScanResultsAggregatedByTargetResourceFilterCriteria]
    # @!attribute sort_by
    #   <p>The sort by order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of scan results aggregated by a target resource to be returned in a
    #            single page of results.</p>
    #   @return [Integer]
    class ListCisScanResultsAggregatedByTargetResourceRequest < Struct.new(
      :scan_arn,
      :filter_criteria,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_resource_aggregations
    #   <p>The resource aggregations.</p>
    #   @return [Array<Types::CisTargetResourceAggregation>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class ListCisScanResultsAggregatedByTargetResourceResponse < Struct.new(
      :target_resource_aggregations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CIS scans filter criteria.</p>
    # @!attribute scan_name_filters
    #   <p>The list of scan name filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute target_resource_tag_filters
    #   <p>The list of target resource tag filters.</p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute target_resource_id_filters
    #   <p>The list of target resource ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute scan_status_filters
    #   <p>The list of scan status filters.</p>
    #   @return [Array<Types::CisScanStatusFilter>]
    # @!attribute scan_at_filters
    #   <p>The list of scan at filters.</p>
    #   @return [Array<Types::CisDateFilter>]
    # @!attribute scan_configuration_arn_filters
    #   <p>The list of scan configuration ARN filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute scan_arn_filters
    #   <p>The list of scan ARN filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute scheduled_by_filters
    #   <p>The list of scheduled by filters.</p>
    #   @return [Array<Types::CisStringFilter>]
    # @!attribute failed_checks_filters
    #   <p>The list of failed checks filters.</p>
    #   @return [Array<Types::CisNumberFilter>]
    # @!attribute target_account_id_filters
    #   <p>The list of target account ID filters.</p>
    #   @return [Array<Types::CisStringFilter>]
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
      :target_account_id_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_criteria
    #   <p>The CIS scan filter criteria.</p>
    #   @return [Types::ListCisScansFilterCriteria]
    # @!attribute detail_level
    #   <p>The detail applied to the CIS scan.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The CIS scans sort by order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The CIS scans sort order.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned.</p>
    #   @return [Integer]
    class ListCisScansRequest < Struct.new(
      :filter_criteria,
      :detail_level,
      :sort_by,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scans
    #   <p>The CIS scans.</p>
    #   @return [Array<Types::CisScan>]
    # @!attribute next_token
    #   <p>The pagination token from a previous request that's used to retrieve the next page of
    #            results.</p>
    #   @return [String]
    class ListCisScansResponse < Struct.new(
      :scans,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListCodeSecurityIntegrationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integrations
    #   <p>A list of code security integration summaries.</p>
    #   @return [Array<Types::CodeSecurityIntegrationSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    #   @return [String]
    class ListCodeSecurityIntegrationsResponse < Struct.new(
      :integrations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to list associations
    #            for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If your request would return
    #            more than the maximum the response will return a <code>nextToken</code> value, use this
    #            value when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    class ListCodeSecurityScanConfigurationAssociationsRequest < Struct.new(
      :scan_configuration_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>A list of associations between code repositories and scan configurations.</p>
    #   @return [Array<Types::CodeSecurityScanConfigurationAssociationSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListCodeSecurityScanConfigurationAssociationsResponse < Struct.new(
      :associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListCodeSecurityScanConfigurationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>A list of code security scan configuration summaries.</p>
    #   @return [Array<Types::CodeSecurityScanConfigurationSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request. For subsequent calls, use the NextToken
    #            value returned from the previous request to continue listing results after the first
    #            page.</p>
    #   @return [String]
    class ListCodeSecurityScanConfigurationsResponse < Struct.new(
      :configurations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #   @return [Types::CoverageFilterCriteria]
    class ListCoverageInput < Struct.new(
      :max_results,
      :next_token,
      :filter_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    # @!attribute covered_resources
    #   <p>An object that contains details on the covered resources in your environment.</p>
    #   @return [Array<Types::CoveredResource>]
    class ListCoverageOutput < Struct.new(
      :next_token,
      :covered_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #   @return [Types::CoverageFilterCriteria]
    # @!attribute group_by
    #   <p>The value to group the results by.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListCoverageStatisticsInput < Struct.new(
      :filter_criteria,
      :group_by,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute counts_by_group
    #   <p>An array with the number for each group.</p>
    #   @return [Array<Types::Counts>]
    # @!attribute total_counts
    #   <p>The total number for all groups.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListCoverageStatisticsOutput < Struct.new(
      :counts_by_group,
      :total_counts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    class ListDelegatedAdminAccountsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegated_admin_accounts
    #   <p>Details of the Amazon Inspector delegated administrator of your organization.</p>
    #   @return [Array<Types::DelegatedAdminAccount>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListDelegatedAdminAccountsOutput < Struct.new(
      :delegated_admin_accounts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The Amazon resource number (ARN) of the filter.</p>
    #   @return [Array<String>]
    # @!attribute action
    #   <p>The action the filter applies to matched findings.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    class ListFiltersInput < Struct.new(
      :arns,
      :action,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Contains details on the filters associated with your account.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListFiltersOutput < Struct.new(
      :filters,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregation_type
    #   <p>The type of the aggregation request.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute account_ids
    #   <p>The Amazon Web Services account IDs to retrieve finding aggregation data for.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute aggregation_request
    #   <p>Details of the aggregation request that is used to filter your aggregation
    #            results.</p>
    #   @return [Types::AggregationRequest]
    class ListFindingAggregationsInput < Struct.new(
      :aggregation_type,
      :next_token,
      :max_results,
      :account_ids,
      :aggregation_request,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregation_type
    #   <p>The type of aggregation to perform.</p>
    #   @return [String]
    # @!attribute responses
    #   <p>Objects that contain the results of an aggregation operation.</p>
    #   @return [Array<Types::AggregationResponse>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class ListFindingAggregationsOutput < Struct.new(
      :aggregation_type,
      :responses,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>Details on the filters to apply to your finding results.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute sort_criteria
    #   <p>Details on the sort criteria to apply to your finding results.</p>
    #   @return [Types::SortCriteria]
    class ListFindingsInput < Struct.new(
      :max_results,
      :next_token,
      :filter_criteria,
      :sort_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>Contains details on the findings in your environment.</p>
    #   @return [Array<Types::Finding>]
    class ListFindingsOutput < Struct.new(
      :next_token,
      :findings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute only_associated
    #   <p>Specifies whether to list only currently associated members if <code>True</code> or to
    #            list all members within the organization if <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    class ListMembersInput < Struct.new(
      :only_associated,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>An object that contains details for each member account.</p>
    #   @return [Array<Types::Member>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #            items.</p>
    #   @return [String]
    class ListMembersOutput < Struct.new(
      :members,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource number (ARN) of the resource to list tags of.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results the response can return. If your request would return more
    #            than the maximum the response will return a <code>nextToken</code> value, use this value
    #            when you call the action again to get the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. If your response returns
    #            more than the <code>maxResults</code> maximum value it will also return a
    #               <code>nextToken</code> value. For subsequent calls, use the <code>nextToken</code> value
    #            returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The Amazon Web Services account IDs to retrieve usage totals for.</p>
    #   @return [Array<String>]
    class ListUsageTotalsInput < Struct.new(
      :max_results,
      :next_token,
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #            items.</p>
    #   @return [String]
    # @!attribute totals
    #   <p>An object with details on the total usage for the requested account.</p>
    #   @return [Array<Types::UsageTotal>]
    class ListUsageTotalsOutput < Struct.new(
      :next_token,
      :totals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes details of a map filter.</p>
    # @!attribute comparison
    #   <p>The operator to use when comparing values in the filter.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag key used in the filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value used in the filter.</p>
    #   @return [String]
    class MapFilter < Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details on a member account in your organization.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account.</p>
    #   @return [String]
    # @!attribute relationship_status
    #   <p>The status of the member account.</p>
    #   @return [String]
    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for this member
    #            account.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>A timestamp showing when the status of this member was last updated.</p>
    #   @return [Time]
    class Member < Struct.new(
      :account_id,
      :relationship_status,
      :delegated_admin_account_id,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about the status of Amazon Inspector deep inspection for a member
    #          account in your organization.</p>
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account of the organization member.</p>
    #   @return [String]
    # @!attribute activate_deep_inspection
    #   <p>Whether Amazon Inspector deep inspection is active in the account. If <code>TRUE</code> Amazon Inspector deep
    #            inspection is active, if <code>FALSE</code> it is not active.</p>
    #   @return [Boolean]
    class MemberAccountEc2DeepInspectionStatus < Struct.new(
      :account_id,
      :activate_deep_inspection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about the state of Amazon Inspector deep inspection for a member
    #          account.</p>
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account of the organization member</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of Amazon Inspector deep inspection in the member account.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message explaining why the account failed to activate Amazon Inspector deep
    #            inspection.</p>
    #   @return [String]
    class MemberAccountEc2DeepInspectionStatusState < Struct.new(
      :account_id,
      :status,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A monthly schedule.</p>
    # @!attribute start_time
    #   <p>The monthly schedule's start time.</p>
    #   @return [Types::Time]
    # @!attribute day
    #   <p>The monthly schedule's day.</p>
    #   @return [String]
    class MonthlySchedule < Struct.new(
      :start_time,
      :day,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the network path associated with a finding.</p>
    # @!attribute steps
    #   <p>The details on the steps in the network path.</p>
    #   @return [Array<Types::Step>]
    class NetworkPath < Struct.new(
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of a network reachability finding.</p>
    # @!attribute open_port_range
    #   <p>An object that contains details about the open port range associated with a
    #            finding.</p>
    #   @return [Types::PortRange]
    # @!attribute protocol
    #   <p>The protocol associated with a finding.</p>
    #   @return [String]
    # @!attribute network_path
    #   <p>An object that contains details about a network path associated with a finding.</p>
    #   @return [Types::NetworkPath]
    class NetworkReachabilityDetails < Struct.new(
      :open_port_range,
      :protocol,
      :network_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the details of a number filter.</p>
    # @!attribute upper_inclusive
    #   <p>The highest number to be included in the filter.</p>
    #   @return [Float]
    # @!attribute lower_inclusive
    #   <p>The lowest number to be included in the filter.</p>
    #   @return [Float]
    class NumberFilter < Struct.new(
      :upper_inclusive,
      :lower_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A one time schedule.</p>
    class OneTimeSchedule < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on operating system package type.</p>
    # @!attribute package_names
    #   <p>The names of packages to aggregate findings on.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class PackageAggregation < Struct.new(
      :package_names,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains the results of a finding aggregation by image layer.</p>
    # @!attribute package_name
    #   <p>The name of the operating system package.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    class PackageAggregationResponse < Struct.new(
      :package_name,
      :account_id,
      :severity_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the details of a package filter.</p>
    # @!attribute name
    #   <p>An object that contains details on the name of the package to filter on.</p>
    #   @return [Types::StringFilter]
    # @!attribute version
    #   <p>The package version to filter on.</p>
    #   @return [Types::StringFilter]
    # @!attribute epoch
    #   <p>An object that contains details on the package epoch to filter on.</p>
    #   @return [Types::NumberFilter]
    # @!attribute release
    #   <p>An object that contains details on the package release to filter on.</p>
    #   @return [Types::StringFilter]
    # @!attribute architecture
    #   <p>An object that contains details on the package architecture type to filter on.</p>
    #   @return [Types::StringFilter]
    # @!attribute source_layer_hash
    #   <p>An object that contains details on the source layer hash to filter on.</p>
    #   @return [Types::StringFilter]
    # @!attribute source_lambda_layer_arn
    #   <p>An object that describes the details of a string filter.</p>
    #   @return [Types::StringFilter]
    # @!attribute file_path
    #   <p>An object that contains details on the package file path to filter on.</p>
    #   @return [Types::StringFilter]
    class PackageFilter < Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture,
      :source_layer_hash,
      :source_lambda_layer_arn,
      :file_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a package vulnerability finding.</p>
    # @!attribute vulnerability_id
    #   <p>The ID given to this vulnerability.</p>
    #   @return [String]
    # @!attribute vulnerable_packages
    #   <p>The packages impacted by this vulnerability.</p>
    #   @return [Array<Types::VulnerablePackage>]
    # @!attribute source
    #   <p>The source of the vulnerability information.</p>
    #   @return [String]
    # @!attribute cvss
    #   <p>An object that contains details about the CVSS score of a finding.</p>
    #   @return [Array<Types::CvssScore>]
    # @!attribute related_vulnerabilities
    #   <p>One or more vulnerabilities related to the one identified in this finding.</p>
    #   @return [Array<String>]
    # @!attribute source_url
    #   <p>A URL to the source of the vulnerability information.</p>
    #   @return [String]
    # @!attribute vendor_severity
    #   <p>The severity the vendor has given to this vulnerability type.</p>
    #   @return [String]
    # @!attribute vendor_created_at
    #   <p>The date and time that this vulnerability was first added to the vendor's
    #            database.</p>
    #   @return [Time]
    # @!attribute vendor_updated_at
    #   <p>The date and time the vendor last updated this vulnerability in their database.</p>
    #   @return [Time]
    # @!attribute reference_urls
    #   <p>One or more URLs that contain details about this vulnerability type.</p>
    #   @return [Array<String>]
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
      :reference_urls,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for periodic scans that run on a scheduled basis.</p>
    # @!attribute frequency
    #   <p>The frequency at which periodic scans are performed (such as weekly or monthly).</p>
    #            <p>If you don't provide the <code>frequencyExpression</code> Amazon Inspector chooses day for the scan
    #            to run. If you provide the <code>frequencyExpression</code>, the schedule must match the
    #            specified <code>frequency</code>.</p>
    #   @return [String]
    # @!attribute frequency_expression
    #   <p>The schedule expression for periodic scans, in cron format.</p>
    #   @return [String]
    class PeriodicScanConfiguration < Struct.new(
      :frequency,
      :frequency_expression,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the permissions an account has within Amazon Inspector.</p>
    # @!attribute service
    #   <p>The services that the permissions allow an account to perform the given operations
    #            for.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operations that can be performed with the given permissions.</p>
    #   @return [String]
    class Permission < Struct.new(
      :service,
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the port range associated with a finding.</p>
    # @!attribute begin
    #   <p>The beginning port in a port range.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The ending port in a port range.</p>
    #   @return [Integer]
    class PortRange < Struct.new(
      :begin,
      :end,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the details of a port range filter.</p>
    # @!attribute begin_inclusive
    #   <p>The port number the port range begins at.</p>
    #   @return [Integer]
    # @!attribute end_inclusive
    #   <p>The port number the port range ends at.</p>
    #   @return [Integer]
    class PortRangeFilter < Struct.new(
      :begin_inclusive,
      :end_inclusive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the scan configuration settings applied to a specific project in a code
    #          repository.</p>
    # @!attribute periodic_scan_configurations
    #   <p>The periodic scan configurations applied to the project.</p>
    #   @return [Array<Types::ProjectPeriodicScanConfiguration>]
    # @!attribute continuous_integration_scan_configurations
    #   <p>The continuous integration scan configurations applied to the project.</p>
    #   @return [Array<Types::ProjectContinuousIntegrationScanConfiguration>]
    class ProjectCodeSecurityScanConfiguration < Struct.new(
      :periodic_scan_configurations,
      :continuous_integration_scan_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the continuous integration scan configuration settings applied to a specific
    #          project.</p>
    # @!attribute supported_event
    #   <p>The repository event that triggers continuous integration scans for the project.</p>
    #   @return [String]
    # @!attribute rule_set_categories
    #   <p>The categories of security rules applied during continuous integration scans for the
    #            project.</p>
    #   @return [Array<String>]
    class ProjectContinuousIntegrationScanConfiguration < Struct.new(
      :supported_event,
      :rule_set_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the periodic scan configuration settings applied to a specific project.</p>
    # @!attribute frequency_expression
    #   <p>The schedule expression for periodic scans, in cron format, applied to the
    #            project.</p>
    #   @return [String]
    # @!attribute rule_set_categories
    #   <p>The categories of security rules applied during periodic scans for the project.</p>
    #   @return [Array<String>]
    class ProjectPeriodicScanConfiguration < Struct.new(
      :frequency_expression,
      :rule_set_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the recommended course of action to remediate the finding.</p>
    # @!attribute text
    #   <p>The recommended course of action to remediate the finding.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL address to the CVE remediation recommendations.</p>
    #   @return [String]
    class Recommendation < Struct.new(
      :text,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on how to remediate a finding.</p>
    # @!attribute recommendation
    #   <p>An object that contains information about the recommended course of action to remediate
    #            the finding.</p>
    #   @return [Types::Recommendation]
    class Remediation < Struct.new(
      :recommendation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on repository.</p>
    # @!attribute repositories
    #   <p>The names of repositories to aggregate findings on.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    class RepositoryAggregation < Struct.new(
      :repositories,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains details on the results of a finding aggregation by
    #          repository.</p>
    # @!attribute repository
    #   <p>The name of the repository associated with the findings.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that represent the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    # @!attribute affected_images
    #   <p>The number of container images impacted by the findings.</p>
    #   @return [Integer]
    class RepositoryAggregationResponse < Struct.new(
      :repository,
      :account_id,
      :severity_counts,
      :affected_images,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_type
    #   <p>The scan type the key encrypts.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type the key encrypts.</p>
    #   @return [String]
    class ResetEncryptionKeyRequest < Struct.new(
      :scan_type,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ResetEncryptionKeyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the resource involved in a finding.</p>
    # @!attribute type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute partition
    #   <p>The partition of the resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region the impacted resource is located in.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute details
    #   <p>An object that contains details about the resource involved in a finding.</p>
    #   @return [Types::ResourceDetails]
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :tags,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the resource involved in the finding.</p>
    # @!attribute aws_ec2_instance
    #   <p>An object that contains details about the Amazon EC2 instance involved in the finding.</p>
    #   @return [Types::AwsEc2InstanceDetails]
    # @!attribute aws_ecr_container_image
    #   <p>An object that contains details about the Amazon ECR container image involved in the
    #            finding.</p>
    #   @return [Types::AwsEcrContainerImageDetails]
    # @!attribute aws_lambda_function
    #   <p>A summary of the information about an Amazon Web Services Lambda function affected by a
    #            finding.</p>
    #   @return [Types::AwsLambdaFunctionDetails]
    # @!attribute code_repository
    #   <p>Contains details about a code repository resource associated with a finding.</p>
    #   @return [Types::CodeRepositoryDetails]
    class ResourceDetails < Struct.new(
      :aws_ec2_instance,
      :aws_ecr_container_image,
      :aws_lambda_function,
      :code_repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource filter criteria for a Software bill of materials (SBOM) report.</p>
    # @!attribute account_id
    #   <p>The account IDs used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute resource_id
    #   <p>The resource IDs used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute resource_type
    #   <p>The resource types used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute ecr_repository_name
    #   <p>The ECR repository names used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute lambda_function_name
    #   <p>The Amazon Web Services Lambda function name used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute ecr_image_tags
    #   <p>The ECR image tags used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceStringFilter>]
    # @!attribute ec2_instance_tags
    #   <p>The EC2 instance tags used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceMapFilter>]
    # @!attribute lambda_function_tags
    #   <p>The Amazon Web Services Lambda function tags used as resource filter criteria.</p>
    #   @return [Array<Types::ResourceMapFilter>]
    class ResourceFilterCriteria < Struct.new(
      :account_id,
      :resource_id,
      :resource_type,
      :ecr_repository_name,
      :lambda_function_name,
      :ecr_image_tags,
      :ec2_instance_tags,
      :lambda_function_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource map filter for a software bill of material report.</p>
    # @!attribute comparison
    #   <p>The filter's comparison.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The filter's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The filter's value.</p>
    #   @return [String]
    class ResourceMapFilter < Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access an invalid resource. Make sure the resource is specified
    #          correctly.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains details about the metadata for an Amazon ECR resource.</p>
    # @!attribute ecr_repository
    #   <p>An object that contains details about the repository an Amazon ECR image resides in.</p>
    #   @return [Types::EcrRepositoryMetadata]
    # @!attribute ecr_image
    #   <p>An object that contains details about the container metadata for an Amazon ECR image.</p>
    #   @return [Types::EcrContainerImageMetadata]
    # @!attribute ec2
    #   <p>An object that contains metadata details for an Amazon EC2 instance.</p>
    #   @return [Types::Ec2Metadata]
    # @!attribute lambda_function
    #   <p>An object that contains metadata details for an Amazon Web Services Lambda
    #            function.</p>
    #   @return [Types::LambdaFunctionMetadata]
    # @!attribute code_repository
    #   <p>Contains metadata about scan coverage for a code repository resource.</p>
    #   @return [Types::CodeRepositoryMetadata]
    class ResourceScanMetadata < Struct.new(
      :ecr_repository,
      :ecr_image,
      :ec2,
      :lambda_function,
      :code_repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details the state of Amazon Inspector for each resource type Amazon Inspector scans.</p>
    # @!attribute ec2
    #   <p>An object detailing the state of Amazon Inspector scanning for Amazon EC2 resources.</p>
    #   @return [Types::State]
    # @!attribute ecr
    #   <p>An object detailing the state of Amazon Inspector scanning for Amazon ECR resources.</p>
    #   @return [Types::State]
    # @!attribute lambda
    #   <p>An object that described the state of Amazon Inspector scans for an account.</p>
    #   @return [Types::State]
    # @!attribute lambda_code
    #   <p>An object that described the state of Amazon Inspector scans for an account.</p>
    #   @return [Types::State]
    # @!attribute code_repository
    #   <p>An object that described the state of Amazon Inspector scans for an account.</p>
    #   @return [Types::State]
    class ResourceState < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details the status of Amazon Inspector for each resource type Amazon Inspector scans.</p>
    # @!attribute ec2
    #   <p>The status of Amazon Inspector scanning for Amazon EC2 resources.</p>
    #   @return [String]
    # @!attribute ecr
    #   <p>The status of Amazon Inspector scanning for Amazon ECR resources.</p>
    #   @return [String]
    # @!attribute lambda
    #   <p>The status of Amazon Inspector scanning for Amazon Web Services Lambda function.</p>
    #   @return [String]
    # @!attribute lambda_code
    #   <p>The status of Amazon Inspector scanning for custom application code for Amazon Web Services Lambda
    #            functions. </p>
    #   @return [String]
    # @!attribute code_repository
    #   <p>The status of Amazon Inspector scanning for code repositories.</p>
    #   @return [String]
    class ResourceStatus < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code,
      :code_repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource string filter for a software bill of materials report.</p>
    # @!attribute comparison
    #   <p>The filter's comparison.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The filter's value.</p>
    #   @return [String]
    class ResourceStringFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the scan.</p>
    # @!attribute status_code
    #   <p>The status code of the scan.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The scan status. Possible return values and descriptions are: </p>
    #            <p>
    #               <code>ACCESS_DENIED</code> - Resource access policy restricting Amazon Inspector access. Please
    #            update the IAM policy.</p>
    #            <p>
    #               <code>ACCESS_DENIED_TO_ENCRYPTION_KEY</code> - The KMS key policy doesn't allow Amazon Inspector
    #            access. Update the key policy.</p>
    #            <p>
    #               <code>DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED</code> - Amazon Inspector failed to extract
    #            the package inventory because the package collection time exceeding the maximum threshold
    #            of 15 minutes.</p>
    #            <p>
    #               <code>DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED</code> - The SSM agent couldn't
    #            send inventory to Amazon Inspector because the SSM quota for Inventory data collected per instance per
    #            day has already been reached for this instance.</p>
    #            <p>
    #               <code>DEEP_INSPECTION_NO_INVENTORY</code> - The Amazon Inspector plugin hasn't yet been able to
    #            collect an inventory of packages for this instance. This is usually the result of a pending
    #            scan, however, if this status persists after 6 hours, use SSM to ensure that
    #            the required Amazon Inspector associations exist and are running for the instance.</p>
    #            <p>
    #               <code>DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED</code> - The instance has
    #            exceeded the 5000 package limit for Amazon Inspector Deep inspection. To resume Deep inspection for
    #            this instance you can try to adjust the custom paths associated with the account.</p>
    #            <p>
    #               <code>EC2_INSTANCE_STOPPED</code> - This EC2 instance is in a stopped state, therefore,
    #            Amazon Inspector will pause scanning. The existing findings will continue to exist until the instance
    #            is terminated. Once the instance is re-started, Inspector will automatically start scanning
    #            the instance again. Please note that you will not be charged for this instance while it's
    #            in a stopped state.</p>
    #            <p>
    #               <code>EXCLUDED_BY_TAG</code> - This resource was not scanned because it has been
    #            excluded by a tag.</p>
    #            <p>
    #               <code>IMAGE_SIZE_EXCEEDED</code> - Reserved for future use.</p>
    #            <p>
    #               <code>INTEGRATION_CONNNECTION_LOST</code> - Amazon Inspector couldn't communicate with the source
    #            code management platform.</p>
    #            <p>
    #               <code>INTERNAL_ERROR</code> - Amazon Inspector has encountered an internal error for this resource.
    #            Amazon Inspector service will automatically resolve the issue and resume the scanning. No action
    #            required from the user.</p>
    #            <p>
    #               <code>NO_INVENTORY</code> - Amazon Inspector couldn't find software application inventory to scan
    #            for vulnerabilities. This might be caused due to required Amazon Inspector associations being deleted
    #            or failing to run on your resource. Please verify the status of
    #            <code>InspectorInventoryCollection-do-not-delete</code> association in the SSM console
    #            for the resource. Additionally, you can verify the instance's inventory in the SSM Fleet
    #            Manager console.</p>
    #            <p>
    #               <code>NO_RESOURCES_FOUND</code> - Reserved for future use.</p>
    #            <p>
    #               <code>NO_SCAN_CONFIGURATION_ASSOCIATED</code> - The code repository resource doesn't
    #            have an associated scan configuration.</p>
    #            <p>
    #               <code>PENDING_DISABLE</code> - This resource is pending cleanup during disablement. The
    #            customer will not be billed while a resource is in the pending disable status.</p>
    #            <p>
    #               <code>PENDING_INITIAL_SCAN</code> - This resource has been identified for scanning,
    #            results will be available soon.</p>
    #            <p>
    #               <code>RESOURCE_TERMINATED</code> - This resource has been terminated. The findings and
    #            coverage associated with this resource are in the process of being cleaned up.</p>
    #            <p>
    #               <code>SCAN_ELIGIBILITY_EXPIRED</code> - The configured scan duration has lapsed for this
    #            image.</p>
    #            <p>
    #               <code>SCAN_FREQUENCY_MANUAL</code> - This image will not be covered by Amazon Inspector due to the
    #            repository scan frequency configuration.</p>
    #            <p>
    #               <code>SCAN_FREQUENCY_SCAN_ON_PUSH</code> - This image will be scanned one time and will
    #            not new findings because of the scan frequency configuration.</p>
    #            <p>
    #               <code>SCAN_IN_PROGRESS</code> - The resource is currently being scanned.</p>
    #            <p>
    #               <code>STALE_INVENTORY</code> - Amazon Inspector wasn't able to collect an updated software
    #            application inventory in the last 7 days. Please confirm the required Amazon Inspector associations
    #            still exist and you can still see an updated inventory in the SSM console.</p>
    #            <p>
    #               <code>SUCCESSFUL</code> - The scan was successful.</p>
    #            <p>
    #               <code>UNMANAGED_EC2_INSTANCE</code> - The EC2 instance is not managed by SSM, please use
    #            the following SSM automation to remediate the issue: <a href="https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html">https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-awssupport-troubleshoot-managed-instance.html</a>.
    #            Once the instance becomes managed by SSM, Inspector will automatically begin scanning this
    #            instance. </p>
    #            <p>
    #               <code>UNSUPPORTED_CONFIG_FILE</code> - Reserved for future use.</p>
    #            <p>
    #               <code>UNSUPPORTED_LANGUAGE</code> - The scan was unsuccessful because the repository
    #            contains files in an unsupported programming language.</p>
    #            <p>
    #               <code>UNSUPPORTED_MEDIA_TYPE </code>- The ECR image has an unsupported media
    #            type.</p>
    #            <p>
    #               <code>UNSUPPORTED_OS</code> - Amazon Inspector does not support this OS, architecture, or image
    #            manifest type at this time. To see a complete list of supported operating systems see:
    #            <a href=" https://docs.aws.amazon.com/inspector/latest/user/supported.html">https://docs.aws.amazon.com/inspector/latest/user/supported.html</a>.</p>
    #            <p>
    #               <code>UNSUPPORTED_RUNTIME</code> - The function was not scanned because it has an
    #            unsupported runtime. To see a complete list of supported runtimes see: <a href=" https://docs.aws.amazon.com/inspector/latest/user/supported.html">https://docs.aws.amazon.com/inspector/latest/user/supported.html</a>.</p>
    #   @return [String]
    class ScanStatus < Struct.new(
      :status_code,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A schedule.</p>
    # @!attribute one_time
    #   <p>The schedule's one time.</p>
    #   @return [Types::OneTimeSchedule]
    # @!attribute daily
    #   <p>The schedule's daily.</p>
    #   @return [Types::DailySchedule]
    # @!attribute weekly
    #   <p>The schedule's weekly.</p>
    #   @return [Types::WeeklySchedule]
    # @!attribute monthly
    #   <p>The schedule's monthly.</p>
    #   @return [Types::MonthlySchedule]
    class Schedule < Struct.new(
      :one_time,
      :daily,
      :weekly,
      :monthly,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class OneTime < Schedule; end
      class Daily < Schedule; end
      class Weekly < Schedule; end
      class Monthly < Schedule; end
      class Unknown < Schedule; end
    end

    # <p>Defines the scope of repositories to be included in code security scans.</p>
    # @!attribute project_selection_scope
    #   <p>The scope of projects to be selected for scanning within the integrated repositories.
    #            Setting the value to <code>ALL</code> applies the scope settings to all existing and future
    #            projects imported into Amazon Inspector.</p>
    #   @return [String]
    class ScopeSettings < Struct.new(
      :project_selection_scope,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details on the criteria used to define the filter for a vulnerability search. </p>
    # @!attribute vulnerability_ids
    #   <p>The IDs for specific vulnerabilities.</p>
    #   @return [Array<String>]
    class SearchVulnerabilitiesFilterCriteria < Struct.new(
      :vulnerability_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_criteria
    #   <p>The criteria used to filter the results of a vulnerability search.</p>
    #   @return [Types::SearchVulnerabilitiesFilterCriteria]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #   @return [String]
    class SearchVulnerabilitiesRequest < Struct.new(
      :filter_criteria,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vulnerabilities
    #   <p>Details about the listed vulnerability.</p>
    #   @return [Array<Types::Vulnerability>]
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #            items.</p>
    #   @return [String]
    class SearchVulnerabilitiesResponse < Struct.new(
      :vulnerabilities,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The unique token that identifies the CIS session.</p>
    #   @return [String]
    class SendCisSessionHealthRequest < Struct.new(
      :scan_job_id,
      :session_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SendCisSessionHealthResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The unique token that identifies the CIS session.</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The CIS session telemetry messages.</p>
    #   @return [Array<Types::CisSessionMessage>]
    class SendCisSessionTelemetryRequest < Struct.new(
      :scan_job_id,
      :session_token,
      :messages,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SendCisSessionTelemetryResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #          the relevant resources, or use Service Quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds a service quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the counts of aggregated finding per severity.</p>
    # @!attribute all
    #   <p>The total count of findings from all severities.</p>
    #   @return [Integer]
    # @!attribute medium
    #   <p>The total count of medium severity findings.</p>
    #   @return [Integer]
    # @!attribute high
    #   <p>The total count of high severity findings.</p>
    #   @return [Integer]
    # @!attribute critical
    #   <p>The total count of critical severity findings.</p>
    #   @return [Integer]
    class SeverityCounts < Struct.new(
      :all,
      :medium,
      :high,
      :critical,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the criteria used to sort finding results.</p>
    # @!attribute field
    #   <p>The finding detail field by which results are sorted.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order by which findings are sorted.</p>
    #   @return [String]
    class SortCriteria < Struct.new(
      :field,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The start CIS session message.</p>
    # @!attribute session_token
    #   <p>The unique token that identifies the CIS session.</p>
    #   @return [String]
    class StartCisSessionMessage < Struct.new(
      :session_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The start CIS session message.</p>
    #   @return [Types::StartCisSessionMessage]
    class StartCisSessionRequest < Struct.new(
      :scan_job_id,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartCisSessionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource identifier for the code repository to scan.</p>
    #   @return [Types::CodeSecurityResource]
    class StartCodeSecurityScanRequest < Struct.new(
      :client_token,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_id
    #   <p>The unique identifier of the initiated scan.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the initiated scan.</p>
    #   @return [String]
    class StartCodeSecurityScanResponse < Struct.new(
      :scan_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that described the state of Amazon Inspector scans for an account.</p>
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code explaining why the account failed to enable Amazon Inspector.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message received when the account failed to enable Amazon Inspector.</p>
    #   @return [String]
    class State < Struct.new(
      :status,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status counts.</p>
    # @!attribute failed
    #   <p>The number of checks that failed.</p>
    #   @return [Integer]
    # @!attribute skipped
    #   <p>The number of checks that were skipped.</p>
    #   @return [Integer]
    # @!attribute passed
    #   <p>The number of checks that passed.</p>
    #   @return [Integer]
    class StatusCounts < Struct.new(
      :failed,
      :skipped,
      :passed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the step associated with a finding.</p>
    # @!attribute component_id
    #   <p>The component ID.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The component type.</p>
    #   @return [String]
    # @!attribute component_arn
    #   <p>The component ARN. The ARN can be null and is not displayed in the Amazon Web Services
    #            console.</p>
    #   @return [String]
    class Step < Struct.new(
      :component_id,
      :component_type,
      :component_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The stop CIS message progress.</p>
    # @!attribute total_checks
    #   <p>The progress' total checks.</p>
    #   @return [Integer]
    # @!attribute successful_checks
    #   <p>The progress' successful checks.</p>
    #   @return [Integer]
    # @!attribute failed_checks
    #   <p>The progress' failed checks.</p>
    #   @return [Integer]
    # @!attribute not_evaluated_checks
    #   <p>The progress' not evaluated checks.</p>
    #   @return [Integer]
    # @!attribute unknown_checks
    #   <p>The progress' unknown checks.</p>
    #   @return [Integer]
    # @!attribute not_applicable_checks
    #   <p>The progress' not applicable checks.</p>
    #   @return [Integer]
    # @!attribute informational_checks
    #   <p>The progress' informational checks.</p>
    #   @return [Integer]
    # @!attribute error_checks
    #   <p>The progress' error checks.</p>
    #   @return [Integer]
    class StopCisMessageProgress < Struct.new(
      :total_checks,
      :successful_checks,
      :failed_checks,
      :not_evaluated_checks,
      :unknown_checks,
      :not_applicable_checks,
      :informational_checks,
      :error_checks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_checks] = 0 unless options.key?(:total_checks)
        options[:successful_checks] = 0 unless options.key?(:successful_checks)
        options[:failed_checks] = 0 unless options.key?(:failed_checks)
        options[:not_evaluated_checks] = 0 unless options.key?(:not_evaluated_checks)
        options[:unknown_checks] = 0 unless options.key?(:unknown_checks)
        options[:not_applicable_checks] = 0 unless options.key?(:not_applicable_checks)
        options[:informational_checks] = 0 unless options.key?(:informational_checks)
        options[:error_checks] = 0 unless options.key?(:error_checks)
        super
      end
    end

    # <p>The stop CIS session message.</p>
    # @!attribute status
    #   <p>The status of the message.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the message.</p>
    #   @return [String]
    # @!attribute progress
    #   <p>The progress of the message.</p>
    #   @return [Types::StopCisMessageProgress]
    # @!attribute compute_platform
    #   <p>The message compute platform.</p>
    #   @return [Types::ComputePlatform]
    # @!attribute benchmark_version
    #   <p>The message benchmark version.</p>
    #   @return [String]
    # @!attribute benchmark_profile
    #   <p>The message benchmark profile.</p>
    #   @return [String]
    class StopCisSessionMessage < Struct.new(
      :status,
      :reason,
      :progress,
      :compute_platform,
      :benchmark_version,
      :benchmark_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_job_id
    #   <p>A unique identifier for the scan job.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The unique token that identifies the CIS session.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The stop CIS session message.</p>
    #   @return [Types::StopCisSessionMessage]
    class StopCisSessionRequest < Struct.new(
      :scan_job_id,
      :session_token,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopCisSessionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the details of a string filter.</p>
    # @!attribute comparison
    #   <p>The operator to use when comparing values in the filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to filter on.</p>
    #   @return [String]
    class StringFilter < Struct.new(
      :comparison,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a successful association or disassociation between a code repository and a
    #          scan configuration.</p>
    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration that was successfully
    #            associated or disassociated.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>Identifies a specific resource in a code repository that will be scanned.</p>
    #   @return [Types::CodeSecurityResource]
    class SuccessfulAssociationResult < Struct.new(
      :scan_configuration_arn,
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested fix for a vulnerability in your Lambda function code.</p>
    # @!attribute description
    #   <p>The fix's description.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The fix's code.</p>
    #   @return [String]
    class SuggestedFix < Struct.new(
      :description,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tag filter.</p>
    # @!attribute comparison
    #   <p>The tag filter comparison value.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The tag filter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag filter value.</p>
    #   @return [String]
    class TagFilter < Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply a tag to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be added to a resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The time.</p>
    # @!attribute time_of_day
    #   <p>The time of day in 24-hour format (00:00).</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The timezone.</p>
    #   @return [String]
    class Time < Struct.new(
      :time_of_day,
      :timezone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details that define an aggregation based on finding title.</p>
    # @!attribute titles
    #   <p>The finding titles to aggregate on.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute vulnerability_ids
    #   <p>The vulnerability IDs of the findings.</p>
    #   @return [Array<Types::StringFilter>]
    # @!attribute resource_type
    #   <p>The resource type to aggregate on.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #   @return [String]
    # @!attribute finding_type
    #   <p>The type of finding to aggregate on.</p>
    #   @return [String]
    class TitleAggregation < Struct.new(
      :titles,
      :vulnerability_ids,
      :resource_type,
      :sort_order,
      :sort_by,
      :finding_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response that contains details on the results of a finding aggregation by
    #          title.</p>
    # @!attribute title
    #   <p>The title that the findings were aggregated on.</p>
    #   @return [String]
    # @!attribute vulnerability_id
    #   <p>The vulnerability ID of the finding.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>An object that represent the count of matched findings per severity.</p>
    #   @return [Types::SeverityCounts]
    class TitleAggregationResponse < Struct.new(
      :title,
      :vulnerability_id,
      :account_id,
      :severity_counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The CIS scan configuration ARN.</p>
    #   @return [String]
    # @!attribute scan_name
    #   <p>The scan name for the CIS scan configuration.</p>
    #   @return [String]
    # @!attribute security_level
    #   <p> The security level for the CIS scan configuration. Security level refers to the
    #            Benchmark levels that CIS assigns to a profile. </p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for the CIS scan configuration.</p>
    #   @return [Types::Schedule]
    # @!attribute targets
    #   <p>The targets for the CIS scan configuration.</p>
    #   @return [Types::UpdateCisTargets]
    class UpdateCisScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :scan_name,
      :security_level,
      :schedule,
      :targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The CIS scan configuration ARN.</p>
    #   @return [String]
    class UpdateCisScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updates CIS targets.</p>
    # @!attribute account_ids
    #   <p>The target account ids.</p>
    #   @return [Array<String>]
    # @!attribute target_resource_tags
    #   <p>The target resource tags.</p>
    #   @return [Hash<String, Array<String>>]
    class UpdateCisTargets < Struct.new(
      :account_ids,
      :target_resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the code security integration to update.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The updated integration details specific to the repository provider type.</p>
    #   @return [Types::UpdateIntegrationDetails]
    class UpdateCodeSecurityIntegrationRequest < Struct.new(
      :integration_arn,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the updated code security integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated code security integration.</p>
    #   @return [String]
    class UpdateCodeSecurityIntegrationResponse < Struct.new(
      :integration_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the scan configuration to update.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The updated configuration settings for the code security scan.</p>
    #   @return [Types::CodeSecurityScanConfiguration]
    class UpdateCodeSecurityScanConfigurationRequest < Struct.new(
      :scan_configuration_arn,
      :configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the updated scan configuration.</p>
    #   @return [String]
    class UpdateCodeSecurityScanConfigurationResponse < Struct.new(
      :scan_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ecr_configuration
    #   <p>Specifies how the ECR automated re-scan will be updated for your environment.</p>
    #   @return [Types::EcrConfiguration]
    # @!attribute ec2_configuration
    #   <p>Specifies how the Amazon EC2 automated scan will be updated for your environment.</p>
    #   @return [Types::Ec2Configuration]
    class UpdateConfigurationInput < Struct.new(
      :ecr_configuration,
      :ec2_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateConfigurationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute activate_deep_inspection
    #   <p>Specify <code>TRUE</code> to activate Amazon Inspector deep inspection in your account, or
    #               <code>FALSE</code> to deactivate. Member accounts in an organization cannot deactivate
    #            deep inspection, instead the delegated administrator for the organization can deactivate a
    #            member account using <a href="https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html">BatchUpdateMemberEc2DeepInspectionStatus</a>.</p>
    #   @return [Boolean]
    # @!attribute package_paths
    #   <p>The Amazon Inspector deep inspection custom paths you are adding for your account.</p>
    #   @return [Array<String>]
    class UpdateEc2DeepInspectionConfigurationRequest < Struct.new(
      :activate_deep_inspection,
      :package_paths,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_paths
    #   <p>The current Amazon Inspector deep inspection custom paths for your account.</p>
    #   @return [Array<String>]
    # @!attribute org_package_paths
    #   <p>The current Amazon Inspector deep inspection custom paths for the organization.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of Amazon Inspector deep inspection in your account.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message explaining why new Amazon Inspector deep inspection custom paths could not be
    #            added.</p>
    #   @return [String]
    class UpdateEc2DeepInspectionConfigurationResponse < Struct.new(
      :package_paths,
      :org_package_paths,
      :status,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute kms_key_id
    #   <p>A KMS key ID for the encryption key.</p>
    #   @return [String]
    # @!attribute scan_type
    #   <p>The scan type for the encryption key.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type for the encryption key.</p>
    #   @return [String]
    class UpdateEncryptionKeyRequest < Struct.new(
      :kms_key_id,
      :scan_type,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateEncryptionKeyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the filter.</p>
    #   @return [String]
    # @!attribute filter_criteria
    #   <p>Defines the criteria to be update in the filter.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute filter_arn
    #   <p>The Amazon Resource Number (ARN) of the filter to update.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the filter was updated.</p>
    #   @return [String]
    class UpdateFilterInput < Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :filter_arn,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the successfully updated filter.</p>
    #   @return [String]
    class UpdateFilterOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details required to update an integration with GitHub.</p>
    # @!attribute code
    #   <p>The authorization code received from GitHub to update the integration.</p>
    #   @return [String]
    # @!attribute installation_id
    #   <p>The installation ID of the GitHub App associated with the integration.</p>
    #   @return [String]
    class UpdateGitHubIntegrationDetail < Struct.new(
      :code,
      :installation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details required to update an integration with a self-managed GitLab
    #          instance.</p>
    # @!attribute auth_code
    #   <p>The authorization code received from the self-managed GitLab instance to update the
    #            integration.</p>
    #   @return [String]
    class UpdateGitLabSelfManagedIntegrationDetail < Struct.new(
      :auth_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details required to update a code security integration with a specific
    #          repository provider.</p>
    # @!attribute gitlab_self_managed
    #   <p>Details specific to updating an integration with a self-managed GitLab instance.</p>
    #   @return [Types::UpdateGitLabSelfManagedIntegrationDetail]
    # @!attribute github
    #   <p>Details specific to updating an integration with GitHub.</p>
    #   @return [Types::UpdateGitHubIntegrationDetail]
    class UpdateIntegrationDetails < Struct.new(
      :gitlab_self_managed,
      :github,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class GitlabSelfManaged < UpdateIntegrationDetails; end
      class Github < UpdateIntegrationDetails; end
      class Unknown < UpdateIntegrationDetails; end
    end

    # @!attribute org_package_paths
    #   <p>The Amazon Inspector deep inspection custom paths you are adding for your organization.</p>
    #   @return [Array<String>]
    class UpdateOrgEc2DeepInspectionConfigurationRequest < Struct.new(
      :org_package_paths,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateOrgEc2DeepInspectionConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable
    #   <p>Defines which scan types are enabled automatically for new members of your Amazon Inspector
    #            organization.</p>
    #   @return [Types::AutoEnable]
    class UpdateOrganizationConfigurationInput < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable
    #   <p>The updated status of scan types automatically enabled for new members of your Amazon Inspector
    #            organization.</p>
    #   @return [Types::AutoEnable]
    class UpdateOrganizationConfigurationOutput < Struct.new(
      :auto_enable,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains usage information about the cost of Amazon Inspector operation.</p>
    # @!attribute type
    #   <p>The type scan.</p>
    #   @return [String]
    # @!attribute total
    #   <p>The total of usage.</p>
    #   @return [Float]
    # @!attribute estimated_monthly_cost
    #   <p>The estimated monthly cost of Amazon Inspector.</p>
    #   @return [Float]
    # @!attribute currency
    #   <p>The currency type used when calculating usage data.</p>
    #   @return [String]
    class Usage < Struct.new(
      :type,
      :total,
      :estimated_monthly_cost,
      :currency,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total] = 0 unless options.key?(:total)
        options[:estimated_monthly_cost] = 0 unless options.key?(:estimated_monthly_cost)
        super
      end
    end

    # <p>The total of usage for an account ID.</p>
    # @!attribute account_id
    #   <p>The account ID of the account that usage data was retrieved for.</p>
    #   @return [String]
    # @!attribute usage
    #   <p>An object representing the total usage for an account.</p>
    #   @return [Array<Types::Usage>]
    class UsageTotal < Struct.new(
      :account_id,
      :usage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed validation due to missing required fields or having invalid
    #          inputs.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes a validation exception.</p>
    # @!attribute name
    #   <p>The name of the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The validation exception message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a specific vulnerability Amazon Inspector can detect.</p>
    # @!attribute id
    #   <p>The ID for the specific vulnerability.</p>
    #   @return [String]
    # @!attribute cwes
    #   <p>The Common Weakness Enumeration (CWE) associated with the vulnerability.</p>
    #   @return [Array<String>]
    # @!attribute cisa_data
    #   <p>An object that contains the Cybersecurity and Infrastructure Security Agency (CISA)
    #            details for the vulnerability.</p>
    #   @return [Types::CisaData]
    # @!attribute source
    #   <p>The source of the vulnerability information. Possible results are <code>RHEL</code>,
    #               <code>AMAZON_CVE</code>, <code>DEBIAN</code> or <code>NVD</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the vulnerability.</p>
    #   @return [String]
    # @!attribute atig_data
    #   <p>An object that contains information about the Amazon Web Services Threat Intel Group
    #            (ATIG) details for the vulnerability.</p>
    #   @return [Types::AtigData]
    # @!attribute vendor_severity
    #   <p>The severity assigned by the vendor.</p>
    #   @return [String]
    # @!attribute cvss4
    #   <p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 4 details for the vulnerability.</p>
    #   @return [Types::Cvss4]
    # @!attribute cvss3
    #   <p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 3 details
    #            for the vulnerability.</p>
    #   @return [Types::Cvss3]
    # @!attribute related_vulnerabilities
    #   <p>A list of related vulnerabilities.</p>
    #   @return [Array<String>]
    # @!attribute cvss2
    #   <p>An object that contains the Common Vulnerability Scoring System (CVSS) Version 2 details
    #            for the vulnerability.</p>
    #   @return [Types::Cvss2]
    # @!attribute vendor_created_at
    #   <p>The date and time when the vendor created this vulnerability.</p>
    #   @return [Time]
    # @!attribute vendor_updated_at
    #   <p>The date and time when the vendor last updated this vulnerability.</p>
    #   @return [Time]
    # @!attribute source_url
    #   <p>A link to the official source material for this vulnerability.</p>
    #   @return [String]
    # @!attribute reference_urls
    #   <p>Links to various resources with more information on this vulnerability. </p>
    #   @return [Array<String>]
    # @!attribute exploit_observed
    #   <p>An object that contains details on when the exploit was observed.</p>
    #   @return [Types::ExploitObserved]
    # @!attribute detection_platforms
    #   <p>Platforms that the vulnerability can be detected on.</p>
    #   @return [Array<String>]
    # @!attribute epss
    #   <p>An object that contains the Exploit Prediction Scoring System (EPSS) score for a
    #            vulnerability.</p>
    #   @return [Types::Epss]
    class Vulnerability < Struct.new(
      :id,
      :cwes,
      :cisa_data,
      :source,
      :description,
      :atig_data,
      :vendor_severity,
      :cvss4,
      :cvss3,
      :related_vulnerabilities,
      :cvss2,
      :vendor_created_at,
      :vendor_updated_at,
      :source_url,
      :reference_urls,
      :exploit_observed,
      :detection_platforms,
      :epss,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the vulnerable package identified by a finding.</p>
    # @!attribute name
    #   <p>The name of the vulnerable package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the vulnerable package.</p>
    #   @return [String]
    # @!attribute source_layer_hash
    #   <p>The source layer hash of the vulnerable package.</p>
    #   @return [String]
    # @!attribute epoch
    #   <p>The epoch of the vulnerable package.</p>
    #   @return [Integer]
    # @!attribute release
    #   <p>The release of the vulnerable package.</p>
    #   @return [String]
    # @!attribute arch
    #   <p>The architecture of the vulnerable package.</p>
    #   @return [String]
    # @!attribute package_manager
    #   <p>The package manager of the vulnerable package.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The file path of the vulnerable package.</p>
    #   @return [String]
    # @!attribute fixed_in_version
    #   <p>The version of the package that contains the vulnerability fix.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The code to run in your environment to update packages with a fix available.</p>
    #   @return [String]
    # @!attribute source_lambda_layer_arn
    #   <p>The Amazon Resource Number (ARN) of the Amazon Web Services Lambda function affected by a
    #            finding.</p>
    #   @return [String]
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
      :source_lambda_layer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:epoch] = 0 unless options.key?(:epoch)
        super
      end
    end

    # <p>A weekly schedule.</p>
    # @!attribute start_time
    #   <p>The weekly schedule's start time.</p>
    #   @return [Types::Time]
    # @!attribute days
    #   <p>The weekly schedule's days.</p>
    #   @return [Array<String>]
    class WeeklySchedule < Struct.new(
      :start_time,
      :days,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

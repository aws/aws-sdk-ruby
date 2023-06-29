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
    # @!attribute [rw] resource_status
    #   Details of the status of Amazon Inspector scans by resource type.
    #   @return [Types::ResourceStatus]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Account AWS API Documentation
    #
    class Account < Struct.new(
      :account_id,
      :resource_status,
      :status)
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
    # @!attribute [rw] sort_by
    #   The value to sort by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountAggregation AWS API Documentation
    #
    class AccountAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_by,
      :sort_order)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountAggregationResponse AWS API Documentation
    #
    class AccountAggregationResponse < Struct.new(
      :account_id,
      :severity_counts)
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
    # @!attribute [rw] resource_state
    #   An object detailing which resources Amazon Inspector is enabled to
    #   scan for the account.
    #   @return [Types::ResourceState]
    #
    # @!attribute [rw] state
    #   An object detailing the status of Amazon Inspector for the account.
    #   @return [Types::State]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AccountState AWS API Documentation
    #
    class AccountState < Struct.new(
      :account_id,
      :resource_state,
      :state)
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
    # @!attribute [rw] lambda_function_aggregation
    #   Returns an object with findings aggregated by AWS Lambda function.
    #   @return [Types::LambdaFunctionAggregation]
    #
    # @!attribute [rw] lambda_layer_aggregation
    #   Returns an object with findings aggregated by AWS Lambda layer.
    #   @return [Types::LambdaLayerAggregation]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AggregationRequest AWS API Documentation
    #
    class AggregationRequest < Struct.new(
      :account_aggregation,
      :ami_aggregation,
      :aws_ecr_container_aggregation,
      :ec2_instance_aggregation,
      :finding_type_aggregation,
      :image_layer_aggregation,
      :lambda_function_aggregation,
      :lambda_layer_aggregation,
      :package_aggregation,
      :repository_aggregation,
      :title_aggregation,
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
      class LambdaFunctionAggregation < AggregationRequest; end
      class LambdaLayerAggregation < AggregationRequest; end
      class PackageAggregation < AggregationRequest; end
      class RepositoryAggregation < AggregationRequest; end
      class TitleAggregation < AggregationRequest; end
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
    # @!attribute [rw] lambda_function_aggregation
    #   An aggregation of findings by AWS Lambda function.
    #   @return [Types::LambdaFunctionAggregationResponse]
    #
    # @!attribute [rw] lambda_layer_aggregation
    #   An aggregation of findings by AWS Lambda layer.
    #   @return [Types::LambdaLayerAggregationResponse]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AggregationResponse AWS API Documentation
    #
    class AggregationResponse < Struct.new(
      :account_aggregation,
      :ami_aggregation,
      :aws_ecr_container_aggregation,
      :ec2_instance_aggregation,
      :finding_type_aggregation,
      :image_layer_aggregation,
      :lambda_function_aggregation,
      :lambda_layer_aggregation,
      :package_aggregation,
      :repository_aggregation,
      :title_aggregation,
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
      class LambdaFunctionAggregation < AggregationResponse; end
      class LambdaLayerAggregation < AggregationResponse; end
      class PackageAggregation < AggregationResponse; end
      class RepositoryAggregation < AggregationResponse; end
      class TitleAggregation < AggregationResponse; end
      class Unknown < AggregationResponse; end
    end

    # The details that define an aggregation based on Amazon machine images
    # (AMIs).
    #
    # @!attribute [rw] amis
    #   The IDs of AMIs to aggregate findings for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AmiAggregation AWS API Documentation
    #
    class AmiAggregation < Struct.new(
      :amis,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by AMI.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the AMI.
    #   @return [String]
    #
    # @!attribute [rw] affected_instances
    #   The IDs of Amazon EC2 instances using this AMI.
    #   @return [Integer]
    #
    # @!attribute [rw] ami
    #   The ID of the AMI that findings were aggregated for.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AmiAggregationResponse AWS API Documentation
    #
    class AmiAggregationResponse < Struct.new(
      :account_id,
      :affected_instances,
      :ami,
      :severity_counts)
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
    #   Represents whether AWS Lambda standard scans are automatically
    #   enabled for new members of your Amazon Inspector organization.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_code
    #   Represents whether AWS Lambda code scans are automatically enabled
    #   for new members of your Amazon Inspector organization.      </p>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AutoEnable AWS API Documentation
    #
    class AutoEnable < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Amazon EC2 instance involved in a finding.
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM instance profile ARN of the Amazon EC2 instance.
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
    # @!attribute [rw] launched_at
    #   The date and time the Amazon EC2 instance was launched at.
    #   @return [Time]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEc2InstanceDetails AWS API Documentation
    #
    class AwsEc2InstanceDetails < Struct.new(
      :iam_instance_profile_arn,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :launched_at,
      :platform,
      :subnet_id,
      :type,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation of information about Amazon ECR containers.
    #
    # @!attribute [rw] architectures
    #   The architecture of the containers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] image_shas
    #   The image SHA values.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] image_tags
    #   The image tags.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] repositories
    #   The container repositories.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The container resource IDs.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The value to sort by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order (ascending or descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerAggregation AWS API Documentation
    #
    class AwsEcrContainerAggregation < Struct.new(
      :architectures,
      :image_shas,
      :image_tags,
      :repositories,
      :resource_ids,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation of information about Amazon ECR containers.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the account that owns the
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the container.
    #   @return [String]
    #
    # @!attribute [rw] image_sha
    #   The SHA value of the container image.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The container image stags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] repository
    #   The container repository.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the container.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   The number of finding by severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerAggregationResponse AWS API Documentation
    #
    class AwsEcrContainerAggregationResponse < Struct.new(
      :account_id,
      :architecture,
      :image_sha,
      :image_tags,
      :repository,
      :resource_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image details of the Amazon ECR container image.
    #
    # @!attribute [rw] architecture
    #   The architecture of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The image author of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] image_hash
    #   The image hash of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The image tags attached to the Amazon ECR container image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] platform
    #   The platform of the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] pushed_at
    #   The date and time the Amazon ECR container image was pushed.
    #   @return [Time]
    #
    # @!attribute [rw] registry
    #   The registry for the Amazon ECR container image.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository the Amazon ECR container image resides
    #   in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsEcrContainerImageDetails AWS API Documentation
    #
    class AwsEcrContainerImageDetails < Struct.new(
      :architecture,
      :author,
      :image_hash,
      :image_tags,
      :platform,
      :pushed_at,
      :registry,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about the AWS Lambda function.
    #
    # @!attribute [rw] architectures
    #   The instruction set architecture that the AWS Lambda function
    #   supports. Architecture is a string array with one of the valid
    #   values. The default architecture value is `x86_64`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the AWS Lambda function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The AWS Lambda function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the AWS Lambda function.
    #   @return [String]
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
    # @!attribute [rw] layers
    #   The AWS Lambda function's [ layers][1]. A Lambda function can have
    #   up to five layers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set `Zip` for .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the AWS Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the AWS Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The AWS Lambda function's networking configuration.
    #   @return [Types::LambdaVpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AwsLambdaFunctionDetails AWS API Documentation
    #
    class AwsLambdaFunctionDetails < Struct.new(
      :architectures,
      :code_sha_256,
      :execution_role_arn,
      :function_name,
      :last_modified_at,
      :layers,
      :package_type,
      :runtime,
      :version,
      :vpc_config)
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
    #   </p>
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
    #   </p>
    #   @return [Array<Types::MemberAccountEc2DeepInspectionStatusState>]
    #
    # @!attribute [rw] failed_account_ids
    #   An array of objects that provide details on any accounts that failed
    #   to activate Amazon Inspector deep inspection and why.      </p>
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

    # The Cybersecurity and Infrastructure Security Agency (CISA) details
    # for a specific vulnerability.
    #
    # @!attribute [rw] action
    #   The remediation action recommended by CISA for this vulnerability.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CisaData AWS API Documentation
    #
    class CisaData < Struct.new(
      :action,
      :date_added,
      :date_due)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on where a code vulnerability is located in your
    # Lambda function.
    #
    # @!attribute [rw] end_line
    #   The line number of the last line of code that a vulnerability was
    #   found in.
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeFilePath AWS API Documentation
    #
    class CodeFilePath < Struct.new(
      :end_line,
      :file_name,
      :file_path,
      :start_line)
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

    # Contains information about any errors encountered while trying to
    # retrieve a code snippet.
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
    # @!attribute [rw] finding_arn
    #   The ARN of the finding that a code snippet couldn't be retrieved
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSnippetError AWS API Documentation
    #
    class CodeSnippetError < Struct.new(
      :error_code,
      :error_message,
      :finding_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on a code snippet retrieved by Amazon Inspector
    # from a code vulnerability finding.
    #
    # @!attribute [rw] code_snippet
    #   Contains information on the retrieved code snippet.
    #   @return [Array<Types::CodeLine>]
    #
    # @!attribute [rw] end_line
    #   The line number of the last line of a code snippet.
    #   @return [Integer]
    #
    # @!attribute [rw] finding_arn
    #   The ARN of a finding that the code snippet is associated with.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   The line number of the first line of a code snippet.
    #   @return [Integer]
    #
    # @!attribute [rw] suggested_fixes
    #   Details of a suggested code fix.
    #   @return [Array<Types::SuggestedFix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeSnippetResult AWS API Documentation
    #
    class CodeSnippetResult < Struct.new(
      :code_snippet,
      :end_line,
      :finding_arn,
      :start_line,
      :suggested_fixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the code vulnerability identified in your
    # Lambda function.
    #
    # @!attribute [rw] cwes
    #   The Common Weakness Enumeration (CWE) item associated with the
    #   detected vulnerability.
    #   @return [Array<String>]
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
    # @!attribute [rw] file_path
    #   Contains information on where the code vulnerability is located in
    #   your code.
    #   @return [Types::CodeFilePath]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CodeVulnerabilityDetails AWS API Documentation
    #
    class CodeVulnerabilityDetails < Struct.new(
      :cwes,
      :detector_id,
      :detector_name,
      :detector_tags,
      :file_path,
      :reference_urls,
      :rule_id,
      :source_lambda_layer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict occurred.
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
    # @!attribute [rw] end_inclusive
    #   A timestamp representing the end of the time period to filter
    #   results by.
    #   @return [Time]
    #
    # @!attribute [rw] start_inclusive
    #   A timestamp representing the start of the time period to filter
    #   results by.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageDateFilter AWS API Documentation
    #
    class CoverageDateFilter < Struct.new(
      :end_inclusive,
      :start_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that identifies filter criteria for
    # `GetCoverageStatistics`.
    #
    # @!attribute [rw] account_id
    #   An array of Amazon Web Services account IDs to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] ec2_instance_tags
    #   The Amazon EC2 instance tags to filter on.
    #   @return [Array<Types::CoverageMapFilter>]
    #
    # @!attribute [rw] ecr_image_tags
    #   The Amazon ECR image tags to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] ecr_repository_name
    #   The Amazon ECR repository name to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   Returns coverage statistics for AWS Lambda functions filtered by
    #   function names.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] lambda_function_runtime
    #   Returns coverage statistics for AWS Lambda functions filtered by
    #   runtime.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] lambda_function_tags
    #   Returns coverage statistics for AWS Lambda functions filtered by
    #   tag.
    #   @return [Array<Types::CoverageMapFilter>]
    #
    # @!attribute [rw] last_scanned_at
    #   Filters Amazon Web Services resources based on whether Amazon
    #   Inspector has checked them for vulnerabilities within the specified
    #   time range.
    #   @return [Array<Types::CoverageDateFilter>]
    #
    # @!attribute [rw] resource_id
    #   An array of Amazon Web Services resource IDs to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] resource_type
    #   An array of Amazon Web Services resource types to return coverage
    #   statistics for. The values can be `AWS_EC2_INSTANCE`,
    #   `AWS_LAMBDA_FUNCTION` or `AWS_ECR_REPOSITORY`.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] scan_status_code
    #   The scan status code to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] scan_status_reason
    #   The scan status reason to filter on.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @!attribute [rw] scan_type
    #   An array of Amazon Inspector scan types to return coverage
    #   statistics for.
    #   @return [Array<Types::CoverageStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoverageFilterCriteria AWS API Documentation
    #
    class CoverageFilterCriteria < Struct.new(
      :account_id,
      :ec2_instance_tags,
      :ecr_image_tags,
      :ecr_repository_name,
      :lambda_function_name,
      :lambda_function_runtime,
      :lambda_function_tags,
      :last_scanned_at,
      :resource_id,
      :resource_type,
      :scan_status_code,
      :scan_status_reason,
      :scan_type)
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
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] last_scanned_at
    #   The date and time the resource was last checked for vulnerabilities.
    #   @return [Time]
    #
    # @!attribute [rw] resource_id
    #   The ID of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_metadata
    #   An object that contains details about the metadata.
    #   @return [Types::ResourceScanMetadata]
    #
    # @!attribute [rw] resource_type
    #   The type of the covered resource.
    #   @return [String]
    #
    # @!attribute [rw] scan_status
    #   The status of the scan covering the resource.
    #   @return [Types::ScanStatus]
    #
    # @!attribute [rw] scan_type
    #   The Amazon Inspector scan type covering the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CoveredResource AWS API Documentation
    #
    class CoveredResource < Struct.new(
      :account_id,
      :last_scanned_at,
      :resource_id,
      :resource_metadata,
      :resource_type,
      :scan_status,
      :scan_type)
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
    # @!attribute [rw] reason
    #   The reason for creating the filter.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags for the filter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFilterRequest AWS API Documentation
    #
    class CreateFilterRequest < Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :reason,
      :tags)
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

    # @!attribute [rw] report_format
    #   The output format for the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] resource_filter_criteria
    #   The resource filter criteria for the software bill of materials
    #   (SBOM) report.
    #   @return [Types::ResourceFilterCriteria]
    #
    # @!attribute [rw] s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateSbomExportRequest AWS API Documentation
    #
    class CreateSbomExportRequest < Struct.new(
      :report_format,
      :resource_filter_criteria,
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
    # @!attribute [rw] source
    #   The source of the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of CVSS used for the score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CvssScore AWS API Documentation
    #
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :source,
      :version)
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
    # @!attribute [rw] adjustments
    #   An object that contains details about adjustment Amazon Inspector
    #   made to the CVSS score.
    #   @return [Array<Types::CvssScoreAdjustment>]
    #
    # @!attribute [rw] cvss_source
    #   The source of the CVSS data.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] score_source
    #   The source for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] scoring_vector
    #   The vector for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The CVSS version used in scoring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CvssScoreDetails AWS API Documentation
    #
    class CvssScoreDetails < Struct.new(
      :adjustments,
      :cvss_source,
      :score,
      :score_source,
      :scoring_vector,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details on the time range used to filter findings.
    #
    # @!attribute [rw] end_inclusive
    #   A timestamp representing the end of the time period filtered on.
    #   @return [Time]
    #
    # @!attribute [rw] start_inclusive
    #   A timestamp representing the start of the time period filtered on.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :end_inclusive,
      :start_inclusive)
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
    #   The prefix of the Amazon S3 bucket used to export findings.
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

    # The details that define an aggregation based on Amazon EC2 instances.
    #
    # @!attribute [rw] amis
    #   The AMI IDs associated with the Amazon EC2 instances to aggregate
    #   findings for.
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
    # @!attribute [rw] operating_systems
    #   The operating system types to aggregate findings for. Valid values
    #   must be uppercase and underscore separated, examples are
    #   `ORACLE_LINUX_7` and `ALPINE_LINUX_3_8`.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2InstanceAggregation AWS API Documentation
    #
    class Ec2InstanceAggregation < Struct.new(
      :amis,
      :instance_ids,
      :instance_tags,
      :operating_systems,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by
    # Amazon EC2 instance.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account for the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] ami
    #   The Amazon Machine Image (AMI) of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The Amazon EC2 instance ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_tags
    #   The tags attached to the instance.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] network_findings
    #   The number of network findings for the Amazon EC2 instance.
    #   @return [Integer]
    #
    # @!attribute [rw] operating_system
    #   The operating system of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2InstanceAggregationResponse AWS API Documentation
    #
    class Ec2InstanceAggregationResponse < Struct.new(
      :account_id,
      :ami,
      :instance_id,
      :instance_tags,
      :network_findings,
      :operating_system,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Meta data details of an Amazon EC2 instance.
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
    # @!attribute [rw] tags
    #   The tags attached to the instance.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Ec2Metadata AWS API Documentation
    #
    class Ec2Metadata < Struct.new(
      :ami_id,
      :platform,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the ECR automated re-scan duration setting for your
    # environment.
    #
    # @!attribute [rw] rescan_duration
    #   The ECR automated re-scan duration defines how long an ECR image
    #   will be actively scanned by Amazon Inspector. When the number of
    #   days since an image was last pushed exceeds the automated re-scan
    #   duration the monitoring state of that image becomes `inactive` and
    #   all associated findings are scheduled for closure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrConfiguration AWS API Documentation
    #
    class EcrConfiguration < Struct.new(
      :rescan_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of the ECR scans for your environment.
    #
    # @!attribute [rw] rescan_duration_state
    #   An object that contains details about the state of the ECR automated
    #   re-scan setting.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrContainerImageMetadata AWS API Documentation
    #
    class EcrContainerImageMetadata < Struct.new(
      :tags)
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

    # Details about the state of any changes to the ECR automated re-scan
    # duration setting.
    #
    # @!attribute [rw] rescan_duration
    #   The ECR automated re-scan duration defines how long an ECR image
    #   will be actively scanned by Amazon Inspector. When the number of
    #   days since an image was last pushed exceeds the automated re-scan
    #   duration the monitoring state of that image becomes `inactive` and
    #   all associated findings are scheduled for closure.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EcrRescanDurationState AWS API Documentation
    #
    class EcrRescanDurationState < Struct.new(
      :rescan_duration,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableDelegatedAdminAccountRequest AWS API Documentation
    #
    class EnableDelegatedAdminAccountRequest < Struct.new(
      :client_token,
      :delegated_admin_account_id)
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
    # @!attribute [rw] client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource scan types you want to enable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableRequest AWS API Documentation
    #
    class EnableRequest < Struct.new(
      :account_ids,
      :client_token,
      :resource_types)
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

    # Contains information on when this exploit was observed.
    #
    # @!attribute [rw] first_seen
    #   The date an time when the exploit was first seen.
    #   @return [Time]
    #
    # @!attribute [rw] last_seen
    #   The date an time when the exploit was last seen.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ExploitObserved AWS API Documentation
    #
    class ExploitObserved < Struct.new(
      :first_seen,
      :last_seen)
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
    # @!attribute [rw] resource_status
    #   An object detailing which resources Amazon Inspector is enabled to
    #   scan for the account.
    #   @return [Types::ResourceStatus]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FailedAccount AWS API Documentation
    #
    class FailedAccount < Struct.new(
      :account_id,
      :error_code,
      :error_message,
      :resource_status,
      :status)
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
    # @!attribute [rw] action
    #   The action that is to be applied to the findings that match the
    #   filter.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Number (ARN) associated with this filter.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time this filter was created at.
    #   @return [Time]
    #
    # @!attribute [rw] criteria
    #   Details on the filter criteria associated with this filter.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] description
    #   A description of the filter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the account that created the
    #   filter.
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
    # @!attribute [rw] updated_at
    #   The date and time the filter was last updated at.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :action,
      :arn,
      :created_at,
      :criteria,
      :description,
      :name,
      :owner_id,
      :reason,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on the criteria used to define the filter.
    #
    # @!attribute [rw] aws_account_id
    #   Details of the Amazon Web Services account IDs used to filter
    #   findings.
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
    # @!attribute [rw] component_id
    #   Details of the component IDs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] component_type
    #   Details of the component types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ec2_instance_image_id
    #   Details of the Amazon EC2 instance image IDs used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ec2_instance_subnet_id
    #   Details of the Amazon EC2 instance subnet IDs used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ec2_instance_vpc_id
    #   Details of the Amazon EC2 instance VPC IDs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_architecture
    #   Details of the Amazon ECR image architecture types used to filter
    #   findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_hash
    #   Details of the Amazon ECR image hashes used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] ecr_image_pushed_at
    #   Details on the Amazon ECR image push date and time used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
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
    # @!attribute [rw] epss_score
    #   The EPSS score used to filter findings.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] exploit_available
    #   Filters the list of AWS Lambda findings by the availability of
    #   exploits.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_arn
    #   Details on the finding ARNs used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_status
    #   Details on the finding status types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] finding_type
    #   Details on the finding types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   Details on the date and time a finding was first seen used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] fix_available
    #   Details on whether a fix is available through a version update. This
    #   value can be `YES`, `NO`, or `PARTIAL`. A `PARTIAL` fix means that
    #   some, but not all, of the packages identified in the finding have
    #   fixes available through updated versions.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] inspector_score
    #   The Amazon Inspector score to filter on.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] lambda_function_execution_role_arn
    #   Filters the list of AWS Lambda functions by execution role.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_last_modified_at
    #   Filters the list of AWS Lambda functions by the date and time that a
    #   user last updated the configuration, in [ISO 8601 format][1]
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] lambda_function_layers
    #   Filters the list of AWS Lambda functions by the function's [
    #   layers][1]. A Lambda function can have up to five layers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   Filters the list of AWS Lambda functions by the name of the
    #   function.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] lambda_function_runtime
    #   Filters the list of AWS Lambda functions by the runtime environment
    #   for the Lambda function.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   Details on the date and time a finding was last seen used to filter
    #   findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] network_protocol
    #   Details on the ingress source addresses used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] port_range
    #   Details on the port ranges used to filter findings.
    #   @return [Array<Types::PortRangeFilter>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   Details on the related vulnerabilities used to filter findings.
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
    # @!attribute [rw] resource_type
    #   Details on the resource types used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] severity
    #   Details on the severity used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] title
    #   Details on the finding title used to filter findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] updated_at
    #   Details on the date and time a finding was last updated at used to
    #   filter findings.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] vendor_severity
    #   Details on the vendor severity used to filter findings.
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
    # @!attribute [rw] vulnerable_packages
    #   Details on the vulnerable packages used to filter findings.
    #   @return [Array<Types::PackageFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :aws_account_id,
      :code_vulnerability_detector_name,
      :code_vulnerability_detector_tags,
      :code_vulnerability_file_path,
      :component_id,
      :component_type,
      :ec2_instance_image_id,
      :ec2_instance_subnet_id,
      :ec2_instance_vpc_id,
      :ecr_image_architecture,
      :ecr_image_hash,
      :ecr_image_pushed_at,
      :ecr_image_registry,
      :ecr_image_repository_name,
      :ecr_image_tags,
      :epss_score,
      :exploit_available,
      :finding_arn,
      :finding_status,
      :finding_type,
      :first_observed_at,
      :fix_available,
      :inspector_score,
      :lambda_function_execution_role_arn,
      :lambda_function_last_modified_at,
      :lambda_function_layers,
      :lambda_function_name,
      :lambda_function_runtime,
      :last_observed_at,
      :network_protocol,
      :port_range,
      :related_vulnerabilities,
      :resource_id,
      :resource_tags,
      :resource_type,
      :severity,
      :title,
      :updated_at,
      :vendor_severity,
      :vulnerability_id,
      :vulnerability_source,
      :vulnerable_packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon Inspector finding.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] code_vulnerability_details
    #   Details about the code vulnerability identified in a Lambda function
    #   used to filter findings.
    #   @return [Types::CodeVulnerabilityDetails]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] epss
    #   The finding's EPSS score.
    #   @return [Types::EpssDetails]
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
    # @!attribute [rw] finding_arn
    #   The Amazon Resource Number (ARN) of the finding.
    #   @return [String]
    #
    # @!attribute [rw] first_observed_at
    #   The date and time that the finding was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] fix_available
    #   Details on whether a fix is available through a version update. This
    #   value can be `YES`, `NO`, or `PARTIAL`. A `PARTIAL` fix means that
    #   some, but not all, of the packages identified in the finding have
    #   fixes available through updated versions.
    #   @return [String]
    #
    # @!attribute [rw] inspector_score
    #   The Amazon Inspector score given to the finding.
    #   @return [Float]
    #
    # @!attribute [rw] inspector_score_details
    #   An object that contains details of the Amazon Inspector score.
    #   @return [Types::InspectorScoreDetails]
    #
    # @!attribute [rw] last_observed_at
    #   The date and time that the finding was last observed.
    #   @return [Time]
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
    # @!attribute [rw] remediation
    #   An object that contains the details about how to remediate a
    #   finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] resources
    #   Contains information on the resources involved in a finding.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the finding was last updated at.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :aws_account_id,
      :code_vulnerability_details,
      :description,
      :epss,
      :exploit_available,
      :exploitability_details,
      :finding_arn,
      :first_observed_at,
      :fix_available,
      :inspector_score,
      :inspector_score_details,
      :last_observed_at,
      :network_reachability_details,
      :package_vulnerability_details,
      :remediation,
      :resources,
      :severity,
      :status,
      :title,
      :type,
      :updated_at)
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
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingTypeAggregation AWS API Documentation
    #
    class FindingTypeAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_by,
      :sort_order)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FindingTypeAggregationResponse AWS API Documentation
    #
    class FindingTypeAggregationResponse < Struct.new(
      :account_id,
      :severity_counts)
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
    # @!attribute [rw] end
    #   The date and time that the Amazon Inspector free trail ends for a
    #   given account.
    #   @return [Time]
    #
    # @!attribute [rw] start
    #   The date and time that the Amazon Inspector free trail started for a
    #   given account.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of scan covered by the Amazon Inspector free trail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/FreeTrialInfo AWS API Documentation
    #
    class FreeTrialInfo < Struct.new(
      :end,
      :start,
      :status,
      :type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetConfigurationResponse AWS API Documentation
    #
    class GetConfigurationResponse < Struct.new(
      :ecr_configuration)
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

    # @!attribute [rw] error_message
    #   An error message explaining why Amazon Inspector deep inspection
    #   configurations could not be retrieved for your account.
    #   @return [String]
    #
    # @!attribute [rw] org_package_paths
    #   The Amazon Inspector deep inspection custom paths for your
    #   organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] package_paths
    #   The Amazon Inspector deep inspection custom paths for your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The activation status of Amazon Inspector deep inspection in your
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEc2DeepInspectionConfigurationResponse AWS API Documentation
    #
    class GetEc2DeepInspectionConfigurationResponse < Struct.new(
      :error_message,
      :org_package_paths,
      :package_paths,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The resource type the key encrypts.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The scan type the key encrypts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEncryptionKeyRequest AWS API Documentation
    #
    class GetEncryptionKeyRequest < Struct.new(
      :resource_type,
      :scan_type)
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

    # @!attribute [rw] destination
    #   The destination of the report.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] error_code
    #   The error code of the report.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of the report.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   The filter criteria associated with the report.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] report_id
    #   The ID of the report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetFindingsReportStatusResponse AWS API Documentation
    #
    class GetFindingsReportStatusResponse < Struct.new(
      :destination,
      :error_code,
      :error_message,
      :filter_criteria,
      :report_id,
      :status)
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

    # @!attribute [rw] error_code
    #   An error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] filter_criteria
    #   Contains details about the resource filter criteria used for the
    #   software bill of materials (SBOM) report.
    #   @return [Types::ResourceFilterCriteria]
    #
    # @!attribute [rw] format
    #   The format of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] report_id
    #   The report ID of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] status
    #   The status of the software bill of materials (SBOM) report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetSbomExportResponse AWS API Documentation
    #
    class GetSbomExportResponse < Struct.new(
      :error_code,
      :error_message,
      :filter_criteria,
      :format,
      :report_id,
      :s3_destination,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on container image
    # layers.
    #
    # @!attribute [rw] layer_hashes
    #   The hashes associated with the layers.
    #   @return [Array<Types::StringFilter>]
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
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ImageLayerAggregation AWS API Documentation
    #
    class ImageLayerAggregation < Struct.new(
      :layer_hashes,
      :repositories,
      :resource_ids,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by image
    # layer.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account that owns the container
    #   image hosting the layer image.
    #   @return [String]
    #
    # @!attribute [rw] layer_hash
    #   The layer hash.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository the layer resides in.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the container image layer.
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
      :account_id,
      :layer_hash,
      :repository,
      :resource_id,
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

    # The details that define a findings aggregation based on AWS Lambda
    # functions.
    #
    # @!attribute [rw] function_names
    #   The AWS Lambda function names to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] function_tags
    #   The tags to include in the aggregation results.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs to include in the aggregation results.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] runtimes
    #   Returns findings aggregated by AWS Lambda function runtime
    #   environments.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The finding severity to use for sorting the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to use for sorting the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionAggregation AWS API Documentation
    #
    class LambdaFunctionAggregation < Struct.new(
      :function_names,
      :function_tags,
      :resource_ids,
      :runtimes,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of an AWS Lambda function finding
    # aggregation.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account that owns the AWS Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The AWS Lambda function names included in the aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] lambda_tags
    #   The tags included in the aggregation results.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_at
    #   The date that the AWS Lambda function included in the aggregation
    #   results was last changed.
    #   @return [Time]
    #
    # @!attribute [rw] resource_id
    #   The resource IDs included in the aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtimes included in the aggregation results.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the counts of aggregated finding per
    #   severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionAggregationResponse AWS API Documentation
    #
    class LambdaFunctionAggregationResponse < Struct.new(
      :account_id,
      :function_name,
      :lambda_tags,
      :last_modified_at,
      :resource_id,
      :runtime,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Lambda function metadata.
    #
    # @!attribute [rw] function_name
    #   The name of a function.
    #   @return [String]
    #
    # @!attribute [rw] function_tags
    #   The resource tags on an AWS Lambda function.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] layers
    #   The layers for an AWS Lambda function. A Lambda function can have up
    #   to five layers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] runtime
    #   An AWS Lambda function's runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaFunctionMetadata AWS API Documentation
    #
    class LambdaFunctionMetadata < Struct.new(
      :function_name,
      :function_tags,
      :layers,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define a findings aggregation based on an AWS Lambda
    # function's layers.
    #
    # @!attribute [rw] function_names
    #   The names of the AWS Lambda functions associated with the layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] layer_arns
    #   The Amazon Resource Name (ARN) of the AWS Lambda function layer.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs for the AWS Lambda function layers.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The finding severity to use for sorting the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to use for sorting the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaLayerAggregation AWS API Documentation
    #
    class LambdaLayerAggregation < Struct.new(
      :function_names,
      :layer_arns,
      :resource_ids,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of an AWS Lambda function layer
    # finding aggregation.
    #
    # @!attribute [rw] account_id
    #   The account ID of the AWS Lambda function layer.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The names of the AWS Lambda functions associated with the layers.
    #   @return [String]
    #
    # @!attribute [rw] layer_arn
    #   The Amazon Resource Name (ARN) of the AWS Lambda function layer.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource ID of the AWS Lambda function layer.
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
      :account_id,
      :function_name,
      :layer_arn,
      :resource_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to an AWS Lambda
    # function. For more information, see [VPC Settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @!attribute [rw] security_group_ids
    #   The VPC security groups and subnets that are attached to an AWS
    #   Lambda function. For more information, see [VPC Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/LambdaVpcConfig AWS API Documentation
    #
    class LambdaVpcConfig < Struct.new(
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @!attribute [rw] service
    #   The service scan type to check permissions for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissionsRequest AWS API Documentation
    #
    class ListAccountPermissionsRequest < Struct.new(
      :max_results,
      :next_token,
      :service)
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
    # @!attribute [rw] permissions
    #   Contains details on the permissions an account has to configure
    #   Amazon Inspector.
    #   @return [Array<Types::Permission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissionsResponse AWS API Documentation
    #
    class ListAccountPermissionsResponse < Struct.new(
      :next_token,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #   @return [Types::CoverageFilterCriteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageRequest AWS API Documentation
    #
    class ListCoverageRequest < Struct.new(
      :filter_criteria,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] covered_resources
    #   An object that contains details on the covered resources in your
    #   environment.
    #   @return [Array<Types::CoveredResource>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageResponse AWS API Documentation
    #
    class ListCoverageResponse < Struct.new(
      :covered_resources,
      :next_token)
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
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @!attribute [rw] total_counts
    #   The total number for all groups.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageStatisticsResponse AWS API Documentation
    #
    class ListCoverageStatisticsResponse < Struct.new(
      :counts_by_group,
      :next_token,
      :total_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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

    # @!attribute [rw] action
    #   The action the filter applies to matched findings.
    #   @return [String]
    #
    # @!attribute [rw] arns
    #   The Amazon resource number (ARN) of the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFiltersRequest AWS API Documentation
    #
    class ListFiltersRequest < Struct.new(
      :action,
      :arns,
      :max_results,
      :next_token)
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
    # @!attribute [rw] aggregation_type
    #   The type of the aggregation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregationsRequest AWS API Documentation
    #
    class ListFindingAggregationsRequest < Struct.new(
      :account_ids,
      :aggregation_request,
      :aggregation_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_type
    #   The type of aggregation to perform.
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
    # @!attribute [rw] responses
    #   Objects that contain the results of an aggregation operation.
    #   @return [Array<Types::AggregationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregationsResponse AWS API Documentation
    #
    class ListFindingAggregationsResponse < Struct.new(
      :aggregation_type,
      :next_token,
      :responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_criteria
    #   Details on the filters to apply to your finding results.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @!attribute [rw] sort_criteria
    #   Details on the sort criteria to apply to your finding results.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingsRequest AWS API Documentation
    #
    class ListFindingsRequest < Struct.new(
      :filter_criteria,
      :max_results,
      :next_token,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   Contains details on the findings in your environment.
    #   @return [Array<Types::Finding>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingsResponse AWS API Documentation
    #
    class ListFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @!attribute [rw] only_associated
    #   Specifies whether to list only currently associated members if
    #   `True` or to list all members within the organization if `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :max_results,
      :next_token,
      :only_associated)
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

    # @!attribute [rw] account_ids
    #   The Amazon Web Services account IDs to retrieve usage totals for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListUsageTotalsRequest AWS API Documentation
    #
    class ListUsageTotalsRequest < Struct.new(
      :account_ids,
      :max_results,
      :next_token)
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
    # @!attribute [rw] delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator for this member account.
    #   @return [String]
    #
    # @!attribute [rw] relationship_status
    #   The status of the member account.
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
      :delegated_admin_account_id,
      :relationship_status,
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
    # @!attribute [rw] error_message
    #   The error message explaining why the account failed to activate
    #   Amazon Inspector deep inspection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of Amazon Inspector deep inspection in the member account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/MemberAccountEc2DeepInspectionStatusState AWS API Documentation
    #
    class MemberAccountEc2DeepInspectionStatusState < Struct.new(
      :account_id,
      :error_message,
      :status)
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
    # @!attribute [rw] network_path
    #   An object that contains details about a network path associated with
    #   a finding.
    #   @return [Types::NetworkPath]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/NetworkReachabilityDetails AWS API Documentation
    #
    class NetworkReachabilityDetails < Struct.new(
      :network_path,
      :open_port_range,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the details of a number filter.
    #
    # @!attribute [rw] lower_inclusive
    #   The lowest number to be included in the filter.
    #   @return [Float]
    #
    # @!attribute [rw] upper_inclusive
    #   The highest number to be included in the filter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :lower_inclusive,
      :upper_inclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that define an aggregation based on operating system
    # package type.
    #
    # @!attribute [rw] package_names
    #   The names of packages to aggregate findings on.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageAggregation AWS API Documentation
    #
    class PackageAggregation < Struct.new(
      :package_names,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains the results of a finding aggregation by image
    # layer.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The name of the operating system package.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that contains the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageAggregationResponse AWS API Documentation
    #
    class PackageAggregationResponse < Struct.new(
      :account_id,
      :package_name,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the details of a package filter.
    #
    # @!attribute [rw] architecture
    #   An object that contains details on the package architecture type to
    #   filter on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] epoch
    #   An object that contains details on the package epoch to filter on.
    #   @return [Types::NumberFilter]
    #
    # @!attribute [rw] name
    #   An object that contains details on the name of the package to filter
    #   on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] release
    #   An object that contains details on the package release to filter on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] source_lambda_layer_arn
    #   An object that describes the details of a string filter.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] source_layer_hash
    #   An object that contains details on the source layer hash to filter
    #   on.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] version
    #   The package version to filter on.
    #   @return [Types::StringFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageFilter AWS API Documentation
    #
    class PackageFilter < Struct.new(
      :architecture,
      :epoch,
      :name,
      :release,
      :source_lambda_layer_arn,
      :source_layer_hash,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a package vulnerability finding.
    #
    # @!attribute [rw] cvss
    #   An object that contains details about the CVSS score of a finding.
    #   @return [Array<Types::CvssScore>]
    #
    # @!attribute [rw] reference_urls
    #   One or more URLs that contain details about this vulnerability type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   One or more vulnerabilities related to the one identified in this
    #   finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   A URL to the source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time that this vulnerability was first added to the
    #   vendor's database.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_severity
    #   The severity the vendor has given to this vulnerability type.
    #   @return [String]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time the vendor last updated this vulnerability in
    #   their database.
    #   @return [Time]
    #
    # @!attribute [rw] vulnerability_id
    #   The ID given to this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   The packages impacted by this vulnerability.
    #   @return [Array<Types::VulnerablePackage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/PackageVulnerabilityDetails AWS API Documentation
    #
    class PackageVulnerabilityDetails < Struct.new(
      :cvss,
      :reference_urls,
      :related_vulnerabilities,
      :source,
      :source_url,
      :vendor_created_at,
      :vendor_severity,
      :vendor_updated_at,
      :vulnerability_id,
      :vulnerable_packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the permissions an account has within Amazon
    # Inspector.
    #
    # @!attribute [rw] operation
    #   The operations that can be performed with the given permissions.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The services that the permissions allow an account to perform the
    #   given operations for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :operation,
      :service)
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

    # Details about the recommended course of action to remediate the
    # finding.
    #
    # @!attribute [rw] url
    #   The URL address to the CVE remediation recommendations.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The recommended course of action to remediate the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :url,
      :text)
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
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/RepositoryAggregation AWS API Documentation
    #
    class RepositoryAggregation < Struct.new(
      :repositories,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains details on the results of a finding
    # aggregation by repository.
    #
    # @!attribute [rw] account_id
    #   The ID of the Amazon Web Services account associated with the
    #   findings.
    #   @return [String]
    #
    # @!attribute [rw] affected_images
    #   The number of container images impacted by the findings.
    #   @return [Integer]
    #
    # @!attribute [rw] repository
    #   The name of the repository associated with the findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   An object that represent the count of matched findings per severity.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/RepositoryAggregationResponse AWS API Documentation
    #
    class RepositoryAggregationResponse < Struct.new(
      :account_id,
      :affected_images,
      :repository,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The resource type the key encrypts.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The scan type the key encrypts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKeyRequest AWS API Documentation
    #
    class ResetEncryptionKeyRequest < Struct.new(
      :resource_type,
      :scan_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKeyResponse AWS API Documentation
    #
    class ResetEncryptionKeyResponse < Aws::EmptyStructure; end

    # Details about the resource involved in a finding.
    #
    # @!attribute [rw] details
    #   An object that contains details about the resource involved in a
    #   finding.
    #   @return [Types::ResourceDetails]
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
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :details,
      :id,
      :partition,
      :region,
      :tags,
      :type)
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
    #   A summary of the information about an AWS Lambda function affected
    #   by a finding.
    #   @return [Types::AwsLambdaFunctionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_ec2_instance,
      :aws_ecr_container_image,
      :aws_lambda_function)
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
    # @!attribute [rw] ec2_instance_tags
    #   The EC2 instance tags used as resource filter criteria.
    #   @return [Array<Types::ResourceMapFilter>]
    #
    # @!attribute [rw] ecr_image_tags
    #   The ECR image tags used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] ecr_repository_name
    #   The ECR repository names used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] lambda_function_name
    #   The AWS Lambda function name used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] lambda_function_tags
    #   The AWS Lambda function tags used as resource filter criteria.
    #   @return [Array<Types::ResourceMapFilter>]
    #
    # @!attribute [rw] resource_id
    #   The resource IDs used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @!attribute [rw] resource_type
    #   The resource types used as resource filter criteria.
    #   @return [Array<Types::ResourceStringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceFilterCriteria AWS API Documentation
    #
    class ResourceFilterCriteria < Struct.new(
      :account_id,
      :ec2_instance_tags,
      :ecr_image_tags,
      :ecr_repository_name,
      :lambda_function_name,
      :lambda_function_tags,
      :resource_id,
      :resource_type)
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
    # @!attribute [rw] ec2
    #   An object that contains metadata details for an Amazon EC2 instance.
    #   @return [Types::Ec2Metadata]
    #
    # @!attribute [rw] ecr_image
    #   An object that contains details about the container metadata for an
    #   Amazon ECR image.
    #   @return [Types::EcrContainerImageMetadata]
    #
    # @!attribute [rw] ecr_repository
    #   An object that contains details about the repository an Amazon ECR
    #   image resides in.
    #   @return [Types::EcrRepositoryMetadata]
    #
    # @!attribute [rw] lambda_function
    #   An object that contains metadata details for an AWS Lambda function.
    #   @return [Types::LambdaFunctionMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceScanMetadata AWS API Documentation
    #
    class ResourceScanMetadata < Struct.new(
      :ec2,
      :ecr_image,
      :ecr_repository,
      :lambda_function)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceState AWS API Documentation
    #
    class ResourceState < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code)
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
    #   The status of Amazon Inspector scanning for AWS Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] lambda_code
    #   The status of Amazon Inspector scanning for custom application code
    #   for Amazon Web Services Lambda functions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResourceStatus AWS API Documentation
    #
    class ResourceStatus < Struct.new(
      :ec2,
      :ecr,
      :lambda,
      :lambda_code)
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
    # @!attribute [rw] reason
    #   The reason for the scan.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ScanStatus AWS API Documentation
    #
    class ScanStatus < Struct.new(
      :reason,
      :status_code)
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

    # @!attribute [rw] next_token
    #   The pagination parameter to be used on the next list operation to
    #   retrieve more items.
    #   @return [String]
    #
    # @!attribute [rw] vulnerabilities
    #   Details about the listed vulnerability.
    #   @return [Array<Types::Vulnerability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilitiesResponse AWS API Documentation
    #
    class SearchVulnerabilitiesResponse < Struct.new(
      :next_token,
      :vulnerabilities)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] critical
    #   The total count of critical severity findings.
    #   @return [Integer]
    #
    # @!attribute [rw] high
    #   The total count of high severity findings.
    #   @return [Integer]
    #
    # @!attribute [rw] medium
    #   The total count of medium severity findings.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SeverityCounts AWS API Documentation
    #
    class SeverityCounts < Struct.new(
      :all,
      :critical,
      :high,
      :medium)
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

    # An object that described the state of Amazon Inspector scans for an
    # account.
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
    # @!attribute [rw] status
    #   The status of Amazon Inspector for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/State AWS API Documentation
    #
    class State < Struct.new(
      :error_code,
      :error_message,
      :status)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Step AWS API Documentation
    #
    class Step < Struct.new(
      :component_id,
      :component_type)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A suggested fix for a vulnerability in your Lambda function code.
    #
    # @!attribute [rw] code
    #   The fix's code.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The fix's description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SuggestedFix AWS API Documentation
    #
    class SuggestedFix < Struct.new(
      :code,
      :description)
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

    # The details that define an aggregation based on finding title.
    #
    # @!attribute [rw] finding_type
    #   The type of finding to aggregate on.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to aggregate on.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The value to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort results by.
    #   @return [String]
    #
    # @!attribute [rw] titles
    #   The finding titles to aggregate on.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] vulnerability_ids
    #   The vulnerability IDs of the findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TitleAggregation AWS API Documentation
    #
    class TitleAggregation < Struct.new(
      :finding_type,
      :resource_type,
      :sort_by,
      :sort_order,
      :titles,
      :vulnerability_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that contains details on the results of a finding
    # aggregation by title.
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
    # @!attribute [rw] title
    #   The title that the findings were aggregated on.
    #   @return [String]
    #
    # @!attribute [rw] vulnerability_id
    #   The vulnerability ID of the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TitleAggregationResponse AWS API Documentation
    #
    class TitleAggregationResponse < Struct.new(
      :account_id,
      :severity_counts,
      :title,
      :vulnerability_id)
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

    # @!attribute [rw] ecr_configuration
    #   Specifies how the ECR automated re-scan will be updated for your
    #   environment.
    #   @return [Types::EcrConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateConfigurationRequest AWS API Documentation
    #
    class UpdateConfigurationRequest < Struct.new(
      :ecr_configuration)
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

    # @!attribute [rw] error_message
    #   An error message explaining why new Amazon Inspector deep inspection
    #   custom paths could not be added.
    #   @return [String]
    #
    # @!attribute [rw] org_package_paths
    #   The current Amazon Inspector deep inspection custom paths for the
    #   organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] package_paths
    #   The current Amazon Inspector deep inspection custom paths for your
    #   account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of Amazon Inspector deep inspection in your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEc2DeepInspectionConfigurationResponse AWS API Documentation
    #
    class UpdateEc2DeepInspectionConfigurationResponse < Struct.new(
      :error_message,
      :org_package_paths,
      :package_paths,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   A KMS key ID for the encryption key.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for the encryption key.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The scan type for the encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEncryptionKeyRequest AWS API Documentation
    #
    class UpdateEncryptionKeyRequest < Struct.new(
      :kms_key_id,
      :resource_type,
      :scan_type)
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
    # @!attribute [rw] filter_arn
    #   The Amazon Resource Number (ARN) of the filter to update.
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
    # @!attribute [rw] reason
    #   The reason the filter was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateFilterRequest AWS API Documentation
    #
    class UpdateFilterRequest < Struct.new(
      :action,
      :description,
      :filter_arn,
      :filter_criteria,
      :name,
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
    # @!attribute [rw] currency
    #   The currency type used when calculating usage data.
    #   @return [String]
    #
    # @!attribute [rw] estimated_monthly_cost
    #   The estimated monthly cost of Amazon Inspector.
    #   @return [Float]
    #
    # @!attribute [rw] total
    #   The total of usage.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Usage AWS API Documentation
    #
    class Usage < Struct.new(
      :currency,
      :estimated_monthly_cost,
      :total,
      :type)
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
    # @!attribute [rw] fields
    #   The fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes a validation exception.
    #
    # @!attribute [rw] message
    #   The validation exception message.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a specific vulnerability Amazon Inspector can
    # detect.
    #
    # @!attribute [rw] atig_data
    #   An object that contains information about the Amazon Web Services
    #   Threat Intel Group (ATIG) details for the vulnerability.
    #   @return [Types::AtigData]
    #
    # @!attribute [rw] cisa_data
    #   An object that contains the Cybersecurity and Infrastructure
    #   Security Agency (CISA) details for the vulnerability.
    #   @return [Types::CisaData]
    #
    # @!attribute [rw] cvss2
    #   An object that contains the Common Vulnerability Scoring System
    #   (CVSS) Version 2 details for the vulnerability.
    #   @return [Types::Cvss2]
    #
    # @!attribute [rw] cvss3
    #   An object that contains the Common Vulnerability Scoring System
    #   (CVSS) Version 3 details for the vulnerability.
    #   @return [Types::Cvss3]
    #
    # @!attribute [rw] cwes
    #   The Common Weakness Enumeration (CWE) associated with the
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the vulnerability.
    #   @return [String]
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
    # @!attribute [rw] exploit_observed
    #   An object that contains details on when the exploit was observed.
    #   @return [Types::ExploitObserved]
    #
    # @!attribute [rw] id
    #   The ID for the specific vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] reference_urls
    #   Links to various resources with more information on this
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   A list of related vulnerabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   A link to the official source material for this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time when the vendor created this vulnerability.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_severity
    #   The severity assigned by the vendor.
    #   @return [String]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time when the vendor last updated this vulnerability.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Vulnerability AWS API Documentation
    #
    class Vulnerability < Struct.new(
      :atig_data,
      :cisa_data,
      :cvss2,
      :cvss3,
      :cwes,
      :description,
      :detection_platforms,
      :epss,
      :exploit_observed,
      :id,
      :reference_urls,
      :related_vulnerabilities,
      :source,
      :source_url,
      :vendor_created_at,
      :vendor_severity,
      :vendor_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the vulnerable package identified by a finding.
    #
    # @!attribute [rw] arch
    #   The architecture of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the vulnerable package.
    #   @return [Integer]
    #
    # @!attribute [rw] file_path
    #   The file path of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] fixed_in_version
    #   The version of the package that contains the vulnerability fix.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The package manager of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] release
    #   The release of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The code to run in your environment to update packages with a fix
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] source_lambda_layer_arn
    #   The Amazon Resource Number (ARN) of the AWS Lambda function affected
    #   by a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_hash
    #   The source layer hash of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the vulnerable package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/VulnerablePackage AWS API Documentation
    #
    class VulnerablePackage < Struct.new(
      :arch,
      :epoch,
      :file_path,
      :fixed_in_version,
      :name,
      :package_manager,
      :release,
      :remediation,
      :source_lambda_layer_arn,
      :source_layer_hash,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

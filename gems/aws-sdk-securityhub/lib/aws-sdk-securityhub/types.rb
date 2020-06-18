# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  module Types

    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         master_id: "NonEmptyString", # required
    #         invitation_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] master_id
    #   The account ID of the Security Hub master account that sent the
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent from the Security Hub master account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :master_id,
      :invitation_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # You don't have permission to perform the action specified in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # The details of an AWS account.
    #
    # @note When making an API call, you may pass AccountDetails
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         email: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The ID of an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of an AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :account_id,
      :email)
      include Aws::Structure
    end

    # An `ActionTarget` object.
    #
    # @!attribute [rw] action_target_arn
    #   The ARN for the target action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :action_target_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # Information about an Availability Zone.
    #
    # @note When making an API call, you may pass AvailabilityZone
    #   data as a hash:
    #
    #       {
    #         zone_name: "NonEmptyString",
    #         subnet_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. You can specify one subnet per Availability
    #   Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id)
      include Aws::Structure
    end

    # A distribution configuration.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionDetails
    #   data as a hash:
    #
    #       {
    #         domain_name: "NonEmptyString",
    #         etag: "NonEmptyString",
    #         last_modified_time: "NonEmptyString",
    #         logging: {
    #           bucket: "NonEmptyString",
    #           enabled: false,
    #           include_cookies: false,
    #           prefix: "NonEmptyString",
    #         },
    #         origins: {
    #           items: [
    #             {
    #               domain_name: "NonEmptyString",
    #               id: "NonEmptyString",
    #               origin_path: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         status: "NonEmptyString",
    #         web_acl_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name corresponding to the distribution.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the object.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the distribution was last modified.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   A complex type that controls whether access logs are written for the
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionLogging]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionOrigins]
    #
    # @!attribute [rw] status
    #   Indicates the current status of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier that specifies the AWS WAF web ACL, if any, to
    #   associate with this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionDetails AWS API Documentation
    #
    class AwsCloudFrontDistributionDetails < Struct.new(
      :domain_name,
      :etag,
      :last_modified_time,
      :logging,
      :origins,
      :status,
      :web_acl_id)
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for the
    # distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionLogging
    #   data as a hash:
    #
    #       {
    #         bucket: "NonEmptyString",
    #         enabled: false,
    #         include_cookies: false,
    #         prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket to store the access logs in.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   With this field, you can enable or disable the selected
    #   distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_cookies
    #   Specifies whether you want CloudFront to include cookies in access
    #   logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   An optional string that you want CloudFront to use as a prefix to
    #   the access log filenames for this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionLogging AWS API Documentation
    #
    class AwsCloudFrontDistributionLogging < Struct.new(
      :bucket,
      :enabled,
      :include_cookies,
      :prefix)
      include Aws::Structure
    end

    # A complex type that describes the Amazon S3 bucket, HTTP server (for
    # example, a web server), Amazon Elemental MediaStore, or other server
    # from which CloudFront gets your files.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginItem
    #   data as a hash:
    #
    #       {
    #         domain_name: "NonEmptyString",
    #         id: "NonEmptyString",
    #         origin_path: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] domain_name
    #   Amazon S3 origins: The DNS name of the Amazon S3 bucket from which
    #   you want CloudFront to get objects for this origin.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the origin or origin group.
    #   @return [String]
    #
    # @!attribute [rw] origin_path
    #   An optional element that causes CloudFront to request your content
    #   from a directory in your Amazon S3 bucket or your custom origin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginItem AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginItem < Struct.new(
      :domain_name,
      :id,
      :origin_path)
      include Aws::Structure
    end

    # A complex type that contains information about origins and origin
    # groups for this distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOrigins
    #   data as a hash:
    #
    #       {
    #         items: [
    #           {
    #             domain_name: "NonEmptyString",
    #             id: "NonEmptyString",
    #             origin_path: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] items
    #   A complex type that contains origins or origin groups for this
    #   distribution.
    #   @return [Array<Types::AwsCloudFrontDistributionOriginItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOrigins AWS API Documentation
    #
    class AwsCloudFrontDistributionOrigins < Struct.new(
      :items)
      include Aws::Structure
    end

    # Information about an AWS CodeBuild project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectDetails
    #   data as a hash:
    #
    #       {
    #         encryption_key: "NonEmptyString",
    #         environment: {
    #           certificate: "NonEmptyString",
    #           image_pull_credentials_type: "NonEmptyString",
    #           registry_credential: {
    #             credential: "NonEmptyString",
    #             credential_provider: "NonEmptyString",
    #           },
    #           type: "NonEmptyString",
    #         },
    #         name: "NonEmptyString",
    #         source: {
    #           type: "NonEmptyString",
    #           location: "NonEmptyString",
    #           git_clone_depth: 1,
    #           insecure_ssl: false,
    #         },
    #         service_role: "NonEmptyString",
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   used to encrypt the build output artifacts.
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK alias (using the format alias/alias-name).
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build project.
    #   @return [Types::AwsCodeBuildProjectEnvironment]
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for this build
    #   project.
    #   @return [Types::AwsCodeBuildProjectSource]
    #
    # @!attribute [rw] service_role
    #   The ARN of the IAM role that enables AWS CodeBuild to interact with
    #   dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that AWS CodeBuild accesses.
    #   @return [Types::AwsCodeBuildProjectVpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectDetails AWS API Documentation
    #
    class AwsCodeBuildProjectDetails < Struct.new(
      :encryption_key,
      :environment,
      :name,
      :source,
      :service_role,
      :vpc_config)
      include Aws::Structure
    end

    # Information about the build environment for this build project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectEnvironment
    #   data as a hash:
    #
    #       {
    #         certificate: "NonEmptyString",
    #         image_pull_credentials_type: "NonEmptyString",
    #         registry_credential: {
    #           credential: "NonEmptyString",
    #           credential_provider: "NonEmptyString",
    #         },
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] certificate
    #   The certificate to use with this build project.
    #   @return [String]
    #
    # @!attribute [rw] image_pull_credentials_type
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   build.
    #
    #   Valid values:
    #
    #   * `CODEBUILD` specifies that AWS CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     the AWS CodeBuild service principal.
    #
    #   * `SERVICE_ROLE` specifies that AWS CodeBuild uses your build
    #     project's service role.
    #
    #   When you use a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When you use an AWS CodeBuild curated
    #   image, you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] registry_credential
    #   The credentials for access to a private registry.
    #   @return [Types::AwsCodeBuildProjectEnvironmentRegistryCredential]
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #
    #   The environment type `ARM_CONTAINER` is available only in Regions US
    #   East (N. Virginia), US East (Ohio), US West (Oregon), Europe
    #   (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific
    #   (Sydney), and Europe (Frankfurt).
    #
    #   The environment type `LINUX_CONTAINER` with compute type
    #   build.general1.2xlarge is available only in Regions US East (N.
    #   Virginia), US East (N. Virginia), US West (Oregon), Canada
    #   (Central), Europe (Ireland), Europe (London), Europe (Frankfurt),
    #   Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific
    #   (Singapore), Asia Pacific (Sydney), China (Beijing), and China
    #   (Ningxia).
    #
    #   The environment type `LINUX_GPU_CONTAINER` is available only in
    #   Regions US East (N. Virginia), US East (N. Virginia), US West
    #   (Oregon), Canada (Central), Europe (Ireland), Europe (London),
    #   Europe (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia
    #   Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and
    #   China (Ningxia).
    #
    #   Valid values: `WINDOWS_CONTAINER` \| `LINUX_CONTAINER` \|
    #   `LINUX_GPU_CONTAINER` \| `ARM_CONTAINER`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironment AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironment < Struct.new(
      :certificate,
      :image_pull_credentials_type,
      :registry_credential,
      :type)
      include Aws::Structure
    end

    # The credentials for access to a private registry.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectEnvironmentRegistryCredential
    #   data as a hash:
    #
    #       {
    #         credential: "NonEmptyString",
    #         credential_provider: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] credential
    #   The Amazon Resource Name (ARN) or name of credentials created using
    #   AWS Secrets Manager.
    #
    #   <note markdown="1"> The credential can use the name of the credentials only if they
    #   exist in your current AWS Region.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The service that created the credentials to access a private Docker
    #   registry.
    #
    #   The valid value,` SECRETS_MANAGER`, is for AWS Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironmentRegistryCredential AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironmentRegistryCredential < Struct.new(
      :credential,
      :credential_provider)
      include Aws::Structure
    end

    # Information about the build input source code for this build project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectSource
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         location: "NonEmptyString",
    #         git_clone_depth: 1,
    #         insecure_ssl: false,
    #       }
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values are:
    #
    #   * `BITBUCKET` - The source code is in a Bitbucket repository.
    #
    #   * `CODECOMMIT` - The source code is in an AWS CodeCommit repository.
    #
    #   * `CODEPIPELINE` - The source code settings are specified in the
    #     source action of a pipeline in AWS CodePipeline.
    #
    #   * `GITHUB` - The source code is in a GitHub repository.
    #
    #   * `GITHUB_ENTERPRISE` - The source code is in a GitHub Enterprise
    #     repository.
    #
    #   * `NO_SOURCE` - The project does not have input source code.
    #
    #   * `S3` - The source code is in an S3 input bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of the source code to be built.
    #
    #   Valid values include:
    #
    #   * For source code settings that are specified in the source action
    #     of a pipeline in AWS CodePipeline, location should not be
    #     specified. If it is specified, AWS CodePipeline ignores it. This
    #     is because AWS CodePipeline uses the settings in a pipeline's
    #     source action instead of this value.
    #
    #   * For source code in an AWS CodeCommit repository, the HTTPS clone
    #     URL to the repository that contains the source code and the build
    #     spec file (for example,
    #     `https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name`
    #     ).
    #
    #   * For source code in an S3 input bucket, one of the following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, `bucket-name/path/to/object-name.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, `bucket-name/path/to/source-code/folder/`).
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the build spec file.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the build spec file.
    #   @return [String]
    #
    # @!attribute [rw] git_clone_depth
    #   Information about the Git clone depth for the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] insecure_ssl
    #   Whether to ignore SSL warnings while connecting to the project
    #   source code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectSource AWS API Documentation
    #
    class AwsCodeBuildProjectSource < Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :insecure_ssl)
      include Aws::Structure
    end

    # Information about the VPC configuration that AWS CodeBuild accesses.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectVpcConfig
    #   data as a hash:
    #
    #       {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of one or more subnet IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of one or more security group IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectVpcConfig AWS API Documentation
    #
    class AwsCodeBuildProjectVpcConfig < Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids)
      include Aws::Structure
    end

    # The details of an Amazon EC2 instance.
    #
    # @note When making an API call, you may pass AwsEc2InstanceDetails
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         ip_v4_addresses: ["NonEmptyString"],
    #         ip_v6_addresses: ["NonEmptyString"],
    #         key_name: "NonEmptyString",
    #         iam_instance_profile_arn: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         subnet_id: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The instance type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_name
    #   The key name associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   The date/time the instance was launched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceDetails AWS API Documentation
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
      :launched_at)
      include Aws::Structure
    end

    # Information about the network interface attachment.
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceAttachment
    #   data as a hash:
    #
    #       {
    #         attach_time: "NonEmptyString",
    #         attachment_id: "NonEmptyString",
    #         delete_on_termination: false,
    #         device_index: 1,
    #         instance_id: "NonEmptyString",
    #         instance_owner_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attach_time
    #   The timestamp indicating when the attachment initiated.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the network interface attachment
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_index
    #   The device index of the network interface attachment on the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The AWS account ID of the owner of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #
    #   Valid values: `attaching` \| `attached` \| `detaching` \| `detached`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceAttachment AWS API Documentation
    #
    class AwsEc2NetworkInterfaceAttachment < Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :instance_id,
      :instance_owner_id,
      :status)
      include Aws::Structure
    end

    # Details about the network interface
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceDetails
    #   data as a hash:
    #
    #       {
    #         attachment: {
    #           attach_time: "NonEmptyString",
    #           attachment_id: "NonEmptyString",
    #           delete_on_termination: false,
    #           device_index: 1,
    #           instance_id: "NonEmptyString",
    #           instance_owner_id: "NonEmptyString",
    #           status: "NonEmptyString",
    #         },
    #         network_interface_id: "NonEmptyString",
    #         security_groups: [
    #           {
    #             group_name: "NonEmptyString",
    #             group_id: "NonEmptyString",
    #           },
    #         ],
    #         source_dest_check: false,
    #       }
    #
    # @!attribute [rw] attachment
    #   The network interface attachment.
    #   @return [Types::AwsEc2NetworkInterfaceAttachment]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Security groups for the network interface.
    #   @return [Array<Types::AwsEc2NetworkInterfaceSecurityGroup>]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether traffic to or from the instance is validated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceDetails AWS API Documentation
    #
    class AwsEc2NetworkInterfaceDetails < Struct.new(
      :attachment,
      :network_interface_id,
      :security_groups,
      :source_dest_check)
      include Aws::Structure
    end

    # A security group associated with the network interface.
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceSecurityGroup
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #         group_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceSecurityGroup AWS API Documentation
    #
    class AwsEc2NetworkInterfaceSecurityGroup < Struct.new(
      :group_name,
      :group_id)
      include Aws::Structure
    end

    # Details about an EC2 security group.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupDetails
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #         group_id: "NonEmptyString",
    #         owner_id: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         ip_permissions: [
    #           {
    #             ip_protocol: "NonEmptyString",
    #             from_port: 1,
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 peering_status: "NonEmptyString",
    #                 user_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_peering_connection_id: "NonEmptyString",
    #               },
    #             ],
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "NonEmptyString",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "NonEmptyString",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 prefix_list_id: "NonEmptyString",
    #               },
    #             ],
    #           },
    #         ],
    #         ip_permissions_egress: [
    #           {
    #             ip_protocol: "NonEmptyString",
    #             from_port: 1,
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 peering_status: "NonEmptyString",
    #                 user_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_peering_connection_id: "NonEmptyString",
    #               },
    #             ],
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "NonEmptyString",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "NonEmptyString",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 prefix_list_id: "NonEmptyString",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the owner of the security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   \[VPC only\] The ID of the VPC for the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   The inbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @!attribute [rw] ip_permissions_egress
    #   \[VPC only\] The outbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupDetails AWS API Documentation
    #
    class AwsEc2SecurityGroupDetails < Struct.new(
      :group_name,
      :group_id,
      :owner_id,
      :vpc_id,
      :ip_permissions,
      :ip_permissions_egress)
      include Aws::Structure
    end

    # An IP permission for an EC2 security group.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpPermission
    #   data as a hash:
    #
    #       {
    #         ip_protocol: "NonEmptyString",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "NonEmptyString",
    #             group_name: "NonEmptyString",
    #             peering_status: "NonEmptyString",
    #             user_id: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             vpc_peering_connection_id: "NonEmptyString",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             cidr_ip: "NonEmptyString",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "NonEmptyString",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number.
    #
    #   \[VPC only\] Use `-1` to specify all protocols.
    #
    #   When authorizing security group rules, specifying -1 or a protocol
    #   number other than `tcp`, `udp`, `icmp`, or `icmpv6` allows traffic
    #   on all ports, regardless of any port range you specify.
    #
    #   For `tcp`, `udp`, and `icmp`, you must specify a port range.
    #
    #   For `icmpv6`, the port range is optional. If you omit the port
    #   range, traffic for all types and codes is allowed.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number.
    #
    #   A value of -1 indicates all ICMP/ICMPv6 types. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code.
    #
    #   A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id_group_pairs
    #   The security group and AWS account ID pairs.
    #   @return [Array<Types::AwsEc2SecurityGroupUserIdGroupPair>]
    #
    # @!attribute [rw] ip_ranges
    #   The IPv4 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpRange>]
    #
    # @!attribute [rw] ipv_6_ranges
    #   The IPv6 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpv6Range>]
    #
    # @!attribute [rw] prefix_list_ids
    #   \[VPC only\] The prefix list IDs for an AWS service. With outbound
    #   rules, this is the AWS service to access through a VPC endpoint from
    #   instances associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupPrefixListId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpPermission AWS API Documentation
    #
    class AwsEc2SecurityGroupIpPermission < Struct.new(
      :ip_protocol,
      :from_port,
      :to_port,
      :user_id_group_pairs,
      :ip_ranges,
      :ipv_6_ranges,
      :prefix_list_ids)
      include Aws::Structure
    end

    # A range of IPv4 addresses.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpRange
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   The IPv4 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv4 address, use
    #   the /32 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpRange AWS API Documentation
    #
    class AwsEc2SecurityGroupIpRange < Struct.new(
      :cidr_ip)
      include Aws::Structure
    end

    # A range of IPv6 addresses.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpv6Range
    #   data as a hash:
    #
    #       {
    #         cidr_ipv_6: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr_ipv_6
    #   The IPv6 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv6 address, use
    #   the /128 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpv6Range AWS API Documentation
    #
    class AwsEc2SecurityGroupIpv6Range < Struct.new(
      :cidr_ipv_6)
      include Aws::Structure
    end

    # A prefix list ID.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupPrefixListId
    #   data as a hash:
    #
    #       {
    #         prefix_list_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupPrefixListId AWS API Documentation
    #
    class AwsEc2SecurityGroupPrefixListId < Struct.new(
      :prefix_list_id)
      include Aws::Structure
    end

    # A relationship between a security group and a user.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupUserIdGroupPair
    #   data as a hash:
    #
    #       {
    #         group_id: "NonEmptyString",
    #         group_name: "NonEmptyString",
    #         peering_status: "NonEmptyString",
    #         user_id: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         vpc_peering_connection_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] peering_status
    #   The status of a VPC peering connection, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of an AWS account.
    #
    #   For a referenced security group in another VPC, the account ID of
    #   the referenced security group is returned in the response. If the
    #   referenced security group is deleted, this value is not returned.
    #
    #   \[EC2-Classic\] Required when adding or removing rules that
    #   reference a security group in another AWS.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the referenced security group, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupUserIdGroupPair AWS API Documentation
    #
    class AwsEc2SecurityGroupUserIdGroupPair < Struct.new(
      :group_id,
      :group_name,
      :peering_status,
      :user_id,
      :vpc_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Information about an Elasticsearch domain.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainDetails
    #   data as a hash:
    #
    #       {
    #         access_policies: "NonEmptyString",
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "NonEmptyString",
    #         },
    #         domain_id: "NonEmptyString",
    #         domain_name: "NonEmptyString",
    #         endpoint: "NonEmptyString",
    #         endpoints: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         elasticsearch_version: "NonEmptyString",
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "NonEmptyString",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         vpc_options: {
    #           availability_zones: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #           subnet_ids: ["NonEmptyString"],
    #           vpc_id: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] access_policies
    #   IAM policy document specifying the access policies for the new
    #   Amazon ES domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint.
    #   @return [Types::AwsElasticsearchDomainDomainEndpointOptions]
    #
    # @!attribute [rw] domain_id
    #   Unique identifier for an Amazon ES domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of an Amazon ES domain.
    #
    #   Domain names are unique across all domains owned by the same account
    #   within an AWS Region.
    #
    #   Domain names must start with a lowercase letter and must be between
    #   3 and 28 characters.
    #
    #   Valid characters are a-z (lowercase only), 0-9, and – (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Domain-specific endpoint used to submit index, search, and data
    #   upload requests to an Amazon ES domain.
    #
    #   The endpoint is a service URL.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The key-value pair that exists if the Amazon ES domain uses VPC
    #   endpoints.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] elasticsearch_version
    #   Elasticsearch version.
    #   @return [String]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Details about the configuration for encryption at rest.
    #   @return [Types::AwsElasticsearchDomainEncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Details about the configuration for node-to-node encryption.
    #   @return [Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] vpc_options
    #   Information that Amazon ES derives based on `VPCOptions` for the
    #   domain.
    #   @return [Types::AwsElasticsearchDomainVPCOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDetails AWS API Documentation
    #
    class AwsElasticsearchDomainDetails < Struct.new(
      :access_policies,
      :domain_endpoint_options,
      :domain_id,
      :domain_name,
      :endpoint,
      :endpoints,
      :elasticsearch_version,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :vpc_options)
      include Aws::Structure
    end

    # Additional options for the domain endpoint, such as whether to require
    # HTTPS for all traffic.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainDomainEndpointOptions
    #   data as a hash:
    #
    #       {
    #         enforce_https: false,
    #         tls_security_policy: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] enforce_https
    #   Whether to require that all traffic to the domain arrive over HTTPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   The TLS security policy to apply to the HTTPS endpoint of the
    #   Elasticsearch domain.
    #
    #   Valid values:
    #
    #   * `Policy-Min-TLS-1-0-2019-07`, which supports TLSv1.0 and higher
    #
    #   * `Policy-Min-TLS-1-2-2019-07`, which only supports TLSv1.2
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDomainEndpointOptions AWS API Documentation
    #
    class AwsElasticsearchDomainDomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy)
      include Aws::Structure
    end

    # Details about the configuration for encryption at rest.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainEncryptionAtRestOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         kms_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether encryption at rest is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainEncryptionAtRestOptions AWS API Documentation
    #
    class AwsElasticsearchDomainEncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      include Aws::Structure
    end

    # Details about the configuration for node-to-node encryption.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainNodeToNodeEncryptionOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether node-to-node encryption is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainNodeToNodeEncryptionOptions AWS API Documentation
    #
    class AwsElasticsearchDomainNodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Information that Amazon ES derives based on `VPCOptions` for the
    # domain.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainVPCOptions
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_ids: ["NonEmptyString"],
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones associated with the VPC subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the VPC endpoints for
    #   the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoints for the
    #   domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   ID for the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainVPCOptions AWS API Documentation
    #
    class AwsElasticsearchDomainVPCOptions < Struct.new(
      :availability_zones,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      include Aws::Structure
    end

    # Information about a load balancer.
    #
    # @note When making an API call, you may pass AwsElbv2LoadBalancerDetails
    #   data as a hash:
    #
    #       {
    #         availability_zones: [
    #           {
    #             zone_name: "NonEmptyString",
    #             subnet_id: "NonEmptyString",
    #           },
    #         ],
    #         canonical_hosted_zone_id: "NonEmptyString",
    #         created_time: "NonEmptyString",
    #         dns_name: "NonEmptyString",
    #         ip_address_type: "NonEmptyString",
    #         scheme: "NonEmptyString",
    #         security_groups: ["NonEmptyString"],
    #         state: {
    #           code: "NonEmptyString",
    #           reason: "NonEmptyString",
    #         },
    #         type: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones for the load balancer.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] canonical_hosted_zone_id
    #   The ID of the Amazon Route 53 hosted zone associated with the load
    #   balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the load balancer was created.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The public DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses).
    #   @return [String]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The state of the load balancer.
    #   @return [Types::LoadBalancerState]
    #
    # @!attribute [rw] type
    #   The type of load balancer.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbv2LoadBalancerDetails AWS API Documentation
    #
    class AwsElbv2LoadBalancerDetails < Struct.new(
      :availability_zones,
      :canonical_hosted_zone_id,
      :created_time,
      :dns_name,
      :ip_address_type,
      :scheme,
      :security_groups,
      :state,
      :type,
      :vpc_id)
      include Aws::Structure
    end

    # IAM access key details related to a finding.
    #
    # @note When making an API call, you may pass AwsIamAccessKeyDetails
    #   data as a hash:
    #
    #       {
    #         user_name: "NonEmptyString",
    #         status: "Active", # accepts Active, Inactive
    #         created_at: "NonEmptyString",
    #         principal_id: "NonEmptyString",
    #         principal_type: "NonEmptyString",
    #         principal_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] user_name
    #   The user associated with the IAM access key related to a finding.
    #
    #   The `UserName` parameter has been replaced with the `PrincipalName`
    #   parameter because access keys can also be assigned to principals
    #   that are not IAM users.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_name
    #   The name of the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeyDetails AWS API Documentation
    #
    class AwsIamAccessKeyDetails < Struct.new(
      :user_name,
      :status,
      :created_at,
      :principal_id,
      :principal_type,
      :principal_name)
      include Aws::Structure
    end

    # Contains information about an IAM role, including all of the role's
    # policies.
    #
    # @note When making an API call, you may pass AwsIamRoleDetails
    #   data as a hash:
    #
    #       {
    #         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #         create_date: "NonEmptyString",
    #         role_id: "NonEmptyString",
    #         role_name: "NonEmptyString",
    #         max_session_duration: 1,
    #         path: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust policy that grants permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in ISO 8601 date-time format, when the role was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) that you want to set for
    #   the specified role.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The path to the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamRoleDetails AWS API Documentation
    #
    class AwsIamRoleDetails < Struct.new(
      :assume_role_policy_document,
      :create_date,
      :role_id,
      :role_name,
      :max_session_duration,
      :path)
      include Aws::Structure
    end

    # Contains metadata about a customer master key (CMK).
    #
    # @note When making an API call, you may pass AwsKmsKeyDetails
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "NonEmptyString",
    #         creation_date: 1.0,
    #         key_id: "NonEmptyString",
    #         key_manager: "NonEmptyString",
    #         key_state: "NonEmptyString",
    #         origin: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The twelve-digit account ID of the AWS account that owns the CMK.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the CMK was created.
    #   @return [Float]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_manager
    #   The manager of the CMK. CMKs in your AWS account are either customer
    #   managed or AWS managed.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of the CMK.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The source of the CMK's key material.
    #
    #   When this value is `AWS_KMS`, AWS KMS created the key material.
    #
    #   When this value is `EXTERNAL`, the key material was imported from
    #   your existing key management infrastructure or the CMK lacks key
    #   material.
    #
    #   When this value is `AWS_CLOUDHSM`, the key material was created in
    #   the AWS CloudHSM cluster associated with a custom key store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsKmsKeyDetails AWS API Documentation
    #
    class AwsKmsKeyDetails < Struct.new(
      :aws_account_id,
      :creation_date,
      :key_id,
      :key_manager,
      :key_state,
      :origin)
      include Aws::Structure
    end

    # The code for the Lambda function. You can specify either an object in
    # Amazon S3, or upload a deployment package directly.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionCode
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "NonEmptyString",
    #         s3_key: "NonEmptyString",
    #         s3_object_version: "NonEmptyString",
    #         zip_file: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same AWS Region as your function. The
    #   bucket can be in a different AWS account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. AWS SDK and
    #   AWS CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionCode AWS API Documentation
    #
    class AwsLambdaFunctionCode < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file)
      include Aws::Structure
    end

    # The dead-letter queue for failed asynchronous invocations.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionDeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         target_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    #   topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDeadLetterConfig AWS API Documentation
    #
    class AwsLambdaFunctionDeadLetterConfig < Struct.new(
      :target_arn)
      include Aws::Structure
    end

    # Details about a function's configuration.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionDetails
    #   data as a hash:
    #
    #       {
    #         code: {
    #           s3_bucket: "NonEmptyString",
    #           s3_key: "NonEmptyString",
    #           s3_object_version: "NonEmptyString",
    #           zip_file: "NonEmptyString",
    #         },
    #         code_sha_256: "NonEmptyString",
    #         dead_letter_config: {
    #           target_arn: "NonEmptyString",
    #         },
    #         environment: {
    #           variables: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           error: {
    #             error_code: "NonEmptyString",
    #             message: "NonEmptyString",
    #           },
    #         },
    #         function_name: "NonEmptyString",
    #         handler: "NonEmptyString",
    #         kms_key_arn: "NonEmptyString",
    #         last_modified: "NonEmptyString",
    #         layers: [
    #           {
    #             arn: "NonEmptyString",
    #             code_size: 1,
    #           },
    #         ],
    #         master_arn: "NonEmptyString",
    #         memory_size: 1,
    #         revision_id: "NonEmptyString",
    #         role: "NonEmptyString",
    #         runtime: "NonEmptyString",
    #         timeout: 1,
    #         tracing_config: {
    #           mode: "NonEmptyString",
    #         },
    #         vpc_config: {
    #           security_group_ids: ["NonEmptyString"],
    #           subnet_ids: ["NonEmptyString"],
    #           vpc_id: "NonEmptyString",
    #         },
    #         version: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] code
    #   An `AwsLambdaFunctionCode` object.
    #   @return [Types::AwsLambdaFunctionCode]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   The function's dead letter queue.
    #   @return [Types::AwsLambdaFunctionDeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The function's environment variables.
    #   @return [Types::AwsLambdaFunctionEnvironment]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin executing your function.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key that's used to encrypt the function's environment
    #   variables. This key is only returned if you've configured a
    #   customer managed CMK.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the function was last updated, in ISO-8601
    #   format (YYYY-MM-DDThh:mm:ss.sTZD).
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The function's layers.
    #   @return [Array<Types::AwsLambdaFunctionLayer>]
    #
    # @!attribute [rw] master_arn
    #   For Lambda@Edge functions, the ARN of the master function.
    #   @return [String]
    #
    # @!attribute [rw] memory_size
    #   The memory that's allocated to the function.
    #   @return [Integer]
    #
    # @!attribute [rw] revision_id
    #   The latest updated revision of the function or alias.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it.
    #   @return [Integer]
    #
    # @!attribute [rw] tracing_config
    #   The function's AWS X-Ray tracing configuration.
    #   @return [Types::AwsLambdaFunctionTracingConfig]
    #
    # @!attribute [rw] vpc_config
    #   The function's networking configuration.
    #   @return [Types::AwsLambdaFunctionVpcConfig]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDetails AWS API Documentation
    #
    class AwsLambdaFunctionDetails < Struct.new(
      :code,
      :code_sha_256,
      :dead_letter_config,
      :environment,
      :function_name,
      :handler,
      :kms_key_arn,
      :last_modified,
      :layers,
      :master_arn,
      :memory_size,
      :revision_id,
      :role,
      :runtime,
      :timeout,
      :tracing_config,
      :vpc_config,
      :version)
      include Aws::Structure
    end

    # A function's environment variable settings.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionEnvironment
    #   data as a hash:
    #
    #       {
    #         variables: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         error: {
    #           error_code: "NonEmptyString",
    #           message: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   An `AwsLambdaFunctionEnvironmentError` object.
    #   @return [Types::AwsLambdaFunctionEnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironment AWS API Documentation
    #
    class AwsLambdaFunctionEnvironment < Struct.new(
      :variables,
      :error)
      include Aws::Structure
    end

    # Error messages for environment variables that couldn't be applied.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionEnvironmentError
    #   data as a hash:
    #
    #       {
    #         error_code: "NonEmptyString",
    #         message: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironmentError AWS API Documentation
    #
    class AwsLambdaFunctionEnvironmentError < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # An AWS Lambda layer.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionLayer
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString",
    #         code_size: 1,
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionLayer AWS API Documentation
    #
    class AwsLambdaFunctionLayer < Struct.new(
      :arn,
      :code_size)
      include Aws::Structure
    end

    # The function's AWS X-Ray tracing configuration.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionTracingConfig
    #   data as a hash:
    #
    #       {
    #         mode: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionTracingConfig AWS API Documentation
    #
    class AwsLambdaFunctionTracingConfig < Struct.new(
      :mode)
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function. For more information, see VPC Settings.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionVpcConfig
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_ids: ["NonEmptyString"],
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security groups IDs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionVpcConfig AWS API Documentation
    #
    class AwsLambdaFunctionVpcConfig < Struct.new(
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      include Aws::Structure
    end

    # Details about a Lambda layer version.
    #
    # @note When making an API call, you may pass AwsLambdaLayerVersionDetails
    #   data as a hash:
    #
    #       {
    #         version: 1,
    #         compatible_runtimes: ["NonEmptyString"],
    #         created_date: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes. Maximum number of five items.
    #
    #   Valid values: `nodejs10.x` \| `nodejs12.x` \| `java8` \| `java11` \|
    #   `python2.7` \| `python3.6` \| `python3.7` \| `python3.8` \|
    #   `dotnetcore1.0` \| `dotnetcore2.1` \| `go1.x` \| `ruby2.5` \|
    #   `provided`
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date that the version was created, in ISO 8601 format. For
    #   example, 2018-11-27T15:10:45.123+0000.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaLayerVersionDetails AWS API Documentation
    #
    class AwsLambdaLayerVersionDetails < Struct.new(
      :version,
      :compatible_runtimes,
      :created_date)
      include Aws::Structure
    end

    # An AWS Identity and Access Management (IAM) role associated with the
    # DB instance.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceAssociatedRole
    #   data as a hash:
    #
    #       {
    #         role_arn: "NonEmptyString",
    #         feature_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the IAM)role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of the association between the IAM role and the
    #   DB instance. The `Status` property returns one of the following
    #   values:
    #
    #   * `ACTIVE` - The IAM role ARN is associated with the DB instance and
    #     can be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - The IAM role ARN is being associated with the DB
    #     instance.
    #
    #   * `INVALID` - The IAM role ARN is associated with the DB instance.
    #     But the DB instance is unable to assume the IAM role in order to
    #     access other AWS services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceAssociatedRole AWS API Documentation
    #
    class AwsRdsDbInstanceAssociatedRole < Struct.new(
      :role_arn,
      :feature_name,
      :status)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB instance.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceDetails
    #   data as a hash:
    #
    #       {
    #         associated_roles: [
    #           {
    #             role_arn: "NonEmptyString",
    #             feature_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         ca_certificate_identifier: "NonEmptyString",
    #         db_cluster_identifier: "NonEmptyString",
    #         db_instance_identifier: "NonEmptyString",
    #         db_instance_class: "NonEmptyString",
    #         db_instance_port: 1,
    #         dbi_resource_id: "NonEmptyString",
    #         db_name: "NonEmptyString",
    #         deletion_protection: false,
    #         endpoint: {
    #           address: "NonEmptyString",
    #           port: 1,
    #           hosted_zone_id: "NonEmptyString",
    #         },
    #         engine: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         iam_database_authentication_enabled: false,
    #         instance_create_time: "NonEmptyString",
    #         kms_key_id: "NonEmptyString",
    #         publicly_accessible: false,
    #         storage_encrypted: false,
    #         tde_credential_arn: "NonEmptyString",
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] associated_roles
    #   The AWS Identity and Access Management (IAM) roles associated with
    #   the DB instance.
    #   @return [Array<Types::AwsRdsDbInstanceAssociatedRole>]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, contains the name of
    #   the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-supplied database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   Specifies the port that the DB instance listens on. If the DB
    #   instance is part of a DB cluster, this can be a different port than
    #   the DB cluster port.
    #   @return [Integer]
    #
    # @!attribute [rw] dbi_resource_id
    #   The AWS Region-unique, immutable identifier for the DB instance.
    #   This identifier is found in AWS CloudTrail log entries whenever the
    #   AWS KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    #   Contains the name of the initial database of this instance that was
    #   provided at create time, if one was specified when the DB instance
    #   was created. This same name is returned for the life of the DB
    #   instance.
    #
    #   **Oracle**
    #
    #   Contains the Oracle System ID (SID) of the created DB instance. Not
    #   shown when the returned parameters do not apply to an Oracle DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether the DB instance has deletion protection enabled.
    #
    #   When deletion protection is enabled, the database cannot be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::AwsRdsDbInstanceEndpoint]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to use for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #
    #   IAM database authentication can be enabled for the following
    #   database engines.
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_create_time
    #   Provides the date and time the DB instance was created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the AWS KMS key identifier for the
    #   encrypted DB instance.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance.
    #
    #   A value of true specifies an Internet-facing instance with a
    #   publicly resolvable DNS name, which resolves to a public IP address.
    #
    #   A value of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of VPC security groups that the DB instance belongs to.
    #   @return [Array<Types::AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceDetails AWS API Documentation
    #
    class AwsRdsDbInstanceDetails < Struct.new(
      :associated_roles,
      :ca_certificate_identifier,
      :db_cluster_identifier,
      :db_instance_identifier,
      :db_instance_class,
      :db_instance_port,
      :dbi_resource_id,
      :db_name,
      :deletion_protection,
      :endpoint,
      :engine,
      :engine_version,
      :iam_database_authentication_enabled,
      :instance_create_time,
      :kms_key_id,
      :publicly_accessible,
      :storage_encrypted,
      :tde_credential_arn,
      :vpc_security_groups)
      include Aws::Structure
    end

    # Specifies the connection endpoint.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "NonEmptyString",
    #         port: 1,
    #         hosted_zone_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceEndpoint AWS API Documentation
    #
    class AwsRdsDbInstanceEndpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      include Aws::Structure
    end

    # A VPC security groups that the DB instance belongs to.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceVpcSecurityGroup
    #   data as a hash:
    #
    #       {
    #         vpc_security_group_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceVpcSecurityGroup AWS API Documentation
    #
    class AwsRdsDbInstanceVpcSecurityGroup < Struct.new(
      :vpc_security_group_id,
      :status)
      include Aws::Structure
    end

    # The details of an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketDetails
    #   data as a hash:
    #
    #       {
    #         owner_id: "NonEmptyString",
    #         owner_name: "NonEmptyString",
    #         created_at: "NonEmptyString",
    #         server_side_encryption_configuration: {
    #           rules: [
    #             {
    #               apply_server_side_encryption_by_default: {
    #                 sse_algorithm: "NonEmptyString",
    #                 kms_master_key_id: "NonEmptyString",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the S3 bucket was created.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Types::AwsS3BucketServerSideEncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketDetails AWS API Documentation
    #
    class AwsS3BucketDetails < Struct.new(
      :owner_id,
      :owner_name,
      :created_at,
      :server_side_encryption_configuration)
      include Aws::Structure
    end

    # Specifies the default server-side encryption to apply to new objects
    # in the bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionByDefault
    #   data as a hash:
    #
    #       {
    #         sse_algorithm: "NonEmptyString",
    #         kms_master_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] sse_algorithm
    #   Server-side encryption algorithm to use for the default encryption.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_id
    #   AWS KMS customer master key (CMK) ID to use for the default
    #   encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionByDefault AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionByDefault < Struct.new(
      :sse_algorithm,
      :kms_master_key_id)
      include Aws::Structure
    end

    # The encryption configuration for the S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         rules: [
    #           {
    #             apply_server_side_encryption_by_default: {
    #               sse_algorithm: "NonEmptyString",
    #               kms_master_key_id: "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rules
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Array<Types::AwsS3BucketServerSideEncryptionRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionConfiguration AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionConfiguration < Struct.new(
      :rules)
      include Aws::Structure
    end

    # An encryption rule to apply to the S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionRule
    #   data as a hash:
    #
    #       {
    #         apply_server_side_encryption_by_default: {
    #           sse_algorithm: "NonEmptyString",
    #           kms_master_key_id: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] apply_server_side_encryption_by_default
    #   Specifies the default server-side encryption to apply to new objects
    #   in the bucket. If a `PUT` object request doesn't specify any
    #   server-side encryption, this default encryption is applied.
    #   @return [Types::AwsS3BucketServerSideEncryptionByDefault]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionRule AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionRule < Struct.new(
      :apply_server_side_encryption_by_default)
      include Aws::Structure
    end

    # Details about an Amazon S3 object.
    #
    # @note When making an API call, you may pass AwsS3ObjectDetails
    #   data as a hash:
    #
    #       {
    #         last_modified: "NonEmptyString",
    #         etag: "NonEmptyString",
    #         version_id: "NonEmptyString",
    #         content_type: "NonEmptyString",
    #         server_side_encryption: "NonEmptyString",
    #         ssekms_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] last_modified
    #   The date and time when the object was last modified.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The opaque identifier assigned by a web server to a specific version
    #   of a resource found at a URL.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the object data.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption
    #   If the object is stored using server-side encryption, the value of
    #   the server-side encryption algorithm used when storing this object
    #   in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] ssekms_key_id
    #   The identifier of the AWS Key Management Service (AWS KMS) symmetric
    #   customer managed customer master key (CMK) that was used for the
    #   object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3ObjectDetails AWS API Documentation
    #
    class AwsS3ObjectDetails < Struct.new(
      :last_modified,
      :etag,
      :version_id,
      :content_type,
      :server_side_encryption,
      :ssekms_key_id)
      include Aws::Structure
    end

    # Provides consistent format for the contents of the Security
    # Hub-aggregated findings. `AwsSecurityFinding` format enables you to
    # share findings between AWS security services and third-party
    # solutions, and security standards checks.
    #
    # <note markdown="1"> A finding is a potential security issue generated either by AWS
    # services (Amazon GuardDuty, Amazon Inspector, and Amazon Macie) or by
    # the integrated third-party solutions and standards checks.
    #
    #  </note>
    #
    # @note When making an API call, you may pass AwsSecurityFinding
    #   data as a hash:
    #
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"], # required
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: { # required
    #           product: 1.0,
    #           label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #           normalized: 1,
    #           original: "NonEmptyString",
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString",
    #           },
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #             path: "NonEmptyString",
    #             state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #           },
    #         ],
    #         network: {
    #           direction: "IN", # accepts IN, OUT
    #           protocol: "NonEmptyString",
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString",
    #         },
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString",
    #         },
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #             value: "NonEmptyString",
    #             category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString",
    #           },
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #             region: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             details: {
    #               aws_code_build_project: {
    #                 encryption_key: "NonEmptyString",
    #                 environment: {
    #                   certificate: "NonEmptyString",
    #                   image_pull_credentials_type: "NonEmptyString",
    #                   registry_credential: {
    #                     credential: "NonEmptyString",
    #                     credential_provider: "NonEmptyString",
    #                   },
    #                   type: "NonEmptyString",
    #                 },
    #                 name: "NonEmptyString",
    #                 source: {
    #                   type: "NonEmptyString",
    #                   location: "NonEmptyString",
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false,
    #                 },
    #                 service_role: "NonEmptyString",
    #                 vpc_config: {
    #                   vpc_id: "NonEmptyString",
    #                   subnets: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_cloud_front_distribution: {
    #                 domain_name: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 last_modified_time: "NonEmptyString",
    #                 logging: {
    #                   bucket: "NonEmptyString",
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: "NonEmptyString",
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       id: "NonEmptyString",
    #                       origin_path: "NonEmptyString",
    #                     },
    #                   ],
    #                 },
    #                 status: "NonEmptyString",
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: "NonEmptyString",
    #                   attachment_id: "NonEmptyString",
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: "NonEmptyString",
    #                   instance_owner_id: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 network_interface_id: "NonEmptyString",
    #                 security_groups: [
    #                   {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 source_dest_check: false,
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 ip_permissions_egress: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #               aws_elbv_2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 canonical_hosted_zone_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 ip_address_type: "NonEmptyString",
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 state: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString",
    #                 },
    #                 type: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: "NonEmptyString",
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: "NonEmptyString",
    #                 },
    #                 domain_id: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 endpoints: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 elasticsearch_version: "NonEmptyString",
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString",
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false,
    #                 },
    #                 vpc_options: {
    #                   availability_zones: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: "NonEmptyString",
    #                         kms_master_key_id: "NonEmptyString",
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #               aws_s3_object: {
    #                 last_modified: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 version_id: "NonEmptyString",
    #                 content_type: "NonEmptyString",
    #                 server_side_encryption: "NonEmptyString",
    #                 ssekms_key_id: "NonEmptyString",
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active", # accepts Active, Inactive
    #                 created_at: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 principal_type: "NonEmptyString",
    #                 principal_name: "NonEmptyString",
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 create_date: "NonEmptyString",
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #                 max_session_duration: 1,
    #                 path: "NonEmptyString",
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: "NonEmptyString",
    #                 creation_date: 1.0,
    #                 key_id: "NonEmptyString",
    #                 key_manager: "NonEmptyString",
    #                 key_state: "NonEmptyString",
    #                 origin: "NonEmptyString",
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: "NonEmptyString",
    #                   s3_key: "NonEmptyString",
    #                   s3_object_version: "NonEmptyString",
    #                   zip_file: "NonEmptyString",
    #                 },
    #                 code_sha_256: "NonEmptyString",
    #                 dead_letter_config: {
    #                   target_arn: "NonEmptyString",
    #                 },
    #                 environment: {
    #                   variables: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                   error: {
    #                     error_code: "NonEmptyString",
    #                     message: "NonEmptyString",
    #                   },
    #                 },
    #                 function_name: "NonEmptyString",
    #                 handler: "NonEmptyString",
    #                 kms_key_arn: "NonEmptyString",
    #                 last_modified: "NonEmptyString",
    #                 layers: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     code_size: 1,
    #                   },
    #                 ],
    #                 master_arn: "NonEmptyString",
    #                 memory_size: 1,
    #                 revision_id: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 runtime: "NonEmptyString",
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: "NonEmptyString",
    #                 },
    #                 vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #                 version: "NonEmptyString",
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 compatible_runtimes: ["NonEmptyString"],
    #                 created_date: "NonEmptyString",
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     feature_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 ca_certificate_identifier: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_instance_class: "NonEmptyString",
    #                 db_instance_port: 1,
    #                 dbi_resource_id: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString",
    #                 },
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: "NonEmptyString",
    #                 subscription: [
    #                   {
    #                     endpoint: "NonEmptyString",
    #                     protocol: "NonEmptyString",
    #                   },
    #                 ],
    #                 topic_name: "NonEmptyString",
    #                 owner: "NonEmptyString",
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: "NonEmptyString",
    #                 queue_name: "NonEmptyString",
    #                 dead_letter_target_arn: "NonEmptyString",
    #               },
    #               aws_waf_web_acl: {
    #                 name: "NonEmptyString",
    #                 default_action: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     override_action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString",
    #                   },
    #                 ],
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               container: {
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #             },
    #           },
    #         ],
    #         compliance: {
    #           status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #           related_requirements: ["NonEmptyString"],
    #           status_reasons: [
    #             {
    #               reason_code: "NonEmptyString", # required
    #               description: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #         workflow: {
    #           status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #       }
    #
    # @!attribute [rw] schema_version
    #   The schema version that a finding is formatted for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   `namespace/category/classifier` that classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider first observed the potential security
    #   issue that a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider most recently observed the potential
    #   security issue that a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider created the potential security issue that
    #   a finding captured.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider last updated the finding record.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A finding's severity.
    #   @return [Types::Severity]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #
    #   <note markdown="1"> In this release, `Title` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #
    #   <note markdown="1"> In this release, `Description` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   A data type that describes the remediation options for a finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [String]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] malware
    #   A list of malware related to a finding.
    #   @return [Array<Types::Malware>]
    #
    # @!attribute [rw] network
    #   The details of network-related information about a finding.
    #   @return [Types::Network]
    #
    # @!attribute [rw] process
    #   The details of process-related information about a finding.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] threat_intel_indicators
    #   Threat intelligence details related to a finding.
    #   @return [Array<Types::ThreatIntelIndicator>]
    #
    # @!attribute [rw] resources
    #   A set of resource data types that describe the resources that the
    #   finding refers to.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] compliance
    #   This data type is exclusive to findings that are generated as the
    #   result of a check run against a specific rule in a supported
    #   security standard, such as CIS AWS Foundations. Contains security
    #   standard-related finding details.
    #   @return [Types::Compliance]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow
    #   Provides information about the status of the investigation into a
    #   finding.
    #   @return [Types::Workflow]
    #
    # @!attribute [rw] record_state
    #   The record state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] related_findings
    #   A list of related findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @!attribute [rw] note
    #   A user-defined note added to a finding.
    #   @return [Types::Note]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFinding AWS API Documentation
    #
    class AwsSecurityFinding < Struct.new(
      :schema_version,
      :id,
      :product_arn,
      :generator_id,
      :aws_account_id,
      :types,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity,
      :confidence,
      :criticality,
      :title,
      :description,
      :remediation,
      :source_url,
      :product_fields,
      :user_defined_fields,
      :malware,
      :network,
      :process,
      :threat_intel_indicators,
      :resources,
      :compliance,
      :verification_state,
      :workflow_state,
      :workflow,
      :record_state,
      :related_findings,
      :note)
      include Aws::Structure
    end

    # A collection of attributes that are applied to all active Security
    # Hub-aggregated findings and that result in a subset of findings that
    # are included in this insight.
    #
    # @note When making an API call, you may pass AwsSecurityFindingFilters
    #   data as a hash:
    #
    #       {
    #         product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         aws_account_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         generator_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         first_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         severity_product: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_normalized: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_label: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         confidence: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         criticality: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         title: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         description: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         recommendation_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         product_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         product_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         company_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         user_defined_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         malware_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         malware_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_direction: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_protocol: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_source_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_source_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_source_mac: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         network_destination_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_destination_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         process_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_parent_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         process_terminated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_value: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_category: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_source: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         threat_intel_indicator_source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_partition: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_region: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_tags: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v4_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v6_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_key_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_iam_instance_profile_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_vpc_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_subnet_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_ec2_instance_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_user_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_aws_iam_access_key_created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_container_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_image_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         resource_container_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_details_other: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS
    #           },
    #         ],
    #         compliance_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         verification_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         workflow_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         workflow_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         record_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         related_findings_product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         related_findings_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         note_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         note_updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         note_updated_by: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX
    #           },
    #         ],
    #         keyword: [
    #           {
    #             value: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a
    #   third-party company (security findings provider) after this
    #   provider's product (solution that generates findings) is registered
    #   with Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] type
    #   A finding type in the format of `namespace/category/classifier` that
    #   classifies a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider first observed the potential security
    #   issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider most recently observed the potential
    #   security issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider captured the potential security issue
    #   that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider last updated the finding record.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] severity_product
    #   The native severity as defined by the security-findings provider's
    #   solution that generated the finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_normalized
    #   The normalized severity of a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_label
    #   The label of a finding's severity.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] recommendation_text
    #   The recommendation of what to do about the issue described in a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] product_name
    #   The name of the solution (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] company_name
    #   The name of the findings provider (company) that owns the solution
    #   (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] malware_name
    #   The name of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_type
    #   The type of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_path
    #   The filesystem path of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_state
    #   The state of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_direction
    #   Indicates the direction of network traffic associated with a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_protocol
    #   The protocol of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_port
    #   The source port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_source_domain
    #   The source domain of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_name
    #   The name of the process.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_path
    #   The path to the process executable.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_pid
    #   The process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_parent_pid
    #   The parent process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_launched_at
    #   The date/time that the process was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] process_terminated_at
    #   The date/time that the process was terminated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_type
    #   The type of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_value
    #   The value of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_category
    #   The category of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_last_observed_at
    #   The date/time of the last observation of a threat intelligence
    #   indicator.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source
    #   The source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source_url
    #   The URL for more details from the source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of the resource that details are provided for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The canonical identifier for the given resource type.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_type
    #   The instance type of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_key_name
    #   The key name associated with the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_launched_at
    #   The date and time the instance was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_user_name
    #   The user associated with the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_status
    #   The status of the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_container_name
    #   The name of the container related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_id
    #   The identifier of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_name
    #   The name of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_launched_at
    #   The date/time that the container was started.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_details_other
    #   The details of a resource that doesn't have a specific subfield for
    #   the resource type defined.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] compliance_status
    #   Exclusive to findings that are generated as the result of a check
    #   run against a specific rule in a supported standard, such as CIS AWS
    #   Foundations. Contains security standard-related finding details.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] verification_state
    #   The veracity of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_status
    #   The status of the investigation into a finding. Allowed values are
    #   the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that the resource owner has been notified
    #     about the security issue. Used when the initial reviewer is not
    #     the resource owner, and needs intervention from the resource
    #     owner.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_product_arn
    #   The ARN of the solution that generated a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_id
    #   The solution-generated identifier for a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_text
    #   The text of a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_updated_at
    #   The timestamp of when the note was updated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] note_updated_by
    #   The principal that created a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] keyword
    #   A keyword for a finding.
    #   @return [Array<Types::KeywordFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingFilters AWS API Documentation
    #
    class AwsSecurityFindingFilters < Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity_product,
      :severity_normalized,
      :severity_label,
      :confidence,
      :criticality,
      :title,
      :description,
      :recommendation_text,
      :source_url,
      :product_fields,
      :product_name,
      :company_name,
      :user_defined_fields,
      :malware_name,
      :malware_type,
      :malware_path,
      :malware_state,
      :network_direction,
      :network_protocol,
      :network_source_ip_v4,
      :network_source_ip_v6,
      :network_source_port,
      :network_source_domain,
      :network_source_mac,
      :network_destination_ip_v4,
      :network_destination_ip_v6,
      :network_destination_port,
      :network_destination_domain,
      :process_name,
      :process_path,
      :process_pid,
      :process_parent_pid,
      :process_launched_at,
      :process_terminated_at,
      :threat_intel_indicator_type,
      :threat_intel_indicator_value,
      :threat_intel_indicator_category,
      :threat_intel_indicator_last_observed_at,
      :threat_intel_indicator_source,
      :threat_intel_indicator_source_url,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_aws_ec2_instance_type,
      :resource_aws_ec2_instance_image_id,
      :resource_aws_ec2_instance_ip_v4_addresses,
      :resource_aws_ec2_instance_ip_v6_addresses,
      :resource_aws_ec2_instance_key_name,
      :resource_aws_ec2_instance_iam_instance_profile_arn,
      :resource_aws_ec2_instance_vpc_id,
      :resource_aws_ec2_instance_subnet_id,
      :resource_aws_ec2_instance_launched_at,
      :resource_aws_s3_bucket_owner_id,
      :resource_aws_s3_bucket_owner_name,
      :resource_aws_iam_access_key_user_name,
      :resource_aws_iam_access_key_status,
      :resource_aws_iam_access_key_created_at,
      :resource_container_name,
      :resource_container_image_id,
      :resource_container_image_name,
      :resource_container_launched_at,
      :resource_details_other,
      :compliance_status,
      :verification_state,
      :workflow_state,
      :workflow_status,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :keyword)
      include Aws::Structure
    end

    # Identifies a finding to update using `BatchUpdateFindings`.
    #
    # @note When making an API call, you may pass AwsSecurityFindingIdentifier
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the finding that was specified by the finding
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingIdentifier AWS API Documentation
    #
    class AwsSecurityFindingIdentifier < Struct.new(
      :id,
      :product_arn)
      include Aws::Structure
    end

    # A wrapper type for the topic's Amazon Resource Name (ARN).
    #
    # @note When making an API call, you may pass AwsSnsTopicDetails
    #   data as a hash:
    #
    #       {
    #         kms_master_key_id: "NonEmptyString",
    #         subscription: [
    #           {
    #             endpoint: "NonEmptyString",
    #             protocol: "NonEmptyString",
    #           },
    #         ],
    #         topic_name: "NonEmptyString",
    #         owner: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an AWS managed customer master key (CMK) for Amazon SNS or
    #   a custom CMK.
    #   @return [String]
    #
    # @!attribute [rw] subscription
    #   Subscription is an embedded property that describes the subscription
    #   endpoints of an Amazon SNS topic.
    #   @return [Array<Types::AwsSnsTopicSubscription>]
    #
    # @!attribute [rw] topic_name
    #   The name of the topic.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The subscription's owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicDetails AWS API Documentation
    #
    class AwsSnsTopicDetails < Struct.new(
      :kms_master_key_id,
      :subscription,
      :topic_name,
      :owner)
      include Aws::Structure
    end

    # A wrapper type for the attributes of an Amazon SNS subscription.
    #
    # @note When making an API call, you may pass AwsSnsTopicSubscription
    #   data as a hash:
    #
    #       {
    #         endpoint: "NonEmptyString",
    #         protocol: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] endpoint
    #   The subscription's endpoint (format depends on the protocol).
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The subscription's protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicSubscription AWS API Documentation
    #
    class AwsSnsTopicSubscription < Struct.new(
      :endpoint,
      :protocol)
      include Aws::Structure
    end

    # Data about a queue.
    #
    # @note When making an API call, you may pass AwsSqsQueueDetails
    #   data as a hash:
    #
    #       {
    #         kms_data_key_reuse_period_seconds: 1,
    #         kms_master_key_id: "NonEmptyString",
    #         queue_name: "NonEmptyString",
    #         dead_letter_target_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] kms_data_key_reuse_period_seconds
    #   The length of time, in seconds, for which Amazon SQS can reuse a
    #   data key to encrypt or decrypt messages before calling AWS KMS
    #   again.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an AWS managed customer master key (CMK) for Amazon SQS or
    #   a custom CMK.
    #   @return [String]
    #
    # @!attribute [rw] queue_name
    #   The name of the new queue.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_target_arn
    #   The Amazon Resource Name (ARN) of the dead-letter queue to which
    #   Amazon SQS moves messages after the value of `maxReceiveCount` is
    #   exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSqsQueueDetails AWS API Documentation
    #
    class AwsSqsQueueDetails < Struct.new(
      :kms_data_key_reuse_period_seconds,
      :kms_master_key_id,
      :queue_name,
      :dead_letter_target_arn)
      include Aws::Structure
    end

    # Details about a WAF WebACL.
    #
    # @note When making an API call, you may pass AwsWafWebAclDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         default_action: "NonEmptyString",
    #         rules: [
    #           {
    #             action: {
    #               type: "NonEmptyString",
    #             },
    #             excluded_rules: [
    #               {
    #                 rule_id: "NonEmptyString",
    #               },
    #             ],
    #             override_action: {
    #               type: "NonEmptyString",
    #             },
    #             priority: 1,
    #             rule_id: "NonEmptyString",
    #             type: "NonEmptyString",
    #           },
    #         ],
    #         web_acl_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the WebACL. You can't change the
    #   name of a WebACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the rules contained in the WebACL
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array that contains the action for each rule in a WebACL, the
    #   priority of the rule, and the ID of the rule.
    #   @return [Array<Types::AwsWafWebAclRule>]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier for a WebACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclDetails AWS API Documentation
    #
    class AwsWafWebAclDetails < Struct.new(
      :name,
      :default_action,
      :rules,
      :web_acl_id)
      include Aws::Structure
    end

    # Details for a rule in a WAF WebACL.
    #
    # @note When making an API call, you may pass AwsWafWebAclRule
    #   data as a hash:
    #
    #       {
    #         action: {
    #           type: "NonEmptyString",
    #         },
    #         excluded_rules: [
    #           {
    #             rule_id: "NonEmptyString",
    #           },
    #         ],
    #         override_action: {
    #           type: "NonEmptyString",
    #         },
    #         priority: 1,
    #         rule_id: "NonEmptyString",
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] action
    #   Specifies the action that CloudFront or AWS WAF takes when a web
    #   request matches the conditions in the rule.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] excluded_rules
    #   Rules to exclude from a rule group.
    #   @return [Array<Types::WafExcludedRule>]
    #
    # @!attribute [rw] override_action
    #   Use the `OverrideAction` to test your RuleGroup.
    #
    #   Any rule in a RuleGroup can potentially block a request. If you set
    #   the `OverrideAction` to `None`, the RuleGroup blocks a request if
    #   any individual rule in the RuleGroup matches the request and is
    #   configured to block that request.
    #
    #   However, if you first want to test the RuleGroup, set the
    #   `OverrideAction` to `Count`. The RuleGroup then overrides any block
    #   action specified by individual rules contained within the group.
    #   Instead of blocking matching requests, those requests are counted.
    #
    #   `ActivatedRule`\|`OverrideAction` applies only when updating or
    #   adding a RuleGroup to a WebACL. In this case you do not use
    #   `ActivatedRule`\|`Action`. For all other update requests,
    #   `ActivatedRule`\|`Action` is used instead of
    #   `ActivatedRule`\|`OverrideAction`.
    #   @return [Types::WafOverrideAction]
    #
    # @!attribute [rw] priority
    #   Specifies the order in which the rules in a WebACL are evaluated.
    #   Rules with a lower value for `Priority` are evaluated before rules
    #   with a higher value. The value must be a unique integer. If you add
    #   multiple rules to a WebACL, the values do not need to be
    #   consecutive.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The identifier for a rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The rule type.
    #
    #   Valid values: `REGULAR` \| `RATE_BASED` \| `GROUP`
    #
    #   The default is `REGULAR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclRule AWS API Documentation
    #
    class AwsWafWebAclRule < Struct.new(
      :action,
      :excluded_rules,
      :override_action,
      :priority,
      :rule_id,
      :type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsRequest AWS API Documentation
    #
    class BatchDisableStandardsRequest < Struct.new(
      :standards_subscription_arns)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were disabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsResponse AWS API Documentation
    #
    class BatchDisableStandardsResponse < Struct.new(
      :standards_subscriptions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchEnableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_requests: [ # required
    #           {
    #             standards_arn: "NonEmptyString", # required
    #             standards_input: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] standards_subscription_requests
    #   The list of standards checks to enable.
    #   @return [Array<Types::StandardsSubscriptionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsRequest AWS API Documentation
    #
    class BatchEnableStandardsRequest < Struct.new(
      :standards_subscription_requests)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were enabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsResponse AWS API Documentation
    #
    class BatchEnableStandardsResponse < Struct.new(
      :standards_subscriptions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchImportFindingsRequest
    #   data as a hash:
    #
    #       {
    #         findings: [ # required
    #           {
    #             schema_version: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             product_arn: "NonEmptyString", # required
    #             generator_id: "NonEmptyString", # required
    #             aws_account_id: "NonEmptyString", # required
    #             types: ["NonEmptyString"], # required
    #             first_observed_at: "NonEmptyString",
    #             last_observed_at: "NonEmptyString",
    #             created_at: "NonEmptyString", # required
    #             updated_at: "NonEmptyString", # required
    #             severity: { # required
    #               product: 1.0,
    #               label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #               normalized: 1,
    #               original: "NonEmptyString",
    #             },
    #             confidence: 1,
    #             criticality: 1,
    #             title: "NonEmptyString", # required
    #             description: "NonEmptyString", # required
    #             remediation: {
    #               recommendation: {
    #                 text: "NonEmptyString",
    #                 url: "NonEmptyString",
    #               },
    #             },
    #             source_url: "NonEmptyString",
    #             product_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             user_defined_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             malware: [
    #               {
    #                 name: "NonEmptyString", # required
    #                 type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #                 path: "NonEmptyString",
    #                 state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #               },
    #             ],
    #             network: {
    #               direction: "IN", # accepts IN, OUT
    #               protocol: "NonEmptyString",
    #               source_ip_v4: "NonEmptyString",
    #               source_ip_v6: "NonEmptyString",
    #               source_port: 1,
    #               source_domain: "NonEmptyString",
    #               source_mac: "NonEmptyString",
    #               destination_ip_v4: "NonEmptyString",
    #               destination_ip_v6: "NonEmptyString",
    #               destination_port: 1,
    #               destination_domain: "NonEmptyString",
    #             },
    #             process: {
    #               name: "NonEmptyString",
    #               path: "NonEmptyString",
    #               pid: 1,
    #               parent_pid: 1,
    #               launched_at: "NonEmptyString",
    #               terminated_at: "NonEmptyString",
    #             },
    #             threat_intel_indicators: [
    #               {
    #                 type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #                 value: "NonEmptyString",
    #                 category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #                 last_observed_at: "NonEmptyString",
    #                 source: "NonEmptyString",
    #                 source_url: "NonEmptyString",
    #               },
    #             ],
    #             resources: [ # required
    #               {
    #                 type: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #                 partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #                 region: "NonEmptyString",
    #                 tags: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 details: {
    #                   aws_code_build_project: {
    #                     encryption_key: "NonEmptyString",
    #                     environment: {
    #                       certificate: "NonEmptyString",
    #                       image_pull_credentials_type: "NonEmptyString",
    #                       registry_credential: {
    #                         credential: "NonEmptyString",
    #                         credential_provider: "NonEmptyString",
    #                       },
    #                       type: "NonEmptyString",
    #                     },
    #                     name: "NonEmptyString",
    #                     source: {
    #                       type: "NonEmptyString",
    #                       location: "NonEmptyString",
    #                       git_clone_depth: 1,
    #                       insecure_ssl: false,
    #                     },
    #                     service_role: "NonEmptyString",
    #                     vpc_config: {
    #                       vpc_id: "NonEmptyString",
    #                       subnets: ["NonEmptyString"],
    #                       security_group_ids: ["NonEmptyString"],
    #                     },
    #                   },
    #                   aws_cloud_front_distribution: {
    #                     domain_name: "NonEmptyString",
    #                     etag: "NonEmptyString",
    #                     last_modified_time: "NonEmptyString",
    #                     logging: {
    #                       bucket: "NonEmptyString",
    #                       enabled: false,
    #                       include_cookies: false,
    #                       prefix: "NonEmptyString",
    #                     },
    #                     origins: {
    #                       items: [
    #                         {
    #                           domain_name: "NonEmptyString",
    #                           id: "NonEmptyString",
    #                           origin_path: "NonEmptyString",
    #                         },
    #                       ],
    #                     },
    #                     status: "NonEmptyString",
    #                     web_acl_id: "NonEmptyString",
    #                   },
    #                   aws_ec2_instance: {
    #                     type: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     ip_v4_addresses: ["NonEmptyString"],
    #                     ip_v6_addresses: ["NonEmptyString"],
    #                     key_name: "NonEmptyString",
    #                     iam_instance_profile_arn: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   aws_ec2_network_interface: {
    #                     attachment: {
    #                       attach_time: "NonEmptyString",
    #                       attachment_id: "NonEmptyString",
    #                       delete_on_termination: false,
    #                       device_index: 1,
    #                       instance_id: "NonEmptyString",
    #                       instance_owner_id: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                     },
    #                     network_interface_id: "NonEmptyString",
    #                     security_groups: [
    #                       {
    #                         group_name: "NonEmptyString",
    #                         group_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     source_dest_check: false,
    #                   },
    #                   aws_ec2_security_group: {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                     owner_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     ip_permissions: [
    #                       {
    #                         ip_protocol: "NonEmptyString",
    #                         from_port: 1,
    #                         to_port: 1,
    #                         user_id_group_pairs: [
    #                           {
    #                             group_id: "NonEmptyString",
    #                             group_name: "NonEmptyString",
    #                             peering_status: "NonEmptyString",
    #                             user_id: "NonEmptyString",
    #                             vpc_id: "NonEmptyString",
    #                             vpc_peering_connection_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         ip_ranges: [
    #                           {
    #                             cidr_ip: "NonEmptyString",
    #                           },
    #                         ],
    #                         ipv_6_ranges: [
    #                           {
    #                             cidr_ipv_6: "NonEmptyString",
    #                           },
    #                         ],
    #                         prefix_list_ids: [
    #                           {
    #                             prefix_list_id: "NonEmptyString",
    #                           },
    #                         ],
    #                       },
    #                     ],
    #                     ip_permissions_egress: [
    #                       {
    #                         ip_protocol: "NonEmptyString",
    #                         from_port: 1,
    #                         to_port: 1,
    #                         user_id_group_pairs: [
    #                           {
    #                             group_id: "NonEmptyString",
    #                             group_name: "NonEmptyString",
    #                             peering_status: "NonEmptyString",
    #                             user_id: "NonEmptyString",
    #                             vpc_id: "NonEmptyString",
    #                             vpc_peering_connection_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         ip_ranges: [
    #                           {
    #                             cidr_ip: "NonEmptyString",
    #                           },
    #                         ],
    #                         ipv_6_ranges: [
    #                           {
    #                             cidr_ipv_6: "NonEmptyString",
    #                           },
    #                         ],
    #                         prefix_list_ids: [
    #                           {
    #                             prefix_list_id: "NonEmptyString",
    #                           },
    #                         ],
    #                       },
    #                     ],
    #                   },
    #                   aws_elbv_2_load_balancer: {
    #                     availability_zones: [
    #                       {
    #                         zone_name: "NonEmptyString",
    #                         subnet_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     canonical_hosted_zone_id: "NonEmptyString",
    #                     created_time: "NonEmptyString",
    #                     dns_name: "NonEmptyString",
    #                     ip_address_type: "NonEmptyString",
    #                     scheme: "NonEmptyString",
    #                     security_groups: ["NonEmptyString"],
    #                     state: {
    #                       code: "NonEmptyString",
    #                       reason: "NonEmptyString",
    #                     },
    #                     type: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                   },
    #                   aws_elasticsearch_domain: {
    #                     access_policies: "NonEmptyString",
    #                     domain_endpoint_options: {
    #                       enforce_https: false,
    #                       tls_security_policy: "NonEmptyString",
    #                     },
    #                     domain_id: "NonEmptyString",
    #                     domain_name: "NonEmptyString",
    #                     endpoint: "NonEmptyString",
    #                     endpoints: {
    #                       "NonEmptyString" => "NonEmptyString",
    #                     },
    #                     elasticsearch_version: "NonEmptyString",
    #                     encryption_at_rest_options: {
    #                       enabled: false,
    #                       kms_key_id: "NonEmptyString",
    #                     },
    #                     node_to_node_encryption_options: {
    #                       enabled: false,
    #                     },
    #                     vpc_options: {
    #                       availability_zones: ["NonEmptyString"],
    #                       security_group_ids: ["NonEmptyString"],
    #                       subnet_ids: ["NonEmptyString"],
    #                       vpc_id: "NonEmptyString",
    #                     },
    #                   },
    #                   aws_s3_bucket: {
    #                     owner_id: "NonEmptyString",
    #                     owner_name: "NonEmptyString",
    #                     created_at: "NonEmptyString",
    #                     server_side_encryption_configuration: {
    #                       rules: [
    #                         {
    #                           apply_server_side_encryption_by_default: {
    #                             sse_algorithm: "NonEmptyString",
    #                             kms_master_key_id: "NonEmptyString",
    #                           },
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   aws_s3_object: {
    #                     last_modified: "NonEmptyString",
    #                     etag: "NonEmptyString",
    #                     version_id: "NonEmptyString",
    #                     content_type: "NonEmptyString",
    #                     server_side_encryption: "NonEmptyString",
    #                     ssekms_key_id: "NonEmptyString",
    #                   },
    #                   aws_iam_access_key: {
    #                     user_name: "NonEmptyString",
    #                     status: "Active", # accepts Active, Inactive
    #                     created_at: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     principal_type: "NonEmptyString",
    #                     principal_name: "NonEmptyString",
    #                   },
    #                   aws_iam_role: {
    #                     assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                     create_date: "NonEmptyString",
    #                     role_id: "NonEmptyString",
    #                     role_name: "NonEmptyString",
    #                     max_session_duration: 1,
    #                     path: "NonEmptyString",
    #                   },
    #                   aws_kms_key: {
    #                     aws_account_id: "NonEmptyString",
    #                     creation_date: 1.0,
    #                     key_id: "NonEmptyString",
    #                     key_manager: "NonEmptyString",
    #                     key_state: "NonEmptyString",
    #                     origin: "NonEmptyString",
    #                   },
    #                   aws_lambda_function: {
    #                     code: {
    #                       s3_bucket: "NonEmptyString",
    #                       s3_key: "NonEmptyString",
    #                       s3_object_version: "NonEmptyString",
    #                       zip_file: "NonEmptyString",
    #                     },
    #                     code_sha_256: "NonEmptyString",
    #                     dead_letter_config: {
    #                       target_arn: "NonEmptyString",
    #                     },
    #                     environment: {
    #                       variables: {
    #                         "NonEmptyString" => "NonEmptyString",
    #                       },
    #                       error: {
    #                         error_code: "NonEmptyString",
    #                         message: "NonEmptyString",
    #                       },
    #                     },
    #                     function_name: "NonEmptyString",
    #                     handler: "NonEmptyString",
    #                     kms_key_arn: "NonEmptyString",
    #                     last_modified: "NonEmptyString",
    #                     layers: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         code_size: 1,
    #                       },
    #                     ],
    #                     master_arn: "NonEmptyString",
    #                     memory_size: 1,
    #                     revision_id: "NonEmptyString",
    #                     role: "NonEmptyString",
    #                     runtime: "NonEmptyString",
    #                     timeout: 1,
    #                     tracing_config: {
    #                       mode: "NonEmptyString",
    #                     },
    #                     vpc_config: {
    #                       security_group_ids: ["NonEmptyString"],
    #                       subnet_ids: ["NonEmptyString"],
    #                       vpc_id: "NonEmptyString",
    #                     },
    #                     version: "NonEmptyString",
    #                   },
    #                   aws_lambda_layer_version: {
    #                     version: 1,
    #                     compatible_runtimes: ["NonEmptyString"],
    #                     created_date: "NonEmptyString",
    #                   },
    #                   aws_rds_db_instance: {
    #                     associated_roles: [
    #                       {
    #                         role_arn: "NonEmptyString",
    #                         feature_name: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     ca_certificate_identifier: "NonEmptyString",
    #                     db_cluster_identifier: "NonEmptyString",
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_instance_class: "NonEmptyString",
    #                     db_instance_port: 1,
    #                     dbi_resource_id: "NonEmptyString",
    #                     db_name: "NonEmptyString",
    #                     deletion_protection: false,
    #                     endpoint: {
    #                       address: "NonEmptyString",
    #                       port: 1,
    #                       hosted_zone_id: "NonEmptyString",
    #                     },
    #                     engine: "NonEmptyString",
    #                     engine_version: "NonEmptyString",
    #                     iam_database_authentication_enabled: false,
    #                     instance_create_time: "NonEmptyString",
    #                     kms_key_id: "NonEmptyString",
    #                     publicly_accessible: false,
    #                     storage_encrypted: false,
    #                     tde_credential_arn: "NonEmptyString",
    #                     vpc_security_groups: [
    #                       {
    #                         vpc_security_group_id: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                   aws_sns_topic: {
    #                     kms_master_key_id: "NonEmptyString",
    #                     subscription: [
    #                       {
    #                         endpoint: "NonEmptyString",
    #                         protocol: "NonEmptyString",
    #                       },
    #                     ],
    #                     topic_name: "NonEmptyString",
    #                     owner: "NonEmptyString",
    #                   },
    #                   aws_sqs_queue: {
    #                     kms_data_key_reuse_period_seconds: 1,
    #                     kms_master_key_id: "NonEmptyString",
    #                     queue_name: "NonEmptyString",
    #                     dead_letter_target_arn: "NonEmptyString",
    #                   },
    #                   aws_waf_web_acl: {
    #                     name: "NonEmptyString",
    #                     default_action: "NonEmptyString",
    #                     rules: [
    #                       {
    #                         action: {
    #                           type: "NonEmptyString",
    #                         },
    #                         excluded_rules: [
    #                           {
    #                             rule_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         override_action: {
    #                           type: "NonEmptyString",
    #                         },
    #                         priority: 1,
    #                         rule_id: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                       },
    #                     ],
    #                     web_acl_id: "NonEmptyString",
    #                   },
    #                   container: {
    #                     name: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     image_name: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   other: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                 },
    #               },
    #             ],
    #             compliance: {
    #               status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #               related_requirements: ["NonEmptyString"],
    #               status_reasons: [
    #                 {
    #                   reason_code: "NonEmptyString", # required
    #                   description: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #             verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #             workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #             workflow: {
    #               status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #             },
    #             record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #             related_findings: [
    #               {
    #                 product_arn: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #               },
    #             ],
    #             note: {
    #               text: "NonEmptyString", # required
    #               updated_by: "NonEmptyString", # required
    #               updated_at: "NonEmptyString", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [AWS Security Finding Format][1]. Maximum of 100
    #   findings per request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsRequest AWS API Documentation
    #
    class BatchImportFindingsRequest < Struct.new(
      :findings)
      include Aws::Structure
    end

    # @!attribute [rw] failed_count
    #   The number of findings that failed to import.
    #   @return [Integer]
    #
    # @!attribute [rw] success_count
    #   The number of findings that were successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_findings
    #   The list of findings that failed to import.
    #   @return [Array<Types::ImportFindingsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsResponse AWS API Documentation
    #
    class BatchImportFindingsResponse < Struct.new(
      :failed_count,
      :success_count,
      :failed_findings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         finding_identifiers: [ # required
    #           {
    #             id: "NonEmptyString", # required
    #             product_arn: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #         },
    #         severity: {
    #           normalized: 1,
    #           product: 1.0,
    #           label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         confidence: 1,
    #         criticality: 1,
    #         types: ["NonEmptyString"],
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         workflow: {
    #           status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #         },
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] finding_identifiers
    #   The list of findings to update. `BatchUpdateFindings` can be used to
    #   update up to 100 findings at a time.
    #
    #   For each finding, the list provides the finding identifier and the
    #   ARN of the finding provider.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] note
    #   The updated note.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] severity
    #   Used to update the finding severity.
    #   @return [Types::SeverityUpdate]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #
    #   The available values for `VerificationState` are as follows.
    #
    #   * `UNKNOWN` – The default disposition of a security finding
    #
    #   * `TRUE_POSITIVE` – The security finding is confirmed
    #
    #   * `FALSE_POSITIVE` – The security finding was determined to be a
    #     false alarm
    #
    #   * `BENIGN_POSITIVE` – A special case of `TRUE_POSITIVE` where the
    #     finding doesn't pose any threat, is expected, or both
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The updated value for the finding confidence. Confidence is defined
    #   as the likelihood that a finding accurately identifies the behavior
    #   or issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The updated value for the level of importance assigned to the
    #   resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding.
    #
    #   Valid namespace values are as follows.
    #
    #   * Software and Configuration Checks
    #
    #   * TTPs
    #
    #   * Effects
    #
    #   * Unusual Behaviors
    #
    #   * Sensitive Data Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow
    #   Used to update the workflow status of a finding.
    #
    #   The workflow status indicates the progress of the investigation into
    #   the finding.
    #   @return [Types::WorkflowUpdate]
    #
    # @!attribute [rw] related_findings
    #   A list of findings that are related to the updated findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsRequest AWS API Documentation
    #
    class BatchUpdateFindingsRequest < Struct.new(
      :finding_identifiers,
      :note,
      :severity,
      :verification_state,
      :confidence,
      :criticality,
      :types,
      :user_defined_fields,
      :workflow,
      :related_findings)
      include Aws::Structure
    end

    # @!attribute [rw] processed_findings
    #   The list of findings that were updated successfully.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] unprocessed_findings
    #   The list of findings that were not updated.
    #   @return [Array<Types::BatchUpdateFindingsUnprocessedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsResponse AWS API Documentation
    #
    class BatchUpdateFindingsResponse < Struct.new(
      :processed_findings,
      :unprocessed_findings)
      include Aws::Structure
    end

    # A finding from a `BatchUpdateFindings` request that Security Hub was
    # unable to update.
    #
    # @!attribute [rw] finding_identifier
    #   The identifier of the finding that was not updated.
    #   @return [Types::AwsSecurityFindingIdentifier]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsUnprocessedFinding AWS API Documentation
    #
    class BatchUpdateFindingsUnprocessedFinding < Struct.new(
      :finding_identifier,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Contains finding details that are specific to control-based findings.
    # Only returned for findings generated from controls.
    #
    # @note When making an API call, you may pass Compliance
    #   data as a hash:
    #
    #       {
    #         status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #         related_requirements: ["NonEmptyString"],
    #         status_reasons: [
    #           {
    #             reason_code: "NonEmptyString", # required
    #             description: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] status
    #   The result of a standards check.
    #
    #   The valid values for `Status` are as follows.
    #
    #   * * `PASSED` - Standards check passed for all evaluated resources.
    #
    #     * `WARNING` - Some information is missing or this check is not
    #       supported for your configuration.
    #
    #     * `FAILED` - Standards check failed for at least one evaluated
    #       resource.
    #
    #     * `NOT_AVAILABLE` - Check could not be performed due to a service
    #       outage, API error, or because the result of the AWS Config
    #       evaluation was `NOT_APPLICABLE`. If the AWS Config evaluation
    #       result was `NOT_APPLICABLE`, then after 3 days, Security Hub
    #       automatically archives the finding.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   For a control, the industry or regulatory framework requirements
    #   that are related to the control. The check for that control is
    #   aligned with these requirements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_reasons
    #   For findings generated from controls, a list of reasons behind the
    #   value of `Status`. For the list of status reason codes and their
    #   meanings, see [Standards-related information in the ASFF][1] in the
    #   *AWS Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [Array<Types::StatusReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :status,
      :related_requirements,
      :status_reasons)
      include Aws::Structure
    end

    # Container details related to a finding.
    #
    # @note When making an API call, you may pass ContainerDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         image_name: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the container related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   The date and time when the container started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ContainerDetails AWS API Documentation
    #
    class ContainerDetails < Struct.new(
      :name,
      :image_id,
      :image_name,
      :launched_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetRequest AWS API Documentation
    #
    class CreateActionTargetRequest < Struct.new(
      :name,
      :description,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetResponse AWS API Documentation
    #
    class CreateActionTargetResponse < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInsightRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom insight to create.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute used to group the findings for the insight. The
    #   grouping attribute identifies the type of item that the insight
    #   applies to. For example, if an insight is grouped by resource
    #   identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightRequest AWS API Documentation
    #
    class CreateInsightRequest < Struct.new(
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightResponse AWS API Documentation
    #
    class CreateInsightResponse < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_details: [
    #           {
    #             account_id: "AccountId",
    #             email: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_details
    #   The list of accounts to associate with the Security Hub master
    #   account. For each account, the list includes the account ID and the
    #   email address.
    #   @return [Array<Types::AccountDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :account_details)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not processed. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # A date filter for querying findings.
    #
    # @note When making an API call, you may pass DateFilter
    #   data as a hash:
    #
    #       {
    #         start: "NonEmptyString",
    #         end: "NonEmptyString",
    #         date_range: {
    #           value: 1,
    #           unit: "DAYS", # accepts DAYS
    #         },
    #       }
    #
    # @!attribute [rw] start
    #   A start date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   An end date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] date_range
    #   A date range for the date filter.
    #   @return [Types::DateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start,
      :end,
      :date_range)
      include Aws::Structure
    end

    # A date range for the date filter.
    #
    # @note When making an API call, you may pass DateRange
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         unit: "DAYS", # accepts DAYS
    #       }
    #
    # @!attribute [rw] value
    #   A date range value for the date filter.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   A date range unit for the date filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateRange AWS API Documentation
    #
    class DateRange < Struct.new(
      :value,
      :unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeclineInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the accounts from which to decline the
    #   invitations to Security Hub.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not processed. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetRequest AWS API Documentation
    #
    class DeleteActionTargetRequest < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetResponse AWS API Documentation
    #
    class DeleteActionTargetResponse < Struct.new(
      :action_target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightRequest AWS API Documentation
    #
    class DeleteInsightRequest < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightResponse AWS API Documentation
    #
    class DeleteInsightResponse < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of the account IDs that sent the invitations to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts for which the invitations were not deleted.
    #   For each account, the list includes the account ID and the email
    #   address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the member accounts to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not deleted. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeActionTargetsRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeActionTargets` operation, set the value of this parameter
    #   to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsRequest AWS API Documentation
    #
    class DescribeActionTargetsRequest < Struct.new(
      :action_target_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] action_targets
    #   A list of `ActionTarget` objects. Each object includes the
    #   `ActionTargetArn`, `Description`, and `Name` of a custom action
    #   target available in Security Hub.
    #   @return [Array<Types::ActionTarget>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsResponse AWS API Documentation
    #
    class DescribeActionTargetsResponse < Struct.new(
      :action_targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHubRequest
    #   data as a hash:
    #
    #       {
    #         hub_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubRequest AWS API Documentation
    #
    class DescribeHubRequest < Struct.new(
      :hub_arn)
      include Aws::Structure
    end

    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource that was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_at
    #   The date and time when Security Hub was enabled in the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubResponse AWS API Documentation
    #
    class DescribeHubResponse < Struct.new(
      :hub_arn,
      :subscribed_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeProducts` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsRequest AWS API Documentation
    #
    class DescribeProductsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] products
    #   A list of products, including details for each product.
    #   @return [Array<Types::Product>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsResponse AWS API Documentation
    #
    class DescribeProductsResponse < Struct.new(
      :products,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStandardsControlsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arn: "NonEmptyString", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandardsControls` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of security standard controls to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsRequest AWS API Documentation
    #
    class DescribeStandardsControlsRequest < Struct.new(
      :standards_subscription_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] controls
    #   A list of security standards controls.
    #   @return [Array<Types::StandardsControl>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsResponse AWS API Documentation
    #
    class DescribeStandardsControlsResponse < Struct.new(
      :controls,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStandardsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of standards to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsRequest AWS API Documentation
    #
    class DescribeStandardsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] standards
    #   A list of available standards.
    #   @return [Array<Types::Standard>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsResponse AWS API Documentation
    #
    class DescribeStandardsResponse < Struct.new(
      :standards,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_subscription_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductRequest AWS API Documentation
    #
    class DisableImportFindingsForProductRequest < Struct.new(
      :product_subscription_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductResponse AWS API Documentation
    #
    class DisableImportFindingsForProductResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubRequest AWS API Documentation
    #
    class DisableSecurityHubRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubResponse AWS API Documentation
    #
    class DisableSecurityHubResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   master account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EnableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product to enable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductRequest AWS API Documentation
    #
    class EnableImportFindingsForProductRequest < Struct.new(
      :product_arn)
      include Aws::Structure
    end

    # @!attribute [rw] product_subscription_arn
    #   The ARN of your subscription to the product to enable integrations
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductResponse AWS API Documentation
    #
    class EnableImportFindingsForProductResponse < Struct.new(
      :product_subscription_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableSecurityHubRequest
    #   data as a hash:
    #
    #       {
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         enable_default_standards: false,
    #       }
    #
    # @!attribute [rw] tags
    #   The tags to add to the hub resource when you enable Security Hub.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_default_standards
    #   Whether to enable the security standards that Security Hub has
    #   designated as automatically enabled. If you do not provide a value
    #   for `EnableDefaultStandards`, it is set to `true`. To not enable the
    #   automatically enabled standards, set `EnableDefaultStandards` to
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubRequest AWS API Documentation
    #
    class EnableSecurityHubRequest < Struct.new(
      :tags,
      :enable_default_standards)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubResponse AWS API Documentation
    #
    class EnableSecurityHubResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetEnabledStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   The list of the standards subscription ARNs for the standards to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetEnabledStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsRequest AWS API Documentation
    #
    class GetEnabledStandardsRequest < Struct.new(
      :standards_subscription_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The list of `StandardsSubscriptions` objects that include
    #   information about the enabled standards.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsResponse AWS API Documentation
    #
    class GetEnabledStandardsResponse < Struct.new(
      :standards_subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         sort_criteria: [
    #           {
    #             field: "NonEmptyString",
    #             sort_order: "asc", # accepts asc, desc
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The finding attributes used to define a condition to filter the
    #   returned findings.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetFindings` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of findings to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   The findings that matched the filters specified in the request.
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightResultsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight for which to return results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsRequest AWS API Documentation
    #
    class GetInsightResultsRequest < Struct.new(
      :insight_arn)
      include Aws::Structure
    end

    # @!attribute [rw] insight_results
    #   The insight results returned by the operation.
    #   @return [Types::InsightResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsResponse AWS API Documentation
    #
    class GetInsightResultsResponse < Struct.new(
      :insight_results)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] insight_arns
    #   The ARNs of the insights to describe. If you do not provide any
    #   insight ARNs, then `GetInsights` returns all of your custom
    #   insights. It does not return any managed insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetInsights` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsRequest AWS API Documentation
    #
    class GetInsightsRequest < Struct.new(
      :insight_arns,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] insights
    #   The insights returned by the operation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsResponse AWS API Documentation
    #
    class GetInsightsResponse < Struct.new(
      :insights,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] invitations_count
    #   The number of all membership invitations sent to this Security Hub
    #   member account, not including the currently accepted invitation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] master
    #   A list of details about the Security Hub master account for the
    #   current member account.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the Security Hub member accounts to
    #   return the details for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The list of details about the Security Hub member accounts.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that could not be processed. For each
    #   account, the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      include Aws::Structure
    end

    # The list of the findings that cannot be imported. For each finding,
    # the list provides the error.
    #
    # @!attribute [rw] id
    #   The identifier of the finding that could not be updated.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ImportFindingsError AWS API Documentation
    #
    class ImportFindingsError < Struct.new(
      :id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Contains information about a Security Hub insight.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The grouping attribute for the insight's findings. Indicates how to
    #   group the matching findings, and identifies the type of item that
    #   the insight applies to. For example, if an insight is grouped by
    #   resource identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # The insight result values returned by the `GetInsightResults`
    # operation.
    #
    # @!attribute [rw] group_by_attribute_value
    #   The value of the attribute that the findings are grouped by for the
    #   insight whose results are returned by the `GetInsightResults`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of findings returned for each `GroupByAttributeValue`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResultValue AWS API Documentation
    #
    class InsightResultValue < Struct.new(
      :group_by_attribute_value,
      :count)
      include Aws::Structure
    end

    # The insight results returned by the `GetInsightResults` operation.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight whose results are returned by the
    #   `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute that the findings are grouped by for the insight whose
    #   results are returned by the `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] result_values
    #   The list of insight result values returned by the
    #   `GetInsightResults` operation.
    #   @return [Array<Types::InsightResultValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResults AWS API Documentation
    #
    class InsightResults < Struct.new(
      :insight_arn,
      :group_by_attribute,
      :result_values)
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # AWS Security Hub isn't enabled for the account used to make this
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidAccessException AWS API Documentation
    #
    class InvalidAccessException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # The request was rejected because you supplied an invalid or
    # out-of-range value for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Details about an invitation.
    #
    # @!attribute [rw] account_id
    #   The account ID of the Security Hub master account that the
    #   invitation was sent from.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent to the member account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp of when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The current status of the association between the member and master
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :member_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs of the AWS accounts to invite to Security
    #   Hub as members.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that could not be processed. For each
    #   account, the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersResponse AWS API Documentation
    #
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts)
      include Aws::Structure
    end

    # The IP filter for querying findings.
    #
    # @note When making an API call, you may pass IpFilter
    #   data as a hash:
    #
    #       {
    #         cidr: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr
    #   A finding's CIDR value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IpFilter AWS API Documentation
    #
    class IpFilter < Struct.new(
      :cidr)
      include Aws::Structure
    end

    # A keyword filter for querying findings.
    #
    # @note When making an API call, you may pass KeywordFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] value
    #   A value for the keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/KeywordFilter AWS API Documentation
    #
    class KeywordFilter < Struct.new(
      :value)
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current AWS account limits. The error code describes the
    # limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnabledProductsForImportRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportRequest AWS API Documentation
    #
    class ListEnabledProductsForImportRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] product_subscriptions
    #   The list of ARNs for the resources that represent your subscriptions
    #   to products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportResponse AWS API Documentation
    #
    class ListEnabledProductsForImportResponse < Struct.new(
      :product_subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListInvitations` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The details of the invitations returned by the operation.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMembersRequest
    #   data as a hash:
    #
    #       {
    #         only_associated: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the master account. The default value
    #   is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the master is set to
    #   `ENABLED` or `DISABLED`.
    #
    #   If `OnlyAssociated` is set to `FALSE`, the response includes all
    #   existing member accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListMembers` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :only_associated,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   Member details returned by the operation.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Information about the state of the load balancer.
    #
    # @note When making an API call, you may pass LoadBalancerState
    #   data as a hash:
    #
    #       {
    #         code: "NonEmptyString",
    #         reason: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] code
    #   The state code. The initial state of the load balancer is
    #   provisioning.
    #
    #   After the load balancer is fully set up and ready to route traffic,
    #   its state is active.
    #
    #   If the load balancer could not be set up, its state is failed.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :code,
      :reason)
      include Aws::Structure
    end

    # A list of malware related to a finding.
    #
    # @note When making an API call, you may pass Malware
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #         path: "NonEmptyString",
    #         state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #       }
    #
    # @!attribute [rw] name
    #   The name of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file system path of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the malware that was observed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Malware AWS API Documentation
    #
    class Malware < Struct.new(
      :name,
      :type,
      :path,
      :state)
      include Aws::Structure
    end

    # The map filter for querying findings.
    #
    # @note When making an API call, you may pass MapFilter
    #   data as a hash:
    #
    #       {
    #         key: "NonEmptyString",
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS
    #       }
    #
    # @!attribute [rw] key
    #   The key of the map filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the key in the map filter.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to a key value when querying for findings
    #   with a map filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/MapFilter AWS API Documentation
    #
    class MapFilter < Struct.new(
      :key,
      :value,
      :comparison)
      include Aws::Structure
    end

    # The details about a member account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The AWS account ID of the Security Hub master account associated
    #   with this member account.
    #   @return [String]
    #
    # @!attribute [rw] member_status
    #   The status of the relationship between the member account and its
    #   master account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   A timestamp for the date and time when the invitation was sent to
    #   the member account.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for the date and time when the member account was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :email,
      :master_id,
      :member_status,
      :invited_at,
      :updated_at)
      include Aws::Structure
    end

    # The details of network-related information about a finding.
    #
    # @note When making an API call, you may pass Network
    #   data as a hash:
    #
    #       {
    #         direction: "IN", # accepts IN, OUT
    #         protocol: "NonEmptyString",
    #         source_ip_v4: "NonEmptyString",
    #         source_ip_v6: "NonEmptyString",
    #         source_port: 1,
    #         source_domain: "NonEmptyString",
    #         source_mac: "NonEmptyString",
    #         destination_ip_v4: "NonEmptyString",
    #         destination_ip_v6: "NonEmptyString",
    #         destination_port: 1,
    #         destination_domain: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] direction
    #   The direction of network traffic associated with a finding.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] source_domain
    #   The source domain of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Network AWS API Documentation
    #
    class Network < Struct.new(
      :direction,
      :protocol,
      :source_ip_v4,
      :source_ip_v6,
      :source_port,
      :source_domain,
      :source_mac,
      :destination_ip_v4,
      :destination_ip_v6,
      :destination_port,
      :destination_domain)
      include Aws::Structure
    end

    # A user-defined note added to a finding.
    #
    # @note When making an API call, you may pass Note
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text of a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that created a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the note was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Note AWS API Documentation
    #
    class Note < Struct.new(
      :text,
      :updated_by,
      :updated_at)
      include Aws::Structure
    end

    # The updated note.
    #
    # @note When making an API call, you may pass NoteUpdate
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The updated note text.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that updated the note.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NoteUpdate AWS API Documentation
    #
    class NoteUpdate < Struct.new(
      :text,
      :updated_by)
      include Aws::Structure
    end

    # A number filter for querying findings.
    #
    # @note When making an API call, you may pass NumberFilter
    #   data as a hash:
    #
    #       {
    #         gte: 1.0,
    #         lte: 1.0,
    #         eq: 1.0,
    #       }
    #
    # @!attribute [rw] gte
    #   The greater-than-equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] lte
    #   The less-than-equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] eq
    #   The equal-to condition to be applied to a single field when querying
    #   for findings.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :gte,
      :lte,
      :eq)
      include Aws::Structure
    end

    # The details of process-related information about a finding.
    #
    # @note When making an API call, you may pass ProcessDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         path: "NonEmptyString",
    #         pid: 1,
    #         parent_pid: 1,
    #         launched_at: "NonEmptyString",
    #         terminated_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the process executable.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_pid
    #   The parent process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] launched_at
    #   The date/time that the process was launched.
    #   @return [String]
    #
    # @!attribute [rw] terminated_at
    #   The date and time when the process was terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ProcessDetails AWS API Documentation
    #
    class ProcessDetails < Struct.new(
      :name,
      :path,
      :pid,
      :parent_pid,
      :launched_at,
      :terminated_at)
      include Aws::Structure
    end

    # Contains details about a product.
    #
    # @!attribute [rw] product_arn
    #   The ARN assigned to the product.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company that provides the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories assigned to the product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_types
    #   The types of integration that the product supports. Available values
    #   are the following.
    #
    #   * `SEND_FINDINGS_TO_SECURITY_HUB` - Indicates that the integration
    #     sends findings to Security Hub.
    #
    #   * `RECEIVE_FINDINGS_FROM_SECURITY_HUB` - Indicates that the
    #     integration receives findings from Security Hub.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marketplace_url
    #   The URL for the page that contains more information about the
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] activation_url
    #   The URL used to activate the product.
    #   @return [String]
    #
    # @!attribute [rw] product_subscription_resource_policy
    #   The resource policy associated with the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Product AWS API Documentation
    #
    class Product < Struct.new(
      :product_arn,
      :product_name,
      :company_name,
      :description,
      :categories,
      :integration_types,
      :marketplace_url,
      :activation_url,
      :product_subscription_resource_policy)
      include Aws::Structure
    end

    # A recommendation on how to remediate the issue identified in a
    # finding.
    #
    # @note When making an API call, you may pass Recommendation
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString",
    #         url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] text
    #   Describes the recommended steps to take to remediate an issue
    #   identified in a finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL to a page or site that contains information about how to
    #   remediate a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      include Aws::Structure
    end

    # Details about a related finding.
    #
    # @note When making an API call, you may pass RelatedFinding
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product that generated a related finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The product-generated identifier for a related finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RelatedFinding AWS API Documentation
    #
    class RelatedFinding < Struct.new(
      :product_arn,
      :id)
      include Aws::Structure
    end

    # Details about the remediation steps for a finding.
    #
    # @note When making an API call, you may pass Remediation
    #   data as a hash:
    #
    #       {
    #         recommendation: {
    #           text: "NonEmptyString",
    #           url: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] recommendation
    #   A recommendation on the steps to take to remediate the issue
    #   identified by a finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      include Aws::Structure
    end

    # A resource related to a finding.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #         region: "NonEmptyString",
    #         tags: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         details: {
    #           aws_code_build_project: {
    #             encryption_key: "NonEmptyString",
    #             environment: {
    #               certificate: "NonEmptyString",
    #               image_pull_credentials_type: "NonEmptyString",
    #               registry_credential: {
    #                 credential: "NonEmptyString",
    #                 credential_provider: "NonEmptyString",
    #               },
    #               type: "NonEmptyString",
    #             },
    #             name: "NonEmptyString",
    #             source: {
    #               type: "NonEmptyString",
    #               location: "NonEmptyString",
    #               git_clone_depth: 1,
    #               insecure_ssl: false,
    #             },
    #             service_role: "NonEmptyString",
    #             vpc_config: {
    #               vpc_id: "NonEmptyString",
    #               subnets: ["NonEmptyString"],
    #               security_group_ids: ["NonEmptyString"],
    #             },
    #           },
    #           aws_cloud_front_distribution: {
    #             domain_name: "NonEmptyString",
    #             etag: "NonEmptyString",
    #             last_modified_time: "NonEmptyString",
    #             logging: {
    #               bucket: "NonEmptyString",
    #               enabled: false,
    #               include_cookies: false,
    #               prefix: "NonEmptyString",
    #             },
    #             origins: {
    #               items: [
    #                 {
    #                   domain_name: "NonEmptyString",
    #                   id: "NonEmptyString",
    #                   origin_path: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #             status: "NonEmptyString",
    #             web_acl_id: "NonEmptyString",
    #           },
    #           aws_ec2_instance: {
    #             type: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             ip_v4_addresses: ["NonEmptyString"],
    #             ip_v6_addresses: ["NonEmptyString"],
    #             key_name: "NonEmptyString",
    #             iam_instance_profile_arn: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             subnet_id: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           aws_ec2_network_interface: {
    #             attachment: {
    #               attach_time: "NonEmptyString",
    #               attachment_id: "NonEmptyString",
    #               delete_on_termination: false,
    #               device_index: 1,
    #               instance_id: "NonEmptyString",
    #               instance_owner_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #             network_interface_id: "NonEmptyString",
    #             security_groups: [
    #               {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #               },
    #             ],
    #             source_dest_check: false,
    #           },
    #           aws_ec2_security_group: {
    #             group_name: "NonEmptyString",
    #             group_id: "NonEmptyString",
    #             owner_id: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             ip_permissions: [
    #               {
    #                 ip_protocol: "NonEmptyString",
    #                 from_port: 1,
    #                 to_port: 1,
    #                 user_id_group_pairs: [
    #                   {
    #                     group_id: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     peering_status: "NonEmptyString",
    #                     user_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_ranges: [
    #                   {
    #                     cidr_ipv_6: "NonEmptyString",
    #                   },
    #                 ],
    #                 prefix_list_ids: [
    #                   {
    #                     prefix_list_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #             ],
    #             ip_permissions_egress: [
    #               {
    #                 ip_protocol: "NonEmptyString",
    #                 from_port: 1,
    #                 to_port: 1,
    #                 user_id_group_pairs: [
    #                   {
    #                     group_id: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     peering_status: "NonEmptyString",
    #                     user_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_ranges: [
    #                   {
    #                     cidr_ipv_6: "NonEmptyString",
    #                   },
    #                 ],
    #                 prefix_list_ids: [
    #                   {
    #                     prefix_list_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           aws_elbv_2_load_balancer: {
    #             availability_zones: [
    #               {
    #                 zone_name: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #               },
    #             ],
    #             canonical_hosted_zone_id: "NonEmptyString",
    #             created_time: "NonEmptyString",
    #             dns_name: "NonEmptyString",
    #             ip_address_type: "NonEmptyString",
    #             scheme: "NonEmptyString",
    #             security_groups: ["NonEmptyString"],
    #             state: {
    #               code: "NonEmptyString",
    #               reason: "NonEmptyString",
    #             },
    #             type: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #           },
    #           aws_elasticsearch_domain: {
    #             access_policies: "NonEmptyString",
    #             domain_endpoint_options: {
    #               enforce_https: false,
    #               tls_security_policy: "NonEmptyString",
    #             },
    #             domain_id: "NonEmptyString",
    #             domain_name: "NonEmptyString",
    #             endpoint: "NonEmptyString",
    #             endpoints: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             elasticsearch_version: "NonEmptyString",
    #             encryption_at_rest_options: {
    #               enabled: false,
    #               kms_key_id: "NonEmptyString",
    #             },
    #             node_to_node_encryption_options: {
    #               enabled: false,
    #             },
    #             vpc_options: {
    #               availability_zones: ["NonEmptyString"],
    #               security_group_ids: ["NonEmptyString"],
    #               subnet_ids: ["NonEmptyString"],
    #               vpc_id: "NonEmptyString",
    #             },
    #           },
    #           aws_s3_bucket: {
    #             owner_id: "NonEmptyString",
    #             owner_name: "NonEmptyString",
    #             created_at: "NonEmptyString",
    #             server_side_encryption_configuration: {
    #               rules: [
    #                 {
    #                   apply_server_side_encryption_by_default: {
    #                     sse_algorithm: "NonEmptyString",
    #                     kms_master_key_id: "NonEmptyString",
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           aws_s3_object: {
    #             last_modified: "NonEmptyString",
    #             etag: "NonEmptyString",
    #             version_id: "NonEmptyString",
    #             content_type: "NonEmptyString",
    #             server_side_encryption: "NonEmptyString",
    #             ssekms_key_id: "NonEmptyString",
    #           },
    #           aws_iam_access_key: {
    #             user_name: "NonEmptyString",
    #             status: "Active", # accepts Active, Inactive
    #             created_at: "NonEmptyString",
    #             principal_id: "NonEmptyString",
    #             principal_type: "NonEmptyString",
    #             principal_name: "NonEmptyString",
    #           },
    #           aws_iam_role: {
    #             assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #             create_date: "NonEmptyString",
    #             role_id: "NonEmptyString",
    #             role_name: "NonEmptyString",
    #             max_session_duration: 1,
    #             path: "NonEmptyString",
    #           },
    #           aws_kms_key: {
    #             aws_account_id: "NonEmptyString",
    #             creation_date: 1.0,
    #             key_id: "NonEmptyString",
    #             key_manager: "NonEmptyString",
    #             key_state: "NonEmptyString",
    #             origin: "NonEmptyString",
    #           },
    #           aws_lambda_function: {
    #             code: {
    #               s3_bucket: "NonEmptyString",
    #               s3_key: "NonEmptyString",
    #               s3_object_version: "NonEmptyString",
    #               zip_file: "NonEmptyString",
    #             },
    #             code_sha_256: "NonEmptyString",
    #             dead_letter_config: {
    #               target_arn: "NonEmptyString",
    #             },
    #             environment: {
    #               variables: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #               error: {
    #                 error_code: "NonEmptyString",
    #                 message: "NonEmptyString",
    #               },
    #             },
    #             function_name: "NonEmptyString",
    #             handler: "NonEmptyString",
    #             kms_key_arn: "NonEmptyString",
    #             last_modified: "NonEmptyString",
    #             layers: [
    #               {
    #                 arn: "NonEmptyString",
    #                 code_size: 1,
    #               },
    #             ],
    #             master_arn: "NonEmptyString",
    #             memory_size: 1,
    #             revision_id: "NonEmptyString",
    #             role: "NonEmptyString",
    #             runtime: "NonEmptyString",
    #             timeout: 1,
    #             tracing_config: {
    #               mode: "NonEmptyString",
    #             },
    #             vpc_config: {
    #               security_group_ids: ["NonEmptyString"],
    #               subnet_ids: ["NonEmptyString"],
    #               vpc_id: "NonEmptyString",
    #             },
    #             version: "NonEmptyString",
    #           },
    #           aws_lambda_layer_version: {
    #             version: 1,
    #             compatible_runtimes: ["NonEmptyString"],
    #             created_date: "NonEmptyString",
    #           },
    #           aws_rds_db_instance: {
    #             associated_roles: [
    #               {
    #                 role_arn: "NonEmptyString",
    #                 feature_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             ca_certificate_identifier: "NonEmptyString",
    #             db_cluster_identifier: "NonEmptyString",
    #             db_instance_identifier: "NonEmptyString",
    #             db_instance_class: "NonEmptyString",
    #             db_instance_port: 1,
    #             dbi_resource_id: "NonEmptyString",
    #             db_name: "NonEmptyString",
    #             deletion_protection: false,
    #             endpoint: {
    #               address: "NonEmptyString",
    #               port: 1,
    #               hosted_zone_id: "NonEmptyString",
    #             },
    #             engine: "NonEmptyString",
    #             engine_version: "NonEmptyString",
    #             iam_database_authentication_enabled: false,
    #             instance_create_time: "NonEmptyString",
    #             kms_key_id: "NonEmptyString",
    #             publicly_accessible: false,
    #             storage_encrypted: false,
    #             tde_credential_arn: "NonEmptyString",
    #             vpc_security_groups: [
    #               {
    #                 vpc_security_group_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           aws_sns_topic: {
    #             kms_master_key_id: "NonEmptyString",
    #             subscription: [
    #               {
    #                 endpoint: "NonEmptyString",
    #                 protocol: "NonEmptyString",
    #               },
    #             ],
    #             topic_name: "NonEmptyString",
    #             owner: "NonEmptyString",
    #           },
    #           aws_sqs_queue: {
    #             kms_data_key_reuse_period_seconds: 1,
    #             kms_master_key_id: "NonEmptyString",
    #             queue_name: "NonEmptyString",
    #             dead_letter_target_arn: "NonEmptyString",
    #           },
    #           aws_waf_web_acl: {
    #             name: "NonEmptyString",
    #             default_action: "NonEmptyString",
    #             rules: [
    #               {
    #                 action: {
    #                   type: "NonEmptyString",
    #                 },
    #                 excluded_rules: [
    #                   {
    #                     rule_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 override_action: {
    #                   type: "NonEmptyString",
    #                 },
    #                 priority: 1,
    #                 rule_id: "NonEmptyString",
    #                 type: "NonEmptyString",
    #               },
    #             ],
    #             web_acl_id: "NonEmptyString",
    #           },
    #           container: {
    #             name: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             image_name: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           other: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of the resource that details are provided for. If possible,
    #   set `Type` to one of the supported resource types. For example, if
    #   the resource is an EC2 instance, then set `Type` to
    #   `AwsEc2Instance`.
    #
    #   If the resource does not match any of the provided types, then set
    #   `Type` to `Other`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The canonical identifier for the given resource type.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] details
    #   Additional details about the resource related to a finding.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :tags,
      :details)
      include Aws::Structure
    end

    # The resource specified in the request conflicts with an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Additional details about a resource related to a finding.
    #
    # To provide the details, use the object that corresponds to the
    # resource type. For example, if the resource type is `AwsEc2Instance`,
    # then you use the `AwsEc2Instance` object to provide the details.
    #
    # If the type-specific object does not contain all of the fields you
    # want to populate, then you use the `Other` object to populate those
    # additional fields.
    #
    # You also use the `Other` object to populate the details when the
    # selected type does not have a corresponding object.
    #
    # @note When making an API call, you may pass ResourceDetails
    #   data as a hash:
    #
    #       {
    #         aws_code_build_project: {
    #           encryption_key: "NonEmptyString",
    #           environment: {
    #             certificate: "NonEmptyString",
    #             image_pull_credentials_type: "NonEmptyString",
    #             registry_credential: {
    #               credential: "NonEmptyString",
    #               credential_provider: "NonEmptyString",
    #             },
    #             type: "NonEmptyString",
    #           },
    #           name: "NonEmptyString",
    #           source: {
    #             type: "NonEmptyString",
    #             location: "NonEmptyString",
    #             git_clone_depth: 1,
    #             insecure_ssl: false,
    #           },
    #           service_role: "NonEmptyString",
    #           vpc_config: {
    #             vpc_id: "NonEmptyString",
    #             subnets: ["NonEmptyString"],
    #             security_group_ids: ["NonEmptyString"],
    #           },
    #         },
    #         aws_cloud_front_distribution: {
    #           domain_name: "NonEmptyString",
    #           etag: "NonEmptyString",
    #           last_modified_time: "NonEmptyString",
    #           logging: {
    #             bucket: "NonEmptyString",
    #             enabled: false,
    #             include_cookies: false,
    #             prefix: "NonEmptyString",
    #           },
    #           origins: {
    #             items: [
    #               {
    #                 domain_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 origin_path: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           status: "NonEmptyString",
    #           web_acl_id: "NonEmptyString",
    #         },
    #         aws_ec2_instance: {
    #           type: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           ip_v4_addresses: ["NonEmptyString"],
    #           ip_v6_addresses: ["NonEmptyString"],
    #           key_name: "NonEmptyString",
    #           iam_instance_profile_arn: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           subnet_id: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         aws_ec2_network_interface: {
    #           attachment: {
    #             attach_time: "NonEmptyString",
    #             attachment_id: "NonEmptyString",
    #             delete_on_termination: false,
    #             device_index: 1,
    #             instance_id: "NonEmptyString",
    #             instance_owner_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #           network_interface_id: "NonEmptyString",
    #           security_groups: [
    #             {
    #               group_name: "NonEmptyString",
    #               group_id: "NonEmptyString",
    #             },
    #           ],
    #           source_dest_check: false,
    #         },
    #         aws_ec2_security_group: {
    #           group_name: "NonEmptyString",
    #           group_id: "NonEmptyString",
    #           owner_id: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           ip_permissions: [
    #             {
    #               ip_protocol: "NonEmptyString",
    #               from_port: 1,
    #               to_port: 1,
    #               user_id_group_pairs: [
    #                 {
    #                   group_id: "NonEmptyString",
    #                   group_name: "NonEmptyString",
    #                   peering_status: "NonEmptyString",
    #                   user_id: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   vpc_peering_connection_id: "NonEmptyString",
    #                 },
    #               ],
    #               ip_ranges: [
    #                 {
    #                   cidr_ip: "NonEmptyString",
    #                 },
    #               ],
    #               ipv_6_ranges: [
    #                 {
    #                   cidr_ipv_6: "NonEmptyString",
    #                 },
    #               ],
    #               prefix_list_ids: [
    #                 {
    #                   prefix_list_id: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #           ],
    #           ip_permissions_egress: [
    #             {
    #               ip_protocol: "NonEmptyString",
    #               from_port: 1,
    #               to_port: 1,
    #               user_id_group_pairs: [
    #                 {
    #                   group_id: "NonEmptyString",
    #                   group_name: "NonEmptyString",
    #                   peering_status: "NonEmptyString",
    #                   user_id: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   vpc_peering_connection_id: "NonEmptyString",
    #                 },
    #               ],
    #               ip_ranges: [
    #                 {
    #                   cidr_ip: "NonEmptyString",
    #                 },
    #               ],
    #               ipv_6_ranges: [
    #                 {
    #                   cidr_ipv_6: "NonEmptyString",
    #                 },
    #               ],
    #               prefix_list_ids: [
    #                 {
    #                   prefix_list_id: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         aws_elbv_2_load_balancer: {
    #           availability_zones: [
    #             {
    #               zone_name: "NonEmptyString",
    #               subnet_id: "NonEmptyString",
    #             },
    #           ],
    #           canonical_hosted_zone_id: "NonEmptyString",
    #           created_time: "NonEmptyString",
    #           dns_name: "NonEmptyString",
    #           ip_address_type: "NonEmptyString",
    #           scheme: "NonEmptyString",
    #           security_groups: ["NonEmptyString"],
    #           state: {
    #             code: "NonEmptyString",
    #             reason: "NonEmptyString",
    #           },
    #           type: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #         },
    #         aws_elasticsearch_domain: {
    #           access_policies: "NonEmptyString",
    #           domain_endpoint_options: {
    #             enforce_https: false,
    #             tls_security_policy: "NonEmptyString",
    #           },
    #           domain_id: "NonEmptyString",
    #           domain_name: "NonEmptyString",
    #           endpoint: "NonEmptyString",
    #           endpoints: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           elasticsearch_version: "NonEmptyString",
    #           encryption_at_rest_options: {
    #             enabled: false,
    #             kms_key_id: "NonEmptyString",
    #           },
    #           node_to_node_encryption_options: {
    #             enabled: false,
    #           },
    #           vpc_options: {
    #             availability_zones: ["NonEmptyString"],
    #             security_group_ids: ["NonEmptyString"],
    #             subnet_ids: ["NonEmptyString"],
    #             vpc_id: "NonEmptyString",
    #           },
    #         },
    #         aws_s3_bucket: {
    #           owner_id: "NonEmptyString",
    #           owner_name: "NonEmptyString",
    #           created_at: "NonEmptyString",
    #           server_side_encryption_configuration: {
    #             rules: [
    #               {
    #                 apply_server_side_encryption_by_default: {
    #                   sse_algorithm: "NonEmptyString",
    #                   kms_master_key_id: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         aws_s3_object: {
    #           last_modified: "NonEmptyString",
    #           etag: "NonEmptyString",
    #           version_id: "NonEmptyString",
    #           content_type: "NonEmptyString",
    #           server_side_encryption: "NonEmptyString",
    #           ssekms_key_id: "NonEmptyString",
    #         },
    #         aws_iam_access_key: {
    #           user_name: "NonEmptyString",
    #           status: "Active", # accepts Active, Inactive
    #           created_at: "NonEmptyString",
    #           principal_id: "NonEmptyString",
    #           principal_type: "NonEmptyString",
    #           principal_name: "NonEmptyString",
    #         },
    #         aws_iam_role: {
    #           assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #           create_date: "NonEmptyString",
    #           role_id: "NonEmptyString",
    #           role_name: "NonEmptyString",
    #           max_session_duration: 1,
    #           path: "NonEmptyString",
    #         },
    #         aws_kms_key: {
    #           aws_account_id: "NonEmptyString",
    #           creation_date: 1.0,
    #           key_id: "NonEmptyString",
    #           key_manager: "NonEmptyString",
    #           key_state: "NonEmptyString",
    #           origin: "NonEmptyString",
    #         },
    #         aws_lambda_function: {
    #           code: {
    #             s3_bucket: "NonEmptyString",
    #             s3_key: "NonEmptyString",
    #             s3_object_version: "NonEmptyString",
    #             zip_file: "NonEmptyString",
    #           },
    #           code_sha_256: "NonEmptyString",
    #           dead_letter_config: {
    #             target_arn: "NonEmptyString",
    #           },
    #           environment: {
    #             variables: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             error: {
    #               error_code: "NonEmptyString",
    #               message: "NonEmptyString",
    #             },
    #           },
    #           function_name: "NonEmptyString",
    #           handler: "NonEmptyString",
    #           kms_key_arn: "NonEmptyString",
    #           last_modified: "NonEmptyString",
    #           layers: [
    #             {
    #               arn: "NonEmptyString",
    #               code_size: 1,
    #             },
    #           ],
    #           master_arn: "NonEmptyString",
    #           memory_size: 1,
    #           revision_id: "NonEmptyString",
    #           role: "NonEmptyString",
    #           runtime: "NonEmptyString",
    #           timeout: 1,
    #           tracing_config: {
    #             mode: "NonEmptyString",
    #           },
    #           vpc_config: {
    #             security_group_ids: ["NonEmptyString"],
    #             subnet_ids: ["NonEmptyString"],
    #             vpc_id: "NonEmptyString",
    #           },
    #           version: "NonEmptyString",
    #         },
    #         aws_lambda_layer_version: {
    #           version: 1,
    #           compatible_runtimes: ["NonEmptyString"],
    #           created_date: "NonEmptyString",
    #         },
    #         aws_rds_db_instance: {
    #           associated_roles: [
    #             {
    #               role_arn: "NonEmptyString",
    #               feature_name: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           ca_certificate_identifier: "NonEmptyString",
    #           db_cluster_identifier: "NonEmptyString",
    #           db_instance_identifier: "NonEmptyString",
    #           db_instance_class: "NonEmptyString",
    #           db_instance_port: 1,
    #           dbi_resource_id: "NonEmptyString",
    #           db_name: "NonEmptyString",
    #           deletion_protection: false,
    #           endpoint: {
    #             address: "NonEmptyString",
    #             port: 1,
    #             hosted_zone_id: "NonEmptyString",
    #           },
    #           engine: "NonEmptyString",
    #           engine_version: "NonEmptyString",
    #           iam_database_authentication_enabled: false,
    #           instance_create_time: "NonEmptyString",
    #           kms_key_id: "NonEmptyString",
    #           publicly_accessible: false,
    #           storage_encrypted: false,
    #           tde_credential_arn: "NonEmptyString",
    #           vpc_security_groups: [
    #             {
    #               vpc_security_group_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         aws_sns_topic: {
    #           kms_master_key_id: "NonEmptyString",
    #           subscription: [
    #             {
    #               endpoint: "NonEmptyString",
    #               protocol: "NonEmptyString",
    #             },
    #           ],
    #           topic_name: "NonEmptyString",
    #           owner: "NonEmptyString",
    #         },
    #         aws_sqs_queue: {
    #           kms_data_key_reuse_period_seconds: 1,
    #           kms_master_key_id: "NonEmptyString",
    #           queue_name: "NonEmptyString",
    #           dead_letter_target_arn: "NonEmptyString",
    #         },
    #         aws_waf_web_acl: {
    #           name: "NonEmptyString",
    #           default_action: "NonEmptyString",
    #           rules: [
    #             {
    #               action: {
    #                 type: "NonEmptyString",
    #               },
    #               excluded_rules: [
    #                 {
    #                   rule_id: "NonEmptyString",
    #                 },
    #               ],
    #               override_action: {
    #                 type: "NonEmptyString",
    #               },
    #               priority: 1,
    #               rule_id: "NonEmptyString",
    #               type: "NonEmptyString",
    #             },
    #           ],
    #           web_acl_id: "NonEmptyString",
    #         },
    #         container: {
    #           name: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           image_name: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         other: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] aws_code_build_project
    #   Details for an AWS CodeBuild project.
    #   @return [Types::AwsCodeBuildProjectDetails]
    #
    # @!attribute [rw] aws_cloud_front_distribution
    #   Details about a CloudFront distribution.
    #   @return [Types::AwsCloudFrontDistributionDetails]
    #
    # @!attribute [rw] aws_ec2_instance
    #   Details about an Amazon EC2 instance related to a finding.
    #   @return [Types::AwsEc2InstanceDetails]
    #
    # @!attribute [rw] aws_ec2_network_interface
    #   Details for an Amazon EC2 network interface.
    #   @return [Types::AwsEc2NetworkInterfaceDetails]
    #
    # @!attribute [rw] aws_ec2_security_group
    #   Details for an EC2 security group.
    #   @return [Types::AwsEc2SecurityGroupDetails]
    #
    # @!attribute [rw] aws_elbv_2_load_balancer
    #   Details about a load balancer.
    #   @return [Types::AwsElbv2LoadBalancerDetails]
    #
    # @!attribute [rw] aws_elasticsearch_domain
    #   Details for an Elasticsearch domain.
    #   @return [Types::AwsElasticsearchDomainDetails]
    #
    # @!attribute [rw] aws_s3_bucket
    #   Details about an Amazon S3 bucket related to a finding.
    #   @return [Types::AwsS3BucketDetails]
    #
    # @!attribute [rw] aws_s3_object
    #   Details about an Amazon S3 object related to a finding.
    #   @return [Types::AwsS3ObjectDetails]
    #
    # @!attribute [rw] aws_iam_access_key
    #   Details about an IAM access key related to a finding.
    #   @return [Types::AwsIamAccessKeyDetails]
    #
    # @!attribute [rw] aws_iam_role
    #   Details about an IAM role.
    #   @return [Types::AwsIamRoleDetails]
    #
    # @!attribute [rw] aws_kms_key
    #   Details about a KMS key.
    #   @return [Types::AwsKmsKeyDetails]
    #
    # @!attribute [rw] aws_lambda_function
    #   Details about a Lambda function.
    #   @return [Types::AwsLambdaFunctionDetails]
    #
    # @!attribute [rw] aws_lambda_layer_version
    #   Details for a Lambda layer version.
    #   @return [Types::AwsLambdaLayerVersionDetails]
    #
    # @!attribute [rw] aws_rds_db_instance
    #   Details for an Amazon RDS database instance.
    #   @return [Types::AwsRdsDbInstanceDetails]
    #
    # @!attribute [rw] aws_sns_topic
    #   Details about an SNS topic.
    #   @return [Types::AwsSnsTopicDetails]
    #
    # @!attribute [rw] aws_sqs_queue
    #   Details about an SQS queue.
    #   @return [Types::AwsSqsQueueDetails]
    #
    # @!attribute [rw] aws_waf_web_acl
    #   Details for a WAF WebACL.
    #   @return [Types::AwsWafWebAclDetails]
    #
    # @!attribute [rw] container
    #   Details about a container resource related to a finding.
    #   @return [Types::ContainerDetails]
    #
    # @!attribute [rw] other
    #   Details about a resource that are not available in a type-specific
    #   details object. Use the `Other` object in the following cases.
    #
    #   * The type-specific object does not contain all of the fields that
    #     you want to populate. In this case, first use the type-specific
    #     object to populate those fields. Use the `Other` object to
    #     populate the fields that are missing from the type-specific
    #     object.
    #
    #   * The resource type does not have a corresponding object. This
    #     includes resources for which the type is `Other`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_code_build_project,
      :aws_cloud_front_distribution,
      :aws_ec2_instance,
      :aws_ec2_network_interface,
      :aws_ec2_security_group,
      :aws_elbv_2_load_balancer,
      :aws_elasticsearch_domain,
      :aws_s3_bucket,
      :aws_s3_object,
      :aws_iam_access_key,
      :aws_iam_role,
      :aws_kms_key,
      :aws_lambda_function,
      :aws_lambda_layer_version,
      :aws_rds_db_instance,
      :aws_sns_topic,
      :aws_sqs_queue,
      :aws_waf_web_acl,
      :container,
      :other)
      include Aws::Structure
    end

    # The request was rejected because we can't find the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Details about the account that was not processed.
    #
    # @!attribute [rw] account_id
    #   An AWS account ID of the account that was not processed.
    #   @return [String]
    #
    # @!attribute [rw] processing_result
    #   The reason that the account was not processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :account_id,
      :processing_result)
      include Aws::Structure
    end

    # The severity of the finding.
    #
    # @note When making an API call, you may pass Severity
    #   data as a hash:
    #
    #       {
    #         product: 1.0,
    #         label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #         normalized: 1,
    #         original: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] product
    #   Deprecated. This attribute is being deprecated. Instead of providing
    #   `Product`, provide `Original`.
    #
    #   The native severity as defined by the AWS service or integrated
    #   partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #   @return [String]
    #
    # @!attribute [rw] normalized
    #   Deprecated. This attribute is being deprecated. Instead of providing
    #   `Normalized`, provide `Label`.
    #
    #   If you provide `Normalized` and do not provide `Label`, `Label` is
    #   set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [Integer]
    #
    # @!attribute [rw] original
    #   The native severity from the finding product that generated the
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Severity AWS API Documentation
    #
    class Severity < Struct.new(
      :product,
      :label,
      :normalized,
      :original)
      include Aws::Structure
    end

    # Updates to the severity information for a finding.
    #
    # @note When making an API call, you may pass SeverityUpdate
    #   data as a hash:
    #
    #       {
    #         normalized: 1,
    #         product: 1.0,
    #         label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #       }
    #
    # @!attribute [rw] normalized
    #   The normalized severity for the finding. This attribute is to be
    #   deprecated in favor of `Label`.
    #
    #   If you provide `Normalized` and do not provide `Label`, `Label` is
    #   set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [Integer]
    #
    # @!attribute [rw] product
    #   The native severity as defined by the AWS service or integrated
    #   partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SeverityUpdate AWS API Documentation
    #
    class SeverityUpdate < Struct.new(
      :normalized,
      :product,
      :label)
      include Aws::Structure
    end

    # A collection of finding attributes used to sort findings.
    #
    # @note When making an API call, you may pass SortCriterion
    #   data as a hash:
    #
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       }
    #
    # @!attribute [rw] field
    #   The finding attribute used to sort findings.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order used to sort findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field,
      :sort_order)
      include Aws::Structure
    end

    # Provides information about a specific standard.
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the standard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the standard.
    #   @return [String]
    #
    # @!attribute [rw] enabled_by_default
    #   Whether the standard is enabled by default. When Security Hub is
    #   enabled from the console, if a standard is enabled by default, the
    #   check box for that standard is selected by default.
    #
    #   When Security Hub is enabled using the `EnableSecurityHub` API
    #   operation, the standard is enabled by default unless
    #   `EnableDefaultStandards` is set to `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Standard AWS API Documentation
    #
    class Standard < Struct.new(
      :standards_arn,
      :name,
      :description,
      :enabled_by_default)
      include Aws::Structure
    end

    # Details for an individual security standard control.
    #
    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The current status of the security standard control. Indicates
    #   whether the control is enabled or disabled. Security Hub does not
    #   check against disabled controls.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   The reason provided for the most recent change in status for the
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] control_status_updated_at
    #   The date and time that the status of the security standard control
    #   was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] control_id
    #   The identifier of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The longer description of the security standard control. Provides
    #   information about what the control is checking for.
    #   @return [String]
    #
    # @!attribute [rw] remediation_url
    #   A link to remediation information for the control in the Security
    #   Hub user documentation.
    #   @return [String]
    #
    # @!attribute [rw] severity_rating
    #   The severity of findings generated from this security standard
    #   control.
    #
    #   The finding severity is based on an assessment of how easy it would
    #   be to compromise AWS resources if the issue is detected.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   The list of requirements that are related to this control.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControl AWS API Documentation
    #
    class StandardsControl < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason,
      :control_status_updated_at,
      :control_id,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :related_requirements)
      include Aws::Structure
    end

    # A resource that represents your subscription to a supported standard.
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] standards_status
    #   The status of the standards subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscription AWS API Documentation
    #
    class StandardsSubscription < Struct.new(
      :standards_subscription_arn,
      :standards_arn,
      :standards_input,
      :standards_status)
      include Aws::Structure
    end

    # The standard that you want to enable.
    #
    # @note When making an API call, you may pass StandardsSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] standards_arn
    #   The ARN of the standard that you want to enable. To view the list of
    #   available standards and their ARNs, use the ` DescribeStandards `
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscriptionRequest AWS API Documentation
    #
    class StandardsSubscriptionRequest < Struct.new(
      :standards_arn,
      :standards_input)
      include Aws::Structure
    end

    # Provides additional context for the value of `Compliance.Status`.
    #
    # @note When making an API call, you may pass StatusReason
    #   data as a hash:
    #
    #       {
    #         reason_code: "NonEmptyString", # required
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] reason_code
    #   A code that represents a reason for the control status. For the list
    #   of status reason codes and their meanings, see [Standards-related
    #   information in the ASFF][1] in the *AWS Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The corresponding description for the status reason code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatusReason AWS API Documentation
    #
    class StatusReason < Struct.new(
      :reason_code,
      :description)
      include Aws::Structure
    end

    # A string filter for querying findings.
    #
    # @note When making an API call, you may pass StringFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS, PREFIX
    #       }
    #
    # @!attribute [rw] value
    #   The string filter value.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to be applied to a string value when querying for
    #   findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :value,
      :comparison)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about the threat intelligence related to a finding.
    #
    # @note When making an API call, you may pass ThreatIntelIndicator
    #   data as a hash:
    #
    #       {
    #         type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #         value: "NonEmptyString",
    #         category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #         last_observed_at: "NonEmptyString",
    #         source: "NonEmptyString",
    #         source_url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The type of threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   The date and time when the most recent instance of a threat
    #   intelligence indicator was observed.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL to the page or site where you can get more information about
    #   the threat intelligence indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ThreatIntelIndicator AWS API Documentation
    #
    class ThreatIntelIndicator < Struct.new(
      :type,
      :value,
      :category,
      :last_observed_at,
      :source,
      :source_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetRequest AWS API Documentation
    #
    class UpdateActionTargetRequest < Struct.new(
      :action_target_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetResponse AWS API Documentation
    #
    class UpdateActionTargetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] note
    #   The updated note for the finding.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsRequest AWS API Documentation
    #
    class UpdateFindingsRequest < Struct.new(
      :filters,
      :note,
      :record_state)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsResponse AWS API Documentation
    #
    class UpdateFindingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The updated filters that define this insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightRequest AWS API Documentation
    #
    class UpdateInsightRequest < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightResponse AWS API Documentation
    #
    class UpdateInsightResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateStandardsControlRequest
    #   data as a hash:
    #
    #       {
    #         standards_control_arn: "NonEmptyString", # required
    #         control_status: "ENABLED", # accepts ENABLED, DISABLED
    #         disabled_reason: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control to enable or disable.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The updated status of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   A description of the reason why you are disabling a security
    #   standard control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlRequest AWS API Documentation
    #
    class UpdateStandardsControlRequest < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlResponse AWS API Documentation
    #
    class UpdateStandardsControlResponse < Aws::EmptyStructure; end

    # Details about the action that CloudFront or AWS WAF takes when a web
    # request matches the conditions in the rule.
    #
    # @note When making an API call, you may pass WafAction
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   Specifies how you want AWS WAF to respond to requests that match the
    #   settings in a rule.
    #
    #   Valid settings include the following:
    #
    #   * `ALLOW` - AWS WAF allows requests
    #
    #   * `BLOCK` - AWS WAF blocks requests
    #
    #   * `COUNT` - AWS WAF increments a counter of the requests that match
    #     all of the conditions in the rule. AWS WAF then continues to
    #     inspect the web request based on the remaining rules in the web
    #     ACL. You can't specify `COUNT` for the default action for a
    #     WebACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafAction AWS API Documentation
    #
    class WafAction < Struct.new(
      :type)
      include Aws::Structure
    end

    # Details about a rule to exclude from a rule group.
    #
    # @note When making an API call, you may pass WafExcludedRule
    #   data as a hash:
    #
    #       {
    #         rule_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] rule_id
    #   The unique identifier for the rule to exclude from the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafExcludedRule AWS API Documentation
    #
    class WafExcludedRule < Struct.new(
      :rule_id)
      include Aws::Structure
    end

    # Details about an override action for a rule.
    #
    # @note When making an API call, you may pass WafOverrideAction
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   `COUNT` overrides the action specified by the individual rule within
    #   a `RuleGroup` .
    #
    #   If set to `NONE`, the rule's action takes place.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafOverrideAction AWS API Documentation
    #
    class WafOverrideAction < Struct.new(
      :type)
      include Aws::Structure
    end

    # Provides information about the status of the investigation into a
    # finding.
    #
    # @note When making an API call, you may pass Workflow
    #   data as a hash:
    #
    #       {
    #         status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #       }
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The allowed values
    #   are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :status)
      include Aws::Structure
    end

    # Used to update information about the investigation into the finding.
    #
    # @note When making an API call, you may pass WorkflowUpdate
    #   data as a hash:
    #
    #       {
    #         status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #       }
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The allowed values
    #   are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WorkflowUpdate AWS API Documentation
    #
    class WorkflowUpdate < Struct.new(
      :status)
      include Aws::Structure
    end

  end
end

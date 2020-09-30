# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Imagebuilder
  module Types

    # Details of an EC2 AMI.
    #
    # @!attribute [rw] region
    #   The AWS Region of the EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The AMI ID of the EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Image state shows the image status and the reason for that status.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] account_id
    #   The account ID of the owner of the AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Ami AWS API Documentation
    #
    class Ami < Struct.new(
      :region,
      :image,
      :name,
      :description,
      :state,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Define and configure the output AMIs of the pipeline.
    #
    # @note When making an API call, you may pass AmiDistributionConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "AmiNameString",
    #         description: "NonEmptyString",
    #         target_account_ids: ["AccountId"],
    #         ami_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         kms_key_id: "NonEmptyString",
    #         launch_permission: {
    #           user_ids: ["AccountId"],
    #           user_groups: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_account_ids
    #   The ID of an account to which you want to distribute an image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ami_tags
    #   The tags to apply to AMIs distributed to this Region.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the distributed image.
    #   @return [String]
    #
    # @!attribute [rw] launch_permission
    #   Launch permissions can be used to configure which AWS accounts can
    #   use the AMI to launch instances.
    #   @return [Types::LaunchPermissionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AmiDistributionConfiguration AWS API Documentation
    #
    class AmiDistributionConfiguration < Struct.new(
      :name,
      :description,
      :target_account_ids,
      :ami_tags,
      :kms_key_id,
      :launch_permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the permitted request rate for the specific
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CallRateLimitExceededException AWS API Documentation
    #
    class CallRateLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelImageCreationRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageBuildVersionArn", # required
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation you want
    #   to cancel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreationRequest AWS API Documentation
    #
    class CancelImageCreationRequest < Struct.new(
      :image_build_version_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation has been
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreationResponse AWS API Documentation
    #
    class CancelImageCreationResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a client action, such as using an
    # action or resource on behalf of a user that doesn't have permissions
    # to use the action or resource, or specifying an invalid resource
    # identifier.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A detailed view of a component.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   parent image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data of the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the component.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   The encryption status of the component.
    #   @return [Boolean]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Component AWS API Documentation
    #
    class Component < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :change_description,
      :type,
      :platform,
      :supported_os_versions,
      :owner,
      :data,
      :kms_key_id,
      :encrypted,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details of the component.
    #
    # @note When making an API call, you may pass ComponentConfiguration
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentConfiguration AWS API Documentation
    #
    class ComponentConfiguration < Struct.new(
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A high-level summary of a component.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   parent image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :supported_os_versions,
      :type,
      :owner,
      :description,
      :change_description,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A high-level overview of a component semantic version.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   parent image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentVersion AWS API Documentation
    #
    class ComponentVersion < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :platform,
      :supported_os_versions,
      :type,
      :owner,
      :date_created)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateComponentRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         semantic_version: "VersionNumber", # required
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         platform: "Windows", # required, accepts Windows, Linux
    #         supported_os_versions: ["OsVersion"],
    #         data: "InlineComponentData",
    #         uri: "Uri",
    #         kms_key_id: "NonEmptyString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax. For example, major.minor.patch. This could
    #   be versioned like software (2.0.1) or like a date (2019.12.01).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component. Describes the contents of the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   parent image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The uri of the component. Must be an S3 URL and the requester must
    #   have permission to access the S3 bucket. If you use S3, you can
    #   specify component content up to your service quota. Either `data` or
    #   `uri` can be used to specify the data within the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :platform,
      :supported_os_versions,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that was created by
    #   this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         distributions: [ # required
    #           {
    #             region: "NonEmptyString", # required
    #             ami_distribution_configuration: {
    #               name: "AmiNameString",
    #               description: "NonEmptyString",
    #               target_account_ids: ["AccountId"],
    #               ami_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               kms_key_id: "NonEmptyString",
    #               launch_permission: {
    #                 user_ids: ["AccountId"],
    #                 user_groups: ["NonEmptyString"],
    #               },
    #             },
    #             license_configuration_arns: ["LicenseConfigurationArn"],
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distributions of the distribution configuration.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] tags
    #   The tags of the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfigurationRequest AWS API Documentation
    #
    class CreateDistributionConfigurationRequest < Struct.new(
      :name,
      :description,
      :distributions,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfigurationResponse AWS API Documentation
    #
    class CreateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         image_recipe_arn: "ImageRecipeArn", # required
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         schedule: {
    #           schedule_expression: "NonEmptyString",
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #         },
    #         status: "DISABLED", # accepts DISABLED, ENABLED
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images created by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images created by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that will be used to configure and distribute images created by this
    #   image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image test configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image pipeline.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipelineRequest AWS API Documentation
    #
    class CreateImagePipelineRequest < Struct.new(
      :name,
      :description,
      :image_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipelineResponse AWS API Documentation
    #
    class CreateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         semantic_version: "VersionNumber", # required
    #         components: [ # required
    #           {
    #             component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #           },
    #         ],
    #         parent_image: "NonEmptyString", # required
    #         block_device_mappings: [
    #           {
    #             device_name: "NonEmptyString",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               kms_key_id: "NonEmptyString",
    #               snapshot_id: "NonEmptyString",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1
    #             },
    #             virtual_name: "NonEmptyString",
    #             no_device: "EmptyString",
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         working_directory: "NonEmptyString",
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components of the image recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The parent image of the image recipe. The value of the string can be
    #   the ARN of the parent image or an AMI ID. The format for the ARN
    #   follows this example:
    #   `arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/xxxx.x.x`.
    #   You can provide the specific version that you want to use, or you
    #   can use a wildcard in all of the fields. If you enter an AMI ID for
    #   the string value, you must have access to the AMI, and the AMI must
    #   be in the same Region in which you are using Image Builder.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mappings of the image recipe.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory to be used during build and test workflows.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipeRequest AWS API Documentation
    #
    class CreateImageRecipeRequest < Struct.new(
      :name,
      :description,
      :semantic_version,
      :components,
      :parent_image,
      :block_device_mappings,
      :tags,
      :working_directory,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that was created
    #   by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipeResponse AWS API Documentation
    #
    class CreateImageRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that defines and configures the outputs of your pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration of the image.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRequest AWS API Documentation
    #
    class CreateImageRequest < Struct.new(
      :image_recipe_arn,
      :distribution_configuration_arn,
      :infrastructure_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that was created by this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageResponse AWS API Documentation
    #
    class CreateImageResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "NonEmptyString", # required
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_id: "NonEmptyString",
    #         logging: {
    #           s3_logs: {
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString",
    #           },
    #         },
    #         key_pair: "NonEmptyString",
    #         terminate_instance_on_failure: false,
    #         sns_topic_arn: "SnsTopicArn",
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The
    #   service will pick one of these instance types based on availability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. This can be used
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of
    #   your workflow fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic on which to send image build events.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfigurationRequest AWS API Documentation
    #
    class CreateInfrastructureConfigurationRequest < Struct.new(
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :resource_tags,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfigurationResponse AWS API Documentation
    #
    class CreateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteComponentRequest
    #   data as a hash:
    #
    #       {
    #         component_build_version_arn: "ComponentBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version that
    #   was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponentResponse AWS API Documentation
    #
    class DeleteComponentResponse < Struct.new(
      :request_id,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfigurationRequest AWS API Documentation
    #
    class DeleteDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfigurationResponse AWS API Documentation
    #
    class DeleteDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipelineRequest AWS API Documentation
    #
    class DeleteImagePipelineRequest < Struct.new(
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipelineResponse AWS API Documentation
    #
    class DeleteImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipeRequest AWS API Documentation
    #
    class DeleteImageRecipeRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipeResponse AWS API Documentation
    #
    class DeleteImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImageRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRequest AWS API Documentation
    #
    class DeleteImageRequest < Struct.new(
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageResponse AWS API Documentation
    #
    class DeleteImageResponse < Struct.new(
      :request_id,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfigurationRequest AWS API Documentation
    #
    class DeleteInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfigurationResponse AWS API Documentation
    #
    class DeleteInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the settings for a specific Region.
    #
    # @note When making an API call, you may pass Distribution
    #   data as a hash:
    #
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #       }
    #
    # @!attribute [rw] region
    #   The target Region.
    #   @return [String]
    #
    # @!attribute [rw] ami_distribution_configuration
    #   The specific AMI settings (for example, launch permissions, AMI
    #   tags).
    #   @return [Types::AmiDistributionConfiguration]
    #
    # @!attribute [rw] license_configuration_arns
    #   The License Manager Configuration to associate with the AMI in the
    #   specified Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Distribution AWS API Documentation
    #
    class Distribution < Struct.new(
      :region,
      :ami_distribution_configuration,
      :license_configuration_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A distribution configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distributions of the distribution configuration.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum duration in minutes for this distribution configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] date_created
    #   The date on which this distribution configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which this distribution configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributionConfiguration AWS API Documentation
    #
    class DistributionConfiguration < Struct.new(
      :arn,
      :name,
      :description,
      :distributions,
      :timeout_minutes,
      :date_created,
      :date_updated,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A high-level overview of a distribution configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the distribution configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the distribution configuration was updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributionConfigurationSummary AWS API Documentation
    #
    class DistributionConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EBS-specific block device mapping specifications.
    #
    # @note When making an API call, you may pass EbsInstanceBlockDeviceSpecification
    #   data as a hash:
    #
    #       {
    #         encrypted: false,
    #         delete_on_termination: false,
    #         iops: 1,
    #         kms_key_id: "NonEmptyString",
    #         snapshot_id: "NonEmptyString",
    #         volume_size: 1,
    #         volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1
    #       }
    #
    # @!attribute [rw] encrypted
    #   Use to configure device encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Use to configure delete on termination of the associated device.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   Use to configure device IOPS.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   Use to configure the KMS key to use when encrypting the device.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot that defines the device contents.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Use to override the device's volume size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Use to override the device's volume type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/EbsInstanceBlockDeviceSpecification AWS API Documentation
    #
    class EbsInstanceBlockDeviceSpecification < Struct.new(
      :encrypted,
      :delete_on_termination,
      :iops,
      :kms_key_id,
      :snapshot_id,
      :volume_size,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return a more specific
    # list of results from a list operation. Filters can be used to match a
    # set of resources by specific criteria, such as tags, attributes, or
    # IDs.
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
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentPolicyRequest
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component whose policy you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicyRequest AWS API Documentation
    #
    class GetComponentPolicyRequest < Struct.new(
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The component policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicyResponse AWS API Documentation
    #
    class GetComponentPolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentRequest
    #   data as a hash:
    #
    #       {
    #         component_build_version_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to
    #   retrieve. Regex requires "/\\d+$" suffix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentRequest AWS API Documentation
    #
    class GetComponentRequest < Struct.new(
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component
    #   The component object associated with the specified ARN.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentResponse AWS API Documentation
    #
    class GetComponentResponse < Struct.new(
      :request_id,
      :component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfigurationRequest AWS API Documentation
    #
    class GetDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration
    #   The distribution configuration object.
    #   @return [Types::DistributionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfigurationResponse AWS API Documentation
    #
    class GetDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipelineRequest AWS API Documentation
    #
    class GetImagePipelineRequest < Struct.new(
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline
    #   The image pipeline object.
    #   @return [Types::ImagePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipelineResponse AWS API Documentation
    #
    class GetImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImagePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_arn: "ImageBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image whose policy you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicyRequest AWS API Documentation
    #
    class GetImagePolicyRequest < Struct.new(
      :image_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The image policy object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicyResponse AWS API Documentation
    #
    class GetImagePolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe whose policy you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicyRequest AWS API Documentation
    #
    class GetImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The image recipe policy object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicyResponse AWS API Documentation
    #
    class GetImageRecipePolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipeRequest AWS API Documentation
    #
    class GetImageRecipeRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe
    #   The image recipe object.
    #   @return [Types::ImageRecipe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipeResponse AWS API Documentation
    #
    class GetImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageVersionArnOrBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRequest AWS API Documentation
    #
    class GetImageRequest < Struct.new(
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image object.
    #   @return [Types::Image]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageResponse AWS API Documentation
    #
    class GetImageResponse < Struct.new(
      :request_id,
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInfrastructureConfiguration request object.
    #
    # @note When making an API call, you may pass GetInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfigurationRequest AWS API Documentation
    #
    class GetInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInfrastructureConfiguration response object.
    #
    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration
    #   The infrastructure configuration object.
    #   @return [Types::InfrastructureConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfigurationResponse AWS API Documentation
    #
    class GetInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified a client token for an operation using parameter
    # values that differ from a previous request that used the same client
    # token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image build version.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the image.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instance. For example, Amazon
    #   Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] image_recipe
    #   The image recipe used when creating the image.
    #   @return [Types::ImageRecipe]
    #
    # @!attribute [rw] source_pipeline_name
    #   The name of the image pipeline that created this image.
    #   @return [String]
    #
    # @!attribute [rw] source_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that created
    #   this image.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration
    #   The infrastructure used when creating this image.
    #   @return [Types::InfrastructureConfiguration]
    #
    # @!attribute [rw] distribution_configuration
    #   The distribution configuration used when creating this image.
    #   @return [Types::DistributionConfiguration]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration used when creating this image.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] date_created
    #   The date on which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources produced when creating this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Image AWS API Documentation
    #
    class Image < Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :enhanced_image_metadata_enabled,
      :os_version,
      :state,
      :image_recipe,
      :source_pipeline_name,
      :source_pipeline_arn,
      :infrastructure_configuration,
      :distribution_configuration,
      :image_tests_configuration,
      :date_created,
      :output_resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an image pipeline.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe associated with
    #   this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   associated with this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   associated with this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image pipeline was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which this image pipeline was last updated.
    #   @return [String]
    #
    # @!attribute [rw] date_last_run
    #   The date on which this image pipeline was last run.
    #   @return [String]
    #
    # @!attribute [rw] date_next_run
    #   The date on which this image pipeline will next be run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of this image pipeline.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImagePipeline AWS API Documentation
    #
    class ImagePipeline < Struct.new(
      :arn,
      :name,
      :description,
      :platform,
      :enhanced_image_metadata_enabled,
      :image_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :schedule,
      :status,
      :date_created,
      :date_updated,
      :date_last_run,
      :date_next_run,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image recipe.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components of the image recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The parent image of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mappings to apply when creating images from this
    #   recipe.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] date_created
    #   The date on which this image recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory to be used during build and test workflows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageRecipe AWS API Documentation
    #
    class ImageRecipe < Struct.new(
      :arn,
      :name,
      :description,
      :platform,
      :owner,
      :version,
      :components,
      :parent_image,
      :block_device_mappings,
      :date_created,
      :tags,
      :working_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an image recipe.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] parent_image
    #   The parent image of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageRecipeSummary AWS API Documentation
    #
    class ImageRecipeSummary < Struct.new(
      :arn,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Image state shows the image status and the reason for that status.
    #
    # @!attribute [rw] status
    #   The status of the image.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the image's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageState AWS API Documentation
    #
    class ImageState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the image.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instance. For example, Amazon
    #   Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] owner
    #   The owner of the image.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources produced when creating this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageSummary AWS API Documentation
    #
    class ImageSummary < Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :os_version,
      :state,
      :owner,
      :date_created,
      :output_resources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Image tests configuration.
    #
    # @note When making an API call, you may pass ImageTestsConfiguration
    #   data as a hash:
    #
    #       {
    #         image_tests_enabled: false,
    #         timeout_minutes: 1,
    #       }
    #
    # @!attribute [rw] image_tests_enabled
    #   Defines if tests should be executed when building this image.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum time in minutes that tests are permitted to run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageTestsConfiguration AWS API Documentation
    #
    class ImageTestsConfiguration < Struct.new(
      :image_tests_enabled,
      :timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image semantic version.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image semantic version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image semantic version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the image semantic version.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image semantic version.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instance. For example, Amazon
    #   Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image semantic version.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date at which this image semantic version was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageVersion AWS API Documentation
    #
    class ImageVersion < Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :os_version,
      :owner,
      :date_created)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportComponentRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         semantic_version: "VersionNumber", # required
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         type: "BUILD", # required, accepts BUILD, TEST
    #         format: "SHELL", # required, accepts SHELL
    #         platform: "Windows", # required, accepts Windows, Linux
    #         data: "NonEmptyString",
    #         uri: "Uri",
    #         kms_key_id: "NonEmptyString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax. For example, major.minor.patch. This could
    #   be versioned like software (2.0.1) or like a date (2019.12.01).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component. Describes the contents of the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the resource that you want to import as a component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The uri of the component. Must be an S3 URL and the requester must
    #   have permission to access the S3 bucket. If you use S3, you can
    #   specify component content up to your service quota. Either `data` or
    #   `uri` can be used to specify the data within the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponentRequest AWS API Documentation
    #
    class ImportComponentRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :type,
      :format,
      :platform,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the imported component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponentResponse AWS API Documentation
    #
    class ImportComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the infrastructure configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs of the infrastructure configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The EC2 key pair of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure configuration of the
    #   infrastructure configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic Amazon Resource Name (ARN) of the infrastructure
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the infrastructure configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the infrastructure configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InfrastructureConfiguration AWS API Documentation
    #
    class InfrastructureConfiguration < Struct.new(
      :arn,
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :date_created,
      :date_updated,
      :resource_tags,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The infrastructure used when building EC2 AMIs.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the infrastructure configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the infrastructure configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the image created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InfrastructureConfigurationSummary AWS API Documentation
    #
    class InfrastructureConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :resource_tags,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines block device mappings for the instance used to configure your
    # image.
    #
    # @note When making an API call, you may pass InstanceBlockDeviceMapping
    #   data as a hash:
    #
    #       {
    #         device_name: "NonEmptyString",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: "NonEmptyString",
    #           snapshot_id: "NonEmptyString",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1
    #         },
    #         virtual_name: "NonEmptyString",
    #         no_device: "EmptyString",
    #       }
    #
    # @!attribute [rw] device_name
    #   The device to which these mappings apply.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Use to manage Amazon EBS-specific configuration for this mapping.
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    #
    # @!attribute [rw] virtual_name
    #   Use to manage instance ephemeral devices.
    #   @return [String]
    #
    # @!attribute [rw] no_device
    #   Use to remove a mapping from the parent image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InstanceBlockDeviceMapping AWS API Documentation
    #
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs,
      :virtual_name,
      :no_device)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have provided an invalid pagination token in your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified two or more mutually exclusive parameters. Review
    # the error message for details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value that you provided for the specified parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have made a request for an action that is not supported by the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your version number is out of bounds or does not follow the required
    # syntax.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidVersionNumberException AWS API Documentation
    #
    class InvalidVersionNumberException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a launch permission. The launch
    # permission modification request is sent to the [EC2
    # ModifyImageAttribute][1] API on behalf of the user for each Region
    # they have selected to distribute the AMI. To make an AMI public, set
    # the launch permission authorized accounts to `all`. See the examples
    # for making an AMI public at [EC2 ModifyImageAttribute][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html
    #
    # @note When making an API call, you may pass LaunchPermissionConfiguration
    #   data as a hash:
    #
    #       {
    #         user_ids: ["AccountId"],
    #         user_groups: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] user_ids
    #   The AWS account ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   The name of the group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LaunchPermissionConfiguration AWS API Documentation
    #
    class LaunchPermissionConfiguration < Struct.new(
      :user_ids,
      :user_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentBuildVersionsRequest
    #   data as a hash:
    #
    #       {
    #         component_version_arn: "ComponentVersionArn", # required
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] component_version_arn
    #   The component version Amazon Resource Name (ARN) whose versions you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersionsRequest AWS API Documentation
    #
    class ListComponentBuildVersionsRequest < Struct.new(
      :component_version_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_summary_list
    #   The list of component summaries for the specified semantic version.
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersionsResponse AWS API Documentation
    #
    class ListComponentBuildVersionsResponse < Struct.new(
      :request_id,
      :component_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentsRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which components you want to list. By default,
    #   this request will only show components owned by your account. You
    #   can use this field to specify if you want to view components owned
    #   by yourself, by Amazon, or those components that have been shared
    #   with you by other customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_version_list
    #   The list of component semantic versions.
    #   @return [Array<Types::ComponentVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :request_id,
      :component_version_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDistributionConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] filters
    #   The filters.
    #
    #   * `name` - The name of this distribution configuration.
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurationsRequest AWS API Documentation
    #
    class ListDistributionConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_summary_list
    #   The list of distributions.
    #   @return [Array<Types::DistributionConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurationsResponse AWS API Documentation
    #
    class ListDistributionConfigurationsResponse < Struct.new(
      :request_id,
      :distribution_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImageBuildVersionsRequest
    #   data as a hash:
    #
    #       {
    #         image_version_arn: "ImageVersionArn", # required
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] image_version_arn
    #   The Amazon Resource Name (ARN) of the image whose build versions you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersionsRequest AWS API Documentation
    #
    class ListImageBuildVersionsRequest < Struct.new(
      :image_version_arn,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_summary_list
    #   The list of image build versions.
    #   @return [Array<Types::ImageSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersionsResponse AWS API Documentation
    #
    class ListImageBuildVersionsResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagePipelineImagesRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline whose images
    #   you want to view.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImagesRequest AWS API Documentation
    #
    class ListImagePipelineImagesRequest < Struct.new(
      :image_pipeline_arn,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_summary_list
    #   The list of images built by this pipeline.
    #   @return [Array<Types::ImageSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImagesResponse AWS API Documentation
    #
    class ListImagePipelineImagesResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagePipelinesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelinesRequest AWS API Documentation
    #
    class ListImagePipelinesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_list
    #   The list of image pipelines.
    #   @return [Array<Types::ImagePipeline>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelinesResponse AWS API Documentation
    #
    class ListImagePipelinesResponse < Struct.new(
      :request_id,
      :image_pipeline_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImageRecipesRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which image recipes you want to list. By default,
    #   this request will only show image recipes owned by your account. You
    #   can use this field to specify if you want to view image recipes
    #   owned by yourself, by Amazon, or those image recipes that have been
    #   shared with you by other customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipesRequest AWS API Documentation
    #
    class ListImageRecipesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_summary_list
    #   The list of image pipelines.
    #   @return [Array<Types::ImageRecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipesResponse AWS API Documentation
    #
    class ListImageRecipesResponse < Struct.new(
      :request_id,
      :image_recipe_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagesRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which images you want to list. By default, this
    #   request will only show images owned by your account. You can use
    #   this field to specify if you want to view images owned by yourself,
    #   by Amazon, or those images that have been shared with you by other
    #   customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagesRequest AWS API Documentation
    #
    class ListImagesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_version_list
    #   The list of image semantic versions.
    #   @return [Array<Types::ImageVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagesResponse AWS API Documentation
    #
    class ListImagesResponse < Struct.new(
      :request_id,
      :image_version_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInfrastructureConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] filters
    #   The filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurationsRequest AWS API Documentation
    #
    class ListInfrastructureConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_summary_list
    #   The list of infrastructure configurations.
    #   @return [Array<Types::InfrastructureConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurationsResponse AWS API Documentation
    #
    class ListInfrastructureConfigurationsResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Logging configuration defines where Image Builder uploads your logs.
    #
    # @note When making an API call, you may pass Logging
    #   data as a hash:
    #
    #       {
    #         s3_logs: {
    #           s3_bucket_name: "NonEmptyString",
    #           s3_key_prefix: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] s3_logs
    #   The Amazon S3 logging configuration.
    #   @return [Types::S3Logs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :s3_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resources produced by this image.
    #
    # @!attribute [rw] amis
    #   The EC2 AMIs created by this image.
    #   @return [Array<Types::Ami>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/OutputResources AWS API Documentation
    #
    class OutputResources < Struct.new(
      :amis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutComponentPolicyRequest
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentBuildVersionArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy
    #   should be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicyRequest AWS API Documentation
    #
    class PutComponentPolicyRequest < Struct.new(
      :component_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy was
    #   applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicyResponse AWS API Documentation
    #
    class PutComponentPolicyResponse < Struct.new(
      :request_id,
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImagePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_arn: "ImageBuildVersionArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy should
    #   be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicyRequest AWS API Documentation
    #
    class PutImagePolicyRequest < Struct.new(
      :image_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy was
    #   applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicyResponse AWS API Documentation
    #
    class PutImagePolicyResponse < Struct.new(
      :request_id,
      :image_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImageRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   should be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicyRequest AWS API Documentation
    #
    class PutImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   was applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicyResponse AWS API Documentation
    #
    class PutImageRecipePolicyResponse < Struct.new(
      :request_id,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you are trying to create already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have attempted to mutate or delete a resource with a dependency
    # that prohibits this action. See the error message for more details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceDependencyException AWS API Documentation
    #
    class ResourceDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you are trying to operate on is currently in use.
    # Review the message details and retry later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # At least one of the resources referenced by your request does not
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 logging configuration.
    #
    # @note When making an API call, you may pass S3Logs
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket in which to store the logs.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The Amazon S3 path in which to store the logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/S3Logs AWS API Documentation
    #
    class S3Logs < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schedule configures how often and when a pipeline will automatically
    # create a new image.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "NonEmptyString",
    #         pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #       }
    #
    # @!attribute [rw] schedule_expression
    #   The cron expression determines how often EC2 Image Builder evaluates
    #   your `pipelineExecutionStartCondition`.
    #
    #   For information on how to format a cron expression in Image Builder,
    #   see [Use cron expressions in EC2 Image Builder][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_start_condition
    #   The condition configures when the pipeline should trigger a new
    #   image build. When the `pipelineExecutionStartCondition` is set to
    #   `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE`, and you use
    #   semantic version filters on the source image or components in your
    #   image recipe, EC2 Image Builder will build a new image only when
    #   there are new versions of the image or components in your recipe
    #   that match the semantic version filter. When it is set to
    #   `EXPRESSION_MATCH_ONLY`, it will build a new image every time the
    #   CRON expression matches the current time. For semantic version
    #   syntax, see [CreateComponent][1] in the <i> EC2 Image Builder API
    #   Reference</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :pipeline_execution_start_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the service encounters an unrecoverable
    # exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the number of permitted resources or operations for
    # this service. For service quotas, see [EC2 Image Builder endpoints and
    # quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html#limits_imagebuilder
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unable to process your request at this time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImagePipelineExecutionRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to manually invoke.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecutionRequest AWS API Documentation
    #
    class StartImagePipelineExecutionRequest < Struct.new(
      :image_pipeline_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that was created by this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecutionResponse AWS API Documentation
    #
    class StartImagePipelineExecutionResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #         description: "NonEmptyString",
    #         distributions: [ # required
    #           {
    #             region: "NonEmptyString", # required
    #             ami_distribution_configuration: {
    #               name: "AmiNameString",
    #               description: "NonEmptyString",
    #               target_account_ids: ["AccountId"],
    #               ami_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               kms_key_id: "NonEmptyString",
    #               launch_permission: {
    #                 user_ids: ["AccountId"],
    #                 user_groups: ["NonEmptyString"],
    #               },
    #             },
    #             license_configuration_arns: ["LicenseConfigurationArn"],
    #           },
    #         ],
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distributions of the distribution configuration.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfigurationRequest AWS API Documentation
    #
    class UpdateDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn,
      :description,
      :distributions,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfigurationResponse AWS API Documentation
    #
    class UpdateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         description: "NonEmptyString",
    #         image_recipe_arn: "ImageRecipeArn", # required
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         schedule: {
    #           schedule_expression: "NonEmptyString",
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #         },
    #         status: "DISABLED", # accepts DISABLED, ENABLED
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images updated by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images updated by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that will be used to configure and distribute images updated by this
    #   image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image test configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipelineRequest AWS API Documentation
    #
    class UpdateImagePipelineRequest < Struct.new(
      :image_pipeline_arn,
      :description,
      :image_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipelineResponse AWS API Documentation
    #
    class UpdateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         description: "NonEmptyString",
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "NonEmptyString", # required
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_id: "NonEmptyString",
    #         logging: {
    #           s3_logs: {
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString",
    #           },
    #         },
    #         key_pair: "NonEmptyString",
    #         terminate_instance_on_failure: false,
    #         sns_topic_arn: "SnsTopicArn",
    #         client_token: "ClientToken", # required
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The
    #   service will pick one of these instance types based on availability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID to place the instance used to customize your EC2 AMI
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. This can be used
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of
    #   your workflow fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic on which to send image build events.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfigurationRequest AWS API Documentation
    #
    class UpdateInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :client_token,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfigurationResponse AWS API Documentation
    #
    class UpdateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

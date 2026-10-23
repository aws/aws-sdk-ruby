# frozen_string_literal: true

# This is generated code!

module Aws::ServerlessApplicationRepository
  # This module contains the types returned by client operations.
  module Types

    # <p>A nested application summary.</p>
    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the nested application.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the nested application.</p>
    #   @return [String]
    class ApplicationDependencySummary < Struct.new(
      nil,
      :application_id,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Policy statement applied to the application.</p>
    # @!attribute actions
    #   <p>For the list of actions supported for this operation, see <a href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application 
    #    Permissions</a>.</p>
    #   @return [Array<String>]
    # @!attribute principal_org_i_ds
    #   <p>An array of PrinciplalOrgIDs, which corresponds to AWS IAM <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#principal-org-id">aws:PrincipalOrgID</a> global condition key.</p>
    #   @return [Array<String>]
    # @!attribute principals
    #   <p>An array of AWS account IDs, or * to make the application public.</p>
    #   @return [Array<String>]
    # @!attribute statement_id
    #   <p>A unique ID for the statement.</p>
    #   @return [String]
    class ApplicationPolicyStatement < Struct.new(
      nil,
      :actions,
      :principal_org_i_ds,
      :principals,
      :statement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of details about the application.</p>
    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #   @return [String]
    # @!attribute spdx_license_id
    #   <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :application_id,
      :author,
      :creation_time,
      :description,
      :home_page_url,
      :labels,
      :name,
      :spdx_license_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the parameters in the request is invalid.</p>
    # @!attribute error_code
    #   <p>400</p>
    #   @return [String]
    # @!attribute message
    #   <p>One of the parameters in the request is invalid.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists.</p>
    # @!attribute error_code
    #   <p>409</p>
    #   @return [String]
    # @!attribute message
    #   <p>The resource already exists.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute license_body
    #   <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    #   @return [String]
    # @!attribute license_url
    #   <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #   @return [String]
    # @!attribute readme_body
    #   <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    #   @return [String]
    # @!attribute readme_url
    #   <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #   @return [String]
    # @!attribute source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #   @return [String]
    # @!attribute spdx_license_id
    #   <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The local raw packaged AWS SAM template file of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    #   @return [String]
    class CreateApplicationRequest < Struct.new(
      nil,
      :author,
      :description,
      :home_page_url,
      :labels,
      :license_body,
      :license_url,
      :name,
      :readme_body,
      :readme_url,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :spdx_license_id,
      :template_body,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute is_verified_author
    #   <p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>
    #   @return [Boolean]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute license_url
    #   <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #   @return [String]
    # @!attribute readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute spdx_license_id
    #   <p>A valid identifier from https://spdx.org/licenses/.</p>
    #   @return [String]
    # @!attribute verified_author_url
    #   <p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information about the application.</p>
    #   @return [Types::Version]
    class CreateApplicationResponse < Struct.new(
      nil,
      :application_id,
      :author,
      :creation_time,
      :description,
      :home_page_url,
      :is_verified_author,
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :verified_author_url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the new version.</p>
    #   @return [String]
    # @!attribute source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #   @return [String]
    # @!attribute source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The raw packaged AWS SAM template of your application.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the packaged AWS SAM template of your application.</p>
    #   @return [String]
    class CreateApplicationVersionRequest < Struct.new(
      nil,
      :application_id,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_body,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute parameter_definitions
    #   <p>An array of parameter types supported by the application.</p>
    #   @return [Array<Types::ParameterDefinition>]
    # @!attribute required_capabilities
    #   <p>A list of values that you must specify before you can deploy certain applications.
    #    Some applications might include resources that can affect permissions in your AWS
    #    account, for example, by creating new AWS Identity and Access Management (IAM) users.
    #    For those applications, you must explicitly acknowledge their capabilities by
    #    specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
    #    CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
    #    CAPABILITY_NAMED_IAM:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
    #    If the application contains IAM resources, you can specify either CAPABILITY_IAM
    #    or CAPABILITY_NAMED_IAM. If the application contains IAM resources
    #    with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
    #    CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
    #    all permissions associated with the application before deploying. If you don't specify
    #    this parameter for an application that requires capabilities, the call will fail.</p>
    #   @return [Array<String>]
    # @!attribute resources_supported
    #   <p>Whether all of the AWS resources contained in this application are supported in the region
    #    in which it is being retrieved.</p>
    #   @return [Boolean]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #   @return [String]
    # @!attribute source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the packaged AWS SAM template of your application.</p>
    #   @return [String]
    class CreateApplicationVersionResponse < Struct.new(
      nil,
      :application_id,
      :creation_time,
      :parameter_definitions,
      :required_capabilities,
      :resources_supported,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>A list of values that you must specify before you can deploy certain applications.
    #    Some applications might include resources that can affect permissions in your AWS
    #    account, for example, by creating new AWS Identity and Access Management (IAM) users.
    #    For those applications, you must explicitly acknowledge their capabilities by
    #    specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
    #    CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
    #    CAPABILITY_NAMED_IAM:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
    #    If the application contains IAM resources, you can specify either CAPABILITY_IAM
    #    or CAPABILITY_NAMED_IAM. If the application contains IAM resources
    #    with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS:TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
    #    CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
    #    all permissions associated with the application before deploying. If you don't specify
    #    this parameter for an application that requires capabilities, the call will fail.</p>
    #   @return [Array<String>]
    # @!attribute change_set_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [String]
    # @!attribute notification_arns
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [Array<String>]
    # @!attribute parameter_overrides
    #   <p>A list of parameter values for the parameters of the application.</p>
    #   @return [Array<Types::ParameterValue>]
    # @!attribute resource_types
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [Array<String>]
    # @!attribute rollback_configuration
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [Types::RollbackConfiguration]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #   @return [String]
    class CreateCloudFormationChangeSetRequest < Struct.new(
      nil,
      :application_id,
      :capabilities,
      :change_set_name,
      :client_token,
      :description,
      :notification_arns,
      :parameter_overrides,
      :resource_types,
      :rollback_configuration,
      :semantic_version,
      :stack_name,
      :tags,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute change_set_id
    #   <p>The Amazon Resource Name (ARN) of the change set.</p><p>Length constraints: Minimum length of 1.</p><p>Pattern: ARN:[-a-zA-Z0-9:/]*</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The unique ID of the stack.</p>
    #   @return [String]
    class CreateCloudFormationChangeSetResponse < Struct.new(
      nil,
      :application_id,
      :change_set_id,
      :semantic_version,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    class CreateCloudFormationTemplateRequest < Struct.new(
      nil,
      :application_id,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The date and time this template expires. Templates
    #    expire 1 hour after creation.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED
    #    </p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the template that can be used to deploy the application using
    #    AWS CloudFormation.</p>
    #   @return [String]
    class CreateCloudFormationTemplateResponse < Struct.new(
      nil,
      :application_id,
      :creation_time,
      :expiration_time,
      :semantic_version,
      :status,
      :template_id,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is not authenticated.</p>
    # @!attribute error_code
    #   <p>403</p>
    #   @return [String]
    # @!attribute message
    #   <p>The client is not authenticated.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    class GetApplicationPolicyRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statements
    #   <p>An array of policy statements applied to the application.</p>
    #   @return [Array<Types::ApplicationPolicyStatement>]
    class GetApplicationPolicyResponse < Struct.new(
      nil,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application to get.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :application_id,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute is_verified_author
    #   <p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>
    #   @return [Boolean]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute license_url
    #   <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #   @return [String]
    # @!attribute readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute spdx_license_id
    #   <p>A valid identifier from https://spdx.org/licenses/.</p>
    #   @return [String]
    # @!attribute verified_author_url
    #   <p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information about the application.</p>
    #   @return [Types::Version]
    class GetApplicationResponse < Struct.new(
      nil,
      :application_id,
      :author,
      :creation_time,
      :description,
      :home_page_url,
      :is_verified_author,
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :verified_author_url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #   @return [String]
    class GetCloudFormationTemplateRequest < Struct.new(
      nil,
      :application_id,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The date and time this template expires. Templates
    #    expire 1 hour after creation.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED
    #    </p>
    #   @return [String]
    # @!attribute template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the template that can be used to deploy the application using
    #    AWS CloudFormation.</p>
    #   @return [String]
    class GetCloudFormationTemplateResponse < Struct.new(
      nil,
      :application_id,
      :creation_time,
      :expiration_time,
      :semantic_version,
      :status,
      :template_id,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS Serverless Application Repository service encountered an internal error.</p>
    # @!attribute error_code
    #   <p>500</p>
    #   @return [String]
    # @!attribute message
    #   <p>The AWS Serverless Application Repository service encountered an internal error.</p>
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The total number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application to get.</p>
    #   @return [String]
    class ListApplicationDependenciesRequest < Struct.new(
      nil,
      :application_id,
      :max_items,
      :next_token,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dependencies
    #   <p>An array of application summaries nested in the application.</p>
    #   @return [Array<Types::ApplicationDependencySummary>]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ListApplicationDependenciesResponse < Struct.new(
      nil,
      :dependencies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The total number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating.</p>
    #   @return [String]
    class ListApplicationVersionsRequest < Struct.new(
      nil,
      :application_id,
      :max_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>An array of version summaries for the application.</p>
    #   @return [Array<Types::VersionSummary>]
    class ListApplicationVersionsResponse < Struct.new(
      nil,
      :next_token,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The total number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :max_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>An array of application summaries.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
    # @!attribute error_code
    #   <p>404</p>
    #   @return [String]
    # @!attribute message
    #   <p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters supported by the application.</p>
    # @!attribute allowed_pattern
    #   <p>A regular expression that represents the patterns to allow for String types.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>An array containing the list of values allowed for the parameter.</p>
    #   @return [Array<String>]
    # @!attribute constraint_description
    #   <p>A string that explains a constraint when the constraint is violated. For example, without a constraint description,
    #    a parameter that has an allowed pattern of [A-Za-z0-9]+ displays the following error message when the user
    #    specifies an invalid value:</p><p>
    #    Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+
    #    </p><p>By adding a constraint description, such as "must contain only uppercase and lowercase letters and numbers," you can display
    #    the following customized error message:</p><p>
    #    Malformed input-Parameter MyParameter must contain only uppercase and lowercase letters and numbers.
    #    </p>
    #   @return [String]
    # @!attribute default_value
    #   <p>A value of the appropriate type for the template to use if no value is specified when a stack is created.
    #    If you define constraints for the parameter, you must specify a value that adheres to those constraints.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A string of up to 4,000 characters that describes the parameter.</p>
    #   @return [String]
    # @!attribute max_length
    #   <p>An integer value that determines the largest number of characters that you want to allow for String types.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>A numeric value that determines the largest numeric value that you want to allow for Number types.</p>
    #   @return [Integer]
    # @!attribute min_length
    #   <p>An integer value that determines the smallest number of characters that you want to allow for String types.</p>
    #   @return [Integer]
    # @!attribute min_value
    #   <p>A numeric value that determines the smallest numeric value that you want to allow for Number types.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute no_echo
    #   <p>Whether to mask the parameter value whenever anyone makes a call that describes the stack. If you set the
    #    value to true, the parameter value is masked with asterisks (*****).</p>
    #   @return [Boolean]
    # @!attribute referenced_by_resources
    #   <p>A list of AWS SAM resources that use this parameter.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the parameter.</p><p>Valid values: String | Number | List&lt;Number> | CommaDelimitedList
    #    </p><p>
    #    String: A literal string.</p><p>For example, users can specify "MyUserName".</p><p>
    #    Number: An integer or float. AWS CloudFormation validates the parameter value as a number. However, when you use the
    #    parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.</p><p>For example, users might specify "8888".</p><p>
    #    List&lt;Number>: An array of integers or floats that are separated by commas. AWS CloudFormation validates the parameter value as numbers. However, when
    #    you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.</p><p>For example, users might specify "80,20", and then Ref results in ["80","20"].</p><p>
    #    CommaDelimitedList: An array of literal strings that are separated by commas. The total number of strings should be one more than the total number of commas.
    #    Also, each member string is space-trimmed.</p><p>For example, users might specify "test,dev,prod", and then Ref results in ["test","dev","prod"].</p>
    #   @return [String]
    class ParameterDefinition < Struct.new(
      nil,
      :allowed_pattern,
      :allowed_values,
      :constraint_description,
      :default_value,
      :description,
      :max_length,
      :max_value,
      :min_length,
      :min_value,
      :name,
      :no_echo,
      :referenced_by_resources,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter value of the application.</p>
    # @!attribute name
    #   <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation
    #    uses the default value that is specified in your template.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The input value associated with the parameter.</p>
    #   @return [String]
    class ParameterValue < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute statements
    #   <p>An array of policy statements applied to the application.</p>
    #   @return [Array<Types::ApplicationPolicyStatement>]
    class PutApplicationPolicyRequest < Struct.new(
      nil,
      :application_id,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statements
    #   <p>An array of policy statements applied to the application.</p>
    #   @return [Array<Types::ApplicationPolicyStatement>]
    class PutApplicationPolicyResponse < Struct.new(
      nil,
      :statements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This property corresponds to the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #  </i> Data Type.</p>
    # @!attribute monitoring_time_in_minutes
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #    </i> Data Type.</p>
    #   @return [Integer]
    # @!attribute rollback_triggers
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #    </i> Data Type.</p>
    #   @return [Array<Types::RollbackTrigger>]
    class RollbackConfiguration < Struct.new(
      nil,
      :monitoring_time_in_minutes,
      :rollback_triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This property corresponds to the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    #  </i> Data Type.</p>
    # @!attribute arn
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    #    </i> Data Type.</p>
    #   @return [String]
    # @!attribute type
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    #    </i> Data Type.</p>
    #   @return [String]
    class RollbackTrigger < Struct.new(
      nil,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This property corresponds to the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">Tag</a>
    #  </i> Data Type.</p>
    # @!attribute key
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">Tag</a>
    #    </i> Data Type.</p>
    #   @return [String]
    # @!attribute value
    #   <p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">
    #    Tag</a>
    #    </i>
    #    Data Type.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is sending more than the allowed number of requests per unit of time.</p>
    # @!attribute error_code
    #   <p>429</p>
    #   @return [String]
    # @!attribute message
    #   <p>The client is sending more than the allowed number of requests per unit of time.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The AWS Organization ID to unshare the application from.</p>
    #   @return [String]
    class UnshareApplicationRequest < Struct.new(
      nil,
      :application_id,
      :organization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute readme_body
    #   <p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :application_id,
      :author,
      :description,
      :home_page_url,
      :labels,
      :readme_body,
      :readme_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #   @return [String]
    # @!attribute home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #   @return [String]
    # @!attribute is_verified_author
    #   <p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>
    #   @return [Boolean]
    # @!attribute labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #   @return [Array<String>]
    # @!attribute license_url
    #   <p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #   @return [String]
    # @!attribute readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #   @return [String]
    # @!attribute spdx_license_id
    #   <p>A valid identifier from https://spdx.org/licenses/.</p>
    #   @return [String]
    # @!attribute verified_author_url
    #   <p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information about the application.</p>
    #   @return [Types::Version]
    class UpdateApplicationResponse < Struct.new(
      nil,
      :application_id,
      :author,
      :creation_time,
      :description,
      :home_page_url,
      :is_verified_author,
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :verified_author_url,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Application version details.</p>
    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute parameter_definitions
    #   <p>An array of parameter types supported by the application.</p>
    #   @return [Array<Types::ParameterDefinition>]
    # @!attribute required_capabilities
    #   <p>A list of values that you must specify before you can deploy certain applications.
    #    Some applications might include resources that can affect permissions in your AWS
    #    account, for example, by creating new AWS Identity and Access Management (IAM) users.
    #    For those applications, you must explicitly acknowledge their capabilities by
    #    specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
    #    CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
    #    CAPABILITY_NAMED_IAM:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
    #    If the application contains IAM resources, you can specify either CAPABILITY_IAM
    #    or CAPABILITY_NAMED_IAM. If the application contains IAM resources
    #    with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
    #    CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
    #    all permissions associated with the application before deploying. If you don't specify
    #    this parameter for an application that requires capabilities, the call will fail.</p>
    #   @return [Array<String>]
    # @!attribute resources_supported
    #   <p>Whether all of the AWS resources contained in this application are supported in the region
    #    in which it is being retrieved.</p>
    #   @return [Boolean]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #   @return [String]
    # @!attribute source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #   @return [String]
    # @!attribute template_url
    #   <p>A link to the packaged AWS SAM template of your application.</p>
    #   @return [String]
    class Version < Struct.new(
      nil,
      :application_id,
      :creation_time,
      :parameter_definitions,
      :required_capabilities,
      :resources_supported,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An application version summary.</p>
    # @!attribute application_id
    #   <p>The application Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time this resource was created.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #   @return [String]
    # @!attribute source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #   @return [String]
    class VersionSummary < Struct.new(
      nil,
      :application_id,
      :creation_time,
      :semantic_version,
      :source_code_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

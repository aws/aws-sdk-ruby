# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServerlessApplicationRepository
  module Types

    # Details about the application.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The name of the author publishing the app.
    #
    #   Minimum length=1. Maximum length=127.
    #
    #   Pattern "^\[a-z0-9\]((\[a-z0-9\]\|-(?!-))*\[a-z0-9\])?$";
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time this resource was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #
    #   Minimum length=1. Maximum length=256
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   A URL with more information about the application, for example the
    #   location of your GitHub repository for the application.
    #   @return [String]
    #
    # @!attribute [rw] is_verified_author
    #   Whether the author of this application has been verified. This means
    #   means that AWS has made a good faith review, as a reasonable and
    #   prudent service provider, of the information provided by the
    #   requester and has confirmed that the requester's identity is as
    #   claimed.
    #   @return [Boolean]
    #
    # @!attribute [rw] labels
    #   Labels to improve discovery of apps in search results.
    #
    #   Minimum length=1. Maximum length=127. Maximum number of labels: 10
    #
    #   Pattern: "^\[a-zA-Z0-9+\\\\-\_:\\\\/@\]+$";
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_url
    #   A link to a license file of the app that matches the spdxLicenseID
    #   value of your application.
    #
    #   Maximum size 5 MB
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #
    #   Minimum length=1. Maximum length=140
    #
    #   Pattern: "\[a-zA-Z0-9\\\\-\]+";
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   A link to the readme file in Markdown language that contains a more
    #   detailed description of the application and how it works.
    #
    #   Maximum size 5 MB
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   A valid identifier from https://spdx.org/licenses/.
    #   @return [String]
    #
    # @!attribute [rw] verified_author_url
    #   The URL to the public profile of a verified author. This URL is
    #   submitted by the author.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information about the application.
    #   @return [Types::Version]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/Application AWS API Documentation
    #
    class Application < Struct.new(
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
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of application summaries nested in the application.
    #
    # @!attribute [rw] dependencies
    #   An array of application summaries nested in the application.
    #   @return [Array<Types::ApplicationDependencySummary>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationDependencyPage AWS API Documentation
    #
    class ApplicationDependencyPage < Struct.new(
      :dependencies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A nested application summary.
    #
    # @!attribute [rw] application_id
    #   The Amazon Resource Name (ARN) of the nested application.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the nested application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationDependencySummary AWS API Documentation
    #
    class ApplicationDependencySummary < Struct.new(
      :application_id,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of application details.
    #
    # @!attribute [rw] applications
    #   An array of application summaries.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationPage AWS API Documentation
    #
    class ApplicationPage < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Policy statements applied to the application.
    #
    # @!attribute [rw] statements
    #   An array of policy statements applied to the application.
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationPolicy AWS API Documentation
    #
    class ApplicationPolicy < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Policy statement applied to the application.
    #
    # @note When making an API call, you may pass ApplicationPolicyStatement
    #   data as a hash:
    #
    #       {
    #         actions: ["__string"], # required
    #         principal_org_i_ds: ["__string"],
    #         principals: ["__string"], # required
    #         statement_id: "__string",
    #       }
    #
    # @!attribute [rw] actions
    #   For the list of actions supported for this operation, see
    #   [Application Permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions
    #   @return [Array<String>]
    #
    # @!attribute [rw] principal_org_i_ds
    #   An array of PrinciplalOrgIDs, which corresponds to AWS IAM
    #   [aws:PrincipalOrgID][1] global condition key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#principal-org-id
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   An array of AWS account IDs, or * to make the application public.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statement_id
    #   A unique ID for the statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationPolicyStatement AWS API Documentation
    #
    class ApplicationPolicyStatement < Struct.new(
      :actions,
      :principal_org_i_ds,
      :principals,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of details about the application.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The name of the author publishing the app.
    #
    #   Minimum length=1. Maximum length=127.
    #
    #   Pattern "^\[a-z0-9\]((\[a-z0-9\]\|-(?!-))*\[a-z0-9\])?$";
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time this resource was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #
    #   Minimum length=1. Maximum length=256
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   A URL with more information about the application, for example the
    #   location of your GitHub repository for the application.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   Labels to improve discovery of apps in search results.
    #
    #   Minimum length=1. Maximum length=127. Maximum number of labels: 10
    #
    #   Pattern: "^\[a-zA-Z0-9+\\\\-\_:\\\\/@\]+$";
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #
    #   Minimum length=1. Maximum length=140
    #
    #   Pattern: "\[a-zA-Z0-9\\\\-\]+";
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   A valid identifier from [https://spdx.org/licenses/][1].
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_id,
      :author,
      :creation_time,
      :description,
      :home_page_url,
      :labels,
      :name,
      :spdx_license_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of version summaries for the application.
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   An array of version summaries for the application.
    #   @return [Array<Types::VersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ApplicationVersionPage AWS API Documentation
    #
    class ApplicationVersionPage < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is invalid.
    #
    # @!attribute [rw] error_code
    #   400
    #   @return [String]
    #
    # @!attribute [rw] message
    #   One of the parameters in the request is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the change set.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   The Amazon Resource Name (ARN) of the change set.
    #
    #   Length constraints: Minimum length of 1.
    #
    #   Pattern: ARN:\[-a-zA-Z0-9:/\]*
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The unique ID of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ChangeSetDetails AWS API Documentation
    #
    class ChangeSetDetails < Struct.new(
      :application_id,
      :change_set_id,
      :semantic_version,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] error_code
    #   409
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The resource already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create an application request.
    #
    # @!attribute [rw] author
    #   The name of the author publishing the app.
    #
    #   Minimum length=1. Maximum length=127.
    #
    #   Pattern "^\[a-z0-9\]((\[a-z0-9\]\|-(?!-))*\[a-z0-9\])?$";
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #
    #   Minimum length=1. Maximum length=256
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   A URL with more information about the application, for example the
    #   location of your GitHub repository for the application.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   Labels to improve discovery of apps in search results.
    #
    #   Minimum length=1. Maximum length=127. Maximum number of labels: 10
    #
    #   Pattern: "^\[a-zA-Z0-9+\\\\-\_:\\\\/@\]+$";
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_body
    #   A local text file that contains the license of the app that matches
    #   the spdxLicenseID value of your application. The file has the format
    #   file://&lt;path>/&lt;filename>.
    #
    #   Maximum size 5 MB
    #
    #   You can specify only one of licenseBody and licenseUrl; otherwise,
    #   an error results.
    #   @return [String]
    #
    # @!attribute [rw] license_url
    #   A link to the S3 object that contains the license of the app that
    #   matches the spdxLicenseID value of your application.
    #
    #   Maximum size 5 MB
    #
    #   You can specify only one of licenseBody and licenseUrl; otherwise,
    #   an error results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application that you want to publish.
    #
    #   Minimum length=1. Maximum length=140
    #
    #   Pattern: "\[a-zA-Z0-9\\\\-\]+";
    #   @return [String]
    #
    # @!attribute [rw] readme_body
    #   A local text readme file in Markdown language that contains a more
    #   detailed description of the application and how it works. The file
    #   has the format file://&lt;path>/&lt;filename>.
    #
    #   Maximum size 5 MB
    #
    #   You can specify only one of readmeBody and readmeUrl; otherwise, an
    #   error results.
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   A link to the S3 object in Markdown language that contains a more
    #   detailed description of the application and how it works.
    #
    #   Maximum size 5 MB
    #
    #   You can specify only one of readmeBody and readmeUrl; otherwise, an
    #   error results.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] source_code_archive_url
    #   A link to the S3 object that contains the ZIP archive of the source
    #   code for this version of your application.
    #
    #   Maximum size 50 MB
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   A link to a public repository for the source code of your
    #   application, for example the URL of a specific GitHub commit.
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   A valid identifier from [https://spdx.org/licenses/][1].
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The local raw packaged AWS SAM template file of your application.
    #   The file has the format file://&lt;path>/&lt;filename>.
    #
    #   You can specify only one of templateBody and templateUrl; otherwise
    #   an error results.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   A link to the S3 object containing the packaged AWS SAM template of
    #   your application.
    #
    #   You can specify only one of templateBody and templateUrl; otherwise
    #   an error results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationInput AWS API Documentation
    #
    class CreateApplicationInput < Struct.new(
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
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         author: "__string", # required
    #         description: "__string", # required
    #         home_page_url: "__string",
    #         labels: ["__string"],
    #         license_body: "__string",
    #         license_url: "__string",
    #         name: "__string", # required
    #         readme_body: "__string",
    #         readme_url: "__string",
    #         semantic_version: "__string",
    #         source_code_archive_url: "__string",
    #         source_code_url: "__string",
    #         spdx_license_id: "__string",
    #         template_body: "__string",
    #         template_url: "__string",
    #       }
    #
    # @!attribute [rw] author
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_body
    #   @return [String]
    #
    # @!attribute [rw] license_url
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] readme_body
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] source_code_archive_url
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
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
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] author
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   @return [String]
    #
    # @!attribute [rw] is_verified_author
    #   @return [Boolean]
    #
    # @!attribute [rw] labels
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_url
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   @return [String]
    #
    # @!attribute [rw] verified_author_url
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Application version details.
    #   @return [Types::Version]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
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
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a version request.
    #
    # @!attribute [rw] source_code_archive_url
    #   A link to the S3 object that contains the ZIP archive of the source
    #   code for this version of your application.
    #
    #   Maximum size 50 MB
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   A link to a public repository for the source code of your
    #   application, for example the URL of a specific GitHub commit.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The raw packaged AWS SAM template of your application.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   A link to the packaged AWS SAM template of your application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationVersionInput AWS API Documentation
    #
    class CreateApplicationVersionInput < Struct.new(
      :source_code_archive_url,
      :source_code_url,
      :template_body,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         semantic_version: "__string", # required
    #         source_code_archive_url: "__string",
    #         source_code_url: "__string",
    #         template_body: "__string",
    #         template_url: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] source_code_archive_url
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationVersionRequest AWS API Documentation
    #
    class CreateApplicationVersionRequest < Struct.new(
      :application_id,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_body,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] parameter_definitions
    #   @return [Array<Types::ParameterDefinition>]
    #
    # @!attribute [rw] required_capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_supported
    #   @return [Boolean]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] source_code_archive_url
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateApplicationVersionResponse AWS API Documentation
    #
    class CreateApplicationVersionResponse < Struct.new(
      :application_id,
      :creation_time,
      :parameter_definitions,
      :required_capabilities,
      :resources_supported,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create an application change set request.
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before you can deploy certain
    #   applications. Some applications might include resources that can
    #   affect permissions in your AWS account, for example, by creating new
    #   AWS Identity and Access Management (IAM) users. For those
    #   applications, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM, CAPABILITY\_NAMED\_IAM,
    #   CAPABILITY\_RESOURCE\_POLICY, and CAPABILITY\_AUTO\_EXPAND.
    #
    #   The following resources require you to specify CAPABILITY\_IAM or
    #   CAPABILITY\_NAMED\_IAM: [AWS::IAM::Group][1],
    #   [AWS::IAM::InstanceProfile][2], [AWS::IAM::Policy][3], and
    #   [AWS::IAM::Role][4]. If the application contains IAM resources, you
    #   can specify either CAPABILITY\_IAM or CAPABILITY\_NAMED\_IAM. If the
    #   application contains IAM resources with custom names, you must
    #   specify CAPABILITY\_NAMED\_IAM.
    #
    #   The following resources require you to specify
    #   CAPABILITY\_RESOURCE\_POLICY: [AWS::Lambda::Permission][5],
    #   [AWS::IAM:Policy][3],
    #   [AWS::ApplicationAutoScaling::ScalingPolicy][6],
    #   [AWS::S3::BucketPolicy][7], [AWS::SQS::QueuePolicy][8], and
    #   [AWS::SNS:TopicPolicy][9].
    #
    #   Applications that contain one or more nested applications require
    #   you to specify CAPABILITY\_AUTO\_EXPAND.
    #
    #   If your application template contains any of the above resources, we
    #   recommend that you review all permissions associated with the
    #   application before deploying. If you don't specify this parameter
    #   for an application that requires capabilities, the call will fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] change_set_name
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of parameter values for the parameters of the application.
    #   @return [Array<Types::ParameterValue>]
    #
    # @!attribute [rw] resource_types
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rollback_configuration
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   This property corresponds to the parameter of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #   </i> API.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_id
    #   The UUID returned by CreateCloudFormationTemplate.
    #
    #   Pattern:
    #   \[0-9a-fA-F\]\\\{8\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{12\\}
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSetInput AWS API Documentation
    #
    class CreateCloudFormationChangeSetInput < Struct.new(
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
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCloudFormationChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         capabilities: ["__string"],
    #         change_set_name: "__string",
    #         client_token: "__string",
    #         description: "__string",
    #         notification_arns: ["__string"],
    #         parameter_overrides: [
    #           {
    #             name: "__string", # required
    #             value: "__string", # required
    #           },
    #         ],
    #         resource_types: ["__string"],
    #         rollback_configuration: {
    #           monitoring_time_in_minutes: 1,
    #           rollback_triggers: [
    #             {
    #               arn: "__string", # required
    #               type: "__string", # required
    #             },
    #           ],
    #         },
    #         semantic_version: "__string",
    #         stack_name: "__string", # required
    #         tags: [
    #           {
    #             key: "__string", # required
    #             value: "__string", # required
    #           },
    #         ],
    #         template_id: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] change_set_name
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   @return [Array<Types::ParameterValue>]
    #
    # @!attribute [rw] resource_types
    #   @return [Array<String>]
    #
    # @!attribute [rw] rollback_configuration
    #   This property corresponds to the <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #   </i> Data Type.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSetRequest AWS API Documentation
    #
    class CreateCloudFormationChangeSetRequest < Struct.new(
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
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSetResponse AWS API Documentation
    #
    class CreateCloudFormationChangeSetResponse < Struct.new(
      :application_id,
      :change_set_id,
      :semantic_version,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCloudFormationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         semantic_version: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationTemplateRequest AWS API Documentation
    #
    class CreateCloudFormationTemplateRequest < Struct.new(
      :application_id,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationTemplateResponse AWS API Documentation
    #
    class CreateCloudFormationTemplateResponse < Struct.new(
      :application_id,
      :creation_time,
      :expiration_time,
      :semantic_version,
      :status,
      :template_id,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not authenticated.
    #
    # @!attribute [rw] error_code
    #   403
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The client is not authenticated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationPolicyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationPolicyRequest AWS API Documentation
    #
    class GetApplicationPolicyRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statements
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationPolicyResponse AWS API Documentation
    #
    class GetApplicationPolicyResponse < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         semantic_version: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] author
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   @return [String]
    #
    # @!attribute [rw] is_verified_author
    #   @return [Boolean]
    #
    # @!attribute [rw] labels
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_url
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   @return [String]
    #
    # @!attribute [rw] verified_author_url
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Application version details.
    #   @return [Types::Version]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
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
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCloudFormationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         template_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetCloudFormationTemplateRequest AWS API Documentation
    #
    class GetCloudFormationTemplateRequest < Struct.new(
      :application_id,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetCloudFormationTemplateResponse AWS API Documentation
    #
    class GetCloudFormationTemplateResponse < Struct.new(
      :application_id,
      :creation_time,
      :expiration_time,
      :semantic_version,
      :status,
      :template_id,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Serverless Application Repository service encountered an
    # internal error.
    #
    # @!attribute [rw] error_code
    #   500
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The AWS Serverless Application Repository service encountered an
    #   internal error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationDependenciesRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         max_items: 1,
    #         next_token: "__string",
    #         semantic_version: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationDependenciesRequest AWS API Documentation
    #
    class ListApplicationDependenciesRequest < Struct.new(
      :application_id,
      :max_items,
      :next_token,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dependencies
    #   @return [Array<Types::ApplicationDependencySummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationDependenciesResponse AWS API Documentation
    #
    class ListApplicationDependenciesResponse < Struct.new(
      :dependencies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationVersionsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         max_items: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationVersionsRequest AWS API Documentation
    #
    class ListApplicationVersionsRequest < Struct.new(
      :application_id,
      :max_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   @return [Array<Types::VersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationVersionsResponse AWS API Documentation
    #
    class ListApplicationVersionsResponse < Struct.new(
      :next_token,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         max_items: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_items
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource (for example, an access policy statement) specified in
    # the request doesn't exist.
    #
    # @!attribute [rw] error_code
    #   404
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The resource (for example, an access policy statement) specified in
    #   the request doesn't exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters supported by the application.
    #
    # @!attribute [rw] allowed_pattern
    #   A regular expression that represents the patterns to allow for
    #   String types.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   An array containing the list of values allowed for the parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] constraint_description
    #   A string that explains a constraint when the constraint is violated.
    #   For example, without a constraint description, a parameter that has
    #   an allowed pattern of \[A-Za-z0-9\]+ displays the following error
    #   message when the user specifies an invalid value:
    #
    #   Malformed input-Parameter MyParameter must match pattern
    #   \[A-Za-z0-9\]+
    #
    #   By adding a constraint description, such as "must contain only
    #   uppercase and lowercase letters and numbers," you can display the
    #   following customized error message:
    #
    #   Malformed input-Parameter MyParameter must contain only uppercase
    #   and lowercase letters and numbers.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   A value of the appropriate type for the template to use if no value
    #   is specified when a stack is created. If you define constraints for
    #   the parameter, you must specify a value that adheres to those
    #   constraints.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string of up to 4,000 characters that describes the parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_length
    #   An integer value that determines the largest number of characters
    #   that you want to allow for String types.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   A numeric value that determines the largest numeric value that you
    #   want to allow for Number types.
    #   @return [Integer]
    #
    # @!attribute [rw] min_length
    #   An integer value that determines the smallest number of characters
    #   that you want to allow for String types.
    #   @return [Integer]
    #
    # @!attribute [rw] min_value
    #   A numeric value that determines the smallest numeric value that you
    #   want to allow for Number types.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] no_echo
    #   Whether to mask the parameter value whenever anyone makes a call
    #   that describes the stack. If you set the value to true, the
    #   parameter value is masked with asterisks (*****).
    #   @return [Boolean]
    #
    # @!attribute [rw] referenced_by_resources
    #   A list of AWS SAM resources that use this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the parameter.
    #
    #   Valid values: String \| Number \| List&lt;Number> \|
    #   CommaDelimitedList
    #
    #   String: A literal string.
    #
    #   For example, users can specify "MyUserName".
    #
    #   Number: An integer or float. AWS CloudFormation validates the
    #   parameter value as a number. However, when you use the parameter
    #   elsewhere in your template (for example, by using the Ref intrinsic
    #   function), the parameter value becomes a string.
    #
    #   For example, users might specify "8888".
    #
    #   List&lt;Number>: An array of integers or floats that are separated
    #   by commas. AWS CloudFormation validates the parameter value as
    #   numbers. However, when you use the parameter elsewhere in your
    #   template (for example, by using the Ref intrinsic function), the
    #   parameter value becomes a list of strings.
    #
    #   For example, users might specify "80,20", and then Ref results in
    #   \["80","20"\].
    #
    #   CommaDelimitedList: An array of literal strings that are separated
    #   by commas. The total number of strings should be one more than the
    #   total number of commas. Also, each member string is space-trimmed.
    #
    #   For example, users might specify "test,dev,prod", and then Ref
    #   results in \["test","dev","prod"\].
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ParameterDefinition AWS API Documentation
    #
    class ParameterDefinition < Struct.new(
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
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter value of the application.
    #
    # @note When making an API call, you may pass ParameterValue
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #         value: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The key associated with the parameter. If you don't specify a key
    #   and value for a particular parameter, AWS CloudFormation uses the
    #   default value that is specified in your template.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The input value associated with the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/ParameterValue AWS API Documentation
    #
    class ParameterValue < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutApplicationPolicyRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         statements: [ # required
    #           {
    #             actions: ["__string"], # required
    #             principal_org_i_ds: ["__string"],
    #             principals: ["__string"], # required
    #             statement_id: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] statements
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/PutApplicationPolicyRequest AWS API Documentation
    #
    class PutApplicationPolicyRequest < Struct.new(
      :application_id,
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statements
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/PutApplicationPolicyResponse AWS API Documentation
    #
    class PutApplicationPolicyResponse < Struct.new(
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # This property corresponds to the <i>AWS CloudFormation <a
    # href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    # </i> Data Type.
    #
    # @note When making an API call, you may pass RollbackConfiguration
    #   data as a hash:
    #
    #       {
    #         monitoring_time_in_minutes: 1,
    #         rollback_triggers: [
    #           {
    #             arn: "__string", # required
    #             type: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] monitoring_time_in_minutes
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #   </i> Data Type.
    #   @return [Integer]
    #
    # @!attribute [rw] rollback_triggers
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration">RollbackConfiguration</a>
    #   </i> Data Type.
    #   @return [Array<Types::RollbackTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/RollbackConfiguration AWS API Documentation
    #
    class RollbackConfiguration < Struct.new(
      :monitoring_time_in_minutes,
      :rollback_triggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # This property corresponds to the <i>AWS CloudFormation <a
    # href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    # </i> Data Type.
    #
    # @note When making an API call, you may pass RollbackTrigger
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         type: "__string", # required
    #       }
    #
    # @!attribute [rw] arn
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    #   </i> Data Type.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger">RollbackTrigger</a>
    #   </i> Data Type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/RollbackTrigger AWS API Documentation
    #
    class RollbackTrigger < Struct.new(
      :arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This property corresponds to the <i>AWS CloudFormation <a
    # href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">Tag</a>
    # </i> Data Type.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "__string", # required
    #         value: "__string", # required
    #       }
    #
    # @!attribute [rw] key
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">Tag</a>
    #   </i> Data Type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   This property corresponds to the content of the same name for the
    #   <i>AWS CloudFormation <a
    #   href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag">
    #   Tag</a> </i> Data Type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the template.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time this resource was created.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The date and time this template expires. Templates expire 1 hour
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the template creation workflow.
    #
    #   Possible values: PREPARING \| ACTIVE \| EXPIRED
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The UUID returned by CreateCloudFormationTemplate.
    #
    #   Pattern:
    #   \[0-9a-fA-F\]\\\{8\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{4\\}\\-\[0-9a-fA-F\]\\\{12\\}
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   A link to the template that can be used to deploy the application
    #   using AWS CloudFormation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/TemplateDetails AWS API Documentation
    #
    class TemplateDetails < Struct.new(
      :application_id,
      :creation_time,
      :expiration_time,
      :semantic_version,
      :status,
      :template_id,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is sending more than the allowed number of requests per
    # unit of time.
    #
    # @!attribute [rw] error_code
    #   429
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The client is sending more than the allowed number of requests per
    #   unit of time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unshare application request.
    #
    # @!attribute [rw] organization_id
    #   The AWS Organization ID to unshare the application from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UnshareApplicationInput AWS API Documentation
    #
    class UnshareApplicationInput < Struct.new(
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnshareApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         organization_id: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UnshareApplicationRequest AWS API Documentation
    #
    class UnshareApplicationRequest < Struct.new(
      :application_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update the application request.
    #
    # @!attribute [rw] author
    #   The name of the author publishing the app.
    #
    #   Minimum length=1. Maximum length=127.
    #
    #   Pattern "^\[a-z0-9\]((\[a-z0-9\]\|-(?!-))*\[a-z0-9\])?$";
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #
    #   Minimum length=1. Maximum length=256
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   A URL with more information about the application, for example the
    #   location of your GitHub repository for the application.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   Labels to improve discovery of apps in search results.
    #
    #   Minimum length=1. Maximum length=127. Maximum number of labels: 10
    #
    #   Pattern: "^\[a-zA-Z0-9+\\\\-\_:\\\\/@\]+$";
    #   @return [Array<String>]
    #
    # @!attribute [rw] readme_body
    #   A text readme file in Markdown language that contains a more
    #   detailed description of the application and how it works.
    #
    #   Maximum size 5 MB
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   A link to the readme file in Markdown language that contains a more
    #   detailed description of the application and how it works.
    #
    #   Maximum size 5 MB
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UpdateApplicationInput AWS API Documentation
    #
    class UpdateApplicationInput < Struct.new(
      :author,
      :description,
      :home_page_url,
      :labels,
      :readme_body,
      :readme_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         author: "__string",
    #         description: "__string",
    #         home_page_url: "__string",
    #         labels: ["__string"],
    #         readme_body: "__string",
    #         readme_url: "__string",
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] author
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   @return [Array<String>]
    #
    # @!attribute [rw] readme_body
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :author,
      :description,
      :home_page_url,
      :labels,
      :readme_body,
      :readme_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] author
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] home_page_url
    #   @return [String]
    #
    # @!attribute [rw] is_verified_author
    #   @return [Boolean]
    #
    # @!attribute [rw] labels
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_url
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   @return [String]
    #
    # @!attribute [rw] spdx_license_id
    #   @return [String]
    #
    # @!attribute [rw] verified_author_url
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Application version details.
    #   @return [Types::Version]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
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
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application version details.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time this resource was created.
    #   @return [String]
    #
    # @!attribute [rw] parameter_definitions
    #   An array of parameter types supported by the application.
    #   @return [Array<Types::ParameterDefinition>]
    #
    # @!attribute [rw] required_capabilities
    #   A list of values that you must specify before you can deploy certain
    #   applications. Some applications might include resources that can
    #   affect permissions in your AWS account, for example, by creating new
    #   AWS Identity and Access Management (IAM) users. For those
    #   applications, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM, CAPABILITY\_NAMED\_IAM,
    #   CAPABILITY\_RESOURCE\_POLICY, and CAPABILITY\_AUTO\_EXPAND.
    #
    #   The following resources require you to specify CAPABILITY\_IAM or
    #   CAPABILITY\_NAMED\_IAM: [AWS::IAM::Group][1],
    #   [AWS::IAM::InstanceProfile][2], [AWS::IAM::Policy][3], and
    #   [AWS::IAM::Role][4]. If the application contains IAM resources, you
    #   can specify either CAPABILITY\_IAM or CAPABILITY\_NAMED\_IAM. If the
    #   application contains IAM resources with custom names, you must
    #   specify CAPABILITY\_NAMED\_IAM.
    #
    #   The following resources require you to specify
    #   CAPABILITY\_RESOURCE\_POLICY: [AWS::Lambda::Permission][5],
    #   [AWS::IAM:Policy][3],
    #   [AWS::ApplicationAutoScaling::ScalingPolicy][6],
    #   [AWS::S3::BucketPolicy][7], [AWS::SQS::QueuePolicy][8], and
    #   [AWS::SNS::TopicPolicy][9].
    #
    #   Applications that contain one or more nested applications require
    #   you to specify CAPABILITY\_AUTO\_EXPAND.
    #
    #   If your application template contains any of the above resources, we
    #   recommend that you review all permissions associated with the
    #   application before deploying. If you don't specify this parameter
    #   for an application that requires capabilities, the call will fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_supported
    #   Whether all of the AWS resources contained in this application are
    #   supported in the region in which it is being retrieved.
    #   @return [Boolean]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] source_code_archive_url
    #   A link to the S3 object that contains the ZIP archive of the source
    #   code for this version of your application.
    #
    #   Maximum size 50 MB
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   A link to a public repository for the source code of your
    #   application, for example the URL of a specific GitHub commit.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   A link to the packaged AWS SAM template of your application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/Version AWS API Documentation
    #
    class Version < Struct.new(
      :application_id,
      :creation_time,
      :parameter_definitions,
      :required_capabilities,
      :resources_supported,
      :semantic_version,
      :source_code_archive_url,
      :source_code_url,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # An application version summary.
    #
    # @!attribute [rw] application_id
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time this resource was created.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the application:
    #
    #   [https://semver.org/][1]
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] source_code_url
    #   A link to a public repository for the source code of your
    #   application, for example the URL of a specific GitHub commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/VersionSummary AWS API Documentation
    #
    class VersionSummary < Struct.new(
      :application_id,
      :creation_time,
      :semantic_version,
      :source_code_url)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

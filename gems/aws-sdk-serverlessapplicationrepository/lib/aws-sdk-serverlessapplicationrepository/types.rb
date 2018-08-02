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
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :version)
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
      include Aws::Structure
    end

    # Policy statement applied to the application.
    #
    # @note When making an API call, you may pass ApplicationPolicyStatement
    #   data as a hash:
    #
    #       {
    #         actions: ["__string"], # required
    #         principals: ["__string"], # required
    #         statement_id: "__string",
    #       }
    #
    # @!attribute [rw] actions
    #   See [Application Permissions][1] for the list of supported actions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   An AWS account ID, or * to make the application public.
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
      :principals,
      :statement_id)
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
    #   the spdxLicenseID value of your application. The file is of the
    #   format file://&lt;path>/&lt;filename>.
    #
    #   Maximum size 5 MB
    #
    #   Note: Only one of licenseBody and licenseUrl can be specified,
    #   otherwise an error will result.
    #   @return [String]
    #
    # @!attribute [rw] license_url
    #   A link to the S3 object that contains the license of the app that
    #   matches the spdxLicenseID value of your application.
    #
    #   Maximum size 5 MB
    #
    #   Note: Only one of licenseBody and licenseUrl can be specified,
    #   otherwise an error will result.
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
    #   is of the format file://&lt;path>/&lt;filename>.
    #
    #   Maximum size 5 MB
    #
    #   Note: Only one of readmeBody and readmeUrl can be specified,
    #   otherwise an error will result.
    #   @return [String]
    #
    # @!attribute [rw] readme_url
    #   A link to the S3 object in Markdown language that contains a more
    #   detailed description of the application and how it works.
    #
    #   Maximum size 5 MB
    #
    #   Note: Only one of readmeBody and readmeUrl can be specified,
    #   otherwise an error will result.
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
    #   application.
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
    #   The file is of the format file://&lt;path>/&lt;filename>.
    #
    #   Note: Only one of templateBody and templateUrl can be specified,
    #   otherwise an error will result.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   A link to the S3 object cotaining the packaged AWS SAM template of
    #   your application.
    #
    #   Note: Only one of templateBody and templateUrl can be specified,
    #   otherwise an error will result.
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
      :source_code_url,
      :spdx_license_id,
      :template_body,
      :template_url)
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
      :source_code_url,
      :spdx_license_id,
      :template_body,
      :template_url)
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
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :version)
      include Aws::Structure
    end

    # Create a version request.
    #
    # @!attribute [rw] source_code_url
    #   A link to a public repository for the source code of your
    #   application.
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
      :source_code_url,
      :template_body,
      :template_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationVersionRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         semantic_version: "__string", # required
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
      :source_code_url,
      :template_body,
      :template_url)
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
    # @!attribute [rw] semantic_version
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
      :semantic_version,
      :source_code_url,
      :template_url)
      include Aws::Structure
    end

    # Create an application change set request.
    #
    # @!attribute [rw] parameter_overrides
    #   A list of parameter values for the parameters of the application.
    #   @return [Array<Types::ParameterValue>]
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
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. AWS CloudFormation generates the change set by comparing
    #   this stack's information with the information that you submit, such
    #   as a modified template or different parameter input values.
    #
    #   Constraints: Minimum length of 1.
    #
    #   Pattern:
    #   (\[a-zA-Z\]\[-a-zA-Z0-9\]*)\|(arn:\\b(aws\|aws-us-gov\|aws-cn)\\b:\[-a-zA-Z0-9:/.\_+\]*)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSetInput AWS API Documentation
    #
    class CreateCloudFormationChangeSetInput < Struct.new(
      :parameter_overrides,
      :semantic_version,
      :stack_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCloudFormationChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "__string", # required
    #         parameter_overrides: [
    #           {
    #             name: "__string", # required
    #             value: "__string", # required
    #           },
    #         ],
    #         semantic_version: "__string",
    #         stack_name: "__string", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   @return [String]
    #
    # @!attribute [rw] parameter_overrides
    #   @return [Array<Types::ParameterValue>]
    #
    # @!attribute [rw] semantic_version
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/CreateCloudFormationChangeSetRequest AWS API Documentation
    #
    class CreateCloudFormationChangeSetRequest < Struct.new(
      :application_id,
      :parameter_overrides,
      :semantic_version,
      :stack_name)
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
      include Aws::Structure
    end

    # @!attribute [rw] statements
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/GetApplicationPolicyResponse AWS API Documentation
    #
    class GetApplicationPolicyResponse < Struct.new(
      :statements)
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
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :version)
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
      include Aws::Structure
    end

    # @!attribute [rw] statements
    #   @return [Array<Types::ApplicationPolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/PutApplicationPolicyResponse AWS API Documentation
    #
    class PutApplicationPolicyResponse < Struct.new(
      :statements)
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
      :labels,
      :license_url,
      :name,
      :readme_url,
      :spdx_license_id,
      :version)
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
    #   application.
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
      :semantic_version,
      :source_code_url,
      :template_url)
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
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08/VersionSummary AWS API Documentation
    #
    class VersionSummary < Struct.new(
      :application_id,
      :creation_time,
      :semantic_version,
      :source_code_url)
      include Aws::Structure
    end

  end
end

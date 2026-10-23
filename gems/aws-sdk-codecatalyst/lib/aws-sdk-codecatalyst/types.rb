# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied because you don't have sufficient access to perform this action. Verify that you are a member of a role that allows this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a specified personal access token (PAT).</p>
    # @!attribute id
    #   <p>The system-generated ID of the personal access token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time when the personal access token will expire, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class AccessTokenSummary < Struct.new(
      nil,
      :id,
      :name,
      :expires_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because the requested operation would cause a conflict with the current state of a service resource associated with the request. 
    #        Another user might have updated the resource. Reload, make sure you have the latest data, and then try again.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class CreateAccessTokenRequest < Struct.new(
      nil,
      :name,
      :expires_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute secret
    #   <p>The secret value of the personal access token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>. If not specified, the default is one year from creation.</p>
    #   @return [Time]
    # @!attribute access_token_id
    #   <p>The system-generated unique ID of the access token.</p>
    #   @return [String]
    class CreateAccessTokenResponse < Struct.new(
      nil,
      :secret,
      :name,
      :expires_time,
      :access_token_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>The source repository that contains the branch to clone into the Dev Environment. </p>
    #   @return [Array<Types::RepositoryInput>]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-defined alias for a Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a
    #         Dev Environment.</p>
    #            <note>
    #               <p>An IDE is required to create a Dev Environment. For Dev Environment creation, this field
    #           contains configuration information and must be provided. </p>
    #            </note>
    #   @return [Array<Types::IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the amount of storage allocated to the Dev Environment. </p>
    #            <note>
    #               <p>By default, a Dev Environment is configured to have 16GB of persistent storage when created from the Amazon CodeCatalyst console, but there is no default when programmatically
    #           creating a Dev Environment. 
    #           Valid values for persistent storage are based on memory sizes in 16GB increments. Valid
    #           values are 16, 32, and 64.</p>
    #            </note>
    #   @return [Types::PersistentStorageConfiguration]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection that will be used to connect to Amazon VPC, if any.</p>
    #   @return [String]
    class CreateDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :repositories,
      :client_token,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :persistent_storage,
      :vpc_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class CreateDevEnvironmentResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :vpc_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project that will be displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.</p>
    #   @return [String]
    class CreateProjectRequest < Struct.new(
      nil,
      :space_name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class CreateProjectResponse < Struct.new(
      nil,
      :space_name,
      :name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the repository where you want to create a branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the branch you're creating.</p>
    #   @return [String]
    # @!attribute head_commit_id
    #   <p>The commit ID in an existing branch from which you want to create the new branch.</p>
    #   @return [String]
    class CreateSourceRepositoryBranchRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :source_repository_name,
      :name,
      :head_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ref
    #   <p>The Git reference name of the branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the newly created branch.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute head_commit_id
    #   <p>The commit ID of the tip of the newly created branch.</p>
    #   @return [String]
    class CreateSourceRepositoryBranchResponse < Struct.new(
      nil,
      :ref,
      :name,
      :last_updated_time,
      :head_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository. For more information about name requirements, see <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html">Quotas for source repositories</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    class CreateSourceRepositoryRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    class CreateSourceRepositoryResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the personal access token to delete. You can find the IDs of all PATs associated with your Amazon Web Services Builder ID in a space by calling <a>ListAccessTokens</a>.</p>
    #   @return [String]
    class DeleteAccessTokenRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessTokenResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment you want to delete. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    class DeleteDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the deleted Dev Environment. </p>
    #   @return [String]
    class DeleteDevEnvironmentResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space. To retrieve a list of project names, use <a>ListProjects</a>.</p>
    #   @return [String]
    class DeleteProjectRequest < Struct.new(
      nil,
      :space_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>
    #   @return [String]
    class DeleteProjectResponse < Struct.new(
      nil,
      :space_name,
      :name,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class DeleteSourceRepositoryRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the repository.</p>
    #   @return [String]
    class DeleteSourceRepositoryResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.  To retrieve a list of space names, use <a>ListSpaces</a>.</p>
    #   @return [String]
    class DeleteSpaceRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users of the space in Amazon CodeCatalyst.</p>
    #   @return [String]
    class DeleteSpaceResponse < Struct.new(
      nil,
      :name,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about connection details for a Dev Environment.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute stream_url
    #   <p>The URL used to send commands to and from the Dev Environment.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>An encrypted token value that contains session and caller information used to authenticate the connection.</p>
    #   @return [String]
    class DevEnvironmentAccessDetails < Struct.new(
      nil,
      :stream_url,
      :token_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the source repsitory for a Dev Environment. </p>
    # @!attribute repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch in a source repository cloned into the Dev Environment. </p>
    #   @return [String]
    class DevEnvironmentRepositorySummary < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration of a Dev Environment session.</p>
    # @!attribute session_type
    #   <p>The type of the session.</p>
    #   @return [String]
    # @!attribute execute_command_session_configuration
    #   <p>Information about optional commands that will be run on the Dev Environment when the SSH session begins.</p>
    #   @return [Types::ExecuteCommandSessionConfiguration]
    class DevEnvironmentSessionConfiguration < Struct.new(
      nil,
      :session_type,
      :execute_command_session_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about active sessions for a Dev Environment.</p>
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute dev_environment_id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute started_time
    #   <p>The date and time the session started, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    class DevEnvironmentSessionSummary < Struct.new(
      nil,
      :space_name,
      :project_name,
      :dev_environment_id,
      :started_time,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Dev Environment. </p>
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID for the Dev Environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute creator_id
    #   <p>The system-generated unique ID of the user who created the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>Information about the repositories that will be cloned into the Dev Environment. If no rvalue is specified, no repository is cloned.</p>
    #   @return [Array<Types::DevEnvironmentRepositorySummary>]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>
    #   @return [Array<Types::Ide>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type used for the Dev Environment. </p>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the configuration of persistent storage for the Dev Environment.</p>
    #   @return [Types::PersistentStorage]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class DevEnvironmentSummary < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :last_updated_time,
      :creator_id,
      :status,
      :status_reason,
      :repositories,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :persistent_storage,
      :vpc_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:inactivity_timeout_minutes] = 0 unless options.key?(:inactivity_timeout_minutes)
        super
      end
    end

    # <p>Information about an email address.</p>
    # @!attribute email
    #   <p>The email address.</p>
    #   @return [String]
    # @!attribute verified
    #   <p>Whether the email address has been verified.</p>
    #   @return [Boolean]
    class EmailAddress < Struct.new(
      nil,
      :email,
      :verified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an entry in an event log of Amazon CodeCatalyst activity.</p>
    # @!attribute id
    #   <p>The system-generated unique ID of the event.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute event_category
    #   <p>The category for the event.</p>
    #   @return [String]
    # @!attribute event_source
    #   <p>The source of the event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The time the event took place, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute operation_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute user_identity
    #   <p>The system-generated unique ID of the user whose actions are recorded in the event.</p>
    #   @return [Types::UserIdentity]
    # @!attribute project_information
    #   <p>Information about the project where the event occurred.</p>
    #   @return [Types::ProjectInformation]
    # @!attribute request_id
    #   <p>The system-generated unique ID of the request.</p>
    #   @return [String]
    # @!attribute request_payload
    #   <p>Information about the payload of the request.</p>
    #   @return [Types::EventPayload]
    # @!attribute response_payload
    #   <p>Information about the payload of the response, if any.</p>
    #   @return [Types::EventPayload]
    # @!attribute error_code
    #   <p>The code of the error, if any.</p>
    #   @return [String]
    # @!attribute source_ip_address
    #   <p>The IP address of the user whose actions are recorded in the event.</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>The user agent whose actions are recorded in the event.</p>
    #   @return [String]
    class EventLogEntry < Struct.new(
      nil,
      :id,
      :event_name,
      :event_type,
      :event_category,
      :event_source,
      :event_time,
      :operation_type,
      :user_identity,
      :project_information,
      :request_id,
      :request_payload,
      :response_payload,
      :error_code,
      :source_ip_address,
      :user_agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the payload of an event recording Amazon CodeCatalyst activity.</p>
    # @!attribute content_type
    #   <p>The type of content in the event payload.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data included in the event payload.</p>
    #   @return [String]
    class EventPayload < Struct.new(
      nil,
      :content_type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the commands that will be run on a Dev Environment when an SSH session begins.</p>
    # @!attribute command
    #   <p>The command used at the beginning of the SSH session to a Dev Environment.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>An array of arguments containing arguments and members.</p>
    #   @return [Array<String>]
    class ExecuteCommandSessionConfiguration < Struct.new(
      nil,
      :command,
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a filter used to limit results of a query.</p>
    # @!attribute key
    #   <p>A key that can be used to sort results.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the key.</p>
    #   @return [Array<String>]
    # @!attribute comparison_operator
    #   <p>The operator used to compare the fields.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :key,
      :values,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    class GetDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute creator_id
    #   <p>The system-generated unique ID of the user who created the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Dev Environment.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>The source repository that contains the branch cloned into the Dev Environment. </p>
    #   @return [Array<Types::DevEnvironmentRepositorySummary>]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment. </p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for the Dev Environment. </p>
    #   @return [Array<Types::Ide>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the amount of storage allocated to the Dev Environment.  By default, a Dev Environment is configured to have 16GB of persistent storage.</p>
    #   @return [Types::PersistentStorage]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class GetDevEnvironmentResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :last_updated_time,
      :creator_id,
      :status,
      :status_reason,
      :repositories,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :persistent_storage,
      :vpc_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:inactivity_timeout_minutes] = 0 unless options.key?(:inactivity_timeout_minutes)
        super
      end
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetProjectRequest < Struct.new(
      nil,
      :space_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class GetProjectResponse < Struct.new(
      nil,
      :space_name,
      :name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryCloneUrlsRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :source_repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute https
    #   <p>The HTTPS URL to use when cloning the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryCloneUrlsResponse < Struct.new(
      nil,
      :https,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class GetSourceRepositoryResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :name,
      :description,
      :last_updated_time,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    class GetSpaceRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the space exists.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class GetSpaceResponse < Struct.new(
      nil,
      :name,
      :region_name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    class GetSubscriptionRequest < Struct.new(
      nil,
      :space_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_type
    #   <p>The type of the billing plan for the space.</p>
    #   @return [String]
    # @!attribute aws_account_name
    #   <p>The display name of the Amazon Web Services account used for billing for the space.</p>
    #   @return [String]
    # @!attribute pending_subscription_type
    #   <p>The type of the billing plan that the space will be changed to at the start of the next billing cycle. This applies
    #       only to changes that reduce the functionality available for the space. Billing plan changes that increase functionality
    #       are applied immediately. For more information, see <a href="https://codecatalyst.aws/explore/pricing">Pricing</a>.</p>
    #   @return [String]
    # @!attribute pending_subscription_start_time
    #   <p>The day and time the pending change will be applied to the space, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class GetSubscriptionResponse < Struct.new(
      nil,
      :subscription_type,
      :aws_account_name,
      :pending_subscription_type,
      :pending_subscription_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated unique ID of the user. </p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user as displayed in Amazon CodeCatalyst.</p>
    #   @return [String]
    class GetUserDetailsRequest < Struct.new(
      nil,
      :id,
      :user_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The system-generated unique ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user as displayed in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed for the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute primary_email
    #   <p>The email address provided by the user when they signed up.</p>
    #   @return [Types::EmailAddress]
    # @!attribute version
    #   <p/>
    #   @return [String]
    class GetUserDetailsResponse < Struct.new(
      nil,
      :user_id,
      :user_name,
      :display_name,
      :primary_email,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow. To rerieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      nil,
      :space_name,
      :id,
      :project_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository where the workflow YAML is stored.</p>
    #   @return [String]
    # @!attribute source_branch_name
    #   <p>The name of the branch that contains the workflow YAML.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the workflow definition file for the workflow.</p>
    #   @return [Types::WorkflowDefinition]
    # @!attribute created_time
    #   <p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute run_mode
    #   <p>The behavior to use when multiple workflows occur at the same time. For more information, see 
    #         <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html">https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html</a> in the Amazon CodeCatalyst User Guide.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow.</p>
    #   @return [String]
    class GetWorkflowResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :name,
      :source_repository_name,
      :source_branch_name,
      :definition,
      :created_time,
      :last_updated_time,
      :run_mode,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow run. To retrieve a list of workflow run IDs, use <a>ListWorkflowRuns</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetWorkflowRunRequest < Struct.new(
      nil,
      :space_name,
      :id,
      :project_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Information about the reasons for the status of the workflow run.</p>
    #   @return [Array<Types::WorkflowRunStatusReason>]
    # @!attribute start_time
    #   <p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow run status was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    class GetWorkflowRunResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :workflow_id,
      :status,
      :status_reasons,
      :start_time,
      :end_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an integrated development environment (IDE) used in a Dev Environment.</p>
    # @!attribute runtime
    #   <p>A link to the IDE runtime image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the IDE.</p>
    #   @return [String]
    class Ide < Struct.new(
      nil,
      :runtime,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration of an integrated development environment (IDE) for a Dev Environment.</p>
    # @!attribute runtime
    #   <p>A link to the IDE runtime image. </p>
    #            <note>
    #               <p>This parameter is not required for <code>VSCode</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the IDE. Valid values include <code>Cloud9</code>, <code>IntelliJ</code>, <code>PyCharm</code>, <code>GoLand</code>, and <code>VSCode</code>.</p>
    #   @return [String]
    class IdeConfiguration < Struct.new(
      nil,
      :runtime,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListAccessTokensRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of personal access tokens (PATs) associated with the calling user identity.</p>
    #   @return [Array<Types::AccessTokenSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListAccessTokensResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute dev_environment_id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListDevEnvironmentSessionsRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :dev_environment_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about each session retrieved in the list.</p>
    #   @return [Array<Types::DevEnvironmentSessionSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListDevEnvironmentSessionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListDevEnvironmentsRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the Dev Environments in a project.</p>
    #   @return [Array<Types::DevEnvironmentSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListDevEnvironmentsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when you want to start retrieving events, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time after which you do not want any events retrieved, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute event_name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListEventLogsRequest < Struct.new(
      nil,
      :space_name,
      :start_time,
      :end_time,
      :event_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about each event retrieved in the list.</p>
    #   @return [Array<Types::EventLogEntry>]
    class ListEventLogsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    #   @return [Array<Types::ProjectListFilter>]
    class ListProjectsRequest < Struct.new(
      nil,
      :space_name,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the projects.</p>
    #   @return [Array<Types::ProjectSummary>]
    class ListProjectsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a source repository returned in a list of source repositories.</p>
    # @!attribute id
    #   <p>The system-generated unique ID of the source repository.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the repository, if any.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class ListSourceRepositoriesItem < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :last_updated_time,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListSourceRepositoriesRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Information about the source repositories.</p>
    #   @return [Array<Types::ListSourceRepositoriesItem>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListSourceRepositoriesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a branch of a source repository returned in a list of branches.</p>
    # @!attribute ref
    #   <p>The Git reference name of the branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the branch.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute head_commit_id
    #   <p>The commit ID of the tip of the branch at the time of the request, also known as the head commit.</p>
    #   @return [String]
    class ListSourceRepositoryBranchesItem < Struct.new(
      nil,
      :ref,
      :name,
      :last_updated_time,
      :head_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListSourceRepositoryBranchesRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :source_repository_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the source branches.</p>
    #   @return [Array<Types::ListSourceRepositoryBranchesItem>]
    class ListSourceRepositoryBranchesResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListSpacesRequest < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the spaces. </p>
    #   @return [Array<Types::SpaceSummary>]
    class ListSpacesResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    #   @return [Array<Types::WorkflowRunSortCriteria>]
    class ListWorkflowRunsRequest < Struct.new(
      nil,
      :space_name,
      :workflow_id,
      :project_name,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the runs of a workflow.</p>
    #   @return [Array<Types::WorkflowRunSummary>]
    class ListWorkflowRunsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    #   @return [Array<Types::WorkflowSortCriteria>]
    class ListWorkflowsRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :next_token,
      :max_results,
      :sort_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the workflows in a project.</p>
    #   @return [Array<Types::WorkflowSummary>]
    class ListWorkflowsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the persistent storage for a Dev Environment.</p>
    # @!attribute size_in_gi_b
    #   <p>The size of the persistent storage in gigabytes (specifically GiB).</p>
    #            <note>
    #               <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are
    #           16, 32, and 64.</p>
    #            </note>
    #   @return [Integer]
    class PersistentStorage < Struct.new(
      nil,
      :size_in_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration of persistent storage for a Dev Environment. </p>
    # @!attribute size_in_gi_b
    #   <p>The size of the persistent storage in gigabytes (specifically GiB).</p>
    #            <note>
    #               <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are
    #           16, 32, and 64.</p>
    #            </note>
    #   @return [Integer]
    class PersistentStorageConfiguration < Struct.new(
      nil,
      :size_in_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a project in a space.</p>
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The system-generated unique ID of the project.</p>
    #   @return [String]
    class ProjectInformation < Struct.new(
      nil,
      :name,
      :project_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>nformation about the filter used to narrow the results returned in a list of projects.</p>
    # @!attribute key
    #   <p>A key that can be used to sort results.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the key.</p>
    #   @return [Array<String>]
    # @!attribute comparison_operator
    #   <p>The operator used to compare the fields.</p>
    #   @return [String]
    class ProjectListFilter < Struct.new(
      nil,
      :key,
      :values,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a project.</p>
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class ProjectSummary < Struct.new(
      nil,
      :name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a repository that will be cloned to a Dev Environment.</p>
    # @!attribute repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch in a source repository.</p>
    #   @return [String]
    class RepositoryInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because the specified resource was not found. Verify that the spelling is correct and that you have access to the resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because one or more resources has reached its limits for the tier the space belongs to. Either reduce
    #       the number of resources, or change the tier if applicable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an space.</p>
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region
    #         where the space exists.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class SpaceSummary < Struct.new(
      nil,
      :name,
      :region_name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment. </p>
    #   @return [Array<Types::IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    class StartDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   @return [String]
    class StartDevEnvironmentResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute session_configuration
    #   <p>Information about the configuration of a Dev Environment session.</p>
    #   @return [Types::DevEnvironmentSessionConfiguration]
    class StartDevEnvironmentSessionRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :session_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_details
    #   <p>Information about connection details for a Dev Environment.</p>
    #   @return [Types::DevEnvironmentAccessDetails]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    class StartDevEnvironmentSessionResponse < Struct.new(
      nil,
      :access_details,
      :session_id,
      :space_name,
      :project_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class StartWorkflowRunRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :workflow_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow.</p>
    #   @return [String]
    class StartWorkflowRunResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :workflow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    class StopDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   @return [String]
    class StopDevEnvironmentResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. To obtain this ID, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session. This ID is returned by <a>StartDevEnvironmentSession</a>.</p>
    #   @return [String]
    class StopDevEnvironmentSessionRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    class StopDevEnvironmentSessionResponse < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment. Changing this value will not cause a restart.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>
    #   @return [Array<Types::IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. 
    #         Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class UpdateDevEnvironmentRequest < Struct.new(
      nil,
      :space_name,
      :project_name,
      :id,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for the Dev Environment.</p>
    #   @return [Array<Types::IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class UpdateDevEnvironmentResponse < Struct.new(
      nil,
      :id,
      :space_name,
      :project_name,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:inactivity_timeout_minutes] = 0 unless options.key?(:inactivity_timeout_minutes)
        super
      end
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class UpdateProjectRequest < Struct.new(
      nil,
      :space_name,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class UpdateProjectResponse < Struct.new(
      nil,
      :space_name,
      :name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class UpdateSpaceRequest < Struct.new(
      nil,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class UpdateSpaceResponse < Struct.new(
      nil,
      :name,
      :display_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a user whose activity is recorded in an event for a space.</p>
    # @!attribute user_type
    #   <p>The role assigned to the user in a Amazon CodeCatalyst space or project when the event occurred.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The ID of the Amazon CodeCatalyst service principal.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The display name of the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account number of the user in Amazon Web Services, if any.</p>
    #   @return [String]
    class UserIdentity < Struct.new(
      nil,
      :user_type,
      :principal_id,
      :user_name,
      :aws_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because an input failed to satisfy the constraints specified by the service. Check the spelling and input requirements, and then try again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity
    #   <p>The system-generated unique ID of the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    class VerifySessionResponse < Struct.new(
      nil,
      :identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a workflow definition file.</p>
    # @!attribute path
    #   <p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>
    #   @return [String]
    class WorkflowDefinition < Struct.new(
      nil,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a workflow definition.</p>
    # @!attribute path
    #   <p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>
    #   @return [String]
    class WorkflowDefinitionSummary < Struct.new(
      nil,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to sort workflow runs in the returned list.</p>
    class WorkflowRunSortCriteria < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the status of a workflow run.</p>
    class WorkflowRunStatusReason < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a workflow run.</p>
    # @!attribute id
    #   <p>The system-generated unique ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the workflow run status.</p>
    #   @return [Array<Types::WorkflowRunStatusReason>]
    # @!attribute start_time
    #   <p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    class WorkflowRunSummary < Struct.new(
      nil,
      :id,
      :workflow_id,
      :workflow_name,
      :status,
      :status_reasons,
      :start_time,
      :end_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to sort workflows in the returned list.</p>
    class WorkflowSortCriteria < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a workflow.</p>
    # @!attribute id
    #   <p>The system-generated unique ID of a workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository where the workflow definition file is stored.</p>
    #   @return [String]
    # @!attribute source_branch_name
    #   <p>The name of the branch of the source repository where the workflow definition file is stored.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the workflow definition file.</p>
    #   @return [Types::WorkflowDefinitionSummary]
    # @!attribute created_time
    #   <p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute run_mode
    #   <p>The run mode of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow.</p>
    #   @return [String]
    class WorkflowSummary < Struct.new(
      nil,
      :id,
      :name,
      :source_repository_name,
      :source_branch_name,
      :definition,
      :created_time,
      :last_updated_time,
      :run_mode,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCatalyst
  module Types

    # The request was denied because you don't have sufficient access to
    # perform this action. Verify that you are a member of a role that
    # allows this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a specified personal access token (PAT).
    #
    # @!attribute [rw] id
    #   The system-generated ID of the personal access token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the personal access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_time
    #   The date and time when the personal access token will expire, in
    #   coordinated universal time (UTC) timestamp format as specified in
    #   [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/AccessTokenSummary AWS API Documentation
    #
    class AccessTokenSummary < Struct.new(
      :id,
      :name,
      :expires_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because the requested operation would cause a
    # conflict with the current state of a service resource associated with
    # the request. Another user might have updated the resource. Reload,
    # make sure you have the latest data, and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The friendly name of the personal access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_time
    #   The date and time the personal access token expires, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateAccessTokenRequest AWS API Documentation
    #
    class CreateAccessTokenRequest < Struct.new(
      :name,
      :expires_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] secret
    #   The secret value of the personal access token.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the personal access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_time
    #   The date and time the personal access token expires, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #   If not specified, the default is one year from creation.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] access_token_id
    #   The system-generated unique ID of the access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateAccessTokenResponse AWS API Documentation
    #
    class CreateAccessTokenResponse < Struct.new(
      :secret,
      :name,
      :expires_time,
      :access_token_id)
      SENSITIVE = [:secret]
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] repositories
    #   The source repository that contains the branch to clone into the Dev
    #   Environment.
    #   @return [Array<Types::RepositoryInput>]
    #
    # @!attribute [rw] client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries
    #   return the result from the original successful request and have no
    #   additional effect.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The user-defined alias for a Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #
    #   <note markdown="1"> An IDE is required to create a Dev Environment. For Dev Environment
    #   creation, this field contains configuration information and must be
    #   provided.
    #
    #    </note>
    #   @return [Array<Types::IdeConfiguration>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are
    #   allowed. Dev Environments consume compute minutes when running.
    #   @return [Integer]
    #
    # @!attribute [rw] persistent_storage
    #   Information about the amount of storage allocated to the Dev
    #   Environment.
    #
    #   <note markdown="1"> By default, a Dev Environment is configured to have 16GB of
    #   persistent storage when created from the Amazon CodeCatalyst
    #   console, but there is no default when programmatically creating a
    #   Dev Environment. Valid values for persistent storage are based on
    #   memory sizes in 16GB increments. Valid values are 16, 32, and 64.
    #
    #    </note>
    #   @return [Types::PersistentStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateDevEnvironmentRequest AWS API Documentation
    #
    class CreateDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :repositories,
      :client_token,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :persistent_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateDevEnvironmentResponse AWS API Documentation
    #
    class CreateDevEnvironmentResponse < Struct.new(
      :space_name,
      :project_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the project that will be displayed to users.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project. This description will be displayed
    #   to all users of the project. We recommend providing a brief
    #   description of the project and its intended purpose.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :space_name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateProjectResponse AWS API Documentation
    #
    class CreateProjectResponse < Struct.new(
      :space_name,
      :name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] source_repository_name
    #   The name of the repository where you want to create a branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the branch you're creating.
    #   @return [String]
    #
    # @!attribute [rw] head_commit_id
    #   The commit ID in an existing branch from which you want to create
    #   the new branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateSourceRepositoryBranchRequest AWS API Documentation
    #
    class CreateSourceRepositoryBranchRequest < Struct.new(
      :space_name,
      :project_name,
      :source_repository_name,
      :name,
      :head_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ref
    #   The Git reference name of the branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the newly created branch.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time the branch was last updated, in coordinated universal time
    #   (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] head_commit_id
    #   The commit ID of the tip of the newly created branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/CreateSourceRepositoryBranchResponse AWS API Documentation
    #
    class CreateSourceRepositoryBranchResponse < Struct.new(
      :ref,
      :name,
      :last_updated_time,
      :head_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the personal access token to delete. You can find the IDs
    #   of all PATs associated with your Amazon Web Services Builder ID in a
    #   space by calling ListAccessTokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteAccessTokenRequest AWS API Documentation
    #
    class DeleteAccessTokenRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteAccessTokenResponse AWS API Documentation
    #
    class DeleteAccessTokenResponse < Aws::EmptyStructure; end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment you want to
    #   delete. To retrieve a list of Dev Environment IDs, use
    #   ListDevEnvironments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteDevEnvironmentRequest AWS API Documentation
    #
    class DeleteDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the deleted Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DeleteDevEnvironmentResponse AWS API Documentation
    #
    class DeleteDevEnvironmentResponse < Struct.new(
      :space_name,
      :project_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about connection details for a Dev Environment.
    #
    # @!attribute [rw] stream_url
    #   The URL used to send commands to and from the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value that contains session and caller
    #   information used to authenticate the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DevEnvironmentAccessDetails AWS API Documentation
    #
    class DevEnvironmentAccessDetails < Struct.new(
      :stream_url,
      :token_value)
      SENSITIVE = [:stream_url, :token_value]
      include Aws::Structure
    end

    # Information about the source repsitory for a Dev Environment.
    #
    # @!attribute [rw] repository_name
    #   The name of the source repository.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch in a source repository cloned into the Dev
    #   Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DevEnvironmentRepositorySummary AWS API Documentation
    #
    class DevEnvironmentRepositorySummary < Struct.new(
      :repository_name,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the configuration of a Dev Environment session.
    #
    # @!attribute [rw] session_type
    #   The type of the session.
    #   @return [String]
    #
    # @!attribute [rw] execute_command_session_configuration
    #   Information about optional commands that will be run on the Dev
    #   Environment when the SSH session begins.
    #   @return [Types::ExecuteCommandSessionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DevEnvironmentSessionConfiguration AWS API Documentation
    #
    class DevEnvironmentSessionConfiguration < Struct.new(
      :session_type,
      :execute_command_session_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about active sessions for a Dev Environment.
    #
    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] dev_environment_id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] started_time
    #   The date and time the session started, in coordinated universal time
    #   (UTC) timestamp format as specified in [RFC 3339][1]
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DevEnvironmentSessionSummary AWS API Documentation
    #
    class DevEnvironmentSessionSummary < Struct.new(
      :space_name,
      :project_name,
      :dev_environment_id,
      :started_time,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Dev Environment.
    #
    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the Dev Environment was last updated, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] creator_id
    #   The system-generated unique ID of the user who created the Dev
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status.
    #   @return [String]
    #
    # @!attribute [rw] repositories
    #   Information about the repositories that will be cloned into the Dev
    #   Environment. If no rvalue is specified, no repository is cloned.
    #   @return [Array<Types::DevEnvironmentRepositorySummary>]
    #
    # @!attribute [rw] alias
    #   The user-specified alias for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #   @return [Array<Types::Ide>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type used for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Dev Environments consume
    #   compute minutes when running.
    #   @return [Integer]
    #
    # @!attribute [rw] persistent_storage
    #   Information about the configuration of persistent storage for the
    #   Dev Environment.
    #   @return [Types::PersistentStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/DevEnvironmentSummary AWS API Documentation
    #
    class DevEnvironmentSummary < Struct.new(
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
      :persistent_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an email address.
    #
    # @!attribute [rw] email
    #   The email address.
    #   @return [String]
    #
    # @!attribute [rw] verified
    #   Whether the email address has been verified.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/EmailAddress AWS API Documentation
    #
    class EmailAddress < Struct.new(
      :email,
      :verified)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an entry in an event log of Amazon CodeCatalyst
    # activity.
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_category
    #   The category for the event.
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   The source of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time the event took place, in coordinated universal time (UTC)
    #   timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] operation_type
    #   The type of the event.
    #   @return [String]
    #
    # @!attribute [rw] user_identity
    #   The system-generated unique ID of the user whose actions are
    #   recorded in the event.
    #   @return [Types::UserIdentity]
    #
    # @!attribute [rw] project_information
    #   Information about the project where the event occurred.
    #   @return [Types::ProjectInformation]
    #
    # @!attribute [rw] request_id
    #   The system-generated unique ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] request_payload
    #   Information about the payload of the request.
    #   @return [Types::EventPayload]
    #
    # @!attribute [rw] response_payload
    #   Information about the payload of the response, if any.
    #   @return [Types::EventPayload]
    #
    # @!attribute [rw] error_code
    #   The code of the error, if any.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_address
    #   The IP address of the user whose actions are recorded in the event.
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/EventLogEntry AWS API Documentation
    #
    class EventLogEntry < Struct.new(
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
      :user_agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the payload of an event recording Amazon
    # CodeCatalyst activity.
    #
    # @!attribute [rw] content_type
    #   The type of content in the event payload.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data included in the event payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/EventPayload AWS API Documentation
    #
    class EventPayload < Struct.new(
      :content_type,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the commands that will be run on a Dev Environment
    # when an SSH session begins.
    #
    # @!attribute [rw] command
    #   The command used at the beginning of the SSH session to a Dev
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   An array of arguments containing arguments and members.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ExecuteCommandSessionConfiguration AWS API Documentation
    #
    class ExecuteCommandSessionConfiguration < Struct.new(
      :command,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @!attribute [rw] comparison_operator
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :values,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment for which you
    #   want to view information. To retrieve a list of Dev Environment IDs,
    #   use ListDevEnvironments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetDevEnvironmentRequest AWS API Documentation
    #
    class GetDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the Dev Environment was last updated, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] creator_id
    #   The system-generated unique ID of the user who created the Dev
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status.
    #   @return [String]
    #
    # @!attribute [rw] repositories
    #   The source repository that contains the branch cloned into the Dev
    #   Environment.
    #   @return [Array<Types::DevEnvironmentRepositorySummary>]
    #
    # @!attribute [rw] alias
    #   The user-specified alias for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for the Dev Environment.
    #   @return [Array<Types::Ide>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] persistent_storage
    #   Information about the amount of storage allocated to the Dev
    #   Environment. By default, a Dev Environment is configured to have
    #   16GB of persistent storage.
    #   @return [Types::PersistentStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetDevEnvironmentResponse AWS API Documentation
    #
    class GetDevEnvironmentResponse < Struct.new(
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
      :persistent_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetProjectRequest AWS API Documentation
    #
    class GetProjectRequest < Struct.new(
      :space_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the project displayed to users in Amazon
    #   CodeCatalyst.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetProjectResponse AWS API Documentation
    #
    class GetProjectResponse < Struct.new(
      :space_name,
      :name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] source_repository_name
    #   The name of the source repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSourceRepositoryCloneUrlsRequest AWS API Documentation
    #
    class GetSourceRepositoryCloneUrlsRequest < Struct.new(
      :space_name,
      :project_name,
      :source_repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] https
    #   The HTTPS URL to use when cloning the source repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSourceRepositoryCloneUrlsResponse AWS API Documentation
    #
    class GetSourceRepositoryCloneUrlsResponse < Struct.new(
      :https)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSpaceRequest AWS API Documentation
    #
    class GetSpaceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The Amazon Web Services Region where the space exists.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the space displayed to users.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSpaceResponse AWS API Documentation
    #
    class GetSpaceResponse < Struct.new(
      :name,
      :region_name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSubscriptionRequest AWS API Documentation
    #
    class GetSubscriptionRequest < Struct.new(
      :space_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_type
    #   The type of the billing plan for the space.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_name
    #   The display name of the Amazon Web Services account used for billing
    #   for the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetSubscriptionResponse AWS API Documentation
    #
    class GetSubscriptionResponse < Struct.new(
      :subscription_type,
      :aws_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The system-generated unique ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user as displayed in Amazon CodeCatalyst.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetUserDetailsRequest AWS API Documentation
    #
    class GetUserDetailsRequest < Struct.new(
      :id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The system-generated unique ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user as displayed in Amazon CodeCatalyst.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name displayed for the user in Amazon CodeCatalyst.
    #   @return [String]
    #
    # @!attribute [rw] primary_email
    #   The email address provided by the user when they signed up.
    #   @return [Types::EmailAddress]
    #
    # @!attribute [rw] version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/GetUserDetailsResponse AWS API Documentation
    #
    class GetUserDetailsResponse < Struct.new(
      :user_id,
      :user_name,
      :display_name,
      :primary_email,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an integrated development environment (IDE) used in
    # a Dev Environment.
    #
    # @!attribute [rw] runtime
    #   A link to the IDE runtime image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the IDE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/Ide AWS API Documentation
    #
    class Ide < Struct.new(
      :runtime,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the configuration of an integrated development
    # environment (IDE) for a Dev Environment.
    #
    # @!attribute [rw] runtime
    #   A link to the IDE runtime image.
    #
    #   <note markdown="1"> This parameter is not required for `VSCode`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the IDE. Valid values include `Cloud9`, `IntelliJ`,
    #   `PyCharm`, `GoLand`, and `VSCode`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/IdeConfiguration AWS API Documentation
    #
    class IdeConfiguration < Struct.new(
      :runtime,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListAccessTokensRequest AWS API Documentation
    #
    class ListAccessTokensRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of personal access tokens (PATs) associated with the calling
    #   user identity.
    #   @return [Array<Types::AccessTokenSummary>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListAccessTokensResponse AWS API Documentation
    #
    class ListAccessTokensResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] dev_environment_id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironmentSessionsRequest AWS API Documentation
    #
    class ListDevEnvironmentSessionsRequest < Struct.new(
      :space_name,
      :project_name,
      :dev_environment_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about each session retrieved in the list.
    #   @return [Array<Types::DevEnvironmentSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironmentSessionsResponse AWS API Documentation
    #
    class ListDevEnvironmentSessionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Information about filters to apply to narrow the results returned in
    #   the list.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironmentsRequest AWS API Documentation
    #
    class ListDevEnvironmentsRequest < Struct.new(
      :space_name,
      :project_name,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the Dev Environments in a project.
    #   @return [Array<Types::DevEnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListDevEnvironmentsResponse AWS API Documentation
    #
    class ListDevEnvironmentsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time when you want to start retrieving events, in
    #   coordinated universal time (UTC) timestamp format as specified in
    #   [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time after which you do not want any events retrieved, in
    #   coordinated universal time (UTC) timestamp format as specified in
    #   [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] event_name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListEventLogsRequest AWS API Documentation
    #
    class ListEventLogsRequest < Struct.new(
      :space_name,
      :start_time,
      :end_time,
      :event_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Information about each event retrieved in the list.
    #   @return [Array<Types::EventLogEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListEventLogsResponse AWS API Documentation
    #
    class ListEventLogsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Information about filters to apply to narrow the results returned in
    #   the list.
    #   @return [Array<Types::ProjectListFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :space_name,
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Information about the projects.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListProjectsResponse AWS API Documentation
    #
    class ListProjectsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a source repository returned in a list of source
    # repositories.
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the source repository.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the source repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the repository, if any.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time the source repository was last updated, in coordinated
    #   universal time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   The time the source repository was created, in coordinated universal
    #   time (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoriesItem AWS API Documentation
    #
    class ListSourceRepositoriesItem < Struct.new(
      :id,
      :name,
      :description,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoriesRequest AWS API Documentation
    #
    class ListSourceRepositoriesRequest < Struct.new(
      :space_name,
      :project_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Information about the source repositories.
    #   @return [Array<Types::ListSourceRepositoriesItem>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoriesResponse AWS API Documentation
    #
    class ListSourceRepositoriesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a branch of a source repository returned in a list
    # of branches.
    #
    # @!attribute [rw] ref
    #   The Git reference name of the branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the branch.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time the branch was last updated, in coordinated universal time
    #   (UTC) timestamp format as specified in [RFC 3339][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339#section-5.6
    #   @return [Time]
    #
    # @!attribute [rw] head_commit_id
    #   The commit ID of the tip of the branch at the time of the request,
    #   also known as the head commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoryBranchesItem AWS API Documentation
    #
    class ListSourceRepositoryBranchesItem < Struct.new(
      :ref,
      :name,
      :last_updated_time,
      :head_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] source_repository_name
    #   The name of the source repository.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to show in a single call to this API.
    #   If the number of results is larger than the number you specified,
    #   the response will include a `NextToken` element, which you can use
    #   to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoryBranchesRequest AWS API Documentation
    #
    class ListSourceRepositoryBranchesRequest < Struct.new(
      :space_name,
      :project_name,
      :source_repository_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Information about the source branches.
    #   @return [Array<Types::ListSourceRepositoryBranchesItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSourceRepositoryBranchesResponse AWS API Documentation
    #
    class ListSourceRepositoryBranchesResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSpacesRequest AWS API Documentation
    #
    class ListSpacesRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token returned from a call to this API to indicate the next batch
    #   of results to return, if any.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Information about the spaces.
    #   @return [Array<Types::SpaceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ListSpacesResponse AWS API Documentation
    #
    class ListSpacesResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the persistent storage for a Dev Environment.
    #
    # @!attribute [rw] size_in_gi_b
    #   The size of the persistent storage in gigabytes (specifically GiB).
    #
    #   <note markdown="1"> Valid values for storage are based on memory sizes in 16GB
    #   increments. Valid values are 16, 32, and 64.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/PersistentStorage AWS API Documentation
    #
    class PersistentStorage < Struct.new(
      :size_in_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the configuration of persistent storage for a Dev
    # Environment.
    #
    # @!attribute [rw] size_in_gi_b
    #   The size of the persistent storage in gigabytes (specifically GiB).
    #
    #   <note markdown="1"> Valid values for storage are based on memory sizes in 16GB
    #   increments. Valid values are 16, 32, and 64.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/PersistentStorageConfiguration AWS API Documentation
    #
    class PersistentStorageConfiguration < Struct.new(
      :size_in_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a project in a space.
    #
    # @!attribute [rw] name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   The system-generated unique ID of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ProjectInformation AWS API Documentation
    #
    class ProjectInformation < Struct.new(
      :name,
      :project_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # nformation about the filter used to narrow the results returned in a
    # list of projects.
    #
    # @!attribute [rw] key
    #   A key that can be used to sort results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the key.
    #   @return [Array<String>]
    #
    # @!attribute [rw] comparison_operator
    #   The operator used to compare the fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ProjectListFilter AWS API Documentation
    #
    class ProjectListFilter < Struct.new(
      :key,
      :values,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a project.
    #
    # @!attribute [rw] name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name displayed to users of the project in Amazon
    #   CodeCatalyst.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository that will be cloned to a Dev
    # Environment.
    #
    # @!attribute [rw] repository_name
    #   The name of the source repository.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch in a source repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/RepositoryInput AWS API Documentation
    #
    class RepositoryInput < Struct.new(
      :repository_name,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because the specified resource was not found.
    # Verify that the spelling is correct and that you have access to the
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because one or more resources has reached its
    # limits for the tier the space belongs to. Either reduce the number of
    # resources, or change the tier if applicable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an space.
    #
    # @!attribute [rw] name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The Amazon Web Services Region where the space exists.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the space displayed to users.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/SpaceSummary AWS API Documentation
    #
    class SpaceSummary < Struct.new(
      :name,
      :region_name,
      :display_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #   @return [Array<Types::IdeConfiguration>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are
    #   allowed. Dev Environments consume compute minutes when running.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironmentRequest AWS API Documentation
    #
    class StartDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :id,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironmentResponse AWS API Documentation
    #
    class StartDevEnvironmentResponse < Struct.new(
      :space_name,
      :project_name,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] session_configuration
    #   Information about the configuration of a Dev Environment session.
    #   @return [Types::DevEnvironmentSessionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironmentSessionRequest AWS API Documentation
    #
    class StartDevEnvironmentSessionRequest < Struct.new(
      :space_name,
      :project_name,
      :id,
      :session_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_details
    #   Information about connection details for a Dev Environment.
    #   @return [Types::DevEnvironmentAccessDetails]
    #
    # @!attribute [rw] session_id
    #   The system-generated unique ID of the Dev Environment session.
    #   @return [String]
    #
    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StartDevEnvironmentSessionResponse AWS API Documentation
    #
    class StartDevEnvironmentSessionResponse < Struct.new(
      :access_details,
      :session_id,
      :space_name,
      :project_name,
      :id)
      SENSITIVE = [:access_details]
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironmentRequest AWS API Documentation
    #
    class StopDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Dev Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironmentResponse AWS API Documentation
    #
    class StopDevEnvironmentResponse < Struct.new(
      :space_name,
      :project_name,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment. To obtain
    #   this ID, use ListDevEnvironments.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The system-generated unique ID of the Dev Environment session. This
    #   ID is returned by StartDevEnvironmentSession.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironmentSessionRequest AWS API Documentation
    #
    class StopDevEnvironmentSessionRequest < Struct.new(
      :space_name,
      :project_name,
      :id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The system-generated unique ID of the Dev Environment session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/StopDevEnvironmentSessionResponse AWS API Documentation
    #
    class StopDevEnvironmentSessionResponse < Struct.new(
      :space_name,
      :project_name,
      :id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The user-specified alias for the Dev Environment. Changing this
    #   value will not cause a restart.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for a Dev Environment.
    #   @return [Array<Types::IdeConfiguration>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #
    #   <note markdown="1"> Changing this value will cause a restart of the Dev Environment if
    #   it is running.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes. Only whole integers are
    #   allowed. Dev Environments consume compute minutes when running.
    #
    #   <note markdown="1"> Changing this value will cause a restart of the Dev Environment if
    #   it is running.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries
    #   return the result from the original successful request and have no
    #   additional effect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UpdateDevEnvironmentRequest AWS API Documentation
    #
    class UpdateDevEnvironmentRequest < Struct.new(
      :space_name,
      :project_name,
      :id,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The system-generated unique ID of the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] space_name
    #   The name of the space.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project in the space.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The user-specified alias for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] ides
    #   Information about the integrated development environment (IDE)
    #   configured for the Dev Environment.
    #   @return [Array<Types::IdeConfiguration>]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instace type to use for the Dev Environment.
    #   @return [String]
    #
    # @!attribute [rw] inactivity_timeout_minutes
    #   The amount of time the Dev Environment will run without any activity
    #   detected before stopping, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A user-specified idempotency token. Idempotency ensures that an API
    #   request completes only once. With an idempotent request, if the
    #   original request completes successfully, the subsequent retries
    #   return the result from the original successful request and have no
    #   additional effect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UpdateDevEnvironmentResponse AWS API Documentation
    #
    class UpdateDevEnvironmentResponse < Struct.new(
      :id,
      :space_name,
      :project_name,
      :alias,
      :ides,
      :instance_type,
      :inactivity_timeout_minutes,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a user whose activity is recorded in an event for a
    # space.
    #
    # @!attribute [rw] user_type
    #   The role assigned to the user in a Amazon CodeCatalyst space or
    #   project when the event occurred.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The display name of the user in Amazon CodeCatalyst.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account number of the user in Amazon Web
    #   Services, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/UserIdentity AWS API Documentation
    #
    class UserIdentity < Struct.new(
      :user_type,
      :principal_id,
      :user_name,
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because an input failed to satisfy the
    # constraints specified by the service. Check the spelling and input
    # requirements, and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity
    #   The system-generated unique ID of the user in Amazon CodeCatalyst.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecatalyst-2022-09-28/VerifySessionResponse AWS API Documentation
    #
    class VerifySessionResponse < Struct.new(
      :identity)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

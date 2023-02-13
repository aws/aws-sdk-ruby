# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppConfigData
  module Types

    # Detailed information about the input that failed to satisfy the
    # constraints specified by a call.
    #
    # @!attribute [rw] invalid_parameters
    #   One or more specified parameters are not valid for the call.
    #   @return [Hash<String,Types::InvalidParameterDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/BadRequestDetails AWS API Documentation
    #
    class BadRequestDetails < Struct.new(
      :invalid_parameters,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InvalidParameters < BadRequestDetails; end
      class Unknown < BadRequestDetails; end
    end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Code indicating the reason the request was invalid.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details describing why the request was invalid.
    #   @return [Types::BadRequestDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :reason,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_token
    #   Token describing the current state of the configuration session. To
    #   obtain a token, first call the StartConfigurationSession API. Note
    #   that every call to `GetLatestConfiguration` will return a new
    #   `ConfigurationToken` (`NextPollConfigurationToken` in the response)
    #   and *must* be provided to subsequent `GetLatestConfiguration` API
    #   calls.
    #
    #   This token should only be used once. To support long poll use cases,
    #   the token is valid for up to 24 hours. If a `GetLatestConfiguration`
    #   call uses an expired token, the system returns
    #   `BadRequestException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/GetLatestConfigurationRequest AWS API Documentation
    #
    class GetLatestConfigurationRequest < Struct.new(
      :configuration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_poll_configuration_token
    #   The latest token describing the current state of the configuration
    #   session. This *must* be provided to the next call to
    #   `GetLatestConfiguration.`
    #
    #   This token should only be used once. To support long poll use cases,
    #   the token is valid for up to 24 hours. If a `GetLatestConfiguration`
    #   call uses an expired token, the system returns
    #   `BadRequestException`.
    #   @return [String]
    #
    # @!attribute [rw] next_poll_interval_in_seconds
    #   The amount of time the client should wait before polling for
    #   configuration updates again. Use
    #   `RequiredMinimumPollIntervalInSeconds` to set the desired poll
    #   interval.
    #   @return [Integer]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The data of the configuration. This may be empty if the client
    #   already has the latest version of configuration.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   The user-defined label for the AppConfig hosted configuration
    #   version. This attribute doesn't apply if the configuration is not
    #   from an AppConfig hosted configuration version. If the client
    #   already has the latest version of the configuration data, this value
    #   is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/GetLatestConfigurationResponse AWS API Documentation
    #
    class GetLatestConfigurationResponse < Struct.new(
      :next_poll_configuration_token,
      :next_poll_interval_in_seconds,
      :content_type,
      :configuration,
      :version_label)
      SENSITIVE = [:configuration]
      include Aws::Structure
    end

    # There was an internal failure in the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an invalid parameter.
    #
    # @!attribute [rw] problem
    #   The reason the parameter is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/InvalidParameterDetail AWS API Documentation
    #
    class InvalidParameterDetail < Struct.new(
      :problem)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] referenced_by
    #   A map indicating which parameters in the request reference the
    #   resource that was not found.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :referenced_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The application ID or the application name.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The environment ID or the environment name.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_identifier
    #   The configuration profile ID or the configuration profile name.
    #   @return [String]
    #
    # @!attribute [rw] required_minimum_poll_interval_in_seconds
    #   Sets a constraint on a session. If you specify a value of, for
    #   example, 60 seconds, then the client that established the session
    #   can't call GetLatestConfiguration more frequently than every 60
    #   seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/StartConfigurationSessionRequest AWS API Documentation
    #
    class StartConfigurationSessionRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :configuration_profile_identifier,
      :required_minimum_poll_interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] initial_configuration_token
    #   Token encapsulating state about the configuration session. Provide
    #   this token to the `GetLatestConfiguration` API to retrieve
    #   configuration data.
    #
    #   This token should only be used once in your first call to
    #   `GetLatestConfiguration`. You *must* use the new token in the
    #   `GetLatestConfiguration` response (`NextPollConfigurationToken`) in
    #   each subsequent call to `GetLatestConfiguration`.
    #
    #    The `InitialConfigurationToken` and `NextPollConfigurationToken`
    #   should only be used once. To support long poll use cases, the tokens
    #   are valid for up to 24 hours. If a `GetLatestConfiguration` call
    #   uses an expired token, the system returns `BadRequestException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/StartConfigurationSessionResponse AWS API Documentation
    #
    class StartConfigurationSessionResponse < Struct.new(
      :initial_configuration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

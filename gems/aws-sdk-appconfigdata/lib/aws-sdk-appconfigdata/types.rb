# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppConfigData
  module Types

    # Details describing why the request was invalid
    #
    # @!attribute [rw] invalid_parameters
    #   Present if the Reason for the bad request was 'InvalidParameters'
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
    # @!attribute [rw] details
    #   Details describing why the request was invalid
    #   @return [Types::BadRequestDetails]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Code indicating the reason the request was invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :details,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request parameters for the GetLatestConfiguration API
    #
    # @note When making an API call, you may pass GetLatestConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_token: "Token", # required
    #       }
    #
    # @!attribute [rw] configuration_token
    #   Token describing the current state of the configuration session. To
    #   obtain a token, first call the StartConfigurationSession API. Note
    #   that every call to GetLatestConfiguration will return a new
    #   ConfigurationToken (NextPollConfigurationToken in the response) and
    #   MUST be provided to subsequent GetLatestConfiguration API calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/GetLatestConfigurationRequest AWS API Documentation
    #
    class GetLatestConfigurationRequest < Struct.new(
      :configuration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response parameters for the GetLatestConfiguration API
    #
    # @!attribute [rw] configuration
    #   The data of the configuration. Note that this may be empty if the
    #   client already has the latest version of configuration.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the configuration
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] next_poll_configuration_token
    #   The latest token describing the current state of the configuration
    #   session. This MUST be provided to the next call to
    #   GetLatestConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] next_poll_interval_in_seconds
    #   The amount of time the client should wait before polling for
    #   configuration updates again. See
    #   RequiredMinimumPollIntervalInSeconds to set the desired poll
    #   interval.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/GetLatestConfigurationResponse AWS API Documentation
    #
    class GetLatestConfigurationResponse < Struct.new(
      :configuration,
      :content_type,
      :next_poll_configuration_token,
      :next_poll_interval_in_seconds)
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

    # Contains details about an invalid parameter.
    #
    # @!attribute [rw] problem
    #   Detail describing why an individual parameter did not satisfy the
    #   constraints specified by the service
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
    # @!attribute [rw] referenced_by
    #   A map indicating which parameters in the request reference the
    #   resource that was not found.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :referenced_by,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request parameters for the StartConfigurationSession API.
    #
    # @note When making an API call, you may pass StartConfigurationSessionRequest
    #   data as a hash:
    #
    #       {
    #         application_identifier: "Identifier", # required
    #         configuration_profile_identifier: "Identifier", # required
    #         environment_identifier: "Identifier", # required
    #         required_minimum_poll_interval_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] application_identifier
    #   The application ID or the application name.
    #   @return [String]
    #
    # @!attribute [rw] configuration_profile_identifier
    #   The configuration profile ID or the configuration profile name.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The environment ID or the environment name.
    #   @return [String]
    #
    # @!attribute [rw] required_minimum_poll_interval_in_seconds
    #   The interval at which your client will poll for configuration. If
    #   provided, the service will throw a BadRequestException if the client
    #   polls before the specified poll interval. By default, client poll
    #   intervals are not enforced.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appconfigdata-2021-11-11/StartConfigurationSessionRequest AWS API Documentation
    #
    class StartConfigurationSessionRequest < Struct.new(
      :application_identifier,
      :configuration_profile_identifier,
      :environment_identifier,
      :required_minimum_poll_interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response parameters for the StartConfigurationSession API.
    #
    # @!attribute [rw] initial_configuration_token
    #   Token encapsulating state about the configuration session. Provide
    #   this token to the GetLatestConfiguration API to retrieve
    #   configuration data.
    #
    #   This token should only be used once in your first call to
    #   GetLatestConfiguration. You MUST use the new token in the
    #   GetConfiguration response (NextPollConfigurationToken) in each
    #   subsequent call to GetLatestConfiguration.
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

# frozen_string_literal: true

# This is generated code!

module Aws::AppConfigData
  # This module contains the types returned by client operations.
  module Types

    # <p>Detailed information about the input that failed to satisfy the constraints specified by
    #          a call.</p>
    # @!attribute invalid_parameters
    #   <p>One or more specified parameters are not valid for the call.</p>
    #   @return [Hash<String, Types::InvalidParameterDetail>]
    class BadRequestDetails < Struct.new(
      :invalid_parameters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InvalidParameters < BadRequestDetails; end
      class Unknown < BadRequestDetails; end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Code indicating the reason the request was invalid.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Details describing why the request was invalid.</p>
    #   @return [Types::BadRequestDetails]
    class BadRequestException < Struct.new(
      :message,
      :reason,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_token
    #   <p>Token describing the current state of the configuration session. To obtain a token,
    #            first call the <a>StartConfigurationSession</a> API. Note that every call to
    #               <code>GetLatestConfiguration</code> will return a new <code>ConfigurationToken</code>
    #               (<code>NextPollConfigurationToken</code> in the response) and <i>must</i>
    #            be provided to subsequent <code>GetLatestConfiguration</code> API calls.</p>
    #            <important>
    #               <p>This token should only be used once. To support long poll
    #               use cases, the token is valid for up to 24 hours. If a
    #               <code>GetLatestConfiguration</code> call uses an expired token, the system returns
    #               <code>BadRequestException</code>.</p>
    #            </important>
    #   @return [String]
    class GetLatestConfigurationInput < Struct.new(
      :configuration_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_poll_configuration_token
    #   <p>The latest token describing the current state of the configuration session. This
    #               <i>must</i> be provided to the next call to
    #               <code>GetLatestConfiguration.</code>
    #            </p>
    #            <important>
    #               <p>This token should only be used once. To support long poll
    #               use cases, the token is valid for up to 24 hours. If a
    #               <code>GetLatestConfiguration</code> call uses an expired token, the system returns
    #               <code>BadRequestException</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute next_poll_interval_in_seconds
    #   <p>The amount of time the client should wait before polling for configuration updates
    #            again. Use <code>RequiredMinimumPollIntervalInSeconds</code> to set the desired poll
    #            interval.</p>
    #   @return [Integer]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The data of the configuration. This may be empty if the client already has the latest
    #            version of configuration.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The user-defined label for the AppConfig hosted configuration version. This attribute doesn't apply if the configuration is not from an AppConfig hosted configuration version. If the client already has the latest version of the configuration data, this value is empty.</p>
    #   @return [String]
    class GetLatestConfigurationOutput < Struct.new(
      :next_poll_configuration_token,
      :next_poll_interval_in_seconds,
      :content_type,
      :configuration,
      :version_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:next_poll_interval_in_seconds] = 0 unless options.key?(:next_poll_interval_in_seconds)
        super
      end
    end

    # <p>There was an internal failure in the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an invalid parameter.</p>
    # @!attribute problem
    #   <p>The reason the parameter is invalid.</p>
    #   @return [String]
    class InvalidParameterDetail < Struct.new(
      :problem,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that was not found.</p>
    #   @return [String]
    # @!attribute referenced_by
    #   <p>A map indicating which parameters in the request reference the resource that was not
    #            found.</p>
    #   @return [Hash<String, String>]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :referenced_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_identifier
    #   <p>The application ID or the application name.</p>
    #   @return [String]
    # @!attribute environment_identifier
    #   <p>The environment ID or the environment name.</p>
    #   @return [String]
    # @!attribute configuration_profile_identifier
    #   <p>The configuration profile ID or the configuration profile name.</p>
    #   @return [String]
    # @!attribute required_minimum_poll_interval_in_seconds
    #   <p>Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then
    #            the client that established the session can't call <a>GetLatestConfiguration</a>
    #            more frequently than every 60 seconds.</p>
    #   @return [Integer]
    class StartConfigurationSessionInput < Struct.new(
      :application_identifier,
      :environment_identifier,
      :configuration_profile_identifier,
      :required_minimum_poll_interval_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute initial_configuration_token
    #   <p>Token encapsulating state about the configuration session. Provide this token to the
    #               <code>GetLatestConfiguration</code> API to retrieve configuration data.</p>
    #            <important>
    #               <p>This token should only be used once in your first call to
    #                  <code>GetLatestConfiguration</code>. You <i>must</i> use the new token
    #               in the <code>GetLatestConfiguration</code> response
    #                  (<code>NextPollConfigurationToken</code>) in each subsequent call to
    #                  <code>GetLatestConfiguration</code>.</p>
    #               <p>The <code>InitialConfigurationToken</code> and
    #               <code>NextPollConfigurationToken</code> should only be used once. To support long poll
    #               use cases, the tokens are valid for up to 24 hours. If a
    #               <code>GetLatestConfiguration</code> call uses an expired token, the system returns
    #               <code>BadRequestException</code>.</p>
    #            </important>
    #   @return [String]
    class StartConfigurationSessionOutput < Struct.new(
      :initial_configuration_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

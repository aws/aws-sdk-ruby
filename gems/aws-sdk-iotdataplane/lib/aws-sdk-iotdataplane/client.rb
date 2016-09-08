# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module IoTDataPlane
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :iotdataplane

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::RestJson)

      # @!group API Operations

      # Deletes the thing shadow for the specified thing.
      #
      # For more information, see [DeleteThingShadow][1] in the *AWS IoT
      # Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html
      # @option params [required, String] :thing_name
      #   The name of the thing.
      # @return [Types::DeleteThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteThingShadowResponse#payload #payload} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_thing_shadow({
      #     thing_name: "ThingName", # required
      #   })
      #
      # @example Response structure
      #   resp.payload #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_thing_shadow(params = {}, options = {})
        req = build_request(:delete_thing_shadow, params)
        req.send_request(options)
      end

      # Gets the thing shadow for the specified thing.
      #
      # For more information, see [GetThingShadow][1] in the *AWS IoT
      # Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html
      # @option params [required, String] :thing_name
      #   The name of the thing.
      # @return [Types::GetThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetThingShadowResponse#payload #payload} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_thing_shadow({
      #     thing_name: "ThingName", # required
      #   })
      #
      # @example Response structure
      #   resp.payload #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_thing_shadow(params = {}, options = {})
        req = build_request(:get_thing_shadow, params)
        req.send_request(options)
      end

      # Publishes state information.
      #
      # For more information, see [HTTP Protocol][1] in the *AWS IoT Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http
      # @option params [required, String] :topic
      #   The name of the MQTT topic.
      # @option params [Integer] :qos
      #   The Quality of Service (QoS) level.
      # @option params [String, IO] :payload
      #   The state information, in JSON format.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.publish({
      #     topic: "Topic", # required
      #     qos: 1,
      #     payload: "data",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def publish(params = {}, options = {})
        req = build_request(:publish, params)
        req.send_request(options)
      end

      # Updates the thing shadow for the specified thing.
      #
      # For more information, see [UpdateThingShadow][1] in the *AWS IoT
      # Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html
      # @option params [required, String] :thing_name
      #   The name of the thing.
      # @option params [required, String, IO] :payload
      #   The state information, in JSON format.
      # @return [Types::UpdateThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateThingShadowResponse#payload #payload} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_thing_shadow({
      #     thing_name: "ThingName", # required
      #     payload: "data", # required
      #   })
      #
      # @example Response structure
      #   resp.payload #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_thing_shadow(params = {}, options = {})
        req = build_request(:update_thing_shadow, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ACM
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name                      | params                                   | :delay   | :max_attempts |
  # | -------------------------------- | ---------------------------------------- | -------- | ------------- |
  # | acme_domain_validation_deleted   | {Client#describe_acme_domain_validation} | 5        | 60            |
  # | acme_domain_validation_validated | {Client#describe_acme_domain_validation} | 5        | 60            |
  # | acme_endpoint_active             | {Client#describe_acme_endpoint}          | 5        | 60            |
  # | acme_endpoint_deleted            | {Client#describe_acme_endpoint}          | 5        | 60            |
  # | certificate_validated            | {Client#describe_certificate}            | 60       | 5             |
  #
  module Waiters

    # Wait until an ACME domain validation has been deleted.
    class AcmeDomainValidationDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_acme_domain_validation,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "acme_domain_validation.status",
                "state" => "retry",
                "expected" => "DELETING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_acme_domain_validation)
      # @return (see Client#describe_acme_domain_validation)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an ACME domain validation reaches a terminal validation state.
    class AcmeDomainValidationValidated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_acme_domain_validation,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "acme_domain_validation.status",
                "state" => "success",
                "expected" => "VALID"
              },
              {
                "matcher" => "path",
                "argument" => "acme_domain_validation.status",
                "state" => "failure",
                "expected" => "INVALID"
              },
              {
                "matcher" => "path",
                "argument" => "acme_domain_validation.status",
                "state" => "retry",
                "expected" => "VALIDATING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_acme_domain_validation)
      # @return (see Client#describe_acme_domain_validation)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an ACME endpoint has finished provisioning and is ACTIVE.
    class AcmeEndpointActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_acme_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "acme_endpoint.status",
                "state" => "success",
                "expected" => "ACTIVE"
              },
              {
                "matcher" => "path",
                "argument" => "acme_endpoint.status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "acme_endpoint.status",
                "state" => "retry",
                "expected" => "CREATING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_acme_endpoint)
      # @return (see Client#describe_acme_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an ACME endpoint has been deleted.
    class AcmeEndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_acme_endpoint,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "acme_endpoint.status",
                "state" => "retry",
                "expected" => "DELETING"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_acme_endpoint)
      # @return (see Client#describe_acme_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class CertificateValidated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_certificate,
            acceptors: [
              {
                "matcher" => "pathAll",
                "argument" => "certificate.domain_validation_options[].validation_status",
                "state" => "success",
                "expected" => "SUCCESS"
              },
              {
                "matcher" => "pathAny",
                "argument" => "certificate.domain_validation_options[].validation_status",
                "state" => "retry",
                "expected" => "PENDING_VALIDATION"
              },
              {
                "matcher" => "path",
                "argument" => "certificate.status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "error",
                "state" => "failure",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_certificate)
      # @return (see Client#describe_certificate)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

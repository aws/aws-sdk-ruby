# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::LexModelsV2
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
  # | waiter_name                          | params                        | :delay   | :max_attempts |
  # | ------------------------------------ | ----------------------------- | -------- | ------------- |
  # | bot_alias_available                  | {Client#describe_bot_alias}   | 10       | 35            |
  # | bot_available                        | {Client#describe_bot}         | 10       | 35            |
  # | bot_export_completed                 | {Client#describe_export}      | 10       | 35            |
  # | bot_import_completed                 | {Client#describe_import}      | 10       | 35            |
  # | bot_locale_built                     | {Client#describe_bot_locale}  | 10       | 35            |
  # | bot_locale_created                   | {Client#describe_bot_locale}  | 10       | 35            |
  # | bot_locale_express_testing_available | {Client#describe_bot_locale}  | 10       | 35            |
  # | bot_version_available                | {Client#describe_bot_version} | 10       | 35            |
  #
  module Waiters

    # Wait until a bot alias is available
    class BotAliasAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot_alias,
            acceptors: [
              {
                "expected" => "Available",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_alias_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_alias_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_alias_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot_alias)
      # @return (see Client#describe_bot_alias)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot is available
    class BotAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot,
            acceptors: [
              {
                "expected" => "Available",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_status"
              },
              {
                "expected" => "Inactive",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot)
      # @return (see Client#describe_bot)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot has been exported
    class BotExportCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_export,
            acceptors: [
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "export_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "export_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "export_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_export)
      # @return (see Client#describe_export)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot has been imported
    class BotImportCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_import,
            acceptors: [
              {
                "expected" => "Completed",
                "matcher" => "path",
                "state" => "success",
                "argument" => "import_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "import_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "import_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_import)
      # @return (see Client#describe_import)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot locale is built
    class BotLocaleBuilt

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                "expected" => "Built",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "NotBuilt",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot_locale)
      # @return (see Client#describe_bot_locale)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait unit a bot locale is created
    class BotLocaleCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                "expected" => "Built",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "ReadyExpressTesting",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "NotBuilt",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot_locale)
      # @return (see Client#describe_bot_locale)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot locale build is ready for express testing
    class BotLocaleExpressTestingAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                "expected" => "Built",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "ReadyExpressTesting",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              },
              {
                "expected" => "NotBuilt",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_locale_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot_locale)
      # @return (see Client#describe_bot_locale)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a bot version is available
    class BotVersionAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_bot_version,
            acceptors: [
              {
                "expected" => "Available",
                "matcher" => "path",
                "state" => "success",
                "argument" => "bot_status"
              },
              {
                "expected" => "Deleting",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "bot_status"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 404
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bot_version)
      # @return (see Client#describe_bot_version)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

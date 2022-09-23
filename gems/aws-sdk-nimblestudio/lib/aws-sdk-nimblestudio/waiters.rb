# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::NimbleStudio
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
  # | waiter_name                    | params                                | :delay   | :max_attempts |
  # | ------------------------------ | ------------------------------------- | -------- | ------------- |
  # | launch_profile_deleted         | {Client#get_launch_profile}           | 5        | 150           |
  # | launch_profile_ready           | {Client#get_launch_profile}           | 5        | 150           |
  # | streaming_image_deleted        | {Client#get_streaming_image}          | 2        | 60            |
  # | streaming_image_ready          | {Client#get_streaming_image}          | 2        | 60            |
  # | streaming_session_deleted      | {Client#get_streaming_session}        | 5        | 180           |
  # | streaming_session_ready        | {Client#get_streaming_session}        | 10       | 180           |
  # | streaming_session_stopped      | {Client#get_streaming_session}        | 5        | 180           |
  # | streaming_session_stream_ready | {Client#get_streaming_session_stream} | 5        | 30            |
  # | studio_component_deleted       | {Client#get_studio_component}         | 1        | 120           |
  # | studio_component_ready         | {Client#get_studio_component}         | 2        | 60            |
  # | studio_deleted                 | {Client#get_studio}                   | 2        | 60            |
  # | studio_ready                   | {Client#get_studio}                   | 2        | 60            |
  #
  module Waiters

    # Wait until a LaunchProfile is Deleted. Use this after invoking DeleteLaunchProfile
    class LaunchProfileDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (150)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 150,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_launch_profile,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "launch_profile.state",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "path",
                "argument" => "launch_profile.state",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_launch_profile)
      # @return (see Client#get_launch_profile)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a LaunchProfile is Ready. Use this after invoking CreateLaunchProfile or UpdateLaunchProfile
    class LaunchProfileReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (150)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 150,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_launch_profile,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "launch_profile.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "launch_profile.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "launch_profile.state",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_launch_profile)
      # @return (see Client#get_launch_profile)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingImage Deleted. Use this after invoking DeleteStreamingImage
    class StreamingImageDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_image,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "streaming_image.state",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "path",
                "argument" => "streaming_image.state",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_image)
      # @return (see Client#get_streaming_image)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingImage is Ready. Use this after invoking CreateStreamingImage or UpdateStreamingImage
    class StreamingImageReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_image,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "streaming_image.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "streaming_image.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "streaming_image.state",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_image)
      # @return (see Client#get_streaming_image)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingSessionDeleted. Use this after invoking DeleteStreamingSession
    class StreamingSessionDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_session)
      # @return (see Client#get_streaming_session)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingSession is ready. Use this after invoking CreateStreamingSession, StartStreamingSession
    class StreamingSessionReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "failure",
                "expected" => "START_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_session)
      # @return (see Client#get_streaming_session)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingSessionStopped. Use this after invoking StopStreamingSession
    class StreamingSessionStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "success",
                "expected" => "STOPPED"
              },
              {
                "matcher" => "path",
                "argument" => "session.state",
                "state" => "failure",
                "expected" => "STOP_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_session)
      # @return (see Client#get_streaming_session)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StreamingSessionStream is ready. Use this after invoking CreateStreamingSessionStream
    class StreamingSessionStreamReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_session_stream,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "stream.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "stream.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_session_stream)
      # @return (see Client#get_streaming_session_stream)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StudioComponent Deleted. Use this after invoking DeleteStudioComponent
    class StudioComponentDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_studio_component,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "studio_component.state",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "path",
                "argument" => "studio_component.state",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_studio_component)
      # @return (see Client#get_studio_component)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a StudioComponent is Ready. Use this after invoking CreateStudioComponent or UpdateStudioComponent
    class StudioComponentReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_studio_component,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "studio_component.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "studio_component.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "studio_component.state",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_studio_component)
      # @return (see Client#get_studio_component)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Studio is Deleted. Use this after invoking DeleteStudio.
    class StudioDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_studio,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "studio.state",
                "state" => "success",
                "expected" => "DELETED"
              },
              {
                "matcher" => "path",
                "argument" => "studio.state",
                "state" => "failure",
                "expected" => "DELETE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_studio)
      # @return (see Client#get_studio)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a Studio is Ready. Use this after invoking CreateStudio, UpdateStudio, or StartStudioSSOConfigurationRepair
    class StudioReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_studio,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "studio.state",
                "state" => "success",
                "expected" => "READY"
              },
              {
                "matcher" => "path",
                "argument" => "studio.state",
                "state" => "failure",
                "expected" => "CREATE_FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "studio.state",
                "state" => "failure",
                "expected" => "UPDATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_studio)
      # @return (see Client#get_studio)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

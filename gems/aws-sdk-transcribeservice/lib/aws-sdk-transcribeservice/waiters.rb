# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::TranscribeService
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
  # | waiter_name                         | params                                 | :delay   | :max_attempts |
  # | ----------------------------------- | -------------------------------------- | -------- | ------------- |
  # | call_analytics_job_completed        | {Client#get_call_analytics_job}        | 10       | 180           |
  # | language_model_completed            | {Client#describe_language_model}       | 120      | 180           |
  # | medical_scribe_job_completed        | {Client#get_medical_scribe_job}        | 10       | 180           |
  # | medical_transcription_job_completed | {Client#get_medical_transcription_job} | 10       | 180           |
  # | medical_vocabulary_ready            | {Client#get_medical_vocabulary}        | 10       | 180           |
  # | transcription_job_completed         | {Client#get_transcription_job}         | 10       | 180           |
  # | vocabulary_ready                    | {Client#get_vocabulary}                | 10       | 180           |
  #
  module Waiters

    class CallAnalyticsJobCompleted

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
            operation_name: :get_call_analytics_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "call_analytics_job.call_analytics_job_status",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "call_analytics_job.call_analytics_job_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_call_analytics_job)
      # @return (see Client#get_call_analytics_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class LanguageModelCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_language_model,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "language_model.model_status",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "language_model.model_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_language_model)
      # @return (see Client#describe_language_model)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class MedicalScribeJobCompleted

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
            operation_name: :get_medical_scribe_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "medical_scribe_job.medical_scribe_job_status",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "medical_scribe_job.medical_scribe_job_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_medical_scribe_job)
      # @return (see Client#get_medical_scribe_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class MedicalTranscriptionJobCompleted

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
            operation_name: :get_medical_transcription_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "medical_transcription_job.transcription_job_status",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "medical_transcription_job.transcription_job_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_medical_transcription_job)
      # @return (see Client#get_medical_transcription_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class MedicalVocabularyReady

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
            operation_name: :get_medical_vocabulary,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "vocabulary_state",
                "expected" => "READY"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "vocabulary_state",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_medical_vocabulary)
      # @return (see Client#get_medical_vocabulary)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TranscriptionJobCompleted

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
            operation_name: :get_transcription_job,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "transcription_job.transcription_job_status",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "transcription_job.transcription_job_status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_transcription_job)
      # @return (see Client#get_transcription_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VocabularyReady

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
            operation_name: :get_vocabulary,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "vocabulary_state",
                "expected" => "READY"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "vocabulary_state",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_vocabulary)
      # @return (see Client#get_vocabulary)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

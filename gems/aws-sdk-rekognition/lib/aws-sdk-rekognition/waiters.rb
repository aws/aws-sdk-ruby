# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Rekognition
  module Waiters

    # Wait until the ProjectVersion is running.
    class ProjectVersionRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_project_versions,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "project_version_descriptions[].status",
                "expected" => "RUNNING"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "project_version_descriptions[].status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_project_versions)
      # @return (see Client#describe_project_versions)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until the ProjectVersion training completes.
    class ProjectVersionTrainingCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (360)
      # @option options [Integer] :delay (120)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 360,
          delay: 120,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_project_versions,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "project_version_descriptions[].status",
                "expected" => "TRAINING_COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "project_version_descriptions[].status",
                "expected" => "TRAINING_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_project_versions)
      # @return (see Client#describe_project_versions)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

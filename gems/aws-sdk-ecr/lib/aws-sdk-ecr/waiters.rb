# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ECR
  module Waiters

    # Wait until an image scan is complete and findings can be accessed
    class ImageScanComplete

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
            operation_name: :describe_image_scan_findings,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "image_scan_status.status",
                "expected" => "COMPLETE"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "image_scan_status.status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_image_scan_findings)
      # @return (see Client#describe_image_scan_findings)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a lifecycle policy preview request is complete and results can be accessed
    class LifecyclePolicyPreviewComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_lifecycle_policy_preview,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "status",
                "expected" => "COMPLETE"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "status",
                "expected" => "FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_lifecycle_policy_preview)
      # @return (see Client#get_lifecycle_policy_preview)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ElasticTranscoder
  module Waiters

    class JobComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :read_job,
            acceptors: [
              {
                "expected" => "Complete",
                "matcher" => "path",
                "state" => "success",
                "argument" => "job.status"
              },
              {
                "expected" => "Canceled",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "job.status"
              },
              {
                "expected" => "Error",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "job.status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#read_job)
      # @return (see Client#read_job)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end

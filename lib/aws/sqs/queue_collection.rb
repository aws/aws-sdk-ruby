# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/model'
require 'aws/sqs/queue'

module AWS
  class SQS

    # Represents all the {Queue} objects in your account.
    #
    # If you have permission to access a queue created by another
    # account, you can also use this collection to access that queue
    # by URL.
    #
    # @example Printing the URLs of all queues
    #   pp sqs.queues.map(&:url)
    #
    # @example Filtering queues by queue name prefix
    #   pp sqs.queues.with_prefix("production_").map(&:url)
    #
    # @example Accessing a queue by URL
    #   url = "http://sqs.us-east-1.amazonaws.com/123456789012/myqueue"
    #   sqs.queues[url].send_message("HELLO")
    class QueueCollection

      include Model
      include Enumerable

      # @private
      def initialize(opts = {})
        @prefix = opts[:prefix]
        super
      end

      # @return [String] The queue name prefix by which this
      #   collection is filtered.
      attr_reader :prefix

      # Creates a new queue.
      #
      # @note If you delete a queue, you must wait at least 60
      #   seconds before creating a queue with the same name.
      #
      # @param [String] name The name to use for the queue created.
      #   Constraints: Maximum 80 characters; alphanumeric
      #   characters, hyphens (-), and underscores (_) are allowed.
      #
      #   To successfully create a new queue, you must provide a
      #   name that is unique within the scope of your own
      #   queues. If you provide the name of an existing queue, a
      #   new queue isn't created and an error isn't
      #   returned. Instead, the request succeeds and the queue URL
      #   for the existing queue is returned. Exception: if you
      #   provide a value for +:default_visibility_timeout+ that is
      #   different from the value for the existing queue, you
      #   receive an error.
      #
      # @param [Hash] opts Additional options for creating the
      #   queue.
      #
      # @option opts [Integer] :default_visibility_timeout The
      #   visibility timeout (in seconds) to use for this queue.
      #
      # @return [Queue] The newly created queue.
      #
      def create(name, opts = {})
        resp = client.create_queue(opts.merge(:queue_name => name))
        Queue.new(resp.queue_url, :config => config)
      end

      # @yieldparam [Queue] queue Each {Queue} object in the collection.
      def each(&block)
        client.list_queues.queue_urls.each do |url|
          queue = self[url]
          yield(queue)
        end
      end

      # @param [String] prefix The queue name prefix.
      # @return [QueueCollection] A new collection representing only
      #   the queues whose names start with the given prefix.
      def with_prefix(prefix)
        self.class.new(:prefix => prefix, :config => config)
      end

      # @return [Queue] The queue with the given URL.
      def [](url)
        Queue.new(url, :config => config)
      end

    end

  end
end

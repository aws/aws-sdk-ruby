# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  class SQS

    module Errors

      # @private
      BASE_ERROR_GRAMMAR = Client::XML::BaseError

      include Core::LazyErrorClasses

      # @private
      def self.error_class(code)
        super(code.sub(/^AWS\.SimpleQueueService\./, ''))
      end

      # Raised when one or more messages fail to delete during a 
      # batch delete operation.  
      #
      # See {#failures} for a complete list of failures.
      #
      class BatchDeleteError < StandardError
        
        def initialize failures
          @failures = failures
          super("Failed to delete #{failures.size} messages")
        end

        # @return [Array<Hash>] Returns a list of hashes.  Each hash
        #   contains information about one message that failed to delete.
        #   Hash keys include:
        #
        #   * +:error_code+
        #   * +:error_message+
        #   * +:sender_fault+
        #   * +:receipt_handle+
        #
        attr_reader :failures

      end

      # Raised from a batch change message visibility call when one or more
      # of the updates fail.
      #
      # See {#failures} for a complete list of failures.
      #
      class BatchChangeVisibilityError < StandardError
        
        def initialize failures
          @failures = failures
          super("Failed to change visibility for #{failures.size} messages")
        end

        # @return [Array<Hash>] Returns a list of hashes.  Each hash
        #   contains information about one message that failed to change
        #   visibility. Hash keys include:
        #
        #   * +:error_code+
        #   * +:error_message+
        #   * +:sender_fault+
        #   * +:receipt_handle+
        #
        attr_reader :failures

      end

      class BatchSendError < StandardError

        def initialize sent, failures
          @sent = sent
          @failures = failures
          super("Failed to send #{failures.size} messages")
        end

        # @return [Array<Queue::SentMessage>] Returns a list of 
        #   {Queue::SentMessage} objects.
        attr_reader :sent

        # @return [Array<Hash>] Returns a list of hashes.  Each hash
        #   contains information about one message that failed to change
        #   visibility. Hash keys include:
        #
        #   * +:error_code+
        #   * +:error_message+
        #   * +:sender_fault+
        #   * +:receipt_handle+
        #
        attr_reader :failures

      end

    end
  end
end

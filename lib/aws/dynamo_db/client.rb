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
  class DynamoDB

    # @private
    class Client < Core::JsonClient

      API_VERSION = '2011-06-01'

      REGION_US_E1 = 'dynamodb.us-east-1.amazonaws.com'

      TARGET_PREFIX = "DynamoDB_20111205."

      REQUEST_CLASS = DynamoDB::Request

      CACHEABLE_REQUESTS = Set[:list_tables, :describe_table]

      configure_client

      def initialize *args

        super

        # If the signer does not provide a session token, then we will
        # replace it with another signer that manages an AWS STS session.
        # This session will auto renew whenever it has expired and will
        # be shared across threads.
        if config.signer.session_token.nil?
          @signer = Core::SessionSigner.for(config) 
        end

      end

      protected
      def extract_error_code response
        if response.http_response.status == 413
          'RequestEntityTooLarge'
        else
          super(response)
        end
      end

      private
      def should_retry? response 
        if possible_expired_credentials?(response)
          true
        elsif response.error.is_a?(Errors::ProvisionedThroughputExceededException)
          config.dynamo_db_retry_throughput_errors?
        else
          super
        end
      end

      private
      def rebuild_http_request response
        # called when a request is going to be retried, in case of 
        # expired credentials we should refresh the session
        signer.refresh_session if possible_expired_credentials?(response)
        super
      end

      private
      def sleep_durations response

        retry_count = 
          if possible_expired_credentials?(response)
            config.max_retries == 0 ? 0 : 1
          else
            config.max_retries { 10 }
          end

        # given a retry_count of 10, the sleep durations will look like:
        # 0, 50, 100, 200, 400, 800, 1600, 3200, 6400, 12800 (milliseconds)
        (0...retry_count).map do |n|
          if n == 0
            0
          else
            50 * (2 ** (n - 1)) / 1000.0
          end
        end

      end

      private
      # Returns true if we get an access denied error from the service AND
      # our signer is capible of getting new short-term credentials
      def possible_expired_credentials? response
        signer.respond_to?(:refresh_session) and
        response.error.is_a?(Errors::ExpiredTokenException)
      end

    end
  end
end

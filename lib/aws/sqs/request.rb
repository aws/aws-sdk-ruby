# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'uri'

module AWS
  class SQS

    # @private
    class Request < Core::Http::Request

      include Core::Signature::Version4

      def service
        'sqs'
      end

      def path
        full_url.path
      end

      def host
        full_url.host
      end

      def uri
        path
      end

      def region
        # sigv4 requires the region name when signing, this should come from
        # the QueueUrl param whenever present
        if
          param = params.find{|p| p.name == 'QueueUrl' } and
          host = URI.parse(param.value).host and
          matches = host.match(/^sqs\.(.+?)\./)
        then
          return matches[1]
        else
          super
        end
      end

      private

      def full_url
        if url_param = params.find { |p| p.name == "QueueUrl" }
          URI.parse(url_param.value)
        else
          URI::HTTP.build(:host => @host, :path => '/')
        end
      end

    end

  end
end

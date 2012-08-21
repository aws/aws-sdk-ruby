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
  module Core

    # Given a hash of request options, a REST::RequestHandler can
    # populate a Core::Http::Request object.
    class RESTResponseParser

      # @private
      def initialize operation
        @http = operation[:http]
        @parser = XML::Parser.new(operation[:outputs])
      end

      # Given a response object, this method extract and returns a
      # hash of response data.
      # @param [Response] response
      # @return [Hash]
      def extract_data response

        # parse the response XML body
        data = @parser.parse(response.http_response.body)

        # extract headers and insert into response
        (@http[:response_headers] || {}).each_pair do |name,header_name|
          data[name] = response.http_response.headers[header_name]
        end

        data

      end

    end

  end
end

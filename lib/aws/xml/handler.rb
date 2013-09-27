# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'multi_xml'

module Aws
  module Xml
    class Handler < ProtocolHandler

      def populate_headers(context)
        context.http_request.headers['Content-Type'] = 'application/xml'
      end

      def builder_class
        Xml::Builder
      end

      def parser_class
        Xml::Parser
      end

      def extract_error(response)
        svc_class = response.context.config.api.metadata['service_class_name']
        xml = MultiXml.parse(response.http_response.body_contents)
        xml = xml['Response'] if xml.key?('Response')
        xml = xml['Errors'] if xml.key?('Errors')
        error_code = xml['Error']['Code']
        error_message = xml['Error']['Message']
        Errors.error_class(svc_class, error_code).new(error_message)
      end

    end
  end
end

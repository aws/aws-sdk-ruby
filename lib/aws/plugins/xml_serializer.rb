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

module Aws
  module Plugins
    class XmlSerializer < Seahorse::Client::Plugin

      handle(:Handler) do |context|

        operation = context.operation

        # serialize xml request
        if ['PUT', 'POST'].include?(operation.http_method)
          rules = operation.input.members.values.find { |shape| shape.metadata['payload'] }
          if rules.type == :blob
            context.http_request.body = context.params[rules.member_name]
          else
            xml = Xml::Builder.to_xml(rules, context.params)
            context.http_request.body = xml
            context.http_request.headers['Content-Type'] = 'application/xml'
          end
        end

        # parse xml resopnse
        super(context).on_complete do |response|
          xml = response.context.http_response.body.read
          response.data = Xml::Parser.to_hash(operation.output, xml)
        end

      end

    end
  end
end

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

require 'multi_xml'

module Aws
  module Plugins
    class XmlSerializer < Seahorse::Client::Plugin

      handle(:Handler) do |context|
        xml = "<ListDistributionsRequest></ListDistributionsRequest>"
        content_type = "application/xml"

        context.http_request.body = xml
        context.http_request.headers['Content-Type'] = content_type

        super(context).on_complete do |response|
          response.data = MultiXml.parse(response.context.http_response.body.read)
        end
      end

    end
  end
end

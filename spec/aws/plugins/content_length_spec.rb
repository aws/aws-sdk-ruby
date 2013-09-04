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

require 'spec_helper'

module Aws
  module Plugins
    describe ContentLength::Handler do
      it 'adds content-length to regular payload' do
        response = call_handler(ContentLength::Handler) do |context|
          context.http_request.body = StringIO.new('BODY')
        end
        expect(response.http_request.headers['content-length']).to eq '4'
      end
    end
  end
end

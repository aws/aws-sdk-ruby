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

module AWS
  module Errors

    shared_examples_for "an aws error" do

      let(:req) { Core::Http::Request.new }

      let(:resp) { Core::Http::Response.new }

      let(:error) { described_class.new(req, resp) }

      before(:each) do
        resp.body = 'http response body'
      end

      it 'should be a standard error' do
        error.should be_a_kind_of(StandardError)
      end

      it 'should be an aws service error' do
        error.should be_a_kind_of(Errors::Base)
      end

      it 'should have a message like the response body' do
        error.message.should == 'http response body'
      end

      it 'should provide access to the http request' do
        error.http_request.should == req
      end

      it 'should provide access to the http response' do
        error.http_response.should == resp
      end

    end

    describe Base do

      it_should_behave_like "an aws error"

    end

    describe ServerError do

      it_should_behave_like "an aws error"

    end

    describe ClientError do

      it_should_behave_like "an aws error"

    end

  end
end

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

require 'spec_helper'
require 'aws/http/httparty_handler'

module AWS
  module Http
    describe HTTPartyHandler do

      let(:handler) { HTTPartyHandler.new }

      context 'CA cert path' do

        let(:req) do
          r = Http::Request.new
          r.host = "foo.bar.com"
          r
        end

        let(:resp) { Http::Response.new }

        let(:httparty_options) do
          options = nil
          HTTPartyHandler.should_receive(:post). with do |url, opts|
            options = opts

            double("http response",
                   :body => "<foo/>",
                   :code => 200,
                   :to_hash => {})
          end
          handler.handle(req, resp)
          options
        end

        context 'use_ssl? is true' do

          before(:each) { req.use_ssl = true }

          context 'ssl_verify_peer? is true' do

            before(:each) do
              req.ssl_verify_peer = true
              req.ssl_ca_file = "foobar.txt"
            end

            it 'should use the ssl_ca_file attribute of the request' do
              httparty_options[:ssl_ca_file].should == "foobar.txt"
            end

          end

          it 'should not set the ssl_ca_file option without ssl_verify_peer?' do
            httparty_options.should_not include(:ssl_ca_file)
          end

        end

        it 'should not set the ssl_ca_file option without use_ssl?' do
          httparty_options.should_not include(:ssl_ca_file)
        end

      end

    end
  end
end

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

require 'spec_helper'

module AWS::Core

  describe ClientLogging do

    let(:inst) do
      i = Class.new do
        def self.service_name; "FooBar"; end
      end.new
      i.stub(:config).and_return(config)
      i.extend described_class
      i
    end

    let(:config) { double("config", 
      :logger => logger,
      :logger_truncate_strings_at => 100) 
    }

    let(:logger) { double("logger", :info => nil, :error => nil) }

    context '#log_client_request' do

      let(:response) do
        response = double("response",
                          :error => nil,
                          :cached => false,
                          :retry_count => 0,
                          :http_request => http_request,
                          :http_response => http_response)
        response.extend(Module.new do
                          def on_complete(&blk)
                            on_complete_block(blk)
                          end
                        end)
        response
      end

      let(:http_request) { double("http request") }

      let(:http_response) { double("http response",
                                   :status => 200) }

      it 'should call the block and return its return value' do
        obj = double("obj")
        obj.should_receive(:call).and_return(response)
        inst.log_client_request("foo", :bar => "baz") { obj.call }.
          should be(response)
      end

      it 'should emit an INFO log message on success' do
        logger.should_receive(:info).with do |str|
          str.should include("()")
        end
        inst.log_client_request("foo", {}) { response }
      end

      it 'should sanitize the options' do
        logger.should_receive(:info).with do |str|
          str.should include("SANITIZED")
        end
        inst.stub(:sanitize_options).with({}).and_return("SANITIZED")
        inst.log_client_request("foo", {}) { response }
      end

      it 'should register a callback for async requests' do
        logger.stub(:info) { fail }
        cb = nil
        response.should_receive(:on_complete_block) do |block|
          cb = block
        end
        inst.log_client_request("foo", :async => true) { response }
        cb.should_not be_nil
        logger.should_receive(:info).with do |str|
          str.should include(":async=>true")
        end
        cb.call
      end

    end

    context '#sanitize_options' do

      context 'short option values' do

        it 'should support string values' do
          inst.sanitize_options({:foo => "bar"}).
            should == ':foo=>"bar"'
        end

        it 'should sort options by key' do
          inst.sanitize_options({:cadabra => "1", :abra => "2"}).
            should == ':abra=>"2",:cadabra=>"1"'
        end

        it 'should support list values' do
          inst.sanitize_options({:foo => ["bar", "baz"]}).
            should == ':foo=>["bar","baz"]'
        end

        it 'should support hash values' do
          inst.sanitize_options({ :foo => { :bar => "baz" } }).
            should == ':foo=>{:bar=>"baz"}'
        end

        context 'files' do

          let(:file) do
            f = File.new(__FILE__)
            f.stub(:path).and_return("foo.txt")
            f
          end
          let(:string) { inst.sanitize_options(:file => file) }

          it 'should show byte count' do
            File.stub(:size).with("foo.txt").and_return(12)
            string.should == ':file=>#<File:foo.txt (12 bytes)>'
          end

        end

        context 'long strings' do

          before(:each) do
            config.stub(:logger_truncate_strings_at).and_return(10)
          end

          it 'should give the prefix and total length when exceedes limit' do
            inst.sanitize_options(:foo => "!"*25 + "$"*26).
              should == ':foo=>#<String "!!!!!!!!!!" ... (51 characters)>'
          end

          it 'should inspect the summarized portions of the string' do
            inst.sanitize_options(:foo => "\n" + '!'*24 + "\t"*26).
              should == ':foo=>#<String "\n!!!!!!!!" ... (51 characters)>'
          end

        end

        it 'should call inspect for other objects' do
          other = double("other object", :inspect => "INSPECT")
          inst.sanitize_options({ :foo => other }).
            should == ':foo=>INSPECT'
        end

      end

    end

  end

end

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
  class SimpleEmailService
    describe EmailAddressCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_email_service_client }

      let(:collection) { EmailAddressCollection.new(:config => config) }

      it_behaves_like 'enumerable'

      context '#create' do

        it 'calls verify_email_address on the client' do
          client.should_receive(:verify_email_address).
            with(:email_address => 'foo@bar.com')
          collection.create('foo@bar.com')
        end

      end

      context '#verify' do

        it 'is an alias for #include?' do
          collection.method(:verify).should == collection.method(:create)
        end

      end

      context '#verified?' do

        it 'is an alias for #include?' do
          collection.method(:verified?).should == collection.method(:include?)
        end

      end

      context '#delete' do

        it 'calls delete_verified_email_address on the client' do
          client.should_receive(:delete_verified_email_address).
            with(:email_address => 'foo@bar.com')
          collection.delete('foo@bar.com')
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:list_verified_email_addresses) }

        before(:each) {
          client.stub(:list_verified_email_addresses).and_return(response)
        }

        it 'calls list_verified_email_addresses on the client' do
          client.should_receive(:list_verified_email_addresses).with({})
          collection.each{|address|}
        end

        it 'yields once for each address' do
          response.stub(:verified_email_addresses).and_return(%w(foo bar))
          yielded = []
          collection.each{|address|
            yielded << address
          }
          yielded.should == %w(foo bar)
        end

        it 'returns nil' do
          collection.each{|address|}.should == nil
        end

      end

    end
  end
end

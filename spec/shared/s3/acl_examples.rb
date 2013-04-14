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

  shared_examples_for "it has an ACL" do |options|

    setter = options[:set_method]
    getter = options[:get_method]
    opts = options[:options]

    # client should be the client mock
    # model_obj should be the model object

    context '#acl=' do

      it 'passes along canned acls symbols as strings' do
        client.should_receive(setter).
          with(opts.merge(:acl => 'public-read'))
        model_obj.acl = :public_read
      end

      it 'passes along non-xml strings as canned acls' do
        client.should_receive(setter).with(opts.merge(:acl => 'abc'))
        model_obj.acl = 'abc'
      end

      it 'passes along xml as an AccessControlList as xml' do

        acl = AWS::S3::AccessControlList.new
        acl.stub(:to_xml).and_return('<xml/>')

        client.should_receive(setter).
          with(opts.merge(:access_control_policy => '<xml/>'))

        model_obj.acl = acl

      end

      it 'passes xml strings along as :access_control_policy' do
        client.should_receive(setter).
          with(opts.merge(:access_control_policy => "<ACL/>"))
        model_obj.acl = "<ACL/>"
      end

      it 'passes along a hash grant' do
        client.should_receive(setter).with(opts.merge({
          :grant_read => 'a',
          :grant_write => 'b',
          :grant_read_acp => 'c',
          :grant_write_acp => 'd',
          :grant_full_control => 'e',
        }))
        model_obj.acl = {
          :grant_read => 'a',
          :grant_write => 'b',
          :grant_read_acp => 'c',
          :grant_write_acp => 'd',
          :grant_full_control => 'e',
        }
      end

      it 'translates grants' do
        client.should_receive(setter).with(opts.merge(
          :grant_read => 'string-value',
          :grant_write => 'array, of, strings',
          :grant_read_acp => 'emailAddress="value"',
          :grant_write_acp => 'id="abc", id="xyz"',
          :grant_full_control => 'id="id", uri="http://", emailAddress="email"'
        ))
        # accepts strings, arrays of strings, hashes and arrays of hashes,
        # hashes should have exactly 1 key
        model_obj.acl = {
          :grant_read => 'string-value',
          :grant_write => ['array', 'of', 'strings'],
          :grant_read_acp => { 'emailAddress' => 'value' },
          :grant_write_acp => [{ :id => 'abc', }, { :id => 'xyz' }],
          :grant_full_control => [{ :id => 'id'}, {:uri => 'http://'}, {:email_address => 'email' }]
        }
      end

      it 'raises an error if the grant hashes grantees have more than 1 key' do
        lambda {
          model_obj.acl = {
            :grant_read => [
              { :foo => 'bar' }, # this is okay
              { :foo => 'bar', :oops => 'bar' }, # can't have 2 keys
            ]
          }
        }.should raise_error(ArgumentError)
      end

      it 'raises an argument error for anything else' do
        lambda {
          model_obj.acl = double('invalid-acl')
        }.should raise_error(ArgumentError, /ACL/)
      end

    end

    context '#acl' do

      let(:acl) { '<ACL/>' }

      let(:resp) { client.new_stub_for(getter) }

      before(:each) do
        client.stub(getter).and_return(resp)
        S3::AccessControlList.stub(:new).and_return(acl)
      end

      it "should construct a new acl from the response data" do
        S3::AccessControlList.should_receive(:new).with(resp.data).and_return(acl)
        model_obj.acl
      end

      it 'should return the acl in the client response' do
        model_obj.acl.should == acl
      end

      it 'should add a #change method' do
        model_obj.acl.should respond_to(:change)
      end

      context '#change' do

        it 'should yield the ACL' do
          obj = double("obj")
          obj.should_receive(:call) do |a|
            a.should be(acl)
          end
          model_obj.acl.change { |a| obj.call(a) }
        end

        it "should call #{setter} at the end of the block" do
          model_obj.acl.change do |a|
            client.should_receive(setter).
              with(opts.merge(:access_control_policy => a))
          end
        end

      end

    end

  end

end

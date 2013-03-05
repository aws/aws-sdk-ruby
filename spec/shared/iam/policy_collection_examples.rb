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
  module Core

    shared_examples_for "iam policy collection" do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:policies) { raise NotImplementedError }
      let(:resource_opts) { raise NotImplementedError }
      let(:resource_name) { raise NotImplementedError }

      let(:get_method) { "get_#{resource_name}_policy".to_sym }
      let(:put_method) { "put_#{resource_name}_policy".to_sym }
      let(:delete_method) { "delete_#{resource_name}_policy".to_sym }
      let(:list_method) { "list_#{resource_name}_policies".to_sym }

      context '#[]' do

        let(:policy) { double("policy") }

        let(:policy_resp) { client.new_stub_for(get_method) }

        before(:each) do
          policy_resp.stub(:policy_document).and_return("%7B%7D")
          client.stub(get_method).and_return(policy_resp)
          Policy.stub(:from_json).with("{}").and_return(policy)
        end

        it "should call the get policy method" do
          client.should_receive(get_method).
            with(resource_opts.merge(:policy_name => "Policy")).
            and_return(policy_resp)
          policies["Policy"]
        end

        it 'should return the policy document' do
          policies["Policy"].should be(policy)
        end

        it 'should return nil if NoSuchEntity is raised' do
          client.stub(get_method).
              and_raise(IAM::Errors::NoSuchEntity.new(double("req"),
                                                      double("resp",
                                                             :status => 404,
                                                             :body => "<foo/>")))
          policies["Policy"].should be_nil
        end

      end

      context '#[]=' do

        it "should call the put policy method" do
          client.should_receive(put_method).
            with(resource_opts.merge(:policy_name => "Policy",
                                     :policy_document => "{}"))
          policies["Policy"] = "{}"
        end

        it 'should accept an object that responds to to_json' do
          obj = double("policy object", :to_json => "{}")
          client.should_receive(put_method).
            with(hash_including(:policy_document => "{}"))
          policies["Policy"] = obj
        end

      end

      context '#delete' do

        it "should call the delete policy method" do
          client.should_receive(delete_method).
            with(resource_opts.merge(:policy_name => "Policy"))
          policies.delete("Policy")
        end

        it 'should return nil' do
          policies.delete("Policy").should be_nil
        end

        it 'should rescue NoSuchEntity' do
          client.stub(delete_method).
            and_raise(IAM::Errors::NoSuchEntity.new(double("req"),
                                                    double("resp",
                                                           :status => 404,
                                                           :body => "<foo/>")))
          lambda { policies.delete("Policy") }.should_not raise_error
        end

      end

      context '#values_at' do

        it 'should call #[] for each argument' do
          p1 = double("p1")
          p2 = double("p2")
          policies.stub(:[]).and_return(nil)
          policies.stub(:[]).with("p1").and_return(p1)
          policies.stub(:[]).with("p2").and_return(p2)
          policies.values_at("p2", "p1", "p3").
            should == [p2, p1, nil]
        end

      end

      context '#keys' do

        it 'should call #enumerator with :names_only set' do
          policies.should_receive(:enumerator).with(:names_only => true).
            and_return(["p1", "p2"])
          policies.keys.should == ["p1", "p2"]
        end

      end

      context '#values' do

        it 'should call #enumerator with :values_only set' do
          policies.should_receive(:enumerator).with(:values_only => true).
            and_return(["p1", "p2"])
          policies.values.should == ["p1", "p2"]
        end

      end

      context '#clear' do

        it 'should call #delete with each key' do
          policies.stub(:keys).and_return(["p1", "p2"])
          policies.should_receive(:delete).with("p1")
          policies.should_receive(:delete).with("p2")
          policies.clear
        end

      end

      context '#has_key?' do

        it "should call the get policy method" do
          client.should_receive(get_method).
            with(resource_opts.merge(:policy_name => "p1"))
          policies.has_key?("p1")
        end

        it 'should return true if there is no error' do
          policies.has_key?("p1").should be_true
        end

        it 'should return false if there is a NoSuchEntity error' do
          client.stub(get_method).
            and_raise(IAM::Errors::NoSuchEntity.new(double("req"),
                                                    double("resp",
                                                           :status => 404,
                                                           :body => "<foo/>")))
          policies.has_key?("p1").should be_false
        end

        it 'should not rescue other errors' do
          client.stub(get_method).and_raise("FOO")
          lambda { policies.has_key?("p1") }.should raise_error("FOO")
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { policies }
        let(:client_method)   { list_method }
        let(:now)             { Time.now }
        let(:request_options) { resource_opts }
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :max_items }
        let(:member_class)    { Array }

        let(:policy) { IAM::Policy.from_json('{}') }

        let(:policy_resp) { client.new_stub_for(get_method) }

        before(:each) do
          policy_resp.data[:policy_document] = "%7B%7D"
          client.stub(get_method).and_return(policy_resp)
        end

        def stub_n_members response, count
          response.data[:policy_names] = (1..count).map do |n|
            "Policy#{n}"
          end
        end

        context '#each' do

          before(:each) do
            stub_n_members(response, 2)
          end

          it "should call the get policy method for each policy" do
            client.should_receive(get_method).
              with(resource_opts.merge(:policy_name => "Policy1")).
              and_return(policy_resp)
            client.should_receive(get_method).
              with(resource_opts.merge(:policy_name => "Policy2")).
              and_return(policy_resp)
            collection.to_a
          end

          it 'should yield pairs to a arity-1 block' do
            collection.to_a.should == [["Policy1", policy],
                                       ["Policy2", policy]]
          end

          it 'should yield keys and values to a arity-2 block' do
            received = []
            collection.each do |key, value|
              received << [key, value]
            end
            received.should == [["Policy1", policy],
                                ["Policy2", policy]]
          end

          context 'with :names_only' do

            it "should not call the get policy method" do
              client.should_not_receive(get_method)
              collection.each(:names_only => true) { |n| }
            end

            it "should not pass :names_only to the list policies method" do
              client.should_receive(list_method).
                with(hash_not_including(:names_only)).
                and_return(response)
              collection.each(:names_only => true) { |n| }
            end

            it 'should yield the names as strings' do
              collection.enumerator(:names_only => true).to_a.
                should == ["Policy1", "Policy2"]
            end

          end

          context 'with :values_only' do

            it 'should yield the documents' do
              collection.enumerator(:values_only => true).to_a.
                should == [policy, policy]
            end

            it "should not pass :values_only to the list policies method" do
              client.should_receive(list_method).
                with(hash_not_including(:values_only)).
                and_return(response)
              collection.each(:values_only => true) { |n| }
            end

          end

        end

        context '#to_h' do

          it 'should return a hash of policy name to policy document' do
            stub_n_members(response, 2)
            collection.to_h.should == {
              "Policy1" => policy,
              "Policy2" => policy
            }
          end

        end

      end

    end
  end
end

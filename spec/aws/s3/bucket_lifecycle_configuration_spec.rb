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
  class S3
    describe BucketLifecycleConfiguration do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { S3::Bucket.new('bucket-name', :config => config) }

      let(:lifecycle) { described_class.new(bucket) }

      let(:uuid) { 'abc-xyz-123-456' }

      before(:each) do
        UUIDTools::UUID.stub(:random_create).and_return(uuid)
      end

      context '#rules' do

        it 'returns an array of rule objects' do
          lifecycle.add_rule('prefix-1', 1, :id => 'id-1')
          lifecycle.add_rule('prefix-2', 2, :id => 'id-2', :disabled => true)
          lifecycle.rules.should be_a(Array)
          lifecycle.rules.size.should == 2
          lifecycle.rules.each do |r|
            r.should be_a(BucketLifecycleConfiguration::Rule)
          end
        end

        it 'rescues no-lifecycle-errors and returns an empty list of rules' do
          client.should_receive(:get_bucket_lifecycle_configuration).
            and_raise(Errors::NoSuchLifecycleConfiguration.new)
          lifecycle.rules.should == []
        end

      end

      context '#add_rule' do

        it 'returns a rule object' do
          lifecycle.add_rule('prefix', 10).should be_a(BucketLifecycleConfiguration::Rule)
        end

        it 'returns a rule with the correct prefix' do
          lifecycle.add_rule('prefix', 10).prefix.should == 'prefix'
        end

        it 'returns a rule with the expiration days' do
          lifecycle.add_rule('prefix', 10).expiration_days.should == 10
          lifecycle.add_rule('prefix', 10).expiration_time.should == 10
        end

        it 'returns a rule with a auto-generated uuid' do
          lifecycle.add_rule('prefix', 10).id.should == uuid
        end

        it 'returns a rule with the status enaabled' do
          rule = lifecycle.add_rule('prefix', 10)
          rule.status.should == 'Enabled'
          rule.disabled?.should == false
          rule.enabled?.should == true
        end

        it 'can accept a user provided id' do
          lifecycle.add_rule('prefix', 10, :id => 'abc').id.should == 'abc'
        end

        it 'can be disabled' do
          rule = lifecycle.add_rule('prefix', 10, :disabled => true)
          rule.status.should == 'Disabled'
          rule.disabled?.should == true
          rule.enabled?.should == false
        end

        it 'accepts a date for expiration time' do
          time = Time.now.utc
          rule = lifecycle.add_rule('prefix', :expiration_time => time)
          rule.expiration_time.should == Date.parse(time.to_s)
        end

        it 'accepts a date for Glacier transition time' do
          time = Time.now.utc
          rule = lifecycle.add_rule('prefix', :glacier_transition_time => time)
          rule.glacier_transition_time.should == Date.parse(time.to_s)
        end

        it 'accepts days for Glacier transition time' do
          rule = lifecycle.add_rule('prefix', :glacier_transition_time => 5)
          rule.glacier_transition_time.should == 5
        end

      end

      context '#remove_rule' do

        let(:rule1) { lifecycle.add_rule('prefix-1', 1, :id => 'id-1') }
        let(:rule2) { lifecycle.add_rule('prefix-2', 2, :id => 'id-2') }

        before(:each) do
          rule1 # add these rules
          rule2
        end

        it 'can be used to remove a rule object' do
          lifecycle.remove_rule(rule1)
          lifecycle.rules.should == [rule2]
        end

        it 'can be used to remove a rule by id' do
          lifecycle.remove_rule('id-2')
          lifecycle.rules.should == [rule1]
        end

      end

      context '#update' do

        it 'persists the current rule set to s3' do
            xml = <<-XML.xml_cleanup
<LifecycleConfiguration>
  <Rule>
    <ID>#{uuid}</ID>
    <Prefix>foo/bar</Prefix>
    <Status>Enabled</Status>
    <Expiration>
      <Days>10</Days>
    </Expiration>
  </Rule>
  <Rule>
    <ID>expire-date</ID>
    <Prefix>foo/bar1</Prefix>
    <Status>Enabled</Status>
    <Expiration>
      <Date>2013-01-03T00:00:00Z</Date>
    </Expiration>
  </Rule>
  <Rule>
    <ID>glacier-days</ID>
    <Prefix>foo/bar2</Prefix>
    <Status>Enabled</Status>
    <Transition>
      <StorageClass>GLACIER</StorageClass>
      <Days>15</Days>
    </Transition>
  </Rule>
  <Rule>
    <ID>glacier-date</ID>
    <Prefix>foo/bar3</Prefix>
    <Status>Enabled</Status>
    <Transition>
      <StorageClass>GLACIER</StorageClass>
      <Date>2013-01-03T00:00:00Z</Date>
    </Transition>
  </Rule>
  <Rule>
    <ID>abc-xyz</ID>
    <Prefix>bar/foo</Prefix>
    <Status>Disabled</Status>
    <Expiration>
      <Days>11</Days>
    </Expiration>
  </Rule>
</LifecycleConfiguration>
            XML

          client.should_receive(:set_bucket_lifecycle_configuration) do |hash|
            hash[:bucket_name].should eq(bucket.name)
            hash[:lifecycle_configuration].xml_cleanup.should eq(xml)
          end

          time = DateTime.new(2013, 01, 03)
          lifecycle.add_rule 'foo/bar', 10
          lifecycle.add_rule 'foo/bar1', :id => 'expire-date', :expiration_time => time
          lifecycle.add_rule 'foo/bar2', :id => 'glacier-days', :glacier_transition_time => 15
          lifecycle.add_rule 'foo/bar3', :id => 'glacier-date', :glacier_transition_time => time
          lifecycle.add_rule 'bar/foo', 11, :id => 'abc-xyz', :disabled => true
          lifecycle.update

        end

        it 'can be called in block form' do
            xml = <<-XML.xml_cleanup
<LifecycleConfiguration>
  <Rule>
    <ID>#{uuid}</ID>
    <Prefix>foo/bar</Prefix>
    <Status>Enabled</Status>
    <Expiration>
      <Days>10</Days>
    </Expiration>
  </Rule>
  <Rule>
    <ID>abc-xyz</ID>
    <Prefix>bar/foo</Prefix>
    <Status>Disabled</Status>
    <Expiration>
      <Days>11</Days>
    </Expiration>
  </Rule>
</LifecycleConfiguration>
            XML

          client.should_receive(:set_bucket_lifecycle_configuration) do |hash|
            hash[:bucket_name].should eq(bucket.name)
            hash[:lifecycle_configuration].xml_cleanup.should eq(xml)
          end

          lifecycle.update do
            add_rule 'foo/bar', 10
            add_rule 'bar/foo', 11, :id => 'abc-xyz', :disabled => true
          end

        end

      end

      context '#replace' do

        it 'blanks out the existing rules before yielding' do
          lifecycle.add_rule 'a', 1
          lifecycle.replace do
            rules.size.should == 0
          end
        end

        it 'deletes the lifecycle config if there are no rules' do

          client.should_receive(:delete_bucket_lifecycle_configuration).
            with(:bucket_name => bucket.name)

          lifecycle.replace do
            # not adding any rules
          end

        end

      end

      context '#clear' do

        it 'deletes the lifecycle configuration' do
          client.should_receive(:delete_bucket_lifecycle_configuration).
            with(:bucket_name => bucket.name)
          lifecycle.clear
          lifecycle.rules.should == []
        end

      end

    end
  end
end

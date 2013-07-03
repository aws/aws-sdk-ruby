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
require 'thread'

describe AWS do

  context '#config' do

    it 'should return a configuration object' do
      AWS.config.should be_a(AWS::Core::Configuration)
    end

    it 'should pass options through to Configuration#with' do
      previous = AWS.config
      previous.should_receive(:with).with(:access_key_id => "FOO")
      AWS.config(:access_key_id => "FOO")
    end

    it 'should return the same config when no options are added' do
      AWS.config.should be(AWS.config)
    end

  end

  context '#stub!' do

    it 'should set the config :stub_clients to true' do
      AWS.should_receive(:config).with(:stub_requests => true)
      AWS.stub!
    end

  end

  context '#start_memoizing' do

    after(:each) { AWS.stop_memoizing }

    it 'should enable memoization' do
      AWS.start_memoizing
      AWS.memoizing?.should be_true
    end

    it 'should return nil' do
      AWS.start_memoizing.should be_nil
    end

    it 'should not extend into other threads' do
      AWS.start_memoizing
      Thread.new do
        AWS.memoizing?.should be_false
      end.join
    end

  end

  context '#stop_memoizing' do

    it 'should do nothing if memoization is disabled' do
      AWS.memoizing?.should be_false
      AWS.stop_memoizing
      AWS.memoizing?.should be_false
    end

    it 'should stop memoization' do
      AWS.start_memoizing
      AWS.memoizing?.should be_true
      AWS.stop_memoizing
      AWS.memoizing?.should be_false
    end

    it 'should only affect the current thread' do
      AWS.start_memoizing
      t = Thread.new do
        AWS.start_memoizing
        Thread.stop
        AWS.memoizing?.should be_true
      end
      Thread.pass until t.stop?
      AWS.stop_memoizing
      t.wakeup
      t.join
    end

  end

  context '#memoize' do

    before(:each) do
      AWS.stub(:start_memoizing)
      AWS.stub(:stop_memoizing)
    end

    it 'should call start_memoization' do
      AWS.should_receive(:start_memoizing)
      AWS.memoize { }
    end

    it 'should call stop_memoization at the end of the block' do
      AWS.memoize do
        AWS.should_receive(:stop_memoizing)
      end
    end

    it 'should call stop_memoization for an exceptional exit' do
      AWS.memoize do
        AWS.should_receive(:stop_memoizing)
        raise "FOO"
      end rescue nil
    end

    it 'should return the return value of the block' do
      AWS.memoize { "foo" }.should == "foo"
    end

    context 'while already memoizing' do

      it 'should do nothing' do
        AWS.stub(:memoizing?).and_return(true)
        AWS.should_not_receive(:start_memoizing)
        AWS.should_not_receive(:stop_memoizing)
        AWS.memoize { }
      end

    end

  end

  shared_examples_for "memoization cache" do

    context 'memoizing' do

      before(:each) { AWS.start_memoizing }
      after(:each) { AWS.stop_memoizing }

      it 'should return a resource cache object' do
        AWS.send(method).should be_a(cache_class)
      end

      it 'should return a different cache each time memoization is enabled' do
        cache = AWS.send(method)
        AWS.stop_memoizing
        AWS.start_memoizing
        AWS.send(method).should_not be(cache)
      end

      it 'should return a different cache in each thread' do
        cache = AWS.send(method)
        Thread.new do
          AWS.memoize { AWS.send(method).should_not be(cache) }
        end.join
      end

    end

    context 'not memoizing' do

      it 'should return nil' do
        AWS.send(method).should be_nil
      end

    end

  end

  context '#resource_cache' do
    let(:method) { :resource_cache }
    let(:cache_class) { AWS::Core::ResourceCache }
    it_should_behave_like "memoization cache"
  end

  context '#response_cache' do
    let(:method) { :response_cache }
    let(:cache_class) { AWS::Core::ResponseCache }
    it_should_behave_like "memoization cache"
  end

  context '#config' do

    context "SERVICE_region" do

      it 'returns REGION when endpoint is SERVICE.REGION.amazonaws.com' do
        AWS.config.stub(:ec2_endpoint).and_return('ec2.REGION.amazonaws.com')
        AWS.config.ec2_region.should == 'REGION'
      end

      it 'returns us-east-1 when endpoint is SERVCIE.amazonaws.com' do
        AWS.config.stub(:ec2_endpoint).and_return('ec2.amazonaws.com')
        AWS.config.ec2_region.should == 'us-east-1'
      end

      it 'returns us-gov-west-1 when endpoint is ec2.us-gov-west-1.amazonaws.com' do
        AWS.config.stub(:ec2_endpoint).and_return('ec2.us-gov-west-1.amazonaws.com')
        AWS.config.ec2_region.should == 'us-gov-west-1'
      end

      it 'returns us-gov-west-2 when endpoint is s3-fips-us-gov-west-1.amazonaws.com' do
        AWS.config.stub(:s3_endpoint).and_return('s3-fips-us-gov-west-2.amazonaws.com')
        AWS.config.s3_region.should == 'us-gov-west-2'
      end

      it 'returns us-gov-west-1 when endpoint is iam.us-gov.amazonaws.com' do
        AWS.config.stub(:iam_endpoint).and_return('iam.us-gov.amazonaws.com')
        AWS.config.iam_region.should == 'us-gov-west-1'
      end

    end

  end

  context '#eager_autoload!' do

    it 'returns a list of loaded modules' do
      path = File.join(File.dirname(__FILE__), 'fixtures', 'autoload_target')
      mod = Module.new
      mod.send(:autoload, :AutoloadTarget, path)
      AWS.eager_autoload!(mod)
      mod.autoload?(:AutoloadTarget).should be(nil)
    end

    it 'eager autoloads passed defined modules' do
      path = File.join(File.dirname(__FILE__), 'fixtures', 'nested_autoload_target')
      mod = Module.new
      mod::Nested = Module.new
      mod::Nested.send(:autoload, :NestedAutoloadTarget, path)
      AWS.eager_autoload!(mod)
      mod::Nested.autoload?(:NestedAutoloadTarget).should be(nil)
    end

  end

end

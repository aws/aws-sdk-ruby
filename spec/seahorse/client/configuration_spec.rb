# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  module Client
    describe Configuration do

      def config
        @config ||= Configuration.new
      end

      describe '#initialize' do

        it 'can be constructed without any arguments' do
          Configuration.new.should be_kind_of(Configuration)
        end

        it 'keeps all options passed to the constructor' do
          config = Configuration.new(:opt_name => 'opt-value')
          config.should_not respond_to(:opt_name)
          config.add_option(:opt_name)
          config.opt_name.should eq('opt-value')
        end

      end

      describe '#add_option' do

        it 'defines a getter method' do
          config.add_option(:name)
          config.should respond_to(:name)
        end

        it 'returns nil from getters by default' do
          config.add_option(:color)
          config.color.should eq(nil)
        end

        it 'accepts a default value' do
          config.add_option(:size, 'large')
          config.size.should eq('large')
        end

        it 'accpets a default via a block' do
          config.add_option(:dynamic) { 'value' }
          config.dynamic.should eq('value')
        end

      end

      describe '#with_option' do

        it 'returns a new configuration object' do
          cfg = Configuration.new(:abc => 'xyz')
          cfg2 = cfg.with_options(:abc => 'mno')
          cfg2.should be_kind_of(Configuration)
          cfg2.should_not be(cfg)
        end

        it 'returns self when given options are empty' do
          cfg = Configuration.new(:abc => 'xyz')
          cfg.with_options({}).should be(cfg)
        end

        it 'protects self from modification' do
          cfg = Configuration.new(option: 'old-value')
          cfg.add_option(:option)
          cfg.with_options(option: 'new-value')
          cfg.option.should eq('old-value')
        end

        it 'merges options onto the returned object' do
          cfg = Configuration.new(option: 'old-value')
          cfg.add_option(:option)
          cfg2 = cfg.with_options(option: 'new-value')
          cfg2.option.should eq('new-value')
        end

        it 'can be called without options' do
          Configuration.new.with_options.should be_kind_of(Configuration)
        end

      end

      describe '#options' do

        it 'returns a hash of all configuration options with defaults' do
          cfg = Configuration.new(opt: 'opt-value')
          cfg.add_option(:opt)
          cfg.add_option(:nil_opt)
          cfg.add_option(:opt_with_default, 'default')
          cfg.add_option(:opt_with_block) { 'block-default' }
          cfg.options.should eq({
            opt: 'opt-value',
            nil_opt: nil,
            opt_with_default: 'default',
            opt_with_block: 'block-default',
          })
        end

        it 'returns a frozen hash' do
          Configuration.new.options.should be_frozen
        end

      end

      describe '#inspect' do

        it 'provides a helpful inspect method' do
          opts = { :abc => 'xyz' }
          cfg = Configuration.new(opts)
          cfg.inspect.should include(cfg.options.inspect)
        end

        it 'displays the configuration class name' do
          Configuration.new.inspect.should include(
            'Seahorse::Client::Configuration')
        end

      end

    end
  end
end

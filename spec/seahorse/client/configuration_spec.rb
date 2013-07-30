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
          expect(Configuration.new).to be_kind_of(Configuration)
        end

        it 'keeps all options passed to the constructor' do
          config = Configuration.new(:opt_name => 'opt-value')
          expect(config).to_not respond_to(:opt_name)
          config.add_option(:opt_name)
          expect(config.opt_name).to eq('opt-value')
        end

      end

      describe '#add_option' do

        it 'defines a getter method' do
          config.add_option(:name)
          expect(config).to respond_to(:name)
        end

        it 'returns nil from getters by default' do
          config.add_option(:color)
          expect(config.color).to eq(nil)
        end

        it 'accepts a default value' do
          config.add_option(:size, 'large')
          expect(config.size).to eq('large')
        end

        it 'accpets a default via a block' do
          config.add_option(:dynamic) { 'value' }
          expect(config.dynamic).to eq('value')
        end

        it 'yields self to the block when an arg is accepted' do
          config.add_option(:single, 1)
          config.add_option(:double) { |config| config.single * 2 }
          expect(config.double).to eq(2)
        end

      end

      describe '#with_option' do

        it 'returns a new configuration object' do
          cfg = Configuration.new(:abc => 'xyz')
          cfg2 = cfg.with_options(:abc => 'mno')
          expect(cfg2).to be_kind_of(Configuration)
          expect(cfg2).to_not be(cfg)
        end

        it 'returns self when given options are empty' do
          cfg = Configuration.new(:abc => 'xyz')
          expect(cfg.with_options({})).to be(cfg)
        end

        it 'protects self from modification' do
          cfg = Configuration.new(option: 'old-value')
          cfg.add_option(:option)
          cfg.with_options(option: 'new-value')
          expect(cfg.option).to eq('old-value')
        end

        it 'merges options onto the returned object' do
          cfg = Configuration.new(option: 'old-value')
          cfg.add_option(:option)
          cfg2 = cfg.with_options(option: 'new-value')
          expect(cfg2.option).to eq('new-value')
        end

        it 'can be called without options' do
          expect(Configuration.new.with_options).to be_kind_of(Configuration)
        end

      end

      describe '#options' do

        it 'returns a hash of all configuration options with defaults' do
          cfg = Configuration.new(opt: 'opt-value')
          cfg.add_option(:opt)
          cfg.add_option(:nil_opt)
          cfg.add_option(:opt_with_default, 'default')
          cfg.add_option(:opt_with_block) { 'block-default' }
          expect(cfg.options).to eq({
            opt: 'opt-value',
            nil_opt: nil,
            opt_with_default: 'default',
            opt_with_block: 'block-default',
          })
        end

        it 'returns a frozen hash' do
          expect(Configuration.new.options).to be_frozen
        end

      end

      describe '#inspect' do

        it 'provides a helpful inspect method' do
          opts = { :abc => 'xyz' }
          cfg = Configuration.new(opts)
          expect(cfg.inspect).to include(cfg.options.inspect)
        end

        it 'displays the configuration class name' do
          expect(Configuration.new.inspect).to include(
            'Seahorse::Client::Configuration')
        end

      end

    end
  end
end

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

module Aws
  describe Service do

    let(:apis) { ['apis/S3-2006-03-01.json'] }

    describe '#client' do

      it 'returns a client class' do
        svc_class = Service.define(:identifier, apis)
        svc = svc_class.new
        expect(svc.client).to be_kind_of(Seahorse::Client::Base)
      end

    end

    describe '#identifier' do

      it 'is populated by the define method' do
        svc_class = Service.define(:identifier, apis)
        expect(svc_class.identifier).to be(:identifier)
      end

    end

    describe '#inspect' do

      it 'foo' do
        svc_class = Service.define(:identifier, apis)
        allow(svc_class).to receive(:name).and_return('Service')
        expect(svc_class.new.inspect).to eq('#<Service>')
      end

    end

    describe '.add_plugin' do

      it 'adds a plugin to each versioned client class' do
        svc_class = Service.define(:identifier, apis)
        expect(svc_class.const_get(:Client)).to receive(:add_plugin).with('p')
        svc_class.add_plugin('p')
      end

    end

    describe '.remove_plugin' do

      it 'removes a plugin from each versioned client class' do
        svc_class = Service.define(:identifier, apis)
        expect(svc_class.const_get(:Client)).to receive(:remove_plugin).with('p')
        svc_class.remove_plugin('p')
      end

    end

  end
end

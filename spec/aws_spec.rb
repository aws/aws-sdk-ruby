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
  describe 'VERSION' do

    it 'is a semver compatible string' do
      expect(VERSION).to match(/\d+\.\d+\.\d+/)
    end

  end

  describe 'config' do

    it 'defaults to an empty hash' do
      expect(Aws.config).to eq({})
    end

  end

  describe 'add_plugin' do

    it 'adds a plugin to every client for all services' do
      klass = double('service-class')
      expect(klass).to receive(:add_plugin).with('p')
      expect(Aws).to receive(:service_classes).and_return([klass])
      Aws.add_plugin('p')
    end

  end

  describe 'remove_plugin' do

    it 'removes a plugin from every client for each service' do
      klass = double('service-class')
      expect(klass).to receive(:remove_plugin).with('p')
      expect(Aws).to receive(:service_classes).and_return([klass])
      Aws.remove_plugin('p')
    end

  end

  describe 'add_service' do

    after(:each) do
      Aws.send(:remove_const, :DummyService)
    end

    it 'defines a new service interface' do
      Aws.add_service(:DummyService)
      expect(Aws::DummyService.ancestors).to include(Aws::Service)
    end

    it 'adds a helper method that constructs a service and client object' do
      Aws.add_service(:DummyService, ['apis/S3-2006-03-01.json'])
      svc = Aws.dummyservice(http_wire_trace: true)
      expect(Aws::DummyService.versions).to eq(['2006-03-01'])
      expect(svc).to be_kind_of(Seahorse::Client::Base)
      expect(svc.config.api).to be_kind_of(Seahorse::Model::Api)
      expect(svc.config.http_wire_trace).to be(true)
    end

    it 'translates apis' do
      api = Seahorse::Model::Api.new

      api_path = 'apis-src/s3-2006-03-01.json'
      expect(ApiTranslator).to receive(:translate).
        with(MultiJson.load(File.read(api_path)),
          documentation: false, errors: false).and_return(api)

      Aws.add_service(:DummyService, [api_path])
      Aws::DummyService::V20060301.clear_plugins
      expect(Aws.dummyservice.config.api).to be(api)
    end

  end
end

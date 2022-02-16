require_relative '../spec_helper'

module Aws
  module S3Control
    describe EndpointProvider do
      path = File.expand_path('../../../../../apis/s3control/2018-08-20/endpoint-tests.json', __FILE__)
      @json = JSON.parse(File.read(path), freeze: true)

      @json['endpoint_tests'].each do |test|
        it "passes #{test['description']}" do
          expect = test['expect']
          if (ok = expect['ok'])
            endpoint = Aws::S3Control::EndpointProvider.build(test['params'])
            expect(endpoint.url).to eq(ok['url'])
            expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
            expect(endpoint.auth_params).to eq(ok['authParams'])
            expect(endpoint.headers). to eq(ok['headers'])
          elsif expect['error']
            # what to raise here?
            expect {
              Aws::S3Control::EndpointProvider.build(test['params'])
            }.to raise_error(ArgumentError, expect['error'])
          end
        end
      end
    end
  end
end

require_relative '../spec_helper'

def suites
  JSON.parse(File.read(File.expand_path('suite.json', __FILE__).strip))
end

module Aws
  module S3
    describe Client do
      suites.each_with_index do |suite, i|
        it "produces correct url pattern with configuration #{i}" do
          unless suite['ConfiguredAddressingStyle'] == 'default'
            path_style = true
          end
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: suite['Region'],
            force_path_style: path_style,
            use_dualstack_endpoint: suite['UseDualstack'],
            use_accelerate_endpoint: suite['UseS3Accelerate']
          )
          resp = client.list_objects(bucket: suite['Bucket'])
          expect(resp.context.http_request.endpoint.to_s)
            .to start_with(suite['ExpectedUri'])
        end
      end
    end
  end
end

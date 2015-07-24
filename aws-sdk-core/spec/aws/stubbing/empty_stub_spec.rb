require 'spec_helper'
require 'stringio'

module Aws
  module Stubbing
    describe EmptyStub do

      it 'supports complex recursive structures' do
        now = Time.now
        allow(Time).to receive(:now).and_return(now)
        rules = ApiHelper.sample_api.operation(:example_operation).output
        stub = EmptyStub.new(rules).stub
        expect(stub.to_h).to eq({
          nested_list: [],
          nested_map: {},
          number_list: [],
          string_map: {},
          byte: "ByteShape",
          boolean: false,
          character: "CharacterShape",
          double: 0.0,
          float: 0.0,
          integer: 0,
          long: 0,
          string: "StringShape",
          timestamp: now,
        })
      end

      it 'does not stub paging markers' do
        client = S3::Client.new(stub_responses:true)
        stub = client.list_objects(bucket:'bucket')
        expect(stub[:contents]).to eq([])
        expect(stub[:common_prefixes]).to eq([])
        expect(stub.to_h).to eq({
          delimiter: "Delimiter",
          encoding_type: "EncodingType",
          is_truncated: false,
          marker: "Marker",
          max_keys: 0,
          name: "BucketName",
          prefix: "Prefix",
        })
      end

    end
  end
end

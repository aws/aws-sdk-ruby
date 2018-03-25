# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Jsonvalue Converter' do

    before(:all) do
      SpecHelper.generate_service(['JsonvalueConverter'], multiple_files: false)
    end

    let(:client) {
      JsonvalueConverter::Client.new(
        region: 'us-west-2',
        access_key_id: 'akid',
        secret_access_key: 'secret',
        stub_responses: true,
        endpoint: 'http://svc.us-west-2.amazonaws.com'
      )
    }

    it 'converts ruby object to json string before validation' do
      hash = {'bar' => 'baz'}
      array = ['bar', 'baz']
      num = 12345
      str = 'foobarbaz'
      bool = true
      time = Time.now
      resp = client.foo(
        foo_hash: hash,
        foo_array: array,
        foo_num: num,
        foo_str: str,
        foo_bool: bool,
        foo_time: time
      )
      expect(resp.context.params[:foo_hash]).to eql(hash.to_json)
      expect(resp.context.params[:foo_array]).to eql(array.to_json)
      expect(resp.context.params[:foo_num]).to eql(num.to_json)
      expect(resp.context.params[:foo_str]).to eql(str.to_json)
      expect(resp.context.params[:foo_bool]).to eql(bool.to_json)
      expect(resp.context.params[:foo_time]).to eql(time.to_json)
    end

    it 'raises exception when an object is not JSON serializable' do
      hash = {'bar' => 'baz'}
      hash.instance_eval('undef :to_json')
      expect {
        client.foo(foo_hash: hash)
      }.to raise_error(ArgumentError)
    end
  end
end

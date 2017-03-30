require 'spec_helper'

module Aws
  module Plugins

    describe JsonvalueConverter do

      let(:metadata) {{
        'protocol' => 'rest-json'
      }}
      let(:operations) {{
        'Foo' => {
          'name' => 'Foo',
          'http' => {
            'method' => 'POST',
            'requestUri' => '/'
          },
          'input' => {
            'shape' => 'FooRequest'
          }
        }
      }}
      let(:shapes) {{
        'StringType' => {
          'type' => 'string'
        },
        'FooRequest' => {
          'type' => 'structure',
          'members' => {
            'fooHash' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-hash'
            },
            'fooArray' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-array'
            },
            'fooNum' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-num'
            },
            'fooStr' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-str'
            },
            'fooBool' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-bool'
            },
            'fooTime' => {
              'shape' => 'StringType',
              'jsonvalue' => true,
              'location' => 'header',
              'locationName' => 'x-amz-foo-time'
            }
          }
        }
      }}

      let(:klass) {
        Seahorse::Client::Base.define(
          plugins: [ JsonvalueConverter ],
          api: Aws::Api::Builder.build(
            'metadata' => metadata,
            'operations' => operations,
            'shapes' => shapes
          )
        )
      }
      let(:client) {
        klass.new(endpoint: 'http://svc-name.us-west-2.amazonaws.com')
      }

      it 'converts ruby object to json string before validation' do
        stub_request(:get, "http://svc-name.us-west-2.amazonaws.com/")
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
        stub_request(:get, "http://svc-name.us-west-2.amazonaws.com/")
        hash = {'bar' => 'baz'}
        hash.instance_eval('undef :to_json')
        expect {
          client.foo(foo_hash: hash)
        }.to raise_error(ArgumentError)
      end
    end

  end
end

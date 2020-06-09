require_relative 'spec_helper'

module Aws
  module EventStream

    describe HeaderValue do

      it 'disable format by default' do
        hv = HeaderValue.new(value: 8675309, type: 'timestamp')
        expect(hv.value).to eql(8675309)
      end

      it 'formats uuid when format is enabled' do
        uuid_bytes = "\x01\x02\x03\x04\x05\x06\a\b\t\n\v\f\r\x0E\x0F\x10" 
        hv = HeaderValue.new(value: uuid_bytes, type: 'uuid', format: true)
        expect(hv.value).to eql('04030201-0605-0807-090a-0b0c0d0e0f10')
      end

      it 'formats timestamp when format is enable' do
        hv = HeaderValue.new(value: 8675309, type: 'timestamp', format: true)
        expect(hv.value).to eql(Time.at(8675.309))
      end

    end

  end
end

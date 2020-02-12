require_relative 'spec_helper'

module Aws
  module EventStream

    describe BytesBuffer do

      it '#read bytes with provided length' do
        buffer = BytesBuffer.new('foo')
        expect(buffer.read(2)).to eq('fo')
      end

      it 'raises error when read bytes exceed buffer length' do
        buffer = BytesBuffer.new('foo')
        expect{
          buffer.read(5)
        }.to raise_error(
          Aws::EventStream::Errors::ReadBytesExceedLengthError,
          'Attempting reading bytes to offset 4 exceeds buffer length of 3'
        )
      end

      it '#write provided bytes into buffer' do
        buffer = BytesBuffer.new('bar')
        buffer.write('baz')
        expect(buffer.read).to eq('barbaz')
      end

      it 'responds to #rewind and #tell methods' do
        buffer = BytesBuffer.new('foobar')
        buffer.read(4)
        expect(buffer.tell).to eq(4)
        buffer.rewind
        expect(buffer.tell).to eq(0)
      end

      it 'responds to #eof? method' do
        buffer = BytesBuffer.new('foo')
        buffer.read(1)
        expect(buffer.eof?).to be(false)
        buffer.read(2)
        expect(buffer.eof?).to be(true)
      end

      it 'provides correct #bytesize when read' do
        buffer = BytesBuffer.new('foo')
        buffer.read(1)
        expect(buffer.bytesize).to eql(3)
        buffer.read
        expect(buffer.bytesize).to eql(3)
      end

      it 'provides correct #bytesize when write' do
        buffer = BytesBuffer.new('')
        expect(buffer.bytesize).to eql(0)
        buffer.write('foo')
        expect(buffer.bytesize).to eql(3)
      end

      it '#clear! all data and reset position' do
        buffer = BytesBuffer.new('foo')
        buffer.read(1)
        buffer.clear!
        expect(buffer.tell).to eq(0)
        expect(buffer.read).to eq('')
        expect(buffer.eof?).to be true
      end
    end

  end
end

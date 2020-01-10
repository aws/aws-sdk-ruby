require_relative 'spec_helper'
require 'tempfile'

module Aws
  module S3
    describe FilePart do
      let(:data) { 'The quick brown fox jumped over the lazy dog.' }

      let(:tempfile) do
        file = Tempfile.new('file-part-test')
        file.write(data)
        file.seek(0)
        file
      end

      let(:path) { tempfile.path }

      describe '#size' do
        it 'returns the :size given the constructor, not the full file size' do
          part = FilePart.new(source: path, offset: 0, size: 10)
          expect(part.size).to eq(10)
        end

        it 'does not attempt to validate the :size against the file' do
          # garbage-in-garbage-out part sizes
          part = FilePart.new(source: path, offset: 0, size: 1_000_000_000)
          expect(part.size).to eq(1_000_000_000)
        end
      end

      describe '#read' do
        it 'returns the full part when #read is called without args' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read).to eq('The quick brown')
        end

        it 'returns full part when #read called with num bytes exceede size' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read(20)).to eq('The quick brown')
        end

        it 'returns remaining part when #read called with num bytes past end' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read(10)).to eq('The quick ')
          expect(part.read(10)).to eq('brown')
          expect(part.read(10)).to eq(nil)
        end

        it 'returns nil when #read is called with bytes from part end' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read(15)).to eq('The quick brown')
          expect(part.read(15)).to eq(nil)
        end

        it 'returns "" when #read is called without bytes from part end' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read).to eq('The quick brown')
          expect(part.read).to eq('')
        end
      end

      describe '#rewind' do
        it 'allows the file part to be re-read' do
          part = FilePart.new(source: path, offset: 0, size: 15)
          expect(part.read).to eq('The quick brown')
          part.rewind
          expect(part.read).to eq('The quick brown')
        end
      end

      describe '#close' do
        it 'closes the opened file handle' do
          file = double('fake-file')
          expect(File).to receive(:open).with(path, 'rb').and_return(file)
          expect(file).to receive(:read).with(5, nil).and_return('bytes')
          expect(file).to receive(:seek).with(1)
          expect(file).to receive(:close)
          part = FilePart.new(source: path, offset: 1, size: 5)
          part.read
          part.close
        end
      end
    end
  end
end

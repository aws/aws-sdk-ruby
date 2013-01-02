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
require 'tempfile'
require 'openssl'

module AWS
  class S3

    describe CipherIO do
      let(:key)          { "I really need a better key name." }
      let(:iv)           { "Initialization vectors should be unique." }
      let(:cipher)       { OpenSSL::Cipher.new('AES-256-CBC') }
      let(:stream)       { StringIO.new("HELLO WORLD!") }
      let(:proxy_stream) { ProxyStream.new(StringIO.new("HELLO WORLD!")) }

      class ProxyStream
        def initialize stream
          @stream = stream
        end
        def read bytes = nil
          (bytes) ? @stream.read(bytes) : @stream.read()
        end
        def eof?
          @stream.eof?
        end
      end

      before(:each) do
        cipher.encrypt
        cipher.key = key
        cipher.iv = iv
        cipher
      end

      context '#size' do

        it 'reports size when given' do
          CipherIO.new(cipher.clone, stream, 12).size.should == 16
        end

        it 'does not respond to #size when not given' do
          CipherIO.new(cipher.clone, stream).should_not respond_to(:size)
        end

      end

      context '#rewind' do

        it 'responds to #rewind when the stream does' do
          CipherIO.new(cipher.clone, stream, 12).respond_to?(:rewind).should == true
        end

        it 'does not respond to #rewind when the stream does not' do
          CipherIO.new(cipher, proxy_stream, 12).respond_to?(:rewind).should == false
        end

        it 'can rewind correctly' do
          cipherio = CipherIO.new(cipher, stream, 12)
          encrypted_data = cipher.update("HELLO WORLD!") + cipher.final
          cipherio.read().should == encrypted_data
          cipherio.read().should == ""
          cipherio.rewind()
          cipherio.read().should == encrypted_data
          cipherio.read().should == ""
        end

      end

      context '#read' do

        it 'does read bytes at a time' do
          CipherIO.new(cipher, proxy_stream, 12).read(32).should ==
            cipher.update("HELLO WORLD!") + cipher.final
        end

        it 'does return nil when out of bytes, when requesting with size' do
          cipherio = CipherIO.new(cipher, proxy_stream, 12)
          cipherio.read(32).should == cipher.update("HELLO WORLD!") + cipher.final
          cipherio.read(32).should == nil
        end

        it 'does read all at once' do
          CipherIO.new(cipher, proxy_stream, 12).read(32).should ==
            cipher.update("HELLO WORLD!") + cipher.final
        end

        it 'does return empty string when out of bytes, when requesting with no size' do
          cipherio = CipherIO.new(cipher, proxy_stream, 12)
          cipherio.read().should == cipher.update("HELLO WORLD!") + cipher.final
          cipherio.read().should == ""
        end

        it 'does return empty string when out of bytes, when requesting with no size' do
          cipherio = CipherIO.new(cipher, proxy_stream, 12)
          cipherio.read().should == cipher.update("HELLO WORLD!") + cipher.final
          cipherio.read().should == ""
        end

      end

    end
  end
end

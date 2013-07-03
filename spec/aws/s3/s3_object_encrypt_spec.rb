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
require 'base64'
require 'digest/md5'

module AWS
  class S3

    describe S3Object do

      it_behaves_like 'an S3 model object', Bucket.new('foobucket'), 'foo'

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('foobucket',
                                :config => config,
                                :s3_client => client) }

      let(:object) { S3Object.new(bucket, 'foo') }

      let(:rsa_key) { OpenSSL::PKey::RSA.generate(1024) }
      let(:master_cipher) { OpenSSL::Cipher.new("AES-128-ECB").encrypt }
      let(:master_sym_key) { "IAmReallyEasyKey" }
      let(:aes_cipher) { OpenSSL::Cipher.new("AES-256-CBC").encrypt }

      let(:data_key) { "12345678901234567890123456789012" }
      let(:data_iv)  { "1234567890123456"  }
      let(:encrypted_data) { decode64("onfuIegSp18RRWBXT7V5Qg==")}
      let(:encrypted_key) { rsa_key.public_encrypt(data_key) }
      let(:encryption_materials) {
        {
            "x-amz-iv" => encode64(data_iv),
            "x-amz-key" => encode64(encrypted_key),
            "x-amz-matdesc" => "{}"
        }
      }
      let(:sym_encrypt_materials) do
        master_cipher.key = master_sym_key
        encrypted_sym_key = encode64(master_cipher.update(data_key) +
                                     master_cipher.final)
        {
            "x-amz-iv" => encode64(data_iv),
            "x-amz-key" => encrypted_sym_key,
            "x-amz-matdesc" => "{}"
        }
      end
      let(:inst_response) { ResponseProxy.new(JSON.generate(encryption_materials)) }
      let(:response) { ResponseProxy.new(encrypted_data) }

      let(:head_response) {
        double('head-response',
          :meta => encryption_materials.merge(
            {"x-amz-unencrypted-content-length" => 5}
          )
        )
      }

      let(:sym_head_response) {
        double('head-response',
          :meta => sym_encrypt_materials.merge(
            {"x-amz-unencrypted-content-length" => 5}
          )
        )
      }


      class IO_proxy
        def initialize string
          @stream = StringIO.new(string, "r");
        end
        def read bytes = nil
          if bytes
            @stream.read(bytes)
          else
            @stream.read()
          end
        end

        def eof?
          @stream.eof?
        end
      end

      class ResponseProxy
        def initialize input
          @data = {:data => input}
        end
        attr_accessor :data
      end

      def encode64(input)
        Base64.encode64(input).split("\n") * ""
      end

      def decode64(input)
        Base64.decode64(input)
      end

      def encrypted_length(length)
        (length / 16 + 1) * 16
      end

      context '#write' do
        context 'with asymmetric encryption' do

          context 'with no arguments using a key' do

            it 'should call put_object with the bucket, key and empty data' do
              msg = ":data must be provided as a String, Pathname, File, or an "
              msg << "object that responds to #read and #eof?"
              lambda do
                object.write(:encryption_key => rsa_key)
              end.should raise_error(msg)
            end
          end

          # The enveloped encryption uses a 256bit key, using a 128bit key to
          # encrypt the 256bit key could lead to halving the strength of the
          # 256bit key (due to properties of ECB).
          context 'with a key shorter than 256 bits' do

            it 'should warn that the encryption will be unsafe' do
              object.should_receive(:warn).
                  with("Unsafe encryption, data is longer than key length")

              begin
                # Temporarily silence stderr
                real_stderr, $stderr = $stderr, StringIO.new
                object.write("HELLO",
                            :encryption_key => "YELLOW SUBMARINE") # 128bit key

              ensure
                $stderr = real_stderr
              end
            end
            
          end

          context 'with incorrect arguments' do

            it 'should call put_object with  an invalid length symmetric key' do
              msg = "invalid key, symmetric key required to be "
              msg << "16, 24, or 32 bytes in length, saw length 4"
              lambda do
                object.write("FAIL THIS TEST",
                             :encryption_key =>
                               "Mary")
              end.should raise_error(msg)
            end

            it 'should call put_object with an invalid type key' do
              msg = "invalid key, must be "
              msg << "an OpenSSL::PKey::RSA or a cipher key string"
              lambda do
                object.write("FAIL THIS TEST",
                             :encryption_key => 55)
              end.should raise_error(msg)
            end

            it 'should call put_object with an invalid CSE material location' do
              msg = "invalid :encryption_materials_location, expected "
              msg << ":metadata or :instruction_file, got: #{:not_a_material_location.inspect}"
              lambda do
                object.write("FAIL THIS TEST",
                             :encryption_key => rsa_key,
                             :encryption_materials_location => :not_a_material_location)
              end.should raise_error(msg)
            end

          end


          context 'with a string using metadata implicitly' do

            it 'should call put_object with the bucket, key and data' do

              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :metadata => {'x-amz-key' => instance_of(String),
                                   'x-amz-iv' => instance_of(String),
                                   'x-amz-matdesc' => '{}',
                                   'x-amz-unencrypted-content-length' => 5},
                     :content_length => encrypted_length(5),
                     :data => instance_of(CipherIO)).
                and_return(client.stub_for(:put_object))
              object.write("HELLO",
                           :encryption_key => rsa_key)
            end

          end

          context 'with a string using metadata explicitly' do
            it 'should call put_object with the bucket, key and data' do
              client.should_receive(:put_object).
                with(:data => instance_of(CipherIO),
                     :metadata => {'x-amz-unencrypted-content-length' => 5,
                                   'x-amz-key' => instance_of(String),
                                   'x-amz-iv'  => instance_of(String),
                                   'x-amz-matdesc' => '{}'},
                     :content_length => encrypted_length(5),
                     :bucket_name => "foobucket",
                     :key => "foo").

                and_return(client.stub_for(:put_object))
              object.write("HELLO",
                           :encryption_key => "12345678901234567890123456789012",
                           :encryption_materials_location => :metadata)
            end

          end

          context 'with a custom matdesc' do

            it 'should pass along the matdesc' do

              client.should_receive(:put_object).with(
                hash_including(:metadata => hash_including(
                    'x-amz-matdesc' => '{"custom":"matdesc"}'
                  )
                )
              ).and_return(client.stub_for(:put_object))

              opts = {
                :encryption_key => "12345678901234567890123456789012",
                :encryption_matdesc => '{"custom":"matdesc"}',
              }

              object.write("HELLO", opts)

            end

          end

          context 'it defaults the to the configured matdesc' do

            it 'should pass along the matdesc' do

              client.config.stub(:s3_encryption_matdesc).
                and_return('{"configured":"matdesc"}')

              client.should_receive(:put_object).with(
                hash_including(:metadata => hash_including(
                    'x-amz-matdesc' => '{"configured":"matdesc"}'
                  )
                )
              ).and_return(client.stub_for(:put_object))

              opts = { :encryption_key => "12345678901234567890123456789012" }
              object.write("HELLO", opts)

            end

          end

          context 'with a string using instruction' do

            it 'should call put_object with the bucket, key and data' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo.instruction",
                     :metadata => {'x-amz-crypto-instr-file' => "",
                                   'x-amz-unencrypted-content-length' => 5},
                     :data => instance_of(StringIO),
                     :content_length => kind_of(Integer)).
                and_return(client.stub_for(:put_object))

              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :metadata => {'x-amz-unencrypted-content-length' => 5},
                     :data => instance_of(CipherIO),
                     :content_length => encrypted_length(5)).
                and_return(client.stub_for(:put_object))

              object.write("HELLO",
                           :encryption_key  => "01234567890123456789012345678901",
                           :encryption_materials_location => :instruction_file)
            end

          end

          context 'with a string using instruction and an IO-like object' do

            it 'should raise error, no content length given' do

              msg = "unknown content length, must set :content_length or "
              msg << ":estimated_content_length"
              lambda do
                object.write(IO_proxy.new("HELLO"),
                             :encryption_key  => "01234567890123456789012345678901",
                             :encryption_materials_location => :instruction_file)
              end.should raise_error(msg)
            end



            it 'should call put_object with the bucket, key and data' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo.instruction",
                     :metadata => {'x-amz-crypto-instr-file' => ""},
                     :data => instance_of(StringIO),
                     :content_length => kind_of(Integer)).
                and_return(client.stub_for(:put_object))

              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :metadata => {},
                     :data => instance_of(StringIO),
                     :content_length => encrypted_length(5)).
                and_return(client.stub_for(:put_object))

              object.write(IO_proxy.new("HELLO"),
                           :estimated_content_length => 10,
                           :encryption_key  => "01234567890123456789012345678901",
                           :encryption_materials_location => :instruction_file)
            end

            it 'should call put_object with a block turned into an IOProxy' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo.instruction",
                     :metadata => {'x-amz-crypto-instr-file' => ""},
                     :data => instance_of(StringIO),
                     :content_length => kind_of(Integer)).
                and_return(client.stub_for(:put_object))

              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :metadata => {},
                     :data => instance_of(StringIO),
                     :content_length => encrypted_length(5)).
                and_return(client.stub_for(:put_object))
              eof = false
              object.write(:estimated_content_length => 10,
                           :encryption_key  => "01234567890123456789012345678901",
                           :encryption_materials_location => :instruction_file) do |buffer, bytes|
                             unless eof
                               buffer << "HELLO"
                               eof = true
                             else
                               buffer << ""
                              end
                           end
            end

          end


          context 'with a string using instruction, symmetric key, and md5' do

            it 'should call put_object with the bucket, key and data' do
              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo.instruction",
                     :metadata => {'x-amz-crypto-instr-file' => "",
                                   'x-amz-unencrypted-content-md5' => "I wish I were an md5",
                                   'x-amz-unencrypted-content-length' => 5},
                     :data => instance_of(StringIO),
                     :content_length => kind_of(Integer)).
                and_return(client.stub_for(:put_object))

              client.should_receive(:put_object).
                with(:bucket_name => "foobucket",
                     :key => "foo",
                     :metadata => {'x-amz-unencrypted-content-length' => 5,
                                   'x-amz-unencrypted-content-md5' => "I wish I were an md5"},
                     :data => instance_of(CipherIO),
                     :content_length => encrypted_length(5)).
                and_return(client.stub_for(:put_object))

              object.write("HELLO",
                           :encryption_key  => "01234567890123456789012345678901",
                           :encryption_materials_location => :instruction_file,
                           :content_md5 => "I wish I were an md5")
            end

          end
        end
        context 'large data' do

          let(:upload) { double("upload",
                                :add_part => nil) }

          before(:each) do
            object.stub(:multipart_upload).and_yield(upload)
          end

          it 'should perform a multipart upload' do
            object.should_receive(:multipart_upload).and_yield(upload)
            object.write("HELLO",
                         :encryption_key => rsa_key,
                         :multipart_threshold => 3)
          end

          it 'should not perform a multipart upload with :single_request' do
            object.should_not_receive(:multipart_upload)
            client.should_receive(:put_object).
              and_return(client.stub_for(:put_object))
            object.write("HELLO",
                         :encryption_key => rsa_key,
                         :single_request => true,
                         :multipart_threshold => 3)
          end

          it 'should pass additional options to the multipart_upload call' do
            object.should_receive(:multipart_upload).
              with(:metadata => { "color" => "red",
                                  'x-amz-key' => instance_of(String),
                                  'x-amz-iv' => instance_of(String),
                                  'x-amz-matdesc' => "{}",
                                  'x-amz-unencrypted-content-length' => 5},
                                  :data => instance_of(CipherIO)).
              and_yield(upload)
            object.write("HELLO",
                         :encryption_key => rsa_key,
                         :metadata => { "color" => "red" },
                         :multipart_threshold => 3)
          end

          it 'should default to the multipart threshold from the config' do
            config.stub(:s3_multipart_threshold).and_return(3)
            object.should_receive(:multipart_upload).and_yield(upload)
            object.write("HELLO")
          end

          context 'string' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write("aabb",
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

            it 'should default to the configured multipart_min_part_size' do
              config.stub(:s3_multipart_min_part_size).and_return(2)
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write("aabb",
                           :multipart_threshold => 2)
            end

          end

          context 'stream' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              object.write(StringIO.new("aabb"),
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

          end

          context 'file' do

            it 'should split the upload into parts' do
              upload.should_receive(:add_part).ordered.with("aa")
              upload.should_receive(:add_part).ordered.with("bb")
              f = Tempfile.new("foo")
              f.write("aabb")
              f.close
              object.write(:file => f.path,
                           :multipart_threshold => 2,
                           :multipart_min_part_size => 2)
            end

          end

        end
      end

      context '#read' do

        before(:each) do
          response.data[:data] = encrypted_data
          client.stub(:get_object).and_return(response)
        end

        it 'should call get_object with the bucket name and key' do
          client.should_receive(:get_object).and_return(response)
          encode64(object.read).should == encode64(encrypted_data)
        end

        context 'error checking' do
          it 'should call get_object with an invalid key' do
            msg = "invalid key, must be "
            msg << "an OpenSSL::PKey::RSA or "
            msg << "a cipher key string"
            lambda do
              object.read(:encryption_key => 55,
                          :encryption_materials_location => :metadata)
            end.should raise_error(msg)
          end

          it 'should call get_object with a public RSA key' do
            msg = "invalid key, OpenSSL::PKey::RSA requires a private key"
            lambda do
              object.read(:encryption_key => rsa_key.public_key,
                          :encryption_materials_location => :metadata)
            end.should raise_error(msg)
          end
        end

        context 'reading encrypted data with metadata' do

          before(:each) do
            client.stub(:head_object).and_return(head_response)
          end

          it 'should default material location to :metadata' do
            # gets the key via a head request
            client.should_receive(:head_object).and_return(head_response)
            client.should_receive(:get_object).and_return(response)
            object.read(:encryption_key => rsa_key)
          end

          it 'should get materials from the correct object version' do
            # gets the key via a head request
            client.should_receive(:head_object).
              with(hash_including(:version_id => 'abc')).
              and_return(head_response)
            client.should_receive(:get_object).and_return(response)
            object.read(:encryption_key => rsa_key, :version_id => 'abc')
          end

          it 'should call get_object with metadata material location' do
            client.should_receive(:head_object)
            client.should_receive(:get_object).
                with(:bucket_name => "foobucket", :key => "foo")

            object.read(:encryption_key => rsa_key,
                        :encryption_materials_location => :metadata)

          end

          it 'should call get_object with metadata material location and decrypt' do
            client.should_receive(:head_object)
            client.should_receive(:get_object)
            object.read(:encryption_key => rsa_key,
                        :encryption_materials_location => :metadata).
                        should == "HELLO"
          end

        end

        context 'reading encrypted data with tampered metadata' do
          before(:each) do
            cipher = OpenSSL::Cipher.new('AES-128-ECB').encrypt
            cipher.key = "I AM NOT A KEY I WANT TO USE!"
            client.stub(:head_object).and_return(sym_head_response)
            response.data[:data] = cipher.update('HELLO') + cipher.final
            client.stub(:get_object).and_return(response)
          end

          it 'should raise error for wrong data key' do
            lambda do
              client.should_receive(:head_object)
              client.should_receive(:get_object).
                  with(:bucket_name => "foobucket", :key => "foo")
              object.read(:encryption_key => master_sym_key,
                          :encryption_materials_location => :metadata)
            end.should raise_error(OpenSSL::Cipher::CipherError)

          end

        end

        context 'reading encrypted data with metadata and symmetric key' do

          before(:each) do
            client.stub(:head_object).and_return(sym_head_response)
            client.stub(:get_object).and_return(response)
          end

          it 'should raise error for wrong master key' do
            lambda do
              client.should_receive(:head_object)
              object.read(:encryption_key => "IWishIWasRight..",
                          :encryption_materials_location => :metadata)
            end.should raise_error(AWS::S3::Errors::IncorrectClientSideEncryptionKey)

          end

          it 'should call get_object with metadata material location' do
            client.should_receive(:head_object)
            client.should_receive(:get_object).
                with(:bucket_name => "foobucket", :key => "foo").
                and_return(response)

            object.read(:encryption_key => master_sym_key,
                        :encryption_materials_location => :metadata)

          end

          it 'should call get_object with metadata material location and decrypt' do
            client.should_receive(:head_object)
            client.should_receive(:get_object)
            object.read(:encryption_key => master_sym_key,
                        :encryption_materials_location => :metadata).should == "HELLO"
          end

        end

        context 'reading encrypted data with instruction file' do
          let(:head_response) { double('response',
              :meta => {}) }

          before(:each) do
            client.stub(:head_object).and_return(head_response)
          end

          it 'should call get_object with instruction material location' do
            client.should_receive(:get_object).with(:bucket_name => "foobucket",
                                                    :key => "foo.instruction").
                                               and_return(inst_response)
            client.should_receive(:get_object).with(:bucket_name => "foobucket",
                                                    :key => "foo").
                                               and_return(response)
            object.read(:encryption_key => rsa_key,
                        :encryption_materials_location => :instruction_file)
          end

          it 'should call get_object with instruction material location and decrypt with block' do
            client.should_receive(:get_object).with(:bucket_name => "foobucket",
                                                    :key => "foo.instruction").
                                  and_return(inst_response)
            client.should_receive(:get_object).with(:bucket_name => "foobucket",
                                                    :key => "foo").
                                                    and_yield(encrypted_data)
            out = StringIO.new
            object.read(:encryption_key => rsa_key,
                        :encryption_materials_location => :instruction_file) do |chunk|
              out << chunk
            end
            out.rewind
            out.read.should == "HELLO"
          end

        end

        context 'reading unencrypted data with encryption' do
          let(:head_response) { double('response',
              :meta => {}) }

          before(:each) do
            response.data[:data] = 'HELLO'
            client.stub(:head_object).and_return(head_response)
            client.stub(:get_object).and_return(response)
          end

          it 'should call get_object and get a no encryption error' do
            lambda do
            object.read(:encryption_key => rsa_key,
                        :encryption_materials_location => :metadata)
            end.should raise_error("no encryption materials found, unable to decrypt")
          end
        end
      end


      context "#copy" do
        it 'deletes with instruction_file' do
          client.should_receive(:delete_object).with(
                                hash_including(:bucket_name => "foobucket",
                                               :key => "foo"))
          client.should_receive(:delete_object).with(
                                hash_including(:bucket_name => "foobucket",
                                               :key => "foo.instruction"))
          object.delete(:delete_instruction_file => true)
        end
      end

      context "#copy" do
        before(:each) do
          client.stub(:head_object).and_return(head_response)
        end

        it 'should call copy_object with copying instruction file' do
          client.should_receive(:head_object).and_return(double('response',
                                                                :meta => {}))
          client.should_receive(:copy_object).with(
            hash_including(:bucket_name => "foobucket",
                           :key => "foo2.instruction",
                           :copy_source => "foobucket/foo.instruction",
                           :metadata_directive => "COPY"))
          client.should_receive(:copy_object).with(
            hash_including(:bucket_name => "foobucket",
                           :key => "foo2",
                           :copy_source => "foobucket/foo",
                           :metadata_directive => "COPY"))
          object.copy_to("foo2", :client_side_encrypted => true)
        end

        it 'should call copy_object with copying metadata' do
          client.should_receive(:copy_object).with(
            hash_including(:bucket_name => "foobucket",
                           :key => "foo2",
                           :copy_source => "foobucket/foo",
                           :metadata_directive => "COPY"))
          object.copy_to("foo2", :client_side_encrypted => true)
        end
        it 'should call copy_object with saving overriden data' do
          client.should_receive(:head_object)
          client.should_receive(:copy_object).with(
            hash_including(:bucket_name => "foobucket",
                           :key => "foo2",
                           :copy_source => "foobucket/foo",
                           :metadata_directive => "REPLACE",
                           :metadata => {
                             'foo' => 'bar',
                             'x-amz-key' => encode64(encrypted_key),
                             'x-amz-iv'  => encode64(data_iv),
                             'x-amz-matdesc' => "{}",
                             'x-amz-unencrypted-content-length' => 5}))
          object.copy_to("foo2",
                         :client_side_encrypted => true,
                         :metadata => {"foo" => "bar"})
        end

      end
    end

  end
end

# encoding: UTF-8

require 'spec_helper'

module Aws
  module Plugins
    describe SQSMd5s do

      let(:plugin) { SQSMd5s.new }

      let(:config) { Seahorse::Client::Configuration.new }

      let(:built_config) { config.build!(verify_checksums: verify_checksums) }

      let(:handlers) { Seahorse::Client::HandlerList.new }

      it 'adds a :verify_checksums option that defaults to true' do
        plugin.add_options(config)
        expect(config.build!.verify_checksums).to be(true)
      end

      describe '#add_handlers' do

        before(:each) do
          plugin.add_options(config)
          plugin.add_handlers(handlers, built_config)
        end

        context 'when verify_checksums is true' do

          let(:verify_checksums) { true }

          it 'adds a handler for each verifiable operation' do
            SQSMd5s::OPERATIONS_TO_VERIFY.each do |operation|
              expect(handlers.for(operation).count).to eq(1)
            end
          end
        end

        context 'when verify_checksums is false' do

          let(:verify_checksums) { false }

          it 'does not add any handler' do
            expect(handlers.count).to eq(0)
            SQSMd5s::OPERATIONS_TO_VERIFY.each do |operation|
              expect(handlers.for(operation).count).to eq(0)
            end
          end
        end
      end

      describe SQSMd5s::Handler do

        let(:message_body) { 'abc' }

        let(:message_attributes) {
          {
            'ccc' => {
              string_value: 'test',
              data_type: 'String'
            },
            aaa: {
              binary_value: [ 2, 3, 4 ].pack('C*'),
              data_type: 'Binary'
            },
            zzz: {
              data_type: 'Number',
              string_value: '0230.01'
            },
            'öther_encodings' => {
              data_type: 'String',
              string_value: 'Tüst'.encode!('ISO-8859-1')
            }
          }
        }

        let(:response_data) {
          double(
            'response_data',
            md5_of_message_body: md5_of_message_body,
            md5_of_message_attributes: md5_of_message_attributes)
        }

        let(:built_config) {
          config.build!(
            verify_checksums: verify_checksums,
            response_data: response_data)
        }

        let(:params) {
          {
            message_body: message_body,
            message_attributes: message_attributes
          }
        }

        let(:operation_name) { :send_message }

        let(:context) {
          Seahorse::Client::RequestContext.new(
            params: params,
            config: built_config,
            operation_name: operation_name)
        }

        let(:verify_checksums) { true }

        let(:status_code) { 200 }

        before(:each) do
          plugin.add_options(config)
          DummySendPlugin.new.add_options(config)
          plugin.add_handlers(handlers, built_config)
          handlers.add(DummySendPlugin::Handler, step: :send)
          handlers.for(operation_name).to_stack.call(context)
          context.http_response.status_code = status_code
        end

        context 'when calculated and returned MD5 digest match' do

          let(:md5_of_message_body) { '900150983cd24fb0d6963f7d28e17f72' }

          let(:md5_of_message_attributes) { '756d7f4338696745d063b420a2f7e502' }

          it 'returns response' do
            expect { context.http_response.signal_done }.not_to raise_error
          end

          context 'when messages sent in a batch' do

            let(:operation_name) { :send_message_batch }

            let(:params) {
              {
                entries: [
                  {
                    id: '0',
                    message_body: message_body,
                    message_attributes: message_attributes
                  }
                ]
              }
            }

            let(:response_data) do
                entry = double(
                  'response_data_0',
                  id: '0',
                  md5_of_message_body: md5_of_message_body,
                  md5_of_message_attributes: md5_of_message_attributes)
              double('response_data', successful: [ entry ])
            end

            it 'returns response' do
              expect { context.http_response.signal_done }.not_to raise_error
            end
          end
        end

        context 'when calculated and returned MD5 mismatch' do

          let(:md5_of_message_body) { 'a different MD5 digest' }

          let(:md5_of_message_attributes) { 'a different MD5 digest' }

          it 'raises error' do
            expect { context.http_response.signal_done }.to(
              raise_error(Aws::Errors::ChecksumError, /does not match/)
            )
          end

          context 'when request was not successful' do

            let(:status_code) { 500 }

            it 'doe not raise ChecksumError' do
              expect { context.http_response.signal_done }.not_to raise_error
            end
          end
        end
      end
    end
  end
end

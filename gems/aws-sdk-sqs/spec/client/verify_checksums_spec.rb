# encoding: utf-8

require_relative '../spec_helper'

module Aws
  module SQS
    class Client
      describe ':verify_checksums' do

        let(:client) { Client.new(stub_responses:true, verify_checksums: true) }

        let(:message_body) { 'abc' }

        let(:message_attributes) {{
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
        }}

        it 'is enabled by default' do
          client = Client.new(
            region: 'us-east-1',
            access_key_id: 'akid',
            secret_access_key: 'secret',
          )
          expect(client.config.verify_checksums).to be(true)
        end

        it 'is disabled when response stubbing is enabled' do
          client = Client.new(stub_responses: true)
          expect(client.config.verify_checksums).to be(false)
        end

        it 'can be enabled with response stubbing is enabled' do
          client = Client.new(stub_responses: true, verify_checksums: true)
          expect(client.config.verify_checksums).to be(true)
        end

        describe '#send_message' do
          let(:md5_of_attributes) { '756d7f4338696745d063b420a2f7e502' }

          before(:each) do
            response_body = <<-XML
              <SendMessageResponse>
                <SendMessageResult>
                  <MD5OfMessageBody>900150983cd24fb0d6963f7d28e17f72</MD5OfMessageBody>
                  <MD5OfMessageAttributes>#{md5_of_attributes}</MD5OfMessageAttributes>
                  <MessageId>5fea7756-0ea4-451a-a703-a558b933e274</MessageId>

                </SendMessageResult>
              </SendMessageResponse>
            XML


            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: 200,
                headers: {},
                body: response_body)
              Seahorse::Client::Response.new(context: context)
            end
          end

          it 'does not raise an error if checksums match' do
            expect {
              client.send_message(
                queue_url:'https://queue.url',
                message_body: message_body,
                message_attributes: message_attributes,
              )
            }.not_to raise_error
          end

          context 'when data types have custom labels' do
            let(:md5_of_attributes) { '5b7ef6c8a8d46001c7cdadaeea917aa4' }

            before(:each) do
              message_attributes.keys.each do |attribute_name|
                message_attributes[attribute_name][:data_type] << '.test'
              end
            end

            it 'does not raise an error if checksums match' do
              expect {
                client.send_message(
                  queue_url:'https://queue.url',
                  message_body: message_body,
                  message_attributes: message_attributes,
                )
              }.not_to raise_error
            end
          end

          it 'raises when the md5 checksums do not match for the body' do
            expect {
              client.send_message(
                queue_url:'https://queue.url',
                message_body: message_body + 'junk',
                message_attributes: message_attributes,
              )
            }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'raises when the md5 checksums do not match for the body' do
            message_attributes['ccc'][:string_value] += 'junk'
            expect {
              client.send_message(
                queue_url:'https://queue.url',
                message_body: message_body,
                message_attributes: message_attributes,
              )
            }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'does not interfere with service errors' do
            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: 500,
                headers: {},
                body:'',
              )
              Seahorse::Client::Response.new(context: context)
            end
            expect {
              client.send_message(
                queue_url:'https://queue.url',
                message_body: message_body,
                message_attributes: message_attributes,
              )
            }.to raise_error(Aws::SQS::Errors::ServiceError)
          end

        end

        describe '#send_message_batch' do

          before(:each) do
            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: 200,
                headers: {},
                body:<<-XML)
                <SendMessageBatchResponse>
                  <SendMessageBatchResult>
                    <SendMessageBatchResultEntry>
                      <Id>msg-id</Id>
                      <MD5OfMessageBody>900150983cd24fb0d6963f7d28e17f72</MD5OfMessageBody>
                      <MD5OfMessageAttributes>756d7f4338696745d063b420a2f7e502</MD5OfMessageAttributes>
                    </SendMessageBatchResultEntry>
                  </SendMessageBatchResult>
                </SendMessageBatchResponse>
              XML
              Seahorse::Client::Response.new(context: context)
            end
          end

          it 'does not raise an error if checksums match' do
            expect {
              client.send_message_batch(
                queue_url:'https://queue.url',
                entries: [
                  {
                    id: 'msg-id',
                    message_body: message_body,
                    message_attributes: message_attributes,
                  }
                ]
              )
            }.not_to raise_error
          end

          it 'raises when the md5 checksums do not match for the body' do
            expect {
              client.send_message_batch(
                queue_url:'https://queue.url',
                entries: [
                  {
                    id: 'msg-id',
                    message_body: message_body + 'junk',
                    message_attributes: message_attributes,
                  }
                ]
              )
            }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'raises when the md5 checksums do not match for the body' do
            message_attributes['ccc'][:string_value] += 'junk'
            expect {
              client.send_message_batch(
                queue_url:'https://queue.url',
                entries: [
                  {
                    id: 'msg-id',
                    message_body: message_body,
                    message_attributes: message_attributes,
                  }
                ]
              )
            }.to raise_error(Aws::Errors::ChecksumError)
          end

          it 'skips failed errors' do
            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: 200,
                headers: {},
                body:<<-XML)
                <SendMessageBatchResponse>
                  <SendMessageBatchResult>
                    <BatchResultErrorEntry>
                      <Id>msg-id</Id>
                    </BatchResultErrorEntry>
                  </SendMessageBatchResult>
                </SendMessageBatchResponse>
              XML
              Seahorse::Client::Response.new(context: context)
            end
            expect {
              client.send_message_batch(
                queue_url:'https://queue.url',
                entries: [
                  {
                    id: 'msg-id',
                    message_body: message_body,
                    message_attributes: message_attributes,
                  }
                ]
              )
            }.not_to raise_error
          end

          it 'does not interfere with service errors' do
            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: 500,
                headers: {},
                body:'',
              )
              Seahorse::Client::Response.new(context: context)
            end
            expect {
              client.send_message_batch(
                queue_url:'https://queue.url',
                entries: []
              )
            }.to raise_error(Aws::SQS::Errors::ServiceError)
          end

        end
      end
    end
  end
end

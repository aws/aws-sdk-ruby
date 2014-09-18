require 'spec_helper'

module Aws
  module S3
    describe Presigner do

      before (:each) do
        Aws.config[:s3] = {
          region: 'us-east-1',
          credentials: Credentials.new(
            "AKIAIOSFODNN7EXAMPLE",
            "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"),
          retry_limit: 0
        }

        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      end

      after(:each) do
        Aws.config = {}
      end

      let(:client) { Aws::S3::Client.new }

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20130524T000000Z' }
      

      describe '#initialize' do
        it 'accepts an injected S3 client' do
          pre = Presigner.new(client)
          expect(pre.class).to eq(Aws::S3::Presigner)
        end

        it 'can be constructed without a client' do
          pre = Presigner.new
          expect(pre.class).to eq(Aws::S3::Presigner)
        end
      end

      describe "#presigned_url" do
        it 'can presign #get_object to spec' do
          bucket = "examplebucket"
          key = "test.txt"
          expected_url = "https://examplebucket.s3.amazonaws.com/test.txt"\
            "?X-Amz-Algorithm=AWS4-HMAC-SHA256"\
            "&X-Amz-Credential=AKIAIOSFODNN7EXAMPLE%2F20130524%2F"\
            "us-east-1%2Fs3%2Faws4_request"\
            "&X-Amz-Date=20130524T000000Z&X-Amz-Expires=86400"\
            "&X-Amz-SignedHeaders=host"\
            "&X-Amz-Signature=aeeed9bbccd4d02ee5c0109b86d86835f995330da4c26595"\
            "7d157751f604d404"

          pre = Presigner.new(client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86400
          }
          actual_url = pre.presigned_url(:get_object, params)
          expect(actual_url).to eq(expected_url)
        end

        it 'raises when expires_in length is over 1 week' do
          bucket = "examplebucket"
          key = "test.txt"
          pre = Presigner.new(client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: (7 * 86400) + 1
          }
          expect {
            pre.presigned_url(:get_object, params)
          }.to raise_error(ArgumentError)
        end
      end
    end
  end
end

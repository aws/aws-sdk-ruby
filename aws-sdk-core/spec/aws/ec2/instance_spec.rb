require 'spec_helper'

module Aws
  module EC2
    describe Instance do
      before (:each) do
        Aws.config[:ec2] = {
          region: 'us-east-1',
          credentials: Credentials.new(
            "AKIAIOSFODNN7EXAMPLE",
            "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"),
          retry_limit: 0
        }
      end

      after(:each) do
        Aws.config = {}
      end

      let(:client) { Aws::EC2::Client.new }

      describe '#initialize' do
        it 'accepts an injected EC2 client' do
          pre = Instance.new('i-abcd1234', client: client)
          expect(pre.class).to eq(Aws::EC2::Instance)
        end

        it 'can be constructed without a client' do
          pre = Instance.new('i-abcd1234')
          expect(pre.class).to eq(Aws::EC2::Instance)
        end

        it 'throws if instance ID is missing' do
          expect { Instance.new }.to raise_error(RuntimeError)
        end
      end

    end
  end
end

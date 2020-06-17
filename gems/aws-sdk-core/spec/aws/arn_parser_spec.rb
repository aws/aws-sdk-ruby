# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe ARNParser do
    describe '#parse' do
      it 'errors with nil input' do
        expect do
          ARNParser.parse(nil)
        end.to raise_error(Aws::Errors::InvalidARNError)
      end

      it 'errors with incomplete arn input' do
        input = 'arn:aws:s3'
        expect do
          ARNParser.parse(input)
        end.to raise_error(Aws::Errors::InvalidARNError)
      end

      it 'errors with empty arn components' do
        input = 'arn:::::'
        expect do
          ARNParser.parse(input)
        end.to raise_error(Aws::Errors::InvalidARNError)
      end

      it 'creates an ARN object with valid input' do
        input = 'arn:aws:s3:us-east-1:12345678910:foo:bar'
        arn = ARNParser.parse(input)
        expect(arn.to_s).to eq(input)
        expect(arn.partition).to eq('aws')
        expect(arn.service).to eq('s3')
        expect(arn.region).to eq('us-east-1')
        expect(arn.account_id).to eq('12345678910')
        expect(arn.resource).to eq('foo:bar')
      end

      it 'creates a valid ARN object with region and the account id omitted' do
        input = 'arn:aws:s3:::foo:bar'
        arn = ARNParser.parse(input)
        expect(arn.to_s).to eq(input)
        expect(arn.partition).to eq('aws')
        expect(arn.service).to eq('s3')
        expect(arn.region).to be_empty
        expect(arn.account_id).to be_empty
        expect(arn.resource).to eq('foo:bar')
      end
    end
  end
end

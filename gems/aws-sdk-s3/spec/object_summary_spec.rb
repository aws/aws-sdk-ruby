# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe ObjectSummary do
      let(:object_summary) do
        ObjectSummary.new(
          bucket_name: 'bucket',
          key: 'key',
          stub_responses: true
        )
      end

      let(:object) { double('object') }

      before(:each) do
        allow(object_summary).to receive(:object).and_return(object)
      end

      it 'delegates #copy_from to #object' do
        expect(object).to receive(:copy_from)
          .with('source', opt_name: 'opt-value')
        object_summary.copy_from('source', opt_name: 'opt-value')
      end

      it 'delegates #copy_to to #object' do
        expect(object).to receive(:copy_to)
          .with('target', opt_name: 'opt-value')
        object_summary.copy_to('target', opt_name: 'opt-value')
      end

      it 'delegates #move_to to #object' do
        expect(object).to receive(:move_to)
          .with('target', opt_name: 'opt-value')
        object_summary.move_to('target', opt_name: 'opt-value')
      end

      it 'delegates #presigned_post to #object' do
        expect(object).to receive(:presigned_post)
          .with(opt_name: 'opt-value')
        object_summary.presigned_post(opt_name: 'opt-value')
      end

      it 'delegates #presigned_url to #object' do
        expect(object).to receive(:presigned_url)
          .with('method', opt_name: 'opt-value')
        object_summary.presigned_url('method', opt_name: 'opt-value')
      end

      it 'delegates #public_url to #object' do
        expect(object).to receive(:public_url).with(opt_name: 'opt-value')
        object_summary.public_url(opt_name: 'opt-value')
      end

      it 'delegates #upload_file to #object' do
        expect(object).to receive(:upload_file)
          .with('source', opt_name: 'opt-value')
        object_summary.upload_file('source', opt_name: 'opt-value')
      end

      it 'delegates #upload_stream to #object' do
        block = proc { :foo }
        expect(object).to receive(:upload_stream)
          .with(opt_name: 'opt-value', &block)
        object_summary.upload_stream(opt_name: 'opt-value', &block)
      end

      it 'delegates #download_file to #object' do
        expect(object).to receive(:download_file)
          .with('destination', opt_name: 'opt-value')
        object_summary.download_file('destination', opt_name: 'opt-value')
      end
    end
  end
end

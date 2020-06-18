# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module LambdaPreview
    describe Client do

      it 'can be constructed' do
        client = LambdaPreview::Client.new(stub_responses:true)
        expect(client.config.api.version).to eq('2014-11-11')
      end

    end
  end
end

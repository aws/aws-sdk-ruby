# frozen_string_literal: true

require_relative '../../spec_helper'

module Seahorse
  module Model
    describe Authorizer do

      it 'defaults #name to nil' do
        authorizer = Authorizer.new
        expect(authorizer.name).to be(nil)
        authorizer.name = 'MyAuthorizer'
        expect(authorizer.name).to eq('MyAuthorizer')
      end

      it 'defaults #type to "provided"' do
        authorizer = Authorizer.new
        expect(authorizer.type).to eq('provided')
      end

      it 'defaults #placement to be empty' do
        authorizer = Authorizer.new
        expect(authorizer.placement).to eq({})
        authorizer.placement = {
          :location => 'header',
          :name => 'Authorization'
        }
        expect(authorizer.placement[:location]).to eq('header')
        expect(authorizer.placement[:name]).to eq('Authorization')
      end

    end
  end
end

# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Log
    describe ParamFilter do
      class SensitiveTestType < Struct.new(
        :peccy_id,
        :super_secret_password)
        SENSITIVE_PARAMS = [:super_secret_password]
        include Aws::Structure
      end

      class PublicTestType < Struct.new(
        :peccy_id)
        include Aws::Structure
      end

      describe '#initialize' do
        it 'takes additional filters'
        it 'allows disabling'
      end

      describe '#filter' do
        context 'with an array' do
          it 'filters parameter names' do
            filtered = subject.filter([{ super_secret_password: 'peccy' }], SensitiveTestType)
            expect(filtered).to eq([{ super_secret_password: '[FILTERED]' }])
          end
        end

        context 'with a Struct' do
          it 'filters parameter names' do
            instance = Struct.new(:super_secret_password).new('peccy')
            filtered = subject.filter(instance, SensitiveTestType)
            expect(filtered).to eq(super_secret_password: '[FILTERED]')
          end
        end

        context 'with a hash' do
          it 'filters parameter names' do
            filtered = subject.filter({super_secret_password: 'peccy'}, SensitiveTestType)
            expect(filtered).to eq(super_secret_password: '[FILTERED]')
          end
        end
      end
    end
  end
end

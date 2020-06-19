# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Log
    describe ParamFilter do
      class SensitiveType < Struct.new(
        :peccy_id,
        :password)
        SENSITIVE_PARAMS = [:password]
        include Aws::Structure
      end

      class InsensitiveType < Struct.new(
        :peccy_id)
        include Aws::Structure
      end

      describe '#filter' do
        it 'filters sensitive hash params' do
          filtered = subject.filter({ password: 'peccy' }, SensitiveType)
          expect(filtered).to eq(password: '[FILTERED]')
        end

        it 'filters sensitive array params' do
          filtered = subject.filter([{ password: 'peccy' }], SensitiveType)
          expect(filtered).to eq([{ password: '[FILTERED]' }])
        end

        it 'filters sensitive Struct params' do
          instance = Struct.new(:password).new('peccy')
          filtered = subject.filter(instance, SensitiveType)
          expect(filtered).to eq(password: '[FILTERED]')
        end

        context 'no sensitive params' do
          it 'does not filter sensitive hash params' do
            unfiltered = subject.filter({ peccy_id: 'peccy-id' }, InsensitiveType)
            expect(unfiltered).to eq(peccy_id: 'peccy-id')
          end

          it 'does not filter sensitive array params' do
            unfiltered = subject.filter([{ peccy_id: 'peccy-id' }], InsensitiveType)
            expect(unfiltered).to eq([{ peccy_id: 'peccy-id' }])
          end

          it 'does not filter sensitive Struct params' do
            instance = Struct.new(:peccy_id).new('peccy-id')
            unfiltered = subject.filter(instance, InsensitiveType)
            expect(unfiltered).to eq(peccy_id: 'peccy-id')
          end
        end

        context 'with additional filters' do
          subject { Aws::Log::ParamFilter.new(filter: [:peccy_id]) }

          it 'filters sensitive hash params' do
            filtered = subject.filter({ peccy_id: 'peccy-id' }, InsensitiveType)
            expect(filtered).to eq(peccy_id: '[FILTERED]')
          end

          it 'filters sensitive array params' do
            filtered = subject.filter([{ peccy_id: 'peccy-id' }], InsensitiveType)
            expect(filtered).to eq([{ peccy_id: '[FILTERED]' }])
          end

          it 'filters sensitive Struct params' do
            instance = Struct.new(:peccy_id).new('peccy-id')
            filtered = subject.filter(instance, InsensitiveType)
            expect(filtered).to eq(peccy_id: '[FILTERED]')
          end
        end

        context 'when disabled' do
          subject { Aws::Log::ParamFilter.new(filter_sensitive_params: false) }

          it 'does not filter sensitive hash params' do
            unfiltered = subject.filter({ password: 'peccy' }, SensitiveType)
            expect(unfiltered).to eq(password: 'peccy')
          end

          it 'does not filter sensitive array params' do
            unfiltered = subject.filter([{ password: 'peccy' }], SensitiveType)
            expect(unfiltered).to eq([{ password: 'peccy' }])
          end

          it 'does not filter sensitive Struct params' do
            instance = Struct.new(:password).new('peccy')
            unfiltered = subject.filter(instance, SensitiveType)
            expect(unfiltered).to eq(password: 'peccy')
          end
        end
      end
    end
  end
end

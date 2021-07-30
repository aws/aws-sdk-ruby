# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Log
    describe ParamFilter do
      class SensitiveType < Struct.new(
        :peccy_id,
        :password)
        SENSITIVE = [:password]
        include Aws::Structure
      end

      class UnionType < Struct.new(
        :member_1,
        :sensitive_member)
        SENSITIVE = [:sensitive_member]
        include Aws::Structure
        include Aws::Structure::Union
      end

      class OldServiceType < Struct.new(
        :peccy_id,
        :password)
        include Aws::Structure
      end

      describe '#filter' do
        it 'filters sensitive hash params' do
          filtered = subject.filter(
            { password: 'peccy', peccy_id: 'peccy-id' }, SensitiveType
          )
          expect(filtered).to eq(password: '[FILTERED]', peccy_id: 'peccy-id')
        end

        it 'filters sensitive array params' do
          filtered = subject.filter(
            [{ password: 'peccy', peccy_id: 'peccy-id' }], SensitiveType
          )
          expect(filtered).to eq(
            [{ password: '[FILTERED]', peccy_id: 'peccy-id' }]
          )
        end

        it 'filters sensitive Struct params' do
          instance = Struct.new(:peccy_id, :password).new('peccy-id', 'peccy')
          filtered = subject.filter(instance, SensitiveType)
          expect(filtered).to eq(password: '[FILTERED]', peccy_id: 'peccy-id')
        end

        it 'filters sensitive Union params' do
          instance = UnionType.new(sensitive_member: 'sensitive')
          filtered = subject.filter(instance, UnionType)
          expect(filtered).to eq(sensitive_member: '[FILTERED]')
        end

        context 'with additional filters' do
          subject { Aws::Log::ParamFilter.new(filter: [:peccy_id]) }

          it 'filters sensitive hash params' do
            filtered = subject.filter({ peccy_id: 'peccy-id' }, SensitiveType)
            expect(filtered).to eq(peccy_id: '[FILTERED]')
          end

          it 'filters sensitive array params' do
            filtered = subject.filter([{ peccy_id: 'peccy-id' }], SensitiveType)
            expect(filtered).to eq([{ peccy_id: '[FILTERED]' }])
          end

          it 'filters sensitive Struct params' do
            instance = Struct.new(:peccy_id).new('peccy-id')
            filtered = subject.filter(instance, SensitiveType)
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

        # hinges on :password being sensitive and :peccy_id never existing
        context 'backwards compatible with old service gems' do
          it 'filters sensitive hash params' do
            filtered = subject.filter(
              { password: 'peccy', peccy_id: 'peccy-id' }, OldServiceType
            )
            expect(filtered).to eq(password: '[FILTERED]', peccy_id: 'peccy-id')
          end

          it 'filters sensitive array params' do
            filtered = subject.filter(
              [{ password: 'peccy', peccy_id: 'peccy-id' }], OldServiceType
            )
            expect(filtered).to eq(
              [{ password: '[FILTERED]', peccy_id: 'peccy-id' }]
            )
          end

          it 'filters sensitive Struct params' do
            instance = Struct.new(:peccy_id, :password).new('peccy-id', 'peccy')
            filtered = subject.filter(instance, OldServiceType)
            expect(filtered).to eq(password: '[FILTERED]', peccy_id: 'peccy-id')
          end
        end
      end
    end
  end
end

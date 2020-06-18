# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Log
    describe ParamFilter do
      describe '#filter' do
        context 'with an array' do
          context 'with a filtered parameter name' do
            it 'filters lowercase parameter names' do
              expect(subject.filter([{ password: 'p@assw0rd'}])).to eq([{ password: '[FILTERED]'} ])
            end

            it 'filters uppercase parameter names' do
              expect(subject.filter([{ PASSWORD: 'p@assw0rd'}])).to eq([{ PASSWORD: '[FILTERED]'} ])
            end

            it 'filters mixed-case parameter names' do
              expect(subject.filter([{ Password: 'p@assw0rd'}])).to eq([{ Password: '[FILTERED]'} ])
            end
          end
        end

        context 'with a Struct' do
          context 'with a filtered parameter name' do
            it 'filters lowercase parameter names' do
              instance = Struct.new(:password).new('p@assw0rd')
              expect(subject.filter(instance)).to eq(password: '[FILTERED]')
            end

            it 'filters uppercase parameter names' do
              instance = Struct.new(:PASSWORD).new('p@assw0rd')
              expect(subject.filter(instance)).to eq(PASSWORD: '[FILTERED]')
            end

            it 'filters mixed-case parameter names' do
              instance = Struct.new(:Password).new('p@assw0rd')
              expect(subject.filter(instance)).to eq(Password: '[FILTERED]')
            end
          end
        end

        context 'with a hash' do
          context 'with a filtered parameter name' do
            it 'filters lowercase parameter names' do
              expect(subject.filter(password: 'p@ssw0rd')).to eq(password: '[FILTERED]')
            end

            it 'filters uppercase parameter names' do
              expect(subject.filter(PASSWORD: 'p@ssw0rd')).to eq(PASSWORD: '[FILTERED]')
            end

            it 'filters mixed-case parameter names' do
              expect(subject.filter(Password: 'p@ssw0rd')).to eq(Password: '[FILTERED]')
            end
          end
        end
      end
    end
  end
end

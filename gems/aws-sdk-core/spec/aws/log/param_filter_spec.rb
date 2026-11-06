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

      class ComplexSensitiveType < Struct.new(
        :nested
      )
        SENSITIVE = []
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

        it 'filters nested sensitive params' do
          filtered = subject.filter(
            {nested: { password: 'peccy', peccy_id: 'peccy-id' }},
            ComplexSensitiveType
          )
          expect(filtered).to eq(nested: {
            password: '[FILTERED]', peccy_id: 'peccy-id'
          })
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

        context 'with a ShapeRef' do
          let(:input_ref) do
            ApiHelper.sample_api.operation(:example_operation).input
          end

          let(:inner_params) do
            { sensitive_string: 'secret', string: 'visible' }
          end

          let(:filtered_inner) do
            { sensitive_string: '[FILTERED]', string: 'visible' }
          end

          let(:params) do
            {
              sensitive_string: 'secret',
              nested: inner_params,
              nested_list: [inner_params],
              nested_map: { 'a' => { nested_list: [inner_params] } }
            }
          end

          it 'filters sensitive members through nested structures, lists, and maps' do
            expect(subject.filter(params, input_ref)).to eq(
              sensitive_string: '[FILTERED]',
              nested: filtered_inner,
              nested_list: [filtered_inner],
              nested_map: { 'a' => { nested_list: [filtered_inner] } }
            )
          end

          it 'does not apply the global name list to the root structure' do
            shapes = ApiHelper.sample_shapes
            shapes['StructureShape']['members']['ClientId'] = { 'shape' => 'StringShape' }
            ref = ApiHelper.sample_api(shapes: shapes).operation(:example_operation).input
            expect(subject.filter({ client_id: 'visible' }, ref))
              .to eq(client_id: 'visible')
          end

          context 'when nested members lack sensitivity traits' do
            let(:input_ref) do
              shapes = ApiHelper.sample_shapes
              %w[ClientSecret Password PrivateKey RefreshToken ClientId].each do |name|
                shapes['StructureShape']['members'][name] = { 'shape' => 'StringShape' }
              end
              ApiHelper.sample_api(shapes: shapes).operation(:example_operation).input
            end

            let(:inner_params) do
              {
                client_secret: 'oidc-secret', password: 'mq-secret',
                private_key: 'apns-secret', refresh_token: 'salesforce-secret',
                sensitive_string: 'modeled-secret', string: 'visible'
              }
            end

            let(:filtered_inner) do
              {
                client_secret: '[FILTERED]', password: '[FILTERED]',
                private_key: '[FILTERED]', refresh_token: '[FILTERED]',
                sensitive_string: '[FILTERED]', string: 'visible'
              }
            end

            it 'combines global and modeled redactions without mutating nested hashes' do
              params = { nested: inner_params.dup }
              expect(subject.filter(params, input_ref)).to eq(nested: filtered_inner)
              expect(params).to eq(nested: inner_params)
            end

            it 'retains the global fallback through nested lists' do
              expect(subject.filter({ nested_list: [inner_params] }, input_ref))
                .to eq(nested_list: [filtered_inner])
            end

            it 'retains the global fallback in structure map values' do
              params = { nested_map: { 'password' => inner_params } }
              expect(subject.filter(params, input_ref))
                .to eq(nested_map: { 'password' => filtered_inner })
            end

            it 'keeps typed nested structures on their generated sensitive list' do
              struct = input_ref.shape.struct_class.new(
                client_id: 'visible', sensitive_string: 'modeled-secret'
              )
              filtered = subject.filter({ nested: struct }, input_ref)
              expect(filtered[:nested]).to include(
                client_id: 'visible', sensitive_string: '[FILTERED]'
              )
            end

            context 'when disabled' do
              subject do
                Aws::Log::ParamFilter.new(filter_sensitive_params: false, filter: [:string])
              end

              it 'keeps global, modeled, and custom-filter values visible' do
                request_params = params.merge(
                  string_map: { string: 'secret', other: 'visible' }
                )
                expect(subject.filter(request_params, input_ref)).to eq(request_params)
              end
            end

            context 'with additional filters' do
              subject { Aws::Log::ParamFilter.new(filter: [:string]) }

              it 'combines global and modeled redaction with custom filters in structures and maps' do
                params = {
                  nested: inner_params,
                  string_map: { string: 'secret', other: 'visible' }
                }
                expect(subject.filter(params, input_ref)).to eq(
                  nested: filtered_inner.merge(string: '[FILTERED]'),
                  string_map: { string: '[FILTERED]', other: 'visible' }
                )
              end
            end
          end

          it 'does not filter ordinary map keys using the global name list' do
            params = { string_map: { password: 'visible', name: 'visible' } }
            expect(subject.filter(params, input_ref)).to eq(params)
          end

          it 'filters a typed union using its member model' do
            shape = Seahorse::Model::Shapes::StructureShape.new(struct_class: UnionType)
            shape.union = true
            shape.add_member(:member_1, input_ref)
            ref = Seahorse::Model::Shapes::ShapeRef.new(shape: shape)
            params = UnionType.new(member_1: inner_params)
            expect(subject.filter(params, ref)).to eq(member_1: filtered_inner)
          end

          it 'uses class-based filtering for documents and unknown target shapes' do
            [Seahorse::Model::Shapes::DocumentShape.new, nil].each do |shape|
              ref = Seahorse::Model::Shapes::ShapeRef.new(shape: shape)
              params = { password: 'secret', other: 'visible' }
              expect(subject.filter(params, ref))
                .to eq(password: '[FILTERED]', other: 'visible')
            end
          end
        end

        it 'uses the global list when the type is nil' do
          filtered = subject.filter(
            { password: 'secret', peccy_id: 'peccy-id' }, nil
          )
          expect(filtered).to eq(password: '[FILTERED]', peccy_id: 'peccy-id')
        end
      end
    end
  end
end

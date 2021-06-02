# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  class TestClass; end

  describe ParamValidator do

    let(:shapes) { ApiHelper.sample_shapes }

    let(:api) { ApiHelper.sample_api(shapes: shapes) }

    def validate(params, expected_errors = [])
      rules = api.operation(:example_operation).input
      if expected_errors.empty?
        ParamValidator.new(rules).validate!(params)
      else
        expect {
          ParamValidator.new(rules).validate!(params)
        }.to raise_error(ArgumentError) do |error|
          match_errors(error, expected_errors)
        end
      end
    end

    def match_errors(error, expected_errors)
      expected_errors = [expected_errors] unless expected_errors.is_a?(Array)
      expected_errors.each do |expected_error|
        if String === expected_error
          expect(error.message).to include(expected_error)
        else
          expect(error.message).to match(expected_error)
        end
      end
    end

    describe 'empty rules' do

      it 'accepts an empty hash of params when rules are empty' do
        expect(validate({}))
      end

    end

    describe 'structures' do

      it 'validates nested structures' do
        validate('abc', 'expected params to be a hash, got value "abc" (class: String) instead.')
        validate({ nested: 'abc' },
          'expected params[:nested] to be a hash, got value "abc" (class: String) instead.')
        validate({ nested: { nested: 'abc' } },
          'expected params[:nested][:nested] to be a hash, got value "abc" (class: String) instead.')
      end

      it 'accepts hashes' do
        validate({})
      end

      it 'raises an error when a required paramter is missing' do
        shapes['StructureShape']['required'] = %w(String)
        validate({}, 'missing required parameter params[:string]')
      end

      it 'raises an error when a given parameter is unexpected' do
        validate({foo: 'bar'}, 'unexpected value at params[:foo]')
      end

      it 'accepts members that pass validation' do
        shapes['StructureShape']['required'] = %w(String)
        validate(string: 'abc')
      end

      it 'aggregates errors for members' do
        shapes['StructureShape']['required'] = %w(String)
        validate({nested: { foo: 'bar' }}, [
          'missing required parameter params[:string]',
          'missing required parameter params[:nested][:string]',
          'unexpected value at params[:nested][:foo]'
        ])
      end

      it 'raises an error when providing eventstream at input' do
        validate({event_stream: [].each }, 'instead of providing value directly for eventstreams at input, expected to use #signal events per stream')
      end

      it 'accepts no eventstream input even when marked required' do
        shapes['StructureShape']['required'] = %w(EventStream)
        validate({})
      end

    end

    describe 'lists' do

      it 'accepts arrays' do
        validate(number_list: [])
        validate(nested_list: [{}, {}])
      end

      it 'expects the value to be an Array' do
        validate({ nested_list: [] })
        validate({ nested_list: 'abc' },
          'expected params[:nested_list] to be an Array, got value "abc" (class: String) instead.')
      end

      it 'validates each member of the list' do
        validate({ nested_list: [{}] })
        validate({ number_list: ['abc'] },
          'expected params[:number_list][0] to be an Integer, got value "abc" (class: String) instead.')
        validate({ nested_list: [{}, 'abc'] },
          'expected params[:nested_list][1] to be a hash, got value "abc" (class: String) instead.')
        validate({ nested_list: [{ number_list: ['abc'] }] },
          'expected params[:nested_list][0][:number_list][0] to be an Integer, got value "abc" (class: String) instead.')
        validate({ nested_list: [{ foo: 'abc' }] },
          'unexpected value at params[:nested_list][0][:foo]')
      end

    end

    describe 'maps' do

      it 'accepts hashes' do
        validate({ string_map: {}})
        validate({ string_map: 'abc' },
          'expected params[:string_map] to be a hash, got value "abc" (class: String) instead.')
      end

      it 'validates map keys' do
        validate({ string_map: { 'abc' => 'mno' }})
        validate({ string_map: { 123 => 'xyz' }},
          [/expected params\[:string_map\] 123 key to be a String, got value 123 \(class: (Fixnum|Integer)\) instead./])
      end

      it 'validates map values' do
        validate({ string_map: { 'foo' => 'bar' }})
        validate({ string_map: { 'foo' => 123 }},
          [/expected params\[:string_map\]\["foo"\] to be a String, got value 123 \(class: (Fixnum|Integer)\) instead./])
      end

    end

    describe 'integers' do

      it 'accepts integers' do
        validate(integer: 123)
        validate({ integer: '123' },
          'expected params[:integer] to be an Integer, got value "123" (class: String) instead.')
      end

    end

    describe 'floats' do

      it 'accepts integers' do
        validate(float: 123.0)
        validate({ float: 123 },
          [/expected params\[:float\] to be a Float, got value 123 \(class: (Fixnum|Integer)\) instead./])
      end

    end

    describe 'timestamps' do

      it 'accepts time objects' do
        validate(timestamp: Time.now)
        validate({timestamp: Date.new},
          ['expected params[:timestamp] to be a Time object, got value', '(class: Date) instead.'])
      end

    end

    describe 'booleans' do

      it 'accepts TrueClass and FalseClass' do
        validate(boolean: true)
        validate(boolean: false)
        validate({ boolean: 'true' },
          'expected params[:boolean] to be true or false, got value "true" (class: String) instead.')
      end

    end

    describe 'blobs' do

      it 'accepts strings and io objects for payload members' do
        validate(blob: StringIO.new('abc'))
        validate(blob: double('d', :read => 'abc', :size => 3, :rewind => 0))
        validate({ blob: 'abc' })
        validate({ blob: 123 },
          [/expected params\[:blob\] to be a String or IO like object that supports read, rewind, and size, got value 123 \(class: (Fixnum|Integer)\) instead./])
      end

    end

    describe 'strings' do

      it 'accepts string objects' do
        validate(string: 'john doe')
        validate({ string: 123 },
          [/expected params\[:string\] to be a String, got value 123 \(class: (Fixnum|Integer)\) instead./])
      end

    end

    describe 'document types' do

      it 'accepts numeric objects' do
        validate(document_type: 123)
        validate(document_type: 3.14159)
      end

      it 'accepts string objects' do
        validate(document_type: 'test string')
      end

      it 'accepts booleans' do
        validate(document_type: true)
        validate(document_type: false)
      end

      it 'accepts nil' do
        validate(document_type: nil)
      end

      it 'rejects Objects' do
        validate({ document_type: TestClass.new },
                 [/expected params\[:document_type\] to be one of Hash, Array, Numeric, String, TrueClass, FalseClass, NilClass, got value #<Aws::TestClass:[0-9a-z]+> \(class: Aws::TestClass\) instead/]
        )
      end

      describe 'Hash' do
        it 'accepts a flat Hash' do
          validate(document_type: {a: 1, b: 2})
        end

        it 'accepts a nested Hash' do
          validate(document_type: {a: 1, b: {c: 'nested'} })
        end

        it 'recursively validates and rejects a nested arbitrary Object' do
          validate({ document_type: {a: 1, b: { c: TestClass.new }} },
                   [/expected params\[:document_type\]\[b\]\[c\] to be one of Hash, Array, Numeric, String, TrueClass, FalseClass, NilClass, got value #<Aws::TestClass:[0-9a-z]+> \(class: Aws::TestClass\) instead/]
          )
        end
      end

      describe 'Array' do
        it 'accepts an array' do
          validate(document_type: [1,2,3])
        end

        it 'rejects an array with arbitrary Objects' do
          validate({ document_type: [1,2,TestClass.new] },
                   [/expected params\[:document_type\] to be one of Hash, Array, Numeric, String, TrueClass, FalseClass, NilClass, got value #<Aws::TestClass:[0-9a-z]+> \(class: Aws::TestClass\) instead/]
          )
        end
      end

    end
  end
end

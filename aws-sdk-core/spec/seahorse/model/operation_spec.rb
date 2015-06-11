require 'spec_helper'

module Seahorse
  module Model
    describe Operation do

      it 'defaults #name to nil' do
        operation = Operation.new
        operation.name = 'OperationName'
        expect(operation.name).to eq('OperationName')
      end

      it 'defaults #http_method to "POST"' do
        operation = Operation.new
        expect(operation.http_method).to eq('POST')
        operation.http_method = 'GET'
        expect(operation.http_method).to eq('GET')
      end

      it 'defaults #http_request_uri to "/"' do
        operation = Operation.new
        expect(operation.http_request_uri).to eq('/')
        operation.http_request_uri = '/path?query'
        expect(operation.http_request_uri).to eq('/path?query')
      end

      it 'defaults #deprecated to false' do
        operation = Operation.new
        expect(operation.deprecated).to be(false)
        operation.deprecated = true
        expect(operation.deprecated).to be(true)
      end

      it 'defaults #documentation to nil' do
        operation = Operation.new
        expect(operation.documentation).to be(nil)
        operation.documentation = 'docstring'
        expect(operation.documentation).to eq('docstring')
      end

      it 'defaults #input to nil' do
        shape_ref = double('shape-ref')
        operation = Operation.new
        expect(operation.input).to be(nil)
        operation.input = shape_ref
        expect(operation.input).to be(shape_ref)
      end

      it 'defaults #output to nil' do
        shape_ref = double('shape-ref')
        operation = Operation.new
        expect(operation.output).to be(nil)
        operation.output = shape_ref
        expect(operation.output).to be(shape_ref)
      end

      it 'defaults #errors to []' do
        shape_ref = double('shape-ref')
        operation = Operation.new
        expect(operation.errors).to eq([])
        operation.errors << shape_ref
        operation.errors << shape_ref
        expect(operation.errors).to eq([shape_ref, shape_ref])
      end

    end
  end
end

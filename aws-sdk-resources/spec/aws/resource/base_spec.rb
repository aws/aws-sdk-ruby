require 'spec_helper'

module Aws
  module Resource
    describe Base do

      let(:client_class) { double('client-class') }

      let(:client) { double('client') }

      let(:resource_name) { 'Aws::Resources::Example' }

      let(:resource_class) {
        Class.new(Base).tap { |klass| klass.client_class = client_class }
      }

      let(:resource) { resource_class.new }

      before(:each) do
        allow(client_class).to receive(:new).and_return(client)
        allow(resource_class).to receive(:name).and_return(resource_name)
      end

      describe '#initialize' do

        it 'accepts identifiers as a hash' do
          resource_class.add_identifier(:bucket_name)
          resource_class.add_identifier(:key)
          r = resource_class.new(bucket_name:'bucket', key:'key')
          expect(r.identifiers).to eq(bucket_name:'bucket', key:'key')
        end

        it 'accpets identifiers positionally' do
          resource_class.add_identifier(:bucket_name)
          resource_class.add_identifier(:key)
          r = resource_class.new('bucket', 'key')
          expect(r.identifiers).to eq(bucket_name:'bucket', key:'key')
        end

        it 'accpets identifiers positionally and as a hash' do
          resource_class.add_identifier(:bucket_name)
          resource_class.add_identifier(:key)
          r = resource_class.new('bucket', key:'key')
          expect(r.identifiers).to eq(bucket_name:'bucket', key:'key')
        end

      end

      describe '#client' do

        it 'constructs and returns a default client object' do
          expect(client_class).to receive(:new).and_return(client)
          expect(resource_class.new.client).to be(client)
        end

        it 'accepts a client object as a constructor option' do
          client_class = Class.new
          client = client_class.new
          resource_class.client_class = client_class
          resource = resource_class.new(client: client)
          expect(resource.client).to be(client)
        end

        it 'accepts a hash of client configuration options' do
          client_class = double('client-class')
          client = double('client')
          expect(client_class).to receive(:new).
            with(:foo => 'bar').
            and_return(client)
          resource_class.client_class = client_class
          resource = resource_class.new(client: { foo: 'bar' })
          expect(resource.client).to be(client)
        end

      end

      describe '#identifiers' do

        it 'requires identifiers to be given to the constructor' do
          resource_class.add_identifier(:name)
          expect {
            resource_class.new
          }.to raise_error(ArgumentError, 'missing required option :name')
        end

        it 'returns a hash of resource identifiers' do
          resource_class.add_identifier(:id1)
          resource_class.add_identifier(:id2)
          resource = resource_class.new(id1:'abc', id2:'xyz')
          expect(resource.identifiers).to eq(id1:'abc', id2:'xyz')
        end

        it 'defines a getter for each identifier' do
          resource_class.add_identifier(:name)
          resource = resource_class.new(name:'NAME')
          expect(resource.name).to eq('NAME')
        end

      end

      describe '#inspect' do

        it 'contains the resource class name' do
          expect(resource.inspect).to eq('#<Aws::Resources::Example>')
        end

        it 'includes identifiers in the inspect string' do
          resource_class.add_identifier(:name)
          resource = resource_class.new(name:'abc')
          expect(resource.inspect).to eq('#<Aws::Resources::Example name="abc">')
        end

      end

      describe 'data methods' do

        let(:resource) { resource_class.new }

        let(:data) { double('data') }

        let(:data2) { double('data-2') }

        let(:datas) { [data, data2] }

        let(:load_operation) { double('load-operation') }

        before(:each) do
          allow(load_operation).to receive(:call).
            with(client: client, resource:resource).
            and_return(*datas)
          resource_class.load_operation = load_operation
        end

        describe '#data' do

          it 'raises a NotImplementedError when load_operation is not defined' do
            resource_class.load_operation = nil
            msg = "#load not defined for #{resource_name}"
            expect {
              resource_class.new.load
            }.to raise_error(NotImplementedError, msg)
          end

          it 'returns data cached by the load operation' do
            expect(resource.data).to be(data)
          end

          it 'returns cached data' do
            expect(load_operation).to receive(:call).exactly(1).times
            expect(resource.data).to be(data)
            expect(resource.data).to be(data)
          end

        end

        describe '#load' do

          it 'forces loading data' do
            expect(load_operation).to receive(:call).exactly(2).times
            resource.load
            resource.load
          end

          it 'updates the cached data' do
            expect(resource.load.data).to be(data)
            expect(resource.load.data).to be(data2)
            expect(resource.data).to be(data2)
          end

          it 'is aliased as #reload' do
            expect(resource.reload.data).to be(data)
            expect(resource.reload.data).to be(data2)
          end

        end

        describe '#data_loaded?' do

          it 'returns false if data is not loaded' do
            expect(resource.data_loaded?).to be(false)
          end

          it 'returns true if data is loaded' do
            resource.load
            expect(resource.data_loaded?).to be(true)
          end

        end

      end

      describe 'class methods' do

        describe 'identifiers' do

          it 'returns an array of identifier names' do
            resource_class.add_identifier(:id1)
            resource_class.add_identifier('id2')
            expect(resource_class.identifiers).to eq([:id1, :id2])
          end

        end

        describe 'operation methods' do

          let(:operation) { double('operation') }

          let(:response) { double('operation-response') }

          describe 'add_operation' do

            it 'defines a method that calls the operation' do
              resource_class.add_operation(:action, operation)
              expect(operation).to receive(:call).
                with(hash_including(resource:resource)).
                and_return(response)
              expect(resource.action).to be(response)
            end

            it 'passes additional arguments to the operation' do
              block = lambda {}
              resource_class.add_operation(:action, operation)
              expect(operation).to receive(:call).
                with(resource:resource, args:[{foo:'bar'}], block:block).
                and_return(response)
              resource.action(foo:'bar', &block)
            end

            it 'defines a method requiring no arguments based on builder args' do
              operation = Operations::ReferenceOperation.new(builder: Builder.new)
              resource_class.add_operation(:operation_name, operation)
              expect {
                resource.operation_name('arg')
              }.to raise_error(ArgumentError, 'wrong number of arguments (1 for 0)')
            end

            it 'defines a method requiring a single argument based on builder args' do
              builder = Builder.new(sources:[BuilderSources::Argument.new(:name)])
              operation = Operations::ReferenceOperation.new(builder: builder)
              resource_class.add_operation(:operation_name, operation)
              expect {
                resource.operation_name
              }.to raise_error(ArgumentError, 'wrong number of arguments (0 for 1)')
            end

            it 'accepts a block argument' do
              yielded = nil
              resource_class.add_operation(:do_something) do |options|
                yielded = options
                :done
              end
              result = resource.do_something('abc', foo: 'bar')
              expect(result).to be(:done)
              expect(yielded[:resource]).to be(resource)
              expect(yielded[:args]).to eq(['abc', {foo: 'bar'}])
            end

          end

          describe 'operation_names' do

            it 'returns a list of operation names' do
              resource_class.add_operation(:action1, double('operation1'))
              resource_class.add_operation('action2', double('operation2'))
              expect(resource_class.operation_names).to eq([:action1, :action2])
            end

          end

          describe 'operation' do

            it 'returns the named operation' do
              resource_class.add_operation(:name, operation)
              expect(resource_class.operation(:name)).to be(operation)
            end

            it 'raises an error for unknown operations' do
              msg = "operation `unknown' not defined"
              expect {
                resource_class.operation(:unknown)
              }.to raise_error(Errors::UnknownOperationError, msg)
            end

          end

          describe 'operations' do

            it 'returns an enumerable' do
              expect(resource_class.operations).to be_kind_of(Enumerable)
            end

            it 'enumerates resource operations' do
              operation1 = double('operation-1')
              operation2 = double('operation-2')
              resource_class.add_operation(:action1, operation1)
              resource_class.add_operation(:action2, operation2)
              yielded = []
              resource_class.operations.each do |name, operation|
                yielded << [name, operation]
              end
              expect(yielded).to eq([[:action1, operation1], [:action2, operation2]])
            end

          end
        end
      end
    end
  end
end

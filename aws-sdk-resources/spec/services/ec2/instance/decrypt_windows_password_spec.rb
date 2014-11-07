require 'spec_helper'

module Aws
  module EC2
    describe Instance do

      let(:client) { EC2::Client.new(stub_responses:true) }

      describe '#decrypt_windows_password' do

        let(:keypair) {
          dir = File.dirname(__FILE__)
          File.join(dir, '..', '..', '..', 'fixtures', 'keypair')
        }

        it 'decrypts the password using the given key pair' do
          client.stub_responses(:get_password_data, {
            password_data: "dALtWVWEb9LL1rBz0oluXvTK5sHcJzzS4PtiiX/17pOFs0D6+JV7mWMPG9I4\ngRoW64SZ7hmRz7fFRuJcR5sDzfmgDs6Fimd456WR9/HJ29XBv1HyPHN7EvtR\nxJ4/+iXXhVWrQeZy8aCGhcqQhRw5/xrHE7rpc014rzxRtqybqKoeEJPV+4WP\ngUWyo3BD0ui06B7zLJL2sYfALphelAYzlzehwD63M0nuovleuMeVSJKcqqR9\nuMiXvm8nogZhLUEFvUucWxSHECB9cdTH3rJ0ANs+kl4hSgV/9KX/I3MlQYuY\ngLR4DUSpuYj/XTMyl+zjxPAPbk63zTpMd+T0NKgeWA==\n"
          })
          instance = Instance.new('id', client: client)
          expect(instance.decrypt_windows_password(keypair)).to eq('password')
        end

        it 'raises an error if the password data is an empty string' do
          client.stub_responses(:get_password_data, password_data: '')
          instance = Instance.new('id', client: client)
          expect {
            instance.decrypt_windows_password(keypair)
          }.to raise_error(/password not available/)
        end

      end

    end
  end
end

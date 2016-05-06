require 'spec_helper'

module Aws
  describe SharedConfig do

    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    }

    let(:mock_config_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_config'))
    }

    context 'resolving config files' do
      before(:each) do
        allow(Dir).to receive(:home).and_return('HOME')
      end

      it 'defaults credentials_path to Dir.home/.aws/credentials' do
        config = SharedConfig.new
        expect(config.credentials_path).to eq(
          File.join('HOME', '.aws', 'credentials')
        )
      end

      it 'defaults config_path to Dir.home/.aws/config' do
        stub_const('ENV', {"AWS_SDK_LOAD_CONFIG" => "1"})
        config = SharedConfig.new
        expect(config.config_path).to eq(
          File.join('HOME', '.aws', 'config')
        )
      end

      it 'will not load the shared config file if no ENV variable set' do
        config = SharedConfig.new
        expect(config.config_path).to be_nil
      end
    end

    context 'resolving profile name' do
      it 'uses "default" as the default profile name' do
        config = SharedConfig.new
        expect(config.profile_name).to eq("default")
      end

      it 'uses the ENV["AWS_PROFILE"] value before the default value' do
        stub_const('ENV', {"AWS_PROFILE" => "prof"})
        config = SharedConfig.new
        expect(config.profile_name).to eq("prof")
      end

      it 'uses explicitly provided profile names over other choices' do
        stub_const('ENV', {"AWS_PROFILE" => "prof"})
        config = SharedConfig.new(profile_name: "my_profile")
        expect(config.profile_name).to eq("my_profile")
      end
    end

    context 'region selection' do
      it 'does not resolve region if ENV["AWS_SDK_LOAD_CONFIG"] not set' do
        config = SharedConfig.new(config_path: mock_config_file)
        expect(config.region).to be_nil
      end

      it 'does resolve region from config if ENV["AWS_SDK_LOAD_CONFIG"] set' do
        stub_const('ENV', {"AWS_SDK_LOAD_CONFIG" => "1"})
        config = SharedConfig.new(config_path: mock_config_file)
        expect(config.region).to eq("us-east-1")
      end
    end

    context 'assume role from config' do
      let(:stub_client) {
        Aws::STS::Client.new(stub_responses: true)
      }

      let(:stub_assume_role_resp) {
        Struct.new(:credentials).new(
          Struct.new(
            :access_key_id,
            :secret_access_key,
            :session_token,
            :expiration
          ).new(
            "STUB_KEY",
            "STUB_SECRET",
            "STUB_TOKEN",
            (Time.now + 1000000)
          )
        )
      }

      before(:each) do
        stub_const('ENV', {"AWS_SDK_LOAD_CONFIG" => "1"})
      end

      it 'can assume a role from configuration' do
        expect(Aws::STS::Client).to receive(:new).with({
          profile: "default"
        }).and_return(stub_client)
        expect(stub_client).to receive(:assume_role).with({
          role_arn: "arn:aws:iam:123456789012:role/foo",
          role_session_name: "default_session",
          external_id: nil,
          serial_number: nil
        }).and_return(stub_assume_role_resp)
        config = SharedConfig.new(config_path: mock_config_file)
        actual = config.assume_role_credentials_from_config(
          profile: "assumerole_prof"
        )
        expect(actual.access_key_id).to eq("STUB_KEY")
        expect(actual.secret_access_key).to eq("STUB_SECRET")
        expect(actual.session_token).to eq("STUB_TOKEN")
      end
    end

  end
end

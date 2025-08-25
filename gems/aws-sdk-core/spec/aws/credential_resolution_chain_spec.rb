# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe 'Credential Resolution Chain' do
    let(:mock_credential_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'credentials', 'mock_shared_credentials'
        )
      )
    end

    let(:mock_config_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'credentials', 'mock_shared_config'
        )
      )
    end

    let(:mock_instance_creds) { double('InstanceProfileCredentials', set?: false) }

    before(:all) do
      # Ensure the sample_rest_xml is built before any mocks occur
      ApiHelper.sample_rest_xml
    end

    before(:each) do
      allow(InstanceProfileCredentials).to receive(:new).and_return(mock_instance_creds)
      expect_any_instance_of(ProcessCredentials).not_to receive(:warn)
    end

    describe 'default behavior' do
      before(:each) do
        stub_const('ENV', {})
        # AWS_SDK_CONFIG_OPT_OUT not present
        Aws.shared_config.fresh(
          config_enabled: true,
          credentials_path: mock_credential_file,
          config_path: mock_config_file
        )
      end

      it 'prefers direct credentials above other sources' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          access_key_id: 'ACCESS_DIRECT',
          secret_access_key: 'SECRET_DIRECT',
          profile: 'fooprofile',
          region: 'us-east-1'
        )
        expect(client.config.credentials.access_key_id).to eq('ACCESS_DIRECT')
        expect(metric_values(client.config.credentials.metrics)).to include('n')
      end

      it 'prefers assume role credentials when profile explicitly set over ENV credentials' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_1', # from 'fooprofile'
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'assumerole_sc', region: 'us-east-1'
        )
        expect(client.config.credentials.credentials.access_key_id).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
      end

      it 'emits correct UserAgent metrics during STS call for assume role credentials' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_1', # from 'fooprofile'
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('o', 'n')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: 'assumerole_sc', region: 'us-east-1'
        )
      end

      it 'prefers assume role web identity from profile over sso' do
        assume_role_web_identity_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'ar_web_identity', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('q', 'k')
      end

      it 'emits correct UserAgent metrics during STS call for assume role web identity from profile' do
        assume_role_web_identity_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        expect_any_instance_of(STS::Client).to receive(:assume_role_with_web_identity).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('q')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: 'ar_web_identity', region: 'us-east-1'
        )
      end

      it 'prefers assume role web identity from ENV over sso' do
        stub_const(
          'ENV',
          'AWS_ROLE_ARN' => 'arn:aws:iam::123456789012:role/foo',
          'AWS_WEB_IDENTITY_TOKEN_FILE' => 'my-token.jwt'
        )
        assume_role_web_identity_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          region: 'us-east-1'
        )
        expect(client.config.credentials.credentials.access_key_id)
          .to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('h', 'k')
      end

      it 'emits correct UserAgent metrics during STS call for assume role web identity from env' do
        stub_const(
          'ENV',
          'AWS_ROLE_ARN' => 'arn:aws:iam::123456789012:role/foo',
          'AWS_WEB_IDENTITY_TOKEN_FILE' => 'my-token.jwt'
        )
        assume_role_web_identity_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        expect_any_instance_of(STS::Client).to receive(:assume_role_with_web_identity).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('h')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          region: 'us-east-1'
        )
      end

      it 'prefers sso credentials over assume role' do
        sso_stub
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds',
          token_provider: nil
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('SSO_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('r', 's')
      end

      it 'emits correct UserAgent metrics during SSO call for SSO' do
        sso_stub
        expect_any_instance_of(SSO::Client).to receive(:get_role_credentials).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('r')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds',
          token_provider: nil
        )
      end

      it 'loads SSO credentials from a legacy profile' do
        legacy_sso_stub
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds_legacy'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('SSO_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('t', 'u')
      end

      it 'emits correct UserAgent metrics during SSO call for legacy SSO' do
        legacy_sso_stub
        expect_any_instance_of(SSO::Client).to receive(:get_role_credentials).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('t')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds_legacy'
        )
      end

      it 'loads SSO credentials from a mixed legacy profile when values match' do
        sso_stub
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds_mixed_legacy',
          token_provider: nil
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('SSO_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('r', 's')
      end

      it 'loads SSO credentials from when the session name has quotes' do
        sso_stub
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'sso_creds_session_with_quotes',
          token_provider: nil
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('SSO_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('r', 's')
      end

      it 'raises when attempting to load an incomplete SSO Profile' do
        expect do
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'sso_creds_bad',
            region: 'us-east-1'
          )
        end.to raise_error(ArgumentError, /Missing required keys/)
      end

      it 'raises when attempting to load a mixed legacy SSO Profile with mismatched values' do
        expect do
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'sso_creds_mixed_legacy_mismatch',
            region: 'us-east-1'
          )
        end.to raise_error(ArgumentError, /does not match the profile/)
      end

      it 'raises when attempting to load an SSO profile with a missing sso-session' do
        expect do
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'sso_creds_bad_session',
            region: 'us-east-1'
          )
        end.to raise_error(ArgumentError,
          /sso-session session-does-not-exist must be defined in the config file/)
      end

      it 'prefers assume role over shared config' do
        assume_role_stub(
          'arn:aws:iam::123456789012:role/bar',
          'ACCESS_KEY_1', # from 'fooprofile'
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'ar_plus_creds', region: 'us-east-1'
        )

        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')

        sts_client = client.config.credentials.client
        expect(
          sts_client.config.region
        ).to eq('us-east-1')
      end

      it 'prefers shared credential file static credentials over shared config' do
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'credentials_first', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('ACCESS_KEY_CRD')
        expect(metric_values(client.config.credentials.metrics)).to include('n')
      end

      it 'will source static credentials from shared config after shared credentials' do
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'incomplete_cred', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('ACCESS_KEY_SC1')
        expect(metric_values(client.config.credentials.metrics)).to include('n')
      end

      it 'prefers process credentials over metadata credentials' do
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'creds_from_process', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AK_PROC1')
        expect(metric_values(client.config.credentials.metrics)).to include('v', 'w')
      end

      it 'prefers direct credentials over process credentials when profile not set' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AKID_ENV_STUB')
        expect(metric_values(client.config.credentials.metrics)).to include('g')
      end

      it 'prefers process credentials from direct profile over env' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'creds_from_process', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AK_PROC1')
        expect(metric_values(client.config.credentials.metrics)).to include('v', 'w')
      end

      it 'attempts to fetch metadata credentials last using IMDS' do
        allow(InstanceProfileCredentials).to receive(:new).and_call_original

        stub_request(:put, 'http://169.254.169.254/latest/api/token')
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(
          :get,
          'http://169.254.169.254/latest/meta-data/iam/security-credentials/'
        ).with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(
          :get,
          'http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name'
        ).with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: <<-JSON.strip)
            {
              "Code" : "Success",
              "LastUpdated" : "2013-11-22T20:03:48Z",
              "Type" : "AWS-HMAC",
              "AccessKeyId" : "akid-md",
              "SecretAccessKey" : "secret-md",
              "Token" : "session-token-md",
              "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
            }
          JSON
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'nonexistant', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('akid-md')
        expect(metric_values(client.config.credentials.metrics)).to include('0')
      end

      it 'attempts to fetch metadata credentials last using ECS' do
        path = '/latest/credentials?id=foobarbaz'
        resp = <<-JSON.strip
          {
            "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
            "AccessKeyId" : "ACCESS_KEY_ECS",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON
        stub_const('ENV', 'AWS_CONTAINER_CREDENTIALS_RELATIVE_URI' => path)
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp)
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'nonexistent',
          region: 'us-east-1'
        )
        expect(client.config.credentials.credentials.access_key_id).to eq('ACCESS_KEY_ECS')
        expect(metric_values(client.config.credentials.metrics)).to include('z')
      end

      describe 'Assume Role Resolution' do
        it 'will not assume a role without a source present' do
          expect do
            ApiHelper.sample_rest_xml::Client.new(
              profile: 'ar_no_src', region: 'us-east-1'
            )
          end.to raise_error(Errors::NoSourceProfileError)
        end

        it 'will explicitly raise if source_profile is present but invalid' do
          expect do
            ApiHelper.sample_rest_xml::Client.new(
              profile: 'ar_bad_src', region: 'us-east-1'
            )
          end.to raise_error(Errors::NoSourceProfileError)
        end

        it 'supports :source_profile from assume_role_web_identity' do
          assume_role_web_identity_stub(
            'arn:aws:iam::123456789012:role/foo',
            'AR_AKID_WEB',
            'AR_SECRET',
            'AR_TOKEN'
          )
          assume_role_stub(
            'arn:aws:iam::123456789012:role/bar',
            'AR_AKID_WEB', # from web_only
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )
          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_web_src', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'q', 'k', 'i')

          sts_client = client.config.credentials.client
          expect(
            sts_client.config.region
          ).to eq('us-east-1')
        end

        it 'emits correct UserAgent metrics during STS calls for :source_profile from assume_role_web_identity' do
          assume_role_web_identity_stub(
            'arn:aws:iam::123456789012:role/foo',
            'AR_AKID_WEB',
            'AR_SECRET',
            'AR_TOKEN'
          )
          assume_role_stub(
            'arn:aws:iam::123456789012:role/bar',
            'AR_AKID_WEB', # from web_only
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )
          expect_any_instance_of(STS::Client).to receive(:assume_role_with_web_identity).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'q')
            resp
          end
          expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'q', 'k')
            resp
          end
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_web_src', region: 'us-east-1'
          )
        end

        it 'supports :source_profile from process credentials' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'AK_PROC1',
            'AK_PROC1',
            'SECRET_AK_PROC1',
            'TOKEN_PROC1'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'creds_from_sc_process', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AK_PROC1')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'v', 'w', 'i')
        end

        it 'emits correct UserAgent metrics during STS calls for :source_profile from process credentials' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'AK_PROC1',
            'AK_PROC1',
            'SECRET_AK_PROC1',
            'TOKEN_PROC1'
          )
          expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'v', 'w')
            resp
          end
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'creds_from_sc_process', region: 'us-east-1'
          )
        end

        it 'supports :source_profile from sso credentials' do
          sso_stub

          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'SSO_AKID',
            'AR_AKID',
            'SECRET_AK',
            'TOKEN'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_sso_src', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'r', 's', 'i')
        end

        it 'emits correct UserAgent metrics during service calls for :source_profile from sso credentials' do
          sso_stub

          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'SSO_AKID',
            'AR_AKID',
            'SECRET_AK',
            'TOKEN'
          )
          expect_any_instance_of(SSO::Client).to receive(:get_role_credentials).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'r')
            resp
          end
          expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'r', 's')
            resp
          end
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_sso_src', region: 'us-east-1'
          )
        end

        it 'supports :source_profile from legacy sso credentials' do
          legacy_sso_stub

          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'SSO_AKID',
            'AR_AKID',
            'SECRET_AK',
            'TOKEN'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_sso_legacy_src', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 't', 'u', 'i')
        end

        it 'emits correct UserAgent metrics during STS calls for :source_profile from legacy sso credentials' do
          legacy_sso_stub

          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'SSO_AKID',
            'AR_AKID',
            'SECRET_AK',
            'TOKEN'
          )
          expect_any_instance_of(SSO::Client).to receive(:get_role_credentials).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 't')
            resp
          end
          expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 't', 'u')
            resp
          end
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_sso_legacy_src', region: 'us-east-1'
          )
        end

        it 'supports assume role chaining' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_b',
            'ACCESS_KEY_BASE',
            'AK_1',
            'SECRET_AK_1',
            'TOKEN_1'
          )

          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_a',
            'AK_1',
            'AK_2',
            'SECRET_AK_2',
            'TOKEN_2'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'assume_role_chain_b', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AK_2')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'emits correct UserAgent metrics during STS calls for assume role chaining' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_b',
            'ACCESS_KEY_BASE',
            'AK_1',
            'SECRET_AK_1',
            'TOKEN_1'
          )

          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_a',
            'AK_1',
            'AK_2',
            'SECRET_AK_2',
            'TOKEN_2'
          )
          allow_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
            resp = m.call(*args)
            expect(metrics_from_user_agent_header(resp)).to include('o', 'n')
            resp
          end
          ApiHelper.sample_rest_xml::Client.new(
            profile: 'assume_role_chain_b', region: 'us-east-1'
          )
        end

        it 'uses source credentials when source and static are both set' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_a',
            'ACCESS_KEY_BASE',
            'AK_2',
            'SECRET_AK_2',
            'TOKEN_2'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'assume_role_source_and_credentials', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AK_2')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'uses static credentials when the profile self references' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/role_a',
            'ACCESS_KEY_SELF',
            'AK_2',
            'SECRET_AK_2',
            'TOKEN_2'
          )

          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'assume_role_self_reference', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AK_2')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'raises if there is a loop in chained profiles' do
          expect do
            ApiHelper.sample_rest_xml::Client.new(
              profile: 'assume_role_chain_loop_a', region: 'us-east-1'
            )
          end.to raise_error(Errors::SourceProfileCircularReferenceError)
        end

        it 'raises if credential_source is present but invalid' do
          expect do
            ApiHelper.sample_rest_xml::Client.new(
              profile: 'ar_bad_csrc', region: 'us-east-1'
            )
          end.to raise_error(Errors::InvalidCredentialSourceError)
        end

        it 'raises if source_profile and credential_source both present' do
          expect do
            ApiHelper.sample_rest_xml::Client.new(
              profile: 'ar_src_conflict', region: 'us-east-1'
            )
          end.to raise_error(Errors::CredentialSourceConflictError)
        end

        it 'will assume a role from shared credentials before shared config' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/bar',
            'ACCESS_KEY_1', # from 'fooprofile'
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )
          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'assumerole_sc', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'will then try to assume a role from shared config' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/bar',
            'ACCESS_KEY_ARPC', # from 'ar_from_self'
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )
          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'ar_from_self', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'assumes a role from config using source in shared credentials' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/foo',
            'ACCESS_KEY_1', # from 'creds_from_sc'
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )
          client = ApiHelper.sample_rest_xml::Client.new(
            profile: 'creds_from_sc', region: 'us-east-1'
          )
          expect(
            client.config.credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(client.config.credentials.metrics)).to include('o', 'n', 'i')
        end

        it 'allows region to be resolved when unspecified' do
          assume_role_stub(
            'arn:aws:iam::123456789012:role/bar',
            'ACCESS_KEY_ARPC',
            'AR_AKID',
            'AR_SECRET',
            'AR_TOKEN'
          )

          allow(ENV).to receive(:[])
          allow(ENV).to receive(:[]).with('AWS_PROFILE').and_return('ar_from_self')
          allow(ENV).to receive(:values_at).and_return(['us-east-1'])

          credentials = CredentialProviderChain.new.resolve

          expect(
            credentials.credentials.access_key_id
          ).to eq('AR_AKID')
          expect(metric_values(credentials.metrics)).to include('o', 'n', 'i')
        end
      end

      it 'can assume a role with EC2 Instance Metadata as a source' do
        allow(InstanceProfileCredentials).to receive(:new).and_call_original

        profile = 'ar_ec2_src'
        resp = <<-JSON.strip
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "ACCESS_KEY_EC2",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_EC2',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        stub_request(:put, 'http://169.254.169.254/latest/api/token')
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, 'http://169.254.169.254/latest/meta-data/iam/security-credentials/')
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, 'http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name')
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('p', '0', 'i')
      end

      it 'emits correct UserAgent metrics during STS calls for EC2 Instance Metadata as a source' do
        allow(InstanceProfileCredentials).to receive(:new).and_call_original

        profile = 'ar_ec2_src'
        resp = <<-JSON.strip
          {
            "Code" : "Success",
            "LastUpdated" : "2013-11-22T20:03:48Z",
            "Type" : "AWS-HMAC",
            "AccessKeyId" : "ACCESS_KEY_EC2",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_EC2',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        stub_request(:put, 'http://169.254.169.254/latest/api/token')
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(:get, 'http://169.254.169.254/latest/meta-data/iam/security-credentials/')
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(:get, 'http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name')
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: resp)
        expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('p', '0')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
      end

      it 'can assume a role with ECS Credentials as a source' do
        profile = 'ar_ecs_src'
        path = '/latest/credentials?id=foobarbaz'
        resp = <<-JSON.strip
          {
            "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
            "AccessKeyId" : "ACCESS_KEY_ECS",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON
        stub_const('ENV', 'AWS_CONTAINER_CREDENTIALS_RELATIVE_URI' => path)
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp)
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_ECS',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('p', 'z', 'i')
      end

      it 'emits correct UserAgent metrics during STS calls for ECS Credentials as a source' do
        profile = 'ar_ecs_src'
        path = '/latest/credentials?id=foobarbaz'
        resp = <<-JSON.strip
          {
            "RoleArn" : "arn:aws:iam::123456789012:role/BarFooRole",
            "AccessKeyId" : "ACCESS_KEY_ECS",
            "SecretAccessKey" : "secret",
            "Token" : "session-token",
            "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON
        stub_const('ENV', 'AWS_CONTAINER_CREDENTIALS_RELATIVE_URI' => path)
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp)
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'ACCESS_KEY_ECS',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('p', 'z')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
      end

      it 'can assume a role with ENV as a source' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        profile = 'ar_env_src'
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AKID_ENV_STUB',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AR_AKID')
        expect(metric_values(client.config.credentials.metrics)).to include('p', 'g', 'i')
      end

      it 'emits correct UserAgent metrics during STS calls for ENV as a source' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        profile = 'ar_env_src'
        assume_role_stub(
          'arn:aws:iam::123456789012:role/foo',
          'AKID_ENV_STUB',
          'AR_AKID',
          'AR_SECRET',
          'AR_TOKEN'
        )
        expect_any_instance_of(STS::Client).to receive(:assume_role).and_wrap_original do |m, *args|
          resp = m.call(*args)
          expect(metrics_from_user_agent_header(resp)).to include('p', 'g')
          resp
        end
        ApiHelper.sample_rest_xml::Client.new(
          profile: profile,
          region: 'us-east-1'
        )
      end
    end

    describe 'AWS_SDK_CONFIG_OPT_OUT set' do
      before(:each) do
        stub_const('ENV', {})
        Aws.shared_config.fresh(
          config_enabled: false,
          credentials_path: mock_credential_file,
          # The config file exists but should not be used.
          config_path: mock_config_file
        )
      end

      it 'prefers direct credentials above other sources' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          access_key_id: 'ACCESS_DIRECT',
          secret_access_key: 'SECRET_DIRECT',
          profile: 'fooprofile',
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('ACCESS_DIRECT')
        expect(metric_values(client.config.credentials.metrics)).to include('n')
      end

      it 'prefers ENV credentials over shared config when profile not set' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('AKID_ENV_STUB')
        expect(metric_values(client.config.credentials.metrics)).to include('g')
      end

      it 'prefers config from profile over ENV credentials when profile is set on client' do
        stub_const(
          'ENV',
          'AWS_ACCESS_KEY_ID' => 'AKID_ENV_STUB',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_ENV_STUB'
        )
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'fooprofile', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('ACCESS_KEY_1')
        expect(metric_values(client.config.credentials.metrics)).to include('n')
      end

      it 'will not load credentials from shared config' do
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'creds_from_cfg', region: 'us-east-1'
        )
        expect(client.config.credentials).to eq(nil)
      end

      it 'will not attempt to assume a role' do
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'assumerole_sc', region: 'us-east-1'
        )
        expect(client.config.credentials).to eq(nil)
      end

      it 'attempts to fetch metadata credentials last' do
        allow(InstanceProfileCredentials).to receive(:new).and_call_original

        stub_request(:put, 'http://169.254.169.254/latest/api/token')
          .to_return(
            status: 200,
            body: "my-token\n",
            headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
          )
        stub_request(
          :get,
          'http://169.254.169.254/latest/meta-data/iam/security-credentials/'
        ).with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: "profile-name\n")
        stub_request(
          :get,
          'http://169.254.169.254/latest/meta-data/iam/security-credentials/profile-name'
        ).with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
          .to_return(status: 200, body: <<-JSON.strip)
            {
              "Code" : "Success",
              "LastUpdated" : "2013-11-22T20:03:48Z",
              "Type" : "AWS-HMAC",
              "AccessKeyId" : "akid-md",
              "SecretAccessKey" : "secret-md",
              "Token" : "session-token-md",
              "Expiration" : "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
            }
          JSON
        client = ApiHelper.sample_rest_xml::Client.new(
          profile: 'nonexistant', region: 'us-east-1'
        )
        expect(
          client.config.credentials.credentials.access_key_id
        ).to eq('akid-md')
        expect(metric_values(client.config.credentials.metrics)).to include('0')
      end
    end

    def assume_role_stub(role_arn, input_access_key, access_key, secret_key, token)
      stub_request(:post, 'https://sts.us-east-1.amazonaws.com/')
        .with(headers: { 'authorization' => /Credential=#{input_access_key}/ })
        .to_return(body: <<-RESP)
          <AssumeRoleResponse xmlns="https://sts.amazonaws.com/doc/2011-06-15/">
            <AssumeRoleResult>
              <AssumedRoleUser>
                <Arn>#{role_arn}</Arn>
                <AssumedRoleId>ASSUMEROLEID:session</AssumedRoleId>
              </AssumedRoleUser>
              <Credentials>
                <AccessKeyId>#{access_key}</AccessKeyId>
                <SecretAccessKey>#{secret_key}</SecretAccessKey>
                <SessionToken>#{token}</SessionToken>
                <Expiration>#{(Time.now + 3600).utc.iso8601}</Expiration>
              </Credentials>
            </AssumeRoleResult>
            <ResponseMetadata>
              <RequestId>MyStubRequest</RequestId>
            </ResponseMetadata>
          </AssumeRoleResponse>
        RESP
    end

    def assume_role_web_identity_stub(role_arn, access_key, secret_key, token)
      stub_token_file('token')
      stub_request(:post, 'https://sts.us-east-1.amazonaws.com/')
        .to_return(body: <<-RESP)
          <AssumeRoleWithWebIdentityResponse xmlns=\"https://sts.amazonaws.com/doc/2011-06-15/\">
            <AssumeRoleWithWebIdentityResult>
              <Audience>my-cluster.sk1.us-west-2.eks.amazonaws.com</Audience>
              <AssumedRoleUser>
                <AssumedRoleId>StubbedRoleId</AssumedRoleId>
                <Arn>#{role_arn}</Arn>
              </AssumedRoleUser>
              <Provider>MockProvider</Provider>
              <Credentials>
                <AccessKeyId>#{access_key}</AccessKeyId>
                <SecretAccessKey>#{secret_key}</SecretAccessKey>
                <SessionToken>#{token}</SessionToken>
                <Expiration>#{(Time.now + 3600).utc.iso8601}</Expiration>
              </Credentials>
              <SubjectFromWebIdentityToken>
                system:serviceaccount:default:default
              </SubjectFromWebIdentityToken>
            </AssumeRoleWithWebIdentityResult>
            <ResponseMetadata>
              <RequestId>MyStubbedRequest</RequestId>
            </ResponseMetadata>
          </AssumeRoleWithWebIdentityResponse>
        RESP
    end

    def sso_stub
      token = double('token', token: 'token')
      token_provider = double('token_provider', token: token, set?: true)
      allow(Aws::SSOTokenProvider).to receive(:new).and_return(token_provider)
      stub_request(:get, 'https://portal.sso.us-east-1.amazonaws.com/federation/credentials?account_id=SSO_ACCOUNT_ID&role_name=SSO_ROLE_NAME')
        .to_return(body: <<-RESP)
          {
            "roleCredentials": {
              "accessKeyId": "SSO_AKID",
              "secretAccessKey": "secret_key",
              "sessionToken": "token",
              "expiration": #{(Time.now + 3600).to_i * 1000}
            }
          }
        RESP
    end

    def mock_sso_cached_token
      cached_token = {
        'accessToken' => 'legacy_token',
        'expiresAt' => Time.now + 3600
      }
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest('START_URL'.encode('utf-8'))
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")

      allow(File).to receive(:read).and_call_original
      allow(File).to receive(:read).with(path).and_return(
        JSON.dump(cached_token)
      )
    end

    def legacy_sso_stub
      mock_sso_cached_token
      sso_stub
    end

    def stub_token_file(token)
      allow(File).to receive(:exist?).with('my-token.jwt').and_return(true)
      allow(File).to receive(:read).and_call_original
      allow(File).to receive(:read).with('my-token.jwt').and_return(token)
    end

    def metrics_from_user_agent_header(resp)
      header = resp.context.http_request.headers['User-Agent']
      header.match(%r{ m/([A-Za-z0-9+-,]+)})[1].split(',')
    end

    def metric_values(metrics)
      metrics.map { |metric| Aws::Plugins::UserAgent::METRICS[metric] }
    end
  end
end

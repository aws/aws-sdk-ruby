# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ConfigFile::Profiles do
      let(:default_profile) { { 'region' => 'us-west-2' } }
      let(:named_profile) { { 'region' => 'us-east-1' } }
      subject { described_class.new('default' => default_profile, 'named' => named_profile) }

      describe '#fetch' do
        it 'returns an existing profile' do
          expect(subject.fetch('named')).to eq(named_profile)
        end

        it 'forwards a positional default for a missing profile' do
          expect(subject.fetch('missing', default_profile)).to eq(default_profile)
        end

        # rubocop:disable Lint/UselessDefaultValueArgument
        it 'prefers the fallback block over a positional default' do
          expect(subject.fetch('missing', default_profile) { named_profile }).to eq(named_profile)
        end

        it 'does not warn when both a default and a fallback block are provided' do
          expect { subject.fetch('missing', default_profile) { named_profile } }.not_to output.to_stderr
        end
        # rubocop:enable Lint/UselessDefaultValueArgument

        it 'resolves a nil key to the default profile' do
          expect(subject.fetch(nil)).to eq(default_profile)
        end

        it 'resolves a nil key using AWS_PROFILE' do
          ENV['AWS_PROFILE'] = 'named'
          expect(subject.fetch(nil)).to eq(named_profile)
        end

        it 'keeps an explicit profile key when AWS_PROFILE is set' do
          ENV['AWS_PROFILE'] = 'named'
          expect(subject.fetch('default')).to eq(default_profile)
        end

        it 'passes the resolved environment profile to the fallback block' do
          ENV['AWS_PROFILE'] = 'missing'
          expect(subject.fetch(nil) { |key| key }).to eq('missing')
        end
      end
    end
  end
end

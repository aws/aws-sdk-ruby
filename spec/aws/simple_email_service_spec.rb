# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  describe SimpleEmailService do

    let(:config) { stub_config }

    let(:client) { config.simple_email_service_client }

    let(:ses) { SimpleEmailService.new(:config => config) }

    it_behaves_like 'a class that accepts configuration',
      :simple_email_service_client

    context '#email_addresses' do

      it 'returns an email address collection' do
        ses.email_addresses.should be_a(SimpleEmailService::EmailAddressCollection)
      end

      it 'has the same config' do
        ses.email_addresses.config.should == ses.config
      end

    end

    context '#statistics' do

      let(:resp) { client.stub_for(:get_send_statistics) }

      let(:timestamp) { Time.now }

      let(:stats) do
        stats = []
        stats << {
          :timestamp => timestamp,
          :delivery_attempts => 1,
          :rejects => 0,
          :bounces => 0,
          :complaints => 0
        }
        stats << {
          :timestamp => timestamp,
          :delivery_attempts => 2,
          :rejects => 0,
          :bounces => 1,
          :complaints => 0
        }
        stats
      end

      before(:each) do
        resp.data[:send_data_points] = stats
        client.stub(:get_send_statistics).and_return(resp)
      end

      it 'calls get_send_statistics' do
        client.should_receive(:get_send_statistics).and_return(resp)
        ses.statistics
      end

      it 'returns the send_data_points response member' do
        ses.statistics.should == [
          {
            :sent => timestamp,
            :delivery_attempts => 1,
            :rejects => 0,
            :bounces => 0,
            :complaints => 0,
          },
          {
            :sent => timestamp,
            :delivery_attempts => 2,
            :rejects => 0,
            :bounces => 1,
            :complaints => 0,
          },
        ]
      end

    end

    context '#inspect' do

      it 'returns a simple string' do
        ses.inspect.should == '<AWS::SimpleEmailService>'
      end

    end

    context '#send_email' do

      let(:send_opt_keys) {
        %w(
           subject subject_charset
           from reply_to return_path
           to cc bcc
           body_text body_text_charset
           body_html body_html_charset
        ).collect{|k| k.to_sym }
      }

      let(:send_opts) { send_opt_keys.inject({}) {|h,k| h[k] = k.to_s; h }}

      it 'returns nil' do
        ses.send_email(send_opts).should == nil
      end

      it 'calls send email on the client' do

        client.should_receive(:send_email).with({
          :message => {
            :subject => { :data => 'subject', :charset => 'subject_charset' },
            :body => {
              :text => { :data => 'body_text', :charset => 'body_text_charset' },
              :html => { :data => 'body_html', :charset => 'body_html_charset' },
            },
          },
          :destination => {
            :to_addresses => ['to'],
            :cc_addresses => ['cc'],
            :bcc_addresses => ['bcc'],
          },
          :source => 'from',
          :reply_to_addresses => ['reply_to'],
          :return_path => 'return_path',
        })

        ses.send_email(send_opts)

      end

      it 'requires a subject' do
        send_opts.delete(:subject)
        lambda {
          ses.send_email(send_opts)
        }.should raise_error(/missing required option :subject/)
      end

      it 'requires a from' do
        send_opts.delete(:from)
        lambda {
          ses.send_email(send_opts)
        }.should raise_error(/missing required option :from/)
      end

      it 'requires at least one recipient' do
        send_opts.delete(:to)
        send_opts.delete(:cc)
        send_opts.delete(:bcc)
        lambda {
          ses.send_email(send_opts)
        }.should raise_error(/you must provide at least one of :to, :cc, :bcc/)
      end

      it 'requires a body' do
        send_opts.delete(:body_text)
        send_opts.delete(:body_html)
        lambda {
          ses.send_email(send_opts)
        }.should raise_error(/you must provide at least one of :body_text, :body_html/)
      end

    end

    context '#send_raw_email' do

      let(:resp) { client.stub_for(:send_raw_email) }

      before(:each) {
        client.stub(:send_raw_email).and_return(resp)
      }

      it 'sets a message_id attribute on the raw message' do
        resp.data[:message_id] = 'MSG-ID'
        raw = double('raw-message')
        raw.should_receive(:message_id=).with('MSG-ID@email.amazonses.com')
        ses.send_raw_email(raw)
      end

      it 'returns nil' do
        ses.send_raw_email('raw').should == nil
      end

      it 'calls #send_raw_email on the client' do
        client.should_receive(:send_raw_email).
          with(:raw_message => { :data => 'raw' })
        ses.send_raw_email('raw')
      end

      it 'adds source if given a from address' do
        client.should_receive(:send_raw_email).
          with(:raw_message => { :data => 'raw' }, :source => 'from')
        ses.send_raw_email('raw', :from => 'from')
      end

      it 'adds destination if given a to address' do
        client.should_receive(:send_raw_email).
          with(:raw_message => { :data => 'raw' }, :destinations => ['to'])
        ses.send_raw_email('raw', :to => 'to')
      end

      it 'accepts multiple to addresses' do
        client.should_receive(:send_raw_email).
          with(:raw_message => { :data => 'raw' }, :destinations => ['to1', 'to2'])
        ses.send_raw_email('raw', :to => ['to1', 'to2'])
      end

      it 'is aliases as #deliver' do
        ses.method(:send_raw_email).should == ses.method(:deliver)
      end

      it 'is aliases as #deliver!' do
        ses.method(:send_raw_email).should == ses.method(:deliver!)
      end

      context 'with an object as input, that understands destinations (e.g. Mail::Message)' do
        let(:raw) do
          r = "raw"
          r.stub!(:destinations => ['bcc'])
          r
        end

        it 'should use the destinations from raw' do
          client.should_receive(:send_raw_email).with(
              :raw_message => { :data => 'raw' },
              :destinations => ['bcc'])
          ses.send_raw_email(raw)
        end

        it 'should use the to option as destination, when given' do
          client.should_receive(:send_raw_email).with(
              :raw_message => { :data => 'raw' },
              :destinations => ['to1', 'to2'])
          ses.send_raw_email(raw, :to => ['to1', 'to2'])
        end

        it 'should use the from option, when given' do
          client.should_receive(:send_raw_email).with(
              :raw_message => { :data => 'raw' },
              :destinations => ['bcc'],
              :source => 'from')
          ses.send_raw_email(raw, :from => 'from')
        end
      end

    end

    context '#identities' do

      it 'returns an identity collection' do
        identities = ses.identities
        identities.should be_an(SimpleEmailService::IdentityCollection)
        identities.config.should == config
      end

    end

    context '#quotas' do

      it 'returns a hash of quotas' do
        q = ses.quotas
        q.should be_a(Hash)
        q.should have_key(:max_24_hour_send)
        q.should have_key(:max_send_rate)
        q.should have_key(:sent_last_24_hours)
      end

    end

  end
end

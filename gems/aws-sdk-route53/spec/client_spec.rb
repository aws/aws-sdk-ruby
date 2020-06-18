# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module Route53
    describe Client do

      let(:credentials) { Credentials.new('akid', 'secret') }

      let(:client) {
        Client.new(
          region: 'us-west-2',
          credentials: credentials,
          retry_limit: 0
        )
      }

      describe '#list_resource_record_sets' do

        it 'removes the prefix from the :hosted_zone_id' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_resource_record_sets(hosted_zone_id: '/hostedzone/zoneid')
          expect(resp.context.http_request.endpoint.path).to match(
            %r{^/\d{4}-\d{2}-\d{2}/hostedzone/zoneid/rrset$}
          )
        end

      end

      describe '#delete_hosted_zone' do

        it 'removes the prefix from the :id' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.delete_hosted_zone(id: '/hostedzone/zoneid')
          expect(resp.context.http_request.endpoint.path).to match(
            %r{^/\d{4}-\d{2}-\d{2}/hostedzone/zoneid$}
          )
        end

      end

      describe '#change_resource_record_sets' do

        it 'removes prefixes from the nested targets' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end

          params = {
            hosted_zone_id: '/hostedzone/zoneid',
            change_batch: {
              changes: [
                {
                  action: 'action',
                  resource_record_set: {
                    name: 'name',
                    type: 'type',
                    alias_target: {
                      dns_name: 'dns-name',
                      evaluate_target_health: false,
                      hosted_zone_id: '/hostedzone/target'
                    }
                  }
                }
              ]
            }
          }

          resp = client.change_resource_record_sets(params)
          expect(resp.context.http_request.endpoint.path).to match(
            %r{^/\d{4}-\d{2}-\d{2}/hostedzone/zoneid/rrset/$}
          )
          expect(resp.context.http_request.body_contents).to match(
            '<HostedZoneId>target</HostedZoneId>'
          )
        end

        it 'removes prefixes from the nested targets when params is typeof ChangeResourceRecordSetsRequest' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end

          params = Aws::Route53::Types::ChangeResourceRecordSetsRequest.new(
            hosted_zone_id: '/hostedzone/zoneid',
            change_batch: {
              changes: [
                {
                  action: 'action',
                  resource_record_set: {
                    name: 'name',
                    type: 'type',
                    alias_target: {
                      dns_name: 'dns-name',
                      evaluate_target_health: false,
                      hosted_zone_id: '/hostedzone/target'
                    }
                  }
                }
              ]
            }
          )

          resp = client.change_resource_record_sets(params)
          expect(resp.context.http_request.endpoint.path).to match(
            %r{^/\d{4}-\d{2}-\d{2}/hostedzone/zoneid/rrset/$}
          )
          expect(resp.context.http_request.body_contents).to match(
            '<HostedZoneId>target</HostedZoneId>'
          )
        end
      end

      describe '#get_traffic_policy' do
        it 'supports integer versions' do
          client = Client.new(stub_responses:true)
          resp = client.get_traffic_policy(id: 'id', version: 1)
          expect(resp.context.http_request.endpoint.to_s).to eq('https://route53.amazonaws.com/2013-04-01/trafficpolicy/id/1')
        end
      end
    end
  end
end

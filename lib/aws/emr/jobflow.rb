module AWS
  class EMR
    class JobFlow
      attr_accessor :job_flow_id, :description

      include Core::Model

      def initialize(job_flow_id, description, options = {})
        @job_flow_id = job_flow_id
        @description = description
        super
      end

      # @private
      def inspect
        "#<#{self.class}:#{job_flow_id}>"
      end

      def describe
        response = client.describe_job_flows(:job_flow_ids => [job_flow_id]).to_h
        @description = response[:job_flows].first
      end

      def short_desc
        desc = {
            :id => job_flow_id,
            :state => description[:execution_status_detail][:state],
            :name => description[:name],
            :instance_count => description[:instances][:instance_count],
            :instance_hours => description[:instances][:normalized_instance_hours],
            :steps => []
        }
        description[:steps].each do |step|
          desc[:steps] << {
              :name => step[:step_config][:name],
              :state => step[:execution_status_detail][:state],
              :last_change => step[:execution_status_detail][:last_state_change_reason]
          }
        end
        desc
      end

      def ssh_command
        "ssh -o ServerAliveInterval=10 -o StrictHostKeyChecking=no -i #{@config.key_pair_file} hadoop@#{description[:instances][:master_public_dns_name]}"
      end

      def add_steps(steps)
        steps = [steps] unless steps.is_a?(Array)

        client.add_job_flow_steps(:job_flow_id => job_flow_id, :steps => steps)
      end

      def add_instance_group(instance_role, instance_type, instance_count, options = {})
        options[:instance_role] = instance_role
        options[:instance_type] = instance_type
        options[:instance_count] = instance_count

        client.add_instance_groups(:job_flow_id => job_flow_id, :instance_groups => [options])
      end

      def modify_instance_group(instance_role, instance_count)
        instance_group_id = nil
        description[:instances][:instance_groups].each do |group|
          instance_group_id = group[:instance_group_id] if group[:instance_role] == instance_role
        end
        if instance_group_id.nil?
          raise ArgumentError, 'no instance group found matching role: ' + instance_role
        end

        client.modify_instance_groups(:instance_groups => [:instance_group_id => instance_group_id,
                                                           :instance_count => instance_count])
      end

      def set_termination_protection(bool)
        client.set_termination_protection(:job_flow_ids => [job_flow_id] , :termination_protected => bool)
      end

      def terminate
        client.terminate_job_flows(:job_flow_ids => [job_flow_id])
      end

      private
      def log_client
        client.with_http_handler do |request, response|
          $stderr.puts request.inspect
          super(request, response)
          $stderr.puts response.inspect
        end
      end
    end
  end
end

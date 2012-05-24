module AWS
  class EMR
    class Client < Core::Client

      API_VERSION = '2009-03-31'

      extend Core::Client::QueryXML

      # @private
      CACHEABLE_REQUESTS = Set[]

      #define_client_method :add_instance_groups, 'AddInstanceGroups'
      #define_client_method :add_job_flow_steps, 'AddJobFlowSteps'
      define_client_method :describe_job_flows, 'DescribeJobFlows'
      #define_client_method :modify_instance_groups, 'ModifyInstanceGroups'
      #define_client_method :run_job_flow, 'RunJobFlow'
      #define_client_method :set_termination_protection, 'SetTerminationProtection'
      #define_client_method :terminate_job_flows, 'TerminateJobFlows'

    end

  end
end
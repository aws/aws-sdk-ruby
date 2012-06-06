require 'aws/core'
require 'aws/emr/config'
require 'time'

module AWS
  class EMR

    AWS.register_autoloads(self) do
      autoload :Client,     'client'
      autoload :Errors,     'errors'
      autoload :Request,    'request'
      autoload :JobFlow,    'jobflow'
    end

    include Core::ServiceInterface

    JobFlowStates = {
        :running => 'RUNNING',
        :waiting => 'WAITING',
        :shutting_down => 'SHUTTING_DOWN',
        :starting => 'STARTING',
        :terminated => 'TERMINATED',
        :ended => 'ENDED'
    }
    InstanceRoles = {
        :master => 'MASTER',
        :core   => 'CORE',
        :task   => 'TASK'
    }
    StepActionOnFailure = {
        :terminate_job_flow => 'TERMINATE_JOB_FLOW',
        :cancel_and_wait => 'CANCEL_AND_WAIT',
        :continue => 'CONTINUE'
    }

    def create(job_flow)
      client.run_job_flow(job_flow)
    end

    def terminate(job_flow_id)
      options = {}
      options[:job_flow_ids] = [job_flow_id]
      client.terminate_job_flows(options)
    end

    def jobs(options = {})

      if options[:job_flow_id] and !options[:job_flow_ids]
        options[:job_flow_ids] = [options[:job_flow_id]]
        options.delete(:job_flow_id)
      end
      if options[:active] and !options[:job_flow_states]
        options[:job_flow_states] = [JobFlowStates[:running], JobFlowStates[:waiting],
                                     JobFlowStates[:shutting_down], JobFlowStates[:starting]]
        options.delete(:active)
      end

      unless options[:created_after] or options[:created_before]
        options[:created_after] = Time.now - (14*24*60*60)
      end
      [:created_after, :created_before].each do |opt|
        if options[opt].is_a?(Time)
          options[opt] = options[opt].iso8601
        end
      end

      jobs = []
      response = client.describe_job_flows(options).to_h
      response[:job_flows].each do |job|
        jobs << JobFlow.new(job[:job_flow_id], job, :config => @config)
      end

      return jobs[0] if jobs.size == 1
      jobs
    end

  end
end

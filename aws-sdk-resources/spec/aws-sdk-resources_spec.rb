describe 'aws-sdk-resources gem' do

  %w(
    S3
    EC2
    IAM
    SQS
    SNS
    Glacier
  ).each do |svc|

    it "defines a resource class for Aws::#{svc}" do
      resource_class = Aws.const_get(svc).const_get(:Resource)
      expect(resource_class.ancestors).to include(Aws::Resource::Base)
    end

  end
end

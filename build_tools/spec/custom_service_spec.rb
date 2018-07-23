require_relative 'spec_helper'

module BuildTools

  describe 'CustomService' do

    it 'keeps svc_name camel case' do
      cs = CustomService.new(
        service_name: "SDkTestApi",
        default_endpoint: "https://foo.com",
        model_path: "foo/path"
      )
      expect(cs.svc_name).to eq("SDkTestApi")
    end

    it 'decode svc_name properly' do
      cs = CustomService.new(
        service_name: "Sdk%20%20test%20Api", 
        default_endpoint: "https://foo.com",
        model_path: "foo/path"
      )
      expect(cs.svc_name).to eq("SdkTestApi")
    end

    it 'format svc_name with spaces' do
      cs = CustomService.new(
        service_name: "Sdk teSt api",
        default_endpoint: "https://foo.com",
        model_path: "foo/path"
      )
      expect(cs.svc_name).to eq("SdkTeStApi")
    end

    it 'strips off invalid characters' do
      cs = CustomService.new(
        service_name: "Sdk-test%api",
        default_endpoint: "https://foo.com",
        model_path: "foo/path"
      )
      expect(cs.svc_name).to eq("SdkTestApi")
    end
  end

end

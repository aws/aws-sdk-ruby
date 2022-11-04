# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedGrafana
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn19LCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3si
cmVmIjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoi
aXNTZXQiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBh
cnNlVVJMIiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6
InVybCJ9XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQ
UyJ9LHRydWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBG
SVBTIGFuZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0
eXBlIjoiZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIs
InJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJv
ciI6IkludmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0
b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3Ii
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoi
RW5kcG9pbnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2dyYWZhbmEtZmlwcy57UmVnaW9ufS57UGFy
dGl0aW9uUmVzdWx0I2R1YWxTdGFja0Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVz
Ijp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsiY29u
ZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBhbmQgRHVhbFN0YWNrIGFyZSBl
bmFibGVkLCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBv
bmUgb3IgYm90aCIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBT
In0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9u
cyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6
ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwi
c3VwcG9ydHNGSVBTIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJj
b25kaXRpb25zIjpbXSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vZ3JhZmFuYS1m
aXBzLntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZG5zU3VmZml4fSIsInBy
b3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9
XX1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgaXMgZW5hYmxl
ZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBGSVBTIiwi
dHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVh
bkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9LHRydWVd
fV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZu
IjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRy
IiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBvcnRz
RHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9ncmFmYW5h
LntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZHVhbFN0YWNrRG5zU3VmZml4
fSIsInByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRw
b2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJEdWFsU3RhY2sg
aXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9y
dCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6
W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vZ3JhZmFuYS57UmVnaW9u
fS57UGFydGl0aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7
fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19XX0=

    JSON
  end
end

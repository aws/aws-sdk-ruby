# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
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
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwibmFtZSJdfSwiYXdzIl19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2Nsb3VkZnJvbnQtZmlwcy57UmVnaW9ufS5h
cGkuYXdzIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6
InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJjbG91ZGZyb250Iiwic2lnbmluZ1Jl
Z2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVu
ZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgYW5k
IER1YWxTdGFjayBhcmUgZW5hYmxlZCwgYnV0IHRoaXMgcGFydGl0aW9uIGRv
ZXMgbm90IHN1cHBvcnQgb25lIG9yIGJvdGgiLCJ0eXBlIjoiZXJyb3IifV19
LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6
W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVs
ZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFy
Z3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFy
dGl0aW9uUmVzdWx0In0sInN1cHBvcnRzRklQUyJdfV19XSwidHlwZSI6InRy
ZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVy
bCI6Imh0dHBzOi8vY2xvdWRmcm9udC1maXBzLntSZWdpb259LmFtYXpvbmF3
cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoi
c2lndjQiLCJzaWduaW5nTmFtZSI6ImNsb3VkZnJvbnQiLCJzaWduaW5nUmVn
aW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5k
cG9pbnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBl
bmFibGVkIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJ
UFMiLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJi
b29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0s
dHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6Imdl
dEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3Vw
cG9ydHNEdWFsU3RhY2siXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7
ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2Ns
b3VkZnJvbnQue1JlZ2lvbn0uYXBpLmF3cyIsInByb3BlcnRpZXMiOnsiYXV0
aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiY2xv
dWRmcm9udCIsInNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFk
ZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpb
XSwiZXJyb3IiOiJEdWFsU3RhY2sgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0
aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJy
b3IifV19LHsiY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vY2xvdWRmcm9udC5hbWF6b25hd3MuY29tIiwicHJvcGVydGllcyI6
eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUi
OiJjbG91ZGZyb250Iiwic2lnbmluZ1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0s
ImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlv
bnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3siZm4iOiJnZXRB
dHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sIm5hbWUi
XX0sImF3cy1jbiJdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6
IlVzZUZJUFMifSx0cnVlXX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2
IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJ0eXBlIjoidHJl
ZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVh
bHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJl
ZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJUFMiXX1dfSx7ImZu
IjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRy
IiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBvcnRz
RHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9jbG91ZGZy
b250LWZpcHMue1JlZ2lvbn0uYXBpLmFtYXpvbndlYnNlcnZpY2VzLmNvbS5j
biIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2
NCIsInNpZ25pbmdOYW1lIjoiY2xvdWRmcm9udCIsInNpZ25pbmdSZWdpb24i
OiJjbi1ub3J0aHdlc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVu
ZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgYW5k
IER1YWxTdGFjayBhcmUgZW5hYmxlZCwgYnV0IHRoaXMgcGFydGl0aW9uIGRv
ZXMgbm90IHN1cHBvcnQgb25lIG9yIGJvdGgiLCJ0eXBlIjoiZXJyb3IifV19
LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6
W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVs
ZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFy
Z3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFy
dGl0aW9uUmVzdWx0In0sInN1cHBvcnRzRklQUyJdfV19XSwidHlwZSI6InRy
ZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVy
bCI6Imh0dHBzOi8vY2xvdWRmcm9udC1maXBzLntSZWdpb259LmFtYXpvbmF3
cy5jb20uY24iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1l
Ijoic2lndjQiLCJzaWduaW5nTmFtZSI6ImNsb3VkZnJvbnQiLCJzaWduaW5n
UmVnaW9uIjoiY24tbm9ydGh3ZXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5
cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJG
SVBTIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1
cHBvcnQgRklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFs
U3RhY2sifSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7
ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3Vs
dCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJy
dWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vY2xvdWRmcm9udC57UmVnaW9ufS5hcGkuYW1hem9ud2Vic2Vydmlj
ZXMuY29tLmNuIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFt
ZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJjbG91ZGZyb250Iiwic2lnbmlu
Z1JlZ2lvbiI6ImNuLW5vcnRod2VzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0
eXBlIjoiZW5kcG9pbnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoi
RHVhbFN0YWNrIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMg
bm90IHN1cHBvcnQgRHVhbFN0YWNrIiwidHlwZSI6ImVycm9yIn1dfSx7ImNv
bmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2Nsb3Vk
ZnJvbnQuY24tbm9ydGh3ZXN0LTEuYW1hem9uYXdzLmNvbS5jbiIsInByb3Bl
cnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25p
bmdOYW1lIjoiY2xvdWRmcm9udCIsInNpZ25pbmdSZWdpb24iOiJjbi1ub3J0
aHdlc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1d
fSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3Yi
Olt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX0seyJmbiI6ImJvb2xlYW5FcXVh
bHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJ0
eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJv
b2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFy
Z3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJUFMi
XX1dfSx7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4i
OiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0s
InN1cHBvcnRzRHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVz
IjpbeyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6
Ly9jbG91ZGZyb250LWZpcHMue1JlZ2lvbn0ue1BhcnRpdGlvblJlc3VsdCNk
dWFsU3RhY2tEbnNTdWZmaXh9IiwicHJvcGVydGllcyI6e30sImhlYWRlcnMi
Ont9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJl
cnJvciI6IkZJUFMgYW5kIER1YWxTdGFjayBhcmUgZW5hYmxlZCwgYnV0IHRo
aXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgb25lIG9yIGJvdGgiLCJ0
eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFu
RXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJn
diI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBvcnRzRklQUyJd
fV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRw
b2ludCI6eyJ1cmwiOiJodHRwczovL2Nsb3VkZnJvbnQtZmlwcy57UmVnaW9u
fS57UGFydGl0aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7
fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19XX0seyJjb25k
aXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGlzIGVuYWJsZWQgYnV0IHRoaXMg
cGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgRklQUyIsInR5cGUiOiJlcnJv
ciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJh
cmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJ0eXBlIjoi
dHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5F
cXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7
InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJd
fV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10s
ImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vY2xvdWRmcm9udC57UmVnaW9u
fS57UGFydGl0aW9uUmVzdWx0I2R1YWxTdGFja0Ruc1N1ZmZpeH0iLCJwcm9w
ZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19
LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRHVhbFN0YWNrIGlzIGVuYWJs
ZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgRHVhbFN0
YWNrIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBl
IjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmlu
Z0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJhd3MtZ2xvYmFs
Il19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9jbG91ZGZyb250LmFt
YXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJu
YW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6ImNsb3VkZnJvbnQiLCJzaWdu
aW5nUmVnaW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBl
IjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1
YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImF3cy1jbi1nbG9iYWwi
XX1dLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2Nsb3VkZnJvbnQuY24t
bm9ydGh3ZXN0LTEuYW1hem9uYXdzLmNvbS5jbiIsInByb3BlcnRpZXMiOnsi
YXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoi
Y2xvdWRmcm9udCIsInNpZ25pbmdSZWdpb24iOiJjbi1ub3J0aHdlc3QtMSJ9
XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25kaXRp
b25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9jbG91ZGZyb250
LntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZG5zU3VmZml4fSIsInByb3Bl
cnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX1d
fV19

    JSON
  end
end

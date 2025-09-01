# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralSelling
  # This module contains the types returned by client operations.
  module Types

    # @!attribute catalog
    #   <p>The <code>CatalogType</code> parameter specifies the catalog associated with the engagement invitation. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement invitation is managed.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p> The <code>Identifier</code> parameter in the <code>AcceptEngagementInvitationRequest</code> specifies the unique identifier of the <code>EngagementInvitation</code> to be accepted. Providing the correct identifier ensures that the intended invitation is accepted. </p>
    #   @return [String]
    class AcceptEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This error occurs when you don't have permission to perform the requested action.</p> <p>You don’t have access to this action or resource. Review IAM policies or contact your AWS administrator for assistance.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the <code>Customer</code>'s account details associated with the <code>Opportunity</code>.</p>
    # @!attribute industry
    #   <p>Specifies the industry the end <code>Customer</code> belongs to that's associated with the <code>Opportunity</code>. It refers to the category or sector where the customer's business operates. This is a required field.</p>
    #   @return [String]
    # @!attribute other_industry
    #   <p>Specifies the end <code>Customer</code>'s industry associated with the <code>Opportunity</code>, when the selected value in the <code>Industry</code> field is <code>Other</code>.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>Specifies the end <code>Customer</code>'s company name associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>Specifies the end customer's company website URL associated with the <code>Opportunity</code>. This value is crucial to map the customer within the Amazon Web Services CRM system. This field is required in all cases except when the opportunity is related to national security.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Specifies the <code>Customer</code> Amazon Web Services account ID associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute address
    #   <p>Specifies the end <code>Customer</code>'s address details associated with the <code>Opportunity</code>.</p>
    #   @return [Types::Address]
    # @!attribute duns
    #   <p>Indicates the <code>Customer</code> DUNS number, if available.</p>
    #   @return [String]
    class Account < Struct.new(
      :industry,
      :other_industry,
      :company_name,
      :website_url,
      :aws_account_id,
      :address,
      :duns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the account details of the partner who received the Engagement Invitation, including the AWS account ID and company name.</p>
    # @!attribute alias
    #   <p>Represents the alias of the partner account receiving the Engagement Invitation, making it easier to identify and track the recipient in reports or logs.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Indicates the AWS account ID of the partner who received the Engagement Invitation. This is a unique identifier for managing engagements with specific AWS accounts.</p>
    #   @return [String]
    class AccountReceiver < Struct.new(
      :alias,
      :aws_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains an <code>Account</code>'s subset of fields.</p>
    # @!attribute industry
    #   <p>Specifies which industry the end <code>Customer</code> belongs to associated with the <code>Opportunity</code>. It refers to the category or sector that the customer's business operates in.</p> <p>To submit a value outside the picklist, use <code>Other</code>.</p> <p>Conditionally mandatory if <code>Other</code> is selected for Industry Vertical in LOVs.</p>
    #   @return [String]
    # @!attribute other_industry
    #   <p>Specifies the end <code>Customer</code>'s industry associated with the <code> Opportunity</code>, when the selected value in the <code>Industry</code> field is <code>Other</code>. This field is relevant when the customer's industry doesn't fall under the predefined picklist values and requires a custom description.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>Specifies the end <code>Customer</code>'s company name associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>Specifies the end customer's company website URL associated with the <code>Opportunity</code>. This value is crucial to map the customer within the Amazon Web Services CRM system.</p>
    #   @return [String]
    # @!attribute address
    #   <p>Specifies the end <code>Customer</code>'s address details associated with the <code>Opportunity</code>.</p>
    #   @return [Types::AddressSummary]
    class AccountSummary < Struct.new(
      :industry,
      :other_industry,
      :company_name,
      :website_url,
      :address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the end <code>Customer</code>'s address details associated with the <code>Opportunity</code>.</p>
    # @!attribute city
    #   <p>Specifies the end <code>Customer</code>'s city associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>Specifies the end <code>Customer</code>'s postal code associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p>Specifies the end <code>Customer</code>'s state or region associated with the <code>Opportunity</code>.</p> <p>Valid values: <code>Alabama | Alaska | American Samoa | Arizona | Arkansas | California | Colorado | Connecticut | Delaware | Dist. of Columbia | Federated States of Micronesia | Florida | Georgia | Guam | Hawaii | Idaho | Illinois | Indiana | Iowa | Kansas | Kentucky | Louisiana | Maine | Marshall Islands | Maryland | Massachusetts | Michigan | Minnesota | Mississippi | Missouri | Montana | Nebraska | Nevada | New Hampshire | New Jersey | New Mexico | New York | North Carolina | North Dakota | Northern Mariana Islands | Ohio | Oklahoma | Oregon | Palau | Pennsylvania | Puerto Rico | Rhode Island | South Carolina | South Dakota | Tennessee | Texas | Utah | Vermont | Virginia | Virgin Islands | Washington | West Virginia | Wisconsin | Wyoming | APO/AE | AFO/FPO | FPO, AP</code> </p>
    #   @return [String]
    # @!attribute country_code
    #   <p>Specifies the end <code>Customer</code>'s country associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute street_address
    #   <p>Specifies the end <code>Customer</code>'s street address associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    class Address < Struct.new(
      :city,
      :postal_code,
      :state_or_region,
      :country_code,
      :street_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains an <code>Address</code> object's subset of fields.</p>
    # @!attribute city
    #   <p>Specifies the end <code>Customer</code>'s city associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>Specifies the end <code>Customer</code>'s postal code associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p>Specifies the end <code>Customer</code>'s state or region associated with the <code>Opportunity</code>.</p> <p>Valid values: <code>Alabama | Alaska | American Samoa | Arizona | Arkansas | California | Colorado | Connecticut | Delaware | Dist. of Columbia | Federated States of Micronesia | Florida | Georgia | Guam | Hawaii | Idaho | Illinois | Indiana | Iowa | Kansas | Kentucky | Louisiana | Maine | Marshall Islands | Maryland | Massachusetts | Michigan | Minnesota | Mississippi | Missouri | Montana | Nebraska | Nevada | New Hampshire | New Jersey | New Mexico | New York | North Carolina | North Dakota | Northern Mariana Islands | Ohio | Oklahoma | Oregon | Palau | Pennsylvania | Puerto Rico | Rhode Island | South Carolina | South Dakota | Tennessee | Texas | Utah | Vermont | Virginia | Virgin Islands | Washington | West Virginia | Wisconsin | Wyoming | APO/AE | AFO/FPO | FPO, AP</code> </p>
    #   @return [String]
    # @!attribute country_code
    #   <p>Specifies the end <code>Customer</code>'s country associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    class AddressSummary < Struct.new(
      :city,
      :postal_code,
      :state_or_region,
      :country_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is assigned in. Use <code>AWS</code> to assign real opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Requires the <code>Opportunity</code>'s unique identifier when you want to assign it to another user. Provide the correct identifier so the intended opportunity is reassigned.</p>
    #   @return [String]
    # @!attribute assignee
    #   <p>Specifies the user or team member responsible for managing the assigned opportunity. This field identifies the <i>Assignee</i> based on the partner's internal team structure. Ensure that the email address is associated with a registered user in your Partner Central account.</p>
    #   @return [Types::AssigneeContact]
    class AssignOpportunityRequest < Struct.new(
      :catalog,
      :identifier,
      :assignee,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the contact details of the individual assigned to manage the opportunity within the partner organization. This helps to ensure that there is a point of contact for the opportunity's progress.</p>
    # @!attribute email
    #   <p>Provides the email address of the assignee. This email is used for communications and notifications related to the opportunity.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>Specifies the first name of the assignee managing the opportunity. The system automatically retrieves this value from the user profile by referencing the associated email address.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Specifies the last name of the assignee managing the opportunity. The system automatically retrieves this value from the user profile by referencing the associated email address.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>Specifies the business title of the assignee managing the opportunity. This helps clarify the individual's role and responsibilities within the organization. Use the value <code>PartnerAccountManager</code> to update details of the opportunity owner.</p>
    #   @return [String]
    class AssigneeContact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity association is made in. Use <code>AWS</code> to associate opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    #   @return [String]
    # @!attribute opportunity_identifier
    #   <p>Requires the <code>Opportunity</code>'s unique identifier when you want to associate it with a related entity. Provide the correct identifier so the intended opportunity is updated with the association.</p>
    #   @return [String]
    # @!attribute related_entity_type
    #   <p>Specifies the entity type that you're associating with the <code> Opportunity</code>. This helps to categorize and properly process the association.</p>
    #   @return [String]
    # @!attribute related_entity_identifier
    #   <p>Requires the related entity's unique identifier when you want to associate it with the <code> Opportunity</code>. For Amazon Web Services Marketplace entities, provide the Amazon Resource Name (ARN). Use the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html"> Amazon Web Services Marketplace API</a> to obtain the ARN.</p>
    #   @return [String]
    class AssociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_type,
      :related_entity_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AwsClosedLostReason
      ADMINISTRATIVE = 'Administrative'
      BUSINESS_ASSOCIATE_AGREEMENT = 'Business Associate Agreement'
      COMPANY_ACQUIRED_DISSOLVED = 'Company Acquired/Dissolved'
      COMPETITIVE_OFFERING = 'Competitive Offering'
      CUSTOMER_DATA_REQUIREMENT = 'Customer Data Requirement'
      CUSTOMER_DEFICIENCY = 'Customer Deficiency'
      CUSTOMER_EXPERIENCE = 'Customer Experience'
      DELAY_CANCELLATION_OF_PROJECT = 'Delay / Cancellation of Project'
      DUPLICATE = 'Duplicate'
      DUPLICATE_OPPORTUNITY = 'Duplicate Opportunity'
      EXECUTIVE_BLOCKER = 'Executive Blocker'
      FAILED_VETTING = 'Failed Vetting'
      FEATURE_LIMITATION = 'Feature Limitation'
      FINANCIAL_COMMERCIAL = 'Financial/Commercial'
      INSUFFICIENT_AMAZON_VALUE = 'Insufficient Amazon Value'
      INSUFFICIENT_AWS_VALUE = 'Insufficient AWS Value'
      INTERNATIONAL_CONSTRAINTS = 'International Constraints'
      LEGAL_TAX_REGULATORY = 'Legal / Tax / Regulatory'
      LEGAL_TERMS_AND_CONDITIONS = 'Legal Terms and Conditions'
      LOST_TO_COMPETITOR = 'Lost to Competitor'
      LOST_TO_COMPETITOR_GOOGLE = 'Lost to Competitor - Google'
      LOST_TO_COMPETITOR_MICROSOFT = 'Lost to Competitor - Microsoft'
      LOST_TO_COMPETITOR_OTHER = 'Lost to Competitor - Other'
      LOST_TO_COMPETITOR_RACKSPACE = 'Lost to Competitor - Rackspace'
      LOST_TO_COMPETITOR_SOFTLAYER = 'Lost to Competitor - SoftLayer'
      LOST_TO_COMPETITOR_VMWARE = 'Lost to Competitor - VMWare'
      NO_CUSTOMER_REFERENCE = 'No Customer Reference'
      NO_INTEGRATION_RESOURCES = 'No Integration Resources'
      NO_OPPORTUNITY = 'No Opportunity'
      NO_PERCEIVED_VALUE_OF_MP = 'No Perceived Value of MP'
      NO_RESPONSE = 'No Response'
      NOT_COMMITTED_TO_AWS = 'Not Committed to AWS'
      NO_UPDATE = 'No Update'
      ON_PREMISES_DEPLOYMENT = 'On Premises Deployment'
      OTHER = 'Other'
      OTHER_DETAILS_IN_DESCRIPTION = 'Other (Details in Description)'
      PARTNER_GAP = 'Partner Gap'
      PAST_DUE = 'Past Due'
      PEOPLE_RELATIONSHIP_GOVERNANCE = 'People/Relationship/Governance'
      PLATFORM_TECHNOLOGY_LIMITATION = 'Platform Technology Limitation'
      PREFERENCE_FOR_COMPETITOR = 'Preference for Competitor'
      PRICE = 'Price'
      PRODUCT_TECHNOLOGY = 'Product/Technology'
      PRODUCT_NOT_ON_AWS = 'Product Not on AWS'
      SECURITY_COMPLIANCE = 'Security / Compliance'
      SELF_SERVICE = 'Self-Service'
      TECHNICAL_LIMITATIONS = 'Technical Limitations'
      TERM_SHEET_IMPASSE = 'Term Sheet Impasse'
    end

    module AwsFundingUsed
      YES = 'Yes'
      NO = 'No'
    end

    module AwsMemberBusinessTitle
      AWS_SALES_REP = 'AWSSalesRep'
      AWS_ACCOUNT_OWNER = 'AWSAccountOwner'
      WWPSPDM = 'WWPSPDM'
      PDM = 'PDM'
      PSM = 'PSM'
      ISVSM = 'ISVSM'
    end

    # <p>Represents the customer associated with the AWS opportunity. This field captures key details about the customer that are necessary for managing the opportunity.</p>
    # @!attribute contacts
    #   <p>Provides a list of customer contacts involved in the opportunity. These contacts may include decision makers, influencers, and other stakeholders within the customer's organization.</p>
    #   @return [Array<Types::Contact>]
    class AwsOpportunityCustomer < Struct.new(
      :contacts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains insights provided by AWS for the opportunity, offering recommendations and analysis that can help the partner optimize their engagement and strategy.</p>
    # @!attribute next_best_actions
    #   <p>Provides recommendations from AWS on the next best actions to take in order to move the opportunity forward and increase the likelihood of success.</p>
    #   @return [String]
    # @!attribute engagement_score
    #   <p>Represents a score assigned by AWS to indicate the level of engagement and potential success for the opportunity. This score helps partners prioritize their efforts.</p>
    #   @return [String]
    class AwsOpportunityInsights < Struct.new(
      :next_best_actions,
      :engagement_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Tracks the lifecycle of the AWS opportunity, including stages such as qualification, validation, and closure. This field helps partners understand the current status and progression of the opportunity.</p>
    # @!attribute target_close_date
    #   <p>Indicates the expected date by which the opportunity is projected to close. This field helps in planning resources and timelines for both the partner and AWS.</p>
    #   @return [String]
    # @!attribute closed_lost_reason
    #   <p>Indicates the reason why an opportunity was marked as <code>Closed Lost</code>. This helps in understanding the context behind the lost opportunity and aids in refining future strategies.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>Represents the current stage of the opportunity in its lifecycle, such as <code>Qualification</code>, <code>Validation</code>, or <code>Closed Won</code>. This helps in understanding the opportunity's progress.</p>
    #   @return [String]
    # @!attribute next_steps
    #   <p>Specifies the immediate next steps required to progress the opportunity. These steps are based on AWS guidance and the current stage of the opportunity.</p>
    #   @return [String]
    # @!attribute next_steps_history
    #   <p>Provides a historical log of previous next steps that were taken to move the opportunity forward. This helps in tracking the decision-making process and identifying any delays or obstacles encountered.</p>
    #   @return [Array<Types::ProfileNextStepsHistory>]
    class AwsOpportunityLifeCycle < Struct.new(
      :target_close_date,
      :closed_lost_reason,
      :stage,
      :next_steps,
      :next_steps_history,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Captures details about the project associated with the opportunity, including objectives, scope, and customer requirements.</p>
    # @!attribute expected_customer_spend
    #   <p>Indicates the expected spending by the customer over the course of the project. This value helps partners and AWS estimate the financial impact of the opportunity. Use the <a href="https://calculator.aws/#/">AWS Pricing Calculator</a> to create an estimate of the customer’s total spend. If only annual recurring revenue (ARR) is available, distribute it across 12 months to provide an average monthly value.</p>
    #   @return [Array<Types::ExpectedCustomerSpend>]
    class AwsOpportunityProject < Struct.new(
      :expected_customer_spend,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents other entities related to the AWS opportunity, such as AWS products, partner solutions, and marketplace offers. These associations help build a complete picture of the solution being sold.</p>
    # @!attribute aws_products
    #   <p>Specifies the AWS products associated with the opportunity. This field helps track the specific products that are part of the proposed solution.</p>
    #   @return [Array<String>]
    # @!attribute solutions
    #   <p>Specifies the partner solutions related to the opportunity. These solutions represent the partner's offerings that are being positioned as part of the overall AWS opportunity.</p>
    #   @return [Array<String>]
    class AwsOpportunityRelatedEntities < Struct.new(
      :aws_products,
      :solutions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AwsOpportunityStage
      NOT_STARTED = 'Not Started'
      IN_PROGRESS = 'In Progress'
      PROSPECT = 'Prospect'
      ENGAGED = 'Engaged'
      IDENTIFIED = 'Identified'
      QUALIFY = 'Qualify'
      RESEARCH = 'Research'
      SELLER_ENGAGED = 'Seller Engaged'
      EVALUATING = 'Evaluating'
      SELLER_REGISTERED = 'Seller Registered'
      TERM_SHEET_NEGOTIATION = 'Term Sheet Negotiation'
      CONTRACT_NEGOTIATION = 'Contract Negotiation'
      ONBOARDING = 'Onboarding'
      BUILDING_INTEGRATION = 'Building Integration'
      QUALIFIED = 'Qualified'
      ON_HOLD = 'On-hold'
      TECHNICAL_VALIDATION = 'Technical Validation'
      BUSINESS_VALIDATION = 'Business Validation'
      COMMITTED = 'Committed'
      LAUNCHED = 'Launched'
      DEFERRED_TO_PARTNER = 'Deferred to Partner'
      CLOSED_LOST = 'Closed Lost'
      COMPLETED = 'Completed'
      CLOSED_INCOMPLETE = 'Closed Incomplete'
    end

    # <p>Indicates the level of AWS involvement in the opportunity. This field helps track AWS participation throughout the engagement, such as providing technical support, deal assistance, and sales support.</p>
    # @!attribute involvement_type
    #   <p>Specifies the type of AWS involvement in the opportunity, such as coselling, deal support, or technical consultation. This helps categorize the nature of AWS participation.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>Determines who can view AWS involvement in the opportunity. Typically, this field is set to <code>Full</code> for most cases, but it may be restricted based on special program requirements or confidentiality needs.</p>
    #   @return [String]
    class AwsSubmission < Struct.new(
      :involvement_type,
      :visibility,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an Amazon Web Services team member for the engagement. This structure includes details such as name, email, and business title.</p>
    # @!attribute email
    #   <p>Provides the Amazon Web Services team member's email address.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>Provides the Amazon Web Services team member's first name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Provides the Amazon Web Services team member's last name.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>Specifies the Amazon Web Services team member's business title and indicates their organizational role.</p>
    #   @return [String]
    class AwsTeamMember < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Channel
      AWS_MARKETING_CENTRAL = 'AWS Marketing Central'
      CONTENT_SYNDICATION = 'Content Syndication'
      DISPLAY = 'Display'
      EMAIL = 'Email'
      LIVE_EVENT = 'Live Event'
      OUT_OF_HOME = 'Out Of Home (OOH)'
      PRINT = 'Print'
      SEARCH = 'Search'
      SOCIAL = 'Social'
      TELEMARKETING = 'Telemarketing'
      TV = 'TV'
      VIDEO = 'Video'
      VIRTUAL_EVENT = 'Virtual Event'
    end

    module ClosedLostReason
      CUSTOMER_DEFICIENCY = 'Customer Deficiency'
      DELAY_CANCELLATION_OF_PROJECT = 'Delay / Cancellation of Project'
      LEGAL_TAX_REGULATORY = 'Legal / Tax / Regulatory'
      LOST_TO_COMPETITOR_GOOGLE = 'Lost to Competitor - Google'
      LOST_TO_COMPETITOR_MICROSOFT = 'Lost to Competitor - Microsoft'
      LOST_TO_COMPETITOR_SOFTLAYER = 'Lost to Competitor - SoftLayer'
      LOST_TO_COMPETITOR_VMWARE = 'Lost to Competitor - VMWare'
      LOST_TO_COMPETITOR_OTHER = 'Lost to Competitor - Other'
      NO_OPPORTUNITY = 'No Opportunity'
      ON_PREMISES_DEPLOYMENT = 'On Premises Deployment'
      PARTNER_GAP = 'Partner Gap'
      PRICE = 'Price'
      SECURITY_COMPLIANCE = 'Security / Compliance'
      TECHNICAL_LIMITATIONS = 'Technical Limitations'
      CUSTOMER_EXPERIENCE = 'Customer Experience'
      OTHER = 'Other'
      PEOPLERELATIONSHIPGOVERNANCE = 'People/Relationship/Governance'
      PRODUCTTECHNOLOGY = 'Product/Technology'
      FINANCIALCOMMERCIAL = 'Financial/Commercial'
    end

    module CompetitorName
      ORACLE_CLOUD = 'Oracle Cloud'
      ON_PREM = 'On-Prem'
      CO_LOCATION = 'Co-location'
      AKAMAI = 'Akamai'
      ALICLOUD = 'AliCloud'
      GOOGLE_CLOUD_PLATFORM = 'Google Cloud Platform'
      IBM_SOFTLAYER = 'IBM Softlayer'
      MICROSOFT_AZURE = 'Microsoft Azure'
      OTHER_COST_OPTIMIZATION = 'Other- Cost Optimization'
      NO_COMPETITION = 'No Competition'
      OTHER = '*Other'
    end

    # <p>This error occurs when the request can’t be processed due to a conflict with the target resource's current state, which could result from updating or deleting the resource.</p> <p>Suggested action: Fetch the latest state of the resource, verify the state, and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains a <code>Customer Partner</code>'s contact details.</p>
    # @!attribute email
    #   <p>The contact's email address associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The contact's first name associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The contact's last name associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>The partner contact's title (job title or role) associated with the <code>Opportunity</code>. <code>BusinessTitle</code> supports either <code>PartnerAccountManager</code> or <code>OpportunityOwner</code>.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>The contact's phone number associated with the <code>Opportunity</code>.</p>
    #   @return [String]
    class Contact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module CountryCode
      US = 'US'
      AF = 'AF'
      AX = 'AX'
      AL = 'AL'
      DZ = 'DZ'
      AS = 'AS'
      AD = 'AD'
      AO = 'AO'
      AI = 'AI'
      AQ = 'AQ'
      AG = 'AG'
      AR = 'AR'
      AM = 'AM'
      AW = 'AW'
      AU = 'AU'
      AT = 'AT'
      AZ = 'AZ'
      BS = 'BS'
      BH = 'BH'
      BD = 'BD'
      BB = 'BB'
      BY = 'BY'
      BE = 'BE'
      BZ = 'BZ'
      BJ = 'BJ'
      BM = 'BM'
      BT = 'BT'
      BO = 'BO'
      BQ = 'BQ'
      BA = 'BA'
      BW = 'BW'
      BV = 'BV'
      BR = 'BR'
      IO = 'IO'
      BN = 'BN'
      BG = 'BG'
      BF = 'BF'
      BI = 'BI'
      KH = 'KH'
      CM = 'CM'
      CA = 'CA'
      CV = 'CV'
      KY = 'KY'
      CF = 'CF'
      TD = 'TD'
      CL = 'CL'
      CN = 'CN'
      CX = 'CX'
      CC = 'CC'
      CO = 'CO'
      KM = 'KM'
      CG = 'CG'
      CK = 'CK'
      CR = 'CR'
      CI = 'CI'
      HR = 'HR'
      CU = 'CU'
      CW = 'CW'
      CY = 'CY'
      CZ = 'CZ'
      CD = 'CD'
      DK = 'DK'
      DJ = 'DJ'
      DM = 'DM'
      DO = 'DO'
      EC = 'EC'
      EG = 'EG'
      SV = 'SV'
      GQ = 'GQ'
      ER = 'ER'
      EE = 'EE'
      ET = 'ET'
      FK = 'FK'
      FO = 'FO'
      FJ = 'FJ'
      FI = 'FI'
      FR = 'FR'
      GF = 'GF'
      PF = 'PF'
      TF = 'TF'
      GA = 'GA'
      GM = 'GM'
      GE = 'GE'
      DE = 'DE'
      GH = 'GH'
      GI = 'GI'
      GR = 'GR'
      GL = 'GL'
      GD = 'GD'
      GP = 'GP'
      GU = 'GU'
      GT = 'GT'
      GG = 'GG'
      GN = 'GN'
      GW = 'GW'
      GY = 'GY'
      HT = 'HT'
      HM = 'HM'
      VA = 'VA'
      HN = 'HN'
      HK = 'HK'
      HU = 'HU'
      IS = 'IS'
      IN = 'IN'
      ID = 'ID'
      IR = 'IR'
      IQ = 'IQ'
      IE = 'IE'
      IM = 'IM'
      IL = 'IL'
      IT = 'IT'
      JM = 'JM'
      JP = 'JP'
      JE = 'JE'
      JO = 'JO'
      KZ = 'KZ'
      KE = 'KE'
      KI = 'KI'
      KR = 'KR'
      KW = 'KW'
      KG = 'KG'
      LA = 'LA'
      LV = 'LV'
      LB = 'LB'
      LS = 'LS'
      LR = 'LR'
      LY = 'LY'
      LI = 'LI'
      LT = 'LT'
      LU = 'LU'
      MO = 'MO'
      MK = 'MK'
      MG = 'MG'
      MW = 'MW'
      MY = 'MY'
      MV = 'MV'
      ML = 'ML'
      MT = 'MT'
      MH = 'MH'
      MQ = 'MQ'
      MR = 'MR'
      MU = 'MU'
      YT = 'YT'
      MX = 'MX'
      FM = 'FM'
      MD = 'MD'
      MC = 'MC'
      MN = 'MN'
      ME = 'ME'
      MS = 'MS'
      MA = 'MA'
      MZ = 'MZ'
      MM = 'MM'
      NA = 'NA'
      NR = 'NR'
      NP = 'NP'
      NL = 'NL'
      AN = 'AN'
      NC = 'NC'
      NZ = 'NZ'
      NI = 'NI'
      NE = 'NE'
      NG = 'NG'
      NU = 'NU'
      NF = 'NF'
      MP = 'MP'
      NO = 'NO'
      OM = 'OM'
      PK = 'PK'
      PW = 'PW'
      PS = 'PS'
      PA = 'PA'
      PG = 'PG'
      PY = 'PY'
      PE = 'PE'
      PH = 'PH'
      PN = 'PN'
      PL = 'PL'
      PT = 'PT'
      PR = 'PR'
      QA = 'QA'
      RE = 'RE'
      RO = 'RO'
      RU = 'RU'
      RW = 'RW'
      BL = 'BL'
      SH = 'SH'
      KN = 'KN'
      LC = 'LC'
      MF = 'MF'
      PM = 'PM'
      VC = 'VC'
      WS = 'WS'
      SM = 'SM'
      ST = 'ST'
      SA = 'SA'
      SN = 'SN'
      RS = 'RS'
      SC = 'SC'
      SL = 'SL'
      SG = 'SG'
      SX = 'SX'
      SK = 'SK'
      SI = 'SI'
      SB = 'SB'
      SO = 'SO'
      ZA = 'ZA'
      GS = 'GS'
      SS = 'SS'
      ES = 'ES'
      LK = 'LK'
      SD = 'SD'
      SR = 'SR'
      SJ = 'SJ'
      SZ = 'SZ'
      SE = 'SE'
      CH = 'CH'
      SY = 'SY'
      TW = 'TW'
      TJ = 'TJ'
      TZ = 'TZ'
      TH = 'TH'
      TL = 'TL'
      TG = 'TG'
      TK = 'TK'
      TO = 'TO'
      TT = 'TT'
      TN = 'TN'
      TR = 'TR'
      TM = 'TM'
      TC = 'TC'
      TV = 'TV'
      UG = 'UG'
      UA = 'UA'
      AE = 'AE'
      GB = 'GB'
      UM = 'UM'
      UY = 'UY'
      UZ = 'UZ'
      VU = 'VU'
      VE = 'VE'
      VN = 'VN'
      VG = 'VG'
      VI = 'VI'
      WF = 'WF'
      EH = 'EH'
      YE = 'YE'
      ZM = 'ZM'
      ZW = 'ZW'
    end

    # @!attribute catalog
    #   <p> Specifies the catalog related to the engagement. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement is managed. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> Specifies a unique, client-generated UUID to ensure that the request is handled exactly once. This token helps prevent duplicate invitation creations. </p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p> The unique identifier of the <code>Engagement</code> associated with the invitation. This parameter ensures the invitation is created within the correct <code>Engagement</code> context. </p>
    #   @return [String]
    # @!attribute invitation
    #   <p> The <code>Invitation</code> object all information necessary to initiate an engagement invitation to a partner. It contains a personalized message from the sender, the invitation's receiver, and a payload. The <code>Payload</code> can be the <code>OpportunityInvitation</code>, which includes detailed structures for sender contacts, partner responsibilities, customer information, and project details. </p>
    #   @return [Types::Invitation]
    class CreateEngagementInvitationRequest < Struct.new(
      :catalog,
      :client_token,
      :engagement_identifier,
      :invitation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> Unique identifier assigned to the newly created engagement invitation. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that uniquely identifies the engagement invitation. </p>
    #   @return [String]
    class CreateEngagementInvitationResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The <code>CreateEngagementRequest$Catalog</code> parameter specifies the catalog related to the engagement. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement is managed.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The <code>CreateEngagementRequest$ClientToken</code> parameter specifies a unique, case-sensitive identifier to ensure that the request is handled exactly once. The value must not exceed sixty-four alphanumeric characters.</p>
    #   @return [String]
    # @!attribute title
    #   <p>Specifies the title of the <code>Engagement</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Provides a description of the <code>Engagement</code>.</p>
    #   @return [String]
    # @!attribute contexts
    #   <p>The <code>Contexts</code> field is a required array of objects, with a maximum of 5 contexts allowed, specifying detailed information about customer projects associated with the Engagement. Each context object contains a <code>Type</code> field indicating the context type, which must be <code>CustomerProject</code> in this version, and a <code>Payload</code> field containing the <code>CustomerProject</code> details. The <code>CustomerProject</code> object is composed of two main components: <code>Customer</code> and <code>Project</code>. The <code>Customer</code> object includes information such as <code>CompanyName</code>, <code>WebsiteUrl</code>, <code>Industry</code>, and <code>CountryCode</code>, providing essential details about the customer. The <code>Project</code> object contains <code>Title</code>, <code>BusinessProblem</code>, and <code>TargetCompletionDate</code>, offering insights into the specific project associated with the customer. This structure allows comprehensive context to be included within the Engagement, facilitating effective collaboration between parties by providing relevant customer and project information.</p>
    #   @return [Array<Types::EngagementContextDetails>]
    class CreateEngagementRequest < Struct.new(
      :catalog,
      :client_token,
      :title,
      :description,
      :contexts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Unique identifier assigned to the newly created engagement.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the engagement.</p>
    #   @return [String]
    class CreateEngagementResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is created in. Use <code>AWS</code> to create opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    #   @return [String]
    # @!attribute primary_needs_from_aws
    #   <p>Identifies the type of support the partner needs from Amazon Web Services.</p> <p>Valid values:</p> <ul> <li> <p>Cosell—Architectural Validation: Confirmation from Amazon Web Services that the partner's proposed solution architecture is aligned with Amazon Web Services best practices and poses minimal architectural risks.</p> </li> <li> <p>Cosell—Business Presentation: Request Amazon Web Services seller's participation in a joint customer presentation.</p> </li> <li> <p>Cosell—Competitive Information: Access to Amazon Web Services competitive resources and support for the partner's proposed solution.</p> </li> <li> <p>Cosell—Pricing Assistance: Connect with an Amazon Web Services seller for support situations where a partner may be receiving an upfront discount on a service (for example: EDP deals).</p> </li> <li> <p>Cosell—Technical Consultation: Connect with an Amazon Web Services Solutions Architect to address the partner's questions about the proposed solution.</p> </li> <li> <p>Cosell—Total Cost of Ownership Evaluation: Assistance with quoting different cost savings of proposed solutions on Amazon Web Services versus on-premises or a traditional hosting environment.</p> </li> <li> <p>Cosell—Deal Support: Request Amazon Web Services seller's support to progress the opportunity (for example: joint customer call, strategic positioning).</p> </li> <li> <p>Cosell—Support for Public Tender/RFx: Opportunity related to the public sector where the partner needs Amazon Web Services RFx support.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute national_security
    #   <p>Indicates whether the <code>Opportunity</code> pertains to a national security project. This field must be set to <code>true</code> only when the customer's industry is <i>Government</i>. Additional privacy and security measures apply during the review and management process for opportunities marked as <code>NationalSecurity</code>.</p>
    #   @return [String]
    # @!attribute partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload to the partner.</p> <p>This field allows partners to link an opportunity to their CRM, which helps to ensure seamless integration and accurate synchronization between the Partner Central API and the partner's internal systems.</p>
    #   @return [String]
    # @!attribute customer
    #   <p>Specifies customer details associated with the <code>Opportunity</code>.</p>
    #   @return [Types::Customer]
    # @!attribute project
    #   <p>An object that contains project details for the <code>Opportunity</code>.</p>
    #   @return [Types::Project]
    # @!attribute opportunity_type
    #   <p>Specifies the opportunity type as a renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, ensuring continuity of service.</p> </li> <li> <p>Expansion opportunity: Represents an opportunity to expand the scope of an existing contract or subscription, either by adding new services or increasing the volume of existing services for a current customer.</p> </li> </ul>
    #   @return [String]
    # @!attribute marketing
    #   <p>This object contains marketing details and is optional for an opportunity.</p>
    #   @return [Types::Marketing]
    # @!attribute software_revenue
    #   <p>Specifies details of a customer's procurement terms. This is required only for partners in eligible programs.</p>
    #   @return [Types::SoftwareRevenue]
    # @!attribute client_token
    #   <p>Required to be unique, and should be unchanging, it can be randomly generated or a meaningful string.</p> <p>Default: None</p> <p>Best practice: To help ensure uniqueness and avoid conflicts, use a Universally Unique Identifier (UUID) as the <code>ClientToken</code>. You can use standard libraries from most programming languages to generate this. If you use the same client token, the API returns the following error: "Conflicting client token submitted for a new request body."</p>
    #   @return [String]
    # @!attribute life_cycle
    #   <p>An object that contains lifecycle details for the <code>Opportunity</code>.</p>
    #   @return [Types::LifeCycle]
    # @!attribute origin
    #   <p>Specifies the origin of the opportunity, indicating if it was sourced from Amazon Web Services or the partner. For all opportunities created with <code>Catalog: AWS</code>, this field must only be <code>Partner Referral</code>. However, when using <code>Catalog: Sandbox</code>, you can set this field to <code>AWS Referral</code> to simulate Amazon Web Services referral creation. This allows Amazon Web Services-originated flows testing in the sandbox catalog.</p>
    #   @return [String]
    # @!attribute opportunity_team
    #   <p>Represents the internal team handling the opportunity. Specify collaborating members of this opportunity who are within the partner's organization.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    #   @return [Array<Types::Tag>]
    class CreateOpportunityRequest < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :client_token,
      :life_cycle,
      :origin,
      :opportunity_team,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Read-only, system-generated <code>Opportunity</code> unique identifier. Amazon Web Services creates this identifier, and it's used for all subsequent opportunity actions, such as updates, associations, and submissions. It helps to ensure that each opportunity is accurately tracked and managed.</p>
    #   @return [String]
    # @!attribute partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload sent back to the partner.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p> <code>DateTime</code> when the opportunity was last modified. When the <code>Opportunity</code> is created, its value is <code>CreatedDate</code>.</p>
    #   @return [Time]
    class CreateOpportunityResponse < Struct.new(
      :id,
      :partner_opportunity_identifier,
      :last_modified_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which to create the snapshot job. Valid values are <code>AWS</code> and <code> Sandbox</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A client-generated UUID used for idempotency check. The token helps prevent duplicate job creations.</p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p>Specifies the identifier of the engagement associated with the resource to be snapshotted.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource for which the snapshot job is being created. Must be one of the supported resource types i.e. <code>Opportunity</code> </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Specifies the identifier of the specific resource to be snapshotted. The format depends on the <code> ResourceType</code>.</p>
    #   @return [String]
    # @!attribute resource_snapshot_template_identifier
    #   <p>Specifies the name of the template that defines the schema for the snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    #   @return [Array<Types::Tag>]
    class CreateResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :client_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the created snapshot job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created snapshot job.</p>
    #   @return [String]
    class CreateResourceSnapshotJobResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p> Specifies the catalog where the snapshot is created. Valid values are <code>AWS</code> and <code>Sandbox</code>. </p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p> The unique identifier of the engagement associated with this snapshot. This field links the snapshot to a specific engagement context. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Specifies the type of resource for which the snapshot is being created. This field determines the structure and content of the snapshot. Must be one of the supported resource types, such as: <code>Opportunity</code>. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p> The unique identifier of the specific resource to be snapshotted. The format and constraints of this identifier depend on the <code>ResourceType</code> specified. For example: For <code>Opportunity</code> type, it will be an opportunity ID. </p>
    #   @return [String]
    # @!attribute resource_snapshot_template_identifier
    #   <p> The name of the template that defines the schema for the snapshot. This template determines which subset of the resource data will be included in the snapshot. Must correspond to an existing and valid template for the specified <code>ResourceType</code>. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> Specifies a unique, client-generated UUID to ensure that the request is handled exactly once. This token helps prevent duplicate snapshot creations. </p>
    #   @return [String]
    class CreateResourceSnapshotRequest < Struct.new(
      :catalog,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> Specifies the Amazon Resource Name (ARN) that uniquely identifies the snapshot created. </p>
    #   @return [String]
    # @!attribute revision
    #   <p> Specifies the revision number of the created snapshot. This field provides important information about the snapshot's place in the sequence of snapshots for the given resource. </p>
    #   @return [Integer]
    class CreateResourceSnapshotResponse < Struct.new(
      :arn,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module CurrencyCode
      USD = 'USD'
      EUR = 'EUR'
      GBP = 'GBP'
      AUD = 'AUD'
      CAD = 'CAD'
      CNY = 'CNY'
      NZD = 'NZD'
      INR = 'INR'
      JPY = 'JPY'
      CHF = 'CHF'
      SEK = 'SEK'
      AED = 'AED'
      AFN = 'AFN'
      ALL = 'ALL'
      AMD = 'AMD'
      ANG = 'ANG'
      AOA = 'AOA'
      ARS = 'ARS'
      AWG = 'AWG'
      AZN = 'AZN'
      BAM = 'BAM'
      BBD = 'BBD'
      BDT = 'BDT'
      BGN = 'BGN'
      BHD = 'BHD'
      BIF = 'BIF'
      BMD = 'BMD'
      BND = 'BND'
      BOB = 'BOB'
      BOV = 'BOV'
      BRL = 'BRL'
      BSD = 'BSD'
      BTN = 'BTN'
      BWP = 'BWP'
      BYN = 'BYN'
      BZD = 'BZD'
      CDF = 'CDF'
      CHE = 'CHE'
      CHW = 'CHW'
      CLF = 'CLF'
      CLP = 'CLP'
      COP = 'COP'
      COU = 'COU'
      CRC = 'CRC'
      CUC = 'CUC'
      CUP = 'CUP'
      CVE = 'CVE'
      CZK = 'CZK'
      DJF = 'DJF'
      DKK = 'DKK'
      DOP = 'DOP'
      DZD = 'DZD'
      EGP = 'EGP'
      ERN = 'ERN'
      ETB = 'ETB'
      FJD = 'FJD'
      FKP = 'FKP'
      GEL = 'GEL'
      GHS = 'GHS'
      GIP = 'GIP'
      GMD = 'GMD'
      GNF = 'GNF'
      GTQ = 'GTQ'
      GYD = 'GYD'
      HKD = 'HKD'
      HNL = 'HNL'
      HRK = 'HRK'
      HTG = 'HTG'
      HUF = 'HUF'
      IDR = 'IDR'
      ILS = 'ILS'
      IQD = 'IQD'
      IRR = 'IRR'
      ISK = 'ISK'
      JMD = 'JMD'
      JOD = 'JOD'
      KES = 'KES'
      KGS = 'KGS'
      KHR = 'KHR'
      KMF = 'KMF'
      KPW = 'KPW'
      KRW = 'KRW'
      KWD = 'KWD'
      KYD = 'KYD'
      KZT = 'KZT'
      LAK = 'LAK'
      LBP = 'LBP'
      LKR = 'LKR'
      LRD = 'LRD'
      LSL = 'LSL'
      LYD = 'LYD'
      MAD = 'MAD'
      MDL = 'MDL'
      MGA = 'MGA'
      MKD = 'MKD'
      MMK = 'MMK'
      MNT = 'MNT'
      MOP = 'MOP'
      MRU = 'MRU'
      MUR = 'MUR'
      MVR = 'MVR'
      MWK = 'MWK'
      MXN = 'MXN'
      MXV = 'MXV'
      MYR = 'MYR'
      MZN = 'MZN'
      NAD = 'NAD'
      NGN = 'NGN'
      NIO = 'NIO'
      NOK = 'NOK'
      NPR = 'NPR'
      OMR = 'OMR'
      PAB = 'PAB'
      PEN = 'PEN'
      PGK = 'PGK'
      PHP = 'PHP'
      PKR = 'PKR'
      PLN = 'PLN'
      PYG = 'PYG'
      QAR = 'QAR'
      RON = 'RON'
      RSD = 'RSD'
      RUB = 'RUB'
      RWF = 'RWF'
      SAR = 'SAR'
      SBD = 'SBD'
      SCR = 'SCR'
      SDG = 'SDG'
      SGD = 'SGD'
      SHP = 'SHP'
      SLL = 'SLL'
      SOS = 'SOS'
      SRD = 'SRD'
      SSP = 'SSP'
      STN = 'STN'
      SVC = 'SVC'
      SYP = 'SYP'
      SZL = 'SZL'
      THB = 'THB'
      TJS = 'TJS'
      TMT = 'TMT'
      TND = 'TND'
      TOP = 'TOP'
      TRY = 'TRY'
      TTD = 'TTD'
      TWD = 'TWD'
      TZS = 'TZS'
      UAH = 'UAH'
      UGX = 'UGX'
      USN = 'USN'
      UYI = 'UYI'
      UYU = 'UYU'
      UZS = 'UZS'
      VEF = 'VEF'
      VND = 'VND'
      VUV = 'VUV'
      WST = 'WST'
      XAF = 'XAF'
      XCD = 'XCD'
      XDR = 'XDR'
      XOF = 'XOF'
      XPF = 'XPF'
      XSU = 'XSU'
      XUA = 'XUA'
      YER = 'YER'
      ZAR = 'ZAR'
      ZMW = 'ZMW'
      ZWL = 'ZWL'
    end

    # <p>An object that contains the customer's <code>Account</code> and <code>Contact</code>.</p>
    # @!attribute account
    #   <p>An object that contains the customer's account details.</p>
    #   @return [Types::Account]
    # @!attribute contacts
    #   <p>Represents the contact details for individuals associated with the customer of the <code>Opportunity</code>. This field captures relevant contacts, including decision-makers, influencers, and technical stakeholders within the customer organization. These contacts are key to progressing the opportunity.</p>
    #   @return [Array<Types::Contact>]
    class Customer < Struct.new(
      :account,
      :contacts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The CustomerProjects structure in Engagements offers a flexible framework for managing customer-project relationships. It supports multiple customers per Engagement and multiple projects per customer, while also allowing for customers without projects and projects without specific customers. </p> <p>All Engagement members have full visibility of customers and their associated projects, enabling the capture of relevant context even when project details are not fully defined. This structure also facilitates targeted invitations, allowing partners to focus on specific customers and their business problems when sending Engagement invitations. </p>
    # @!attribute customer
    #   <p>Contains details about the customer associated with the Engagement Invitation, including company information and industry.</p>
    #   @return [Types::EngagementCustomer]
    # @!attribute project
    #   <p>Information about the customer project associated with the Engagement.</p>
    #   @return [Types::EngagementCustomerProjectDetails]
    class CustomerProjectsContext < Struct.new(
      :customer,
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains a <code>Customer</code> object's subset of fields.</p>
    # @!attribute account
    #   <p>An object that contains a customer's account details.</p>
    #   @return [Types::AccountSummary]
    class CustomerSummary < Struct.new(
      :account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p> Specifies the catalog from which to delete the snapshot job. Valid values are <code>AWS</code> and <code>Sandbox</code>. </p>
    #   @return [String]
    # @!attribute resource_snapshot_job_identifier
    #   <p> The unique identifier of the resource snapshot job to be deleted. </p>
    #   @return [String]
    class DeleteResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeliveryModel
      SAAS_OR_PAAS = 'SaaS or PaaS'
      BYOL_OR_AMI = 'BYOL or AMI'
      MANAGED_SERVICES = 'Managed Services'
      PROFESSIONAL_SERVICES = 'Professional Services'
      RESELL = 'Resell'
      OTHER = 'Other'
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity disassociation is made in. Use <code>AWS</code> to disassociate opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    #   @return [String]
    # @!attribute opportunity_identifier
    #   <p>The opportunity's unique identifier for when you want to disassociate it from related entities. This identifier helps to ensure that the correct opportunity is updated.</p> <p>Validation: Ensure that the provided identifier corresponds to an existing opportunity in the Amazon Web Services system because incorrect identifiers result in an error and no changes are made.</p>
    #   @return [String]
    # @!attribute related_entity_type
    #   <p>The type of the entity that you're disassociating from the opportunity. When you specify the entity type, it helps the system correctly process the disassociation request to ensure that the right connections are removed.</p> <p>Examples of entity types include Partner Solution, Amazon Web Services product, and Amazon Web Services Marketplaceoffer. Ensure that the value matches one of the expected entity types.</p> <p>Validation: Provide a valid entity type to help ensure successful disassociation. An invalid or incorrect entity type results in an error.</p>
    #   @return [String]
    # @!attribute related_entity_identifier
    #   <p>The related entity's identifier that you want to disassociate from the opportunity. Depending on the type of entity, this could be a simple identifier or an Amazon Resource Name (ARN) for entities managed through Amazon Web Services Marketplace.</p> <p>For Amazon Web Services Marketplace entities, use the Amazon Web Services Marketplace API to obtain the necessary ARNs. For guidance on retrieving these ARNs, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html"> Amazon Web Services MarketplaceUsing the Amazon Web Services Marketplace Catalog API</a>.</p> <p>Validation: Ensure the identifier or ARN is valid and corresponds to an existing entity. An incorrect or invalid identifier results in an error.</p>
    #   @return [String]
    class DisassociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_type,
      :related_entity_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides detailed context information for an Engagement. This structure allows for specifying the type of context and its associated payload. </p>
    # @!attribute type
    #   <p>Specifies the type of Engagement context. Valid values are "CustomerProject" or "Document", indicating whether the context relates to a customer project or a document respectively. </p>
    #   @return [String]
    # @!attribute payload
    #   <p>Contains the specific details of the Engagement context. The structure of this payload varies depending on the Type field. </p>
    #   @return [Types::EngagementContextPayload]
    class EngagementContextDetails < Struct.new(
      :type,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the payload of an Engagement context. The structure of this payload varies based on the context type specified in the EngagementContextDetails. </p>
    # @!attribute customer_project
    #   <p>Contains detailed information about a customer project when the context type is "CustomerProject". This field is present only when the Type in EngagementContextDetails is set to "CustomerProject". </p>
    #   @return [Types::CustomerProjectsContext]
    class EngagementContextPayload < Struct.new(
      :customer_project,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CustomerProject < EngagementContextPayload; end
      class Unknown < EngagementContextPayload; end
    end

    module EngagementContextType
      CUSTOMER_PROJECT = 'CustomerProject'
    end

    # <p>Contains details about the customer associated with the Engagement Invitation, including company information and industry.</p>
    # @!attribute industry
    #   <p>Specifies the industry to which the customer’s company belongs. This field helps categorize the opportunity based on the customer’s business sector.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>Represents the name of the customer’s company associated with the Engagement Invitation. This field is used to identify the customer.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>Provides the website URL of the customer’s company. This field helps partners verify the legitimacy and size of the customer organization.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>Indicates the country in which the customer’s company operates. This field is useful for understanding regional requirements or compliance needs.</p>
    #   @return [String]
    class EngagementCustomer < Struct.new(
      :industry,
      :company_name,
      :website_url,
      :country_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides comprehensive details about a customer project associated with an Engagement. This may include information such as project goals, timelines, and specific customer requirements. </p>
    # @!attribute title
    #   <p>The title of the project.</p>
    #   @return [String]
    # @!attribute business_problem
    #   <p>A description of the business problem the project aims to solve.</p>
    #   @return [String]
    # @!attribute target_completion_date
    #   <p>The target completion date for the customer's project.</p>
    #   @return [String]
    class EngagementCustomerProjectDetails < Struct.new(
      :title,
      :business_problem,
      :target_completion_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EngagementInvitationPayloadType
      OPPORTUNITY_INVITATION = 'OpportunityInvitation'
    end

    # <p>Provides a summarized view of the Engagement Invitation, including details like the identifier, status, and sender. This summary helps partners track and manage AWS originated opportunities.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Engagement Invitation. The ARN is a unique identifier that allows partners to reference the invitation in their system and manage its lifecycle.</p>
    #   @return [String]
    # @!attribute payload_type
    #   <p>Describes the type of payload associated with the Engagement Invitation, such as <code>Opportunity</code> or <code>MarketplaceOffer</code>. This helps partners understand the nature of the engagement request from AWS.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Represents the unique identifier of the Engagement Invitation. This identifier is used to track the invitation and to manage responses like acceptance or rejection.</p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p> The identifier of the Engagement associated with this invitation. This links the invitation to its parent Engagement. </p>
    #   @return [String]
    # @!attribute engagement_title
    #   <p>Provides a short title or description of the Engagement Invitation. This title helps partners quickly identify and differentiate between multiple engagement opportunities.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Represents the current status of the Engagement Invitation, such as <code>Pending</code>, <code>Accepted</code>, or <code>Rejected</code>. The status helps track the progress and response to the invitation.</p>
    #   @return [String]
    # @!attribute invitation_date
    #   <p>Indicates the date when the Engagement Invitation was sent to the partner. This provides context for when the opportunity was shared and helps in tracking the timeline for engagement.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>Indicates the date and time when the Engagement Invitation will expire. After this date, the invitation can no longer be accepted, and the opportunity will be unavailable to the partner.</p>
    #   @return [Time]
    # @!attribute sender_aws_account_id
    #   <p>Specifies the AWS account ID of the sender who initiated the Engagement Invitation. This allows the partner to identify the AWS entity or representative responsible for sharing the opportunity.</p>
    #   @return [String]
    # @!attribute sender_company_name
    #   <p>Indicates the name of the company or AWS division that sent the Engagement Invitation. This information is useful for partners to know which part of AWS is requesting engagement.</p>
    #   @return [String]
    # @!attribute receiver
    #   <p>Specifies the partner company or individual that received the Engagement Invitation. This field is important for tracking who the invitation was sent to within the partner organization.</p>
    #   @return [Types::Receiver]
    # @!attribute catalog
    #   <p>Specifies the catalog in which the Engagement Invitation resides. This can be either the <code>AWS</code> or <code>Sandbox</code> catalog, indicating whether the opportunity is live or being tested.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>Identifies the role of the caller in the engagement invitation.</p>
    #   @return [String]
    class EngagementInvitationSummary < Struct.new(
      :arn,
      :payload_type,
      :id,
      :engagement_id,
      :engagement_title,
      :status,
      :invitation_date,
      :expiration_date,
      :sender_aws_account_id,
      :sender_company_name,
      :receiver,
      :catalog,
      :participant_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Engagement members are the participants in an Engagement, which is likely a collaborative project or business opportunity within the AWS partner network. Members can be different partner organizations or AWS accounts that are working together on a specific engagement. </p> <p>Each member is represented by their AWS Account ID, Company Name, and associated details. Members have a status within the Engagement (PENDING, ACCEPTED, REJECTED, or WITHDRAWN), indicating their current state of participation. Only existing members of an Engagement can view the list of other members. This implies a level of privacy and access control within the Engagement structure. </p>
    # @!attribute company_name
    #   <p>The official name of the member's company or organization.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The URL of the member company's website. This offers a way to find more information about the member organization and serves as an additional identifier. </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>This is the unique identifier for the AWS account associated with the member organization. It's used for AWS-related operations and identity verification. </p>
    #   @return [String]
    class EngagementMember < Struct.new(
      :company_name,
      :website_url,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The EngagementMemberSummary provides a snapshot of essential information about participants in an AWS Partner Central Engagement. This compact data structure encapsulates key details of each member, facilitating efficient collaboration and management within the Engagement. </p>
    # @!attribute company_name
    #   <p>The official name of the member's company or organization.</p>
    #   @return [String]
    # @!attribute website_url
    #   <p>The URL of the member company's website. This offers a way to find more information about the member organization and serves as an additional identifier. </p>
    #   @return [String]
    class EngagementMemberSummary < Struct.new(
      :company_name,
      :website_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> This provide a streamlined view of the relationships between engagements and resources. These summaries offer a crucial link between collaborative engagements and the specific resources involved, such as opportunities.These summaries are particularly valuable for partners navigating complex engagements with multiple resources. They enable quick insights into resource distribution across engagements, support efficient resource management, and help maintain a clear overview of collaborative activities. </p>
    # @!attribute catalog
    #   <p> Indicates the environment in which the resource and engagement exist. </p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p> A unique identifier for the engagement associated with the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Categorizes the type of resource associated with the engagement. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> A unique identifier for the specific resource. Varies depending on the resource type. </p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The AWS account ID of the entity that owns the resource. Identifies the account responsible for or having primary control over the resource. </p>
    #   @return [String]
    class EngagementResourceAssociationSummary < Struct.new(
      :catalog,
      :engagement_id,
      :resource_type,
      :resource_id,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EngagementScore
      HIGH = 'High'
      MEDIUM = 'Medium'
      LOW = 'Low'
    end

    # <p>Specifies the sorting parameters for listing Engagements.</p>
    # @!attribute sort_order
    #   <p>The order in which to sort the results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field by which to sort the results.</p>
    #   @return [String]
    class EngagementSort < Struct.new(
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EngagementSortName
      CreatedDate = 'CreatedDate'
    end

    # <p>An object that contains an <code>Engagement</code>'s subset of fields. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created Engagement.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the Engagement.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the Engagement.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the Engagement was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The AWS Account ID of the Engagement creator.</p>
    #   @return [String]
    # @!attribute member_count
    #   <p>The number of members in the Engagement.</p>
    #   @return [Integer]
    class EngagementSummary < Struct.new(
      :arn,
      :id,
      :title,
      :created_at,
      :created_by,
      :member_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides an estimate of the revenue that the partner is expected to generate from the opportunity. This information helps partners assess the financial value of the project.</p>
    # @!attribute amount
    #   <p>Represents the estimated monthly revenue that the partner expects to earn from the opportunity. This helps in forecasting financial returns.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Indicates the currency in which the revenue estimate is provided. This helps in understanding the financial impact across different markets.</p>
    #   @return [String]
    # @!attribute frequency
    #   <p>Indicates how frequently the customer is expected to spend the projected amount. Only the value <code>Monthly</code> is allowed for the <code>Frequency</code> field, representing recurring monthly spend.</p>
    #   @return [String]
    # @!attribute target_company
    #   <p>Specifies the name of the partner company that is expected to generate revenue from the opportunity. This field helps track the partner’s involvement in the opportunity. This field only accepts the value <code>AWS</code>. If any other value is provided, the system will automatically set it to <code>AWS</code>.</p>
    #   @return [String]
    # @!attribute estimation_url
    #   <p>A URL providing additional information or context about the spend estimation.</p>
    #   @return [String]
    class ExpectedCustomerSpend < Struct.new(
      :amount,
      :currency_code,
      :frequency,
      :target_company,
      :estimation_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the AWS Opportunity is located. Accepted values include <code>AWS</code> for production opportunities or <code>Sandbox</code> for testing purposes. The catalog determines which environment the opportunity data is pulled from.</p>
    #   @return [String]
    # @!attribute related_opportunity_identifier
    #   <p>The unique identifier for the related partner opportunity. Use this field to correlate an AWS opportunity with its corresponding partner opportunity.</p>
    #   @return [String]
    class GetAwsOpportunitySummaryRequest < Struct.new(
      :catalog,
      :related_opportunity_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the AWS Opportunity exists. This is the environment (e.g., <code>AWS</code> or <code>Sandbox</code>) where the opportunity is being managed.</p>
    #   @return [String]
    # @!attribute related_opportunity_id
    #   <p>Provides the unique identifier of the related partner opportunity, allowing partners to link the AWS Opportunity to their corresponding opportunity in their CRM system.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>Specifies whether the AWS Opportunity originated from AWS or the partner. This helps distinguish between opportunities that were sourced by AWS and those referred by the partner.</p>
    #   @return [String]
    # @!attribute involvement_type
    #   <p>Specifies the type of involvement AWS has in the opportunity, such as direct cosell or advisory support. This field helps partners understand the role AWS plays in advancing the opportunity.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>Defines the visibility level for the AWS Opportunity. Use <code>Full</code> visibility for most cases, while <code>Limited</code> visibility is reserved for special programs or sensitive opportunities.</p>
    #   @return [String]
    # @!attribute life_cycle
    #   <p>Contains lifecycle information for the AWS Opportunity, including review status, stage, and target close date. This field is crucial for partners to monitor the progression of the opportunity.</p>
    #   @return [Types::AwsOpportunityLifeCycle]
    # @!attribute opportunity_team
    #   <p>Details the AWS opportunity team, including members involved. This information helps partners know who from AWS is engaged and what their role is.</p>
    #   @return [Array<Types::AwsTeamMember>]
    # @!attribute insights
    #   <p>Provides insights into the AWS Opportunity, including engagement score and recommended actions that AWS suggests for the partner.</p>
    #   @return [Types::AwsOpportunityInsights]
    # @!attribute involvement_type_change_reason
    #   <p>Provides a reason for any changes in the involvement type of AWS in the opportunity. This field is used to track why the level of AWS engagement has changed from <code>For Visibility Only</code> to <code>Co-sell</code> offering transparency into the partnership dynamics.</p>
    #   @return [String]
    # @!attribute related_entity_ids
    #   <p>Lists related entity identifiers, such as AWS products or partner solutions, associated with the AWS Opportunity. These identifiers provide additional context and help partners understand which AWS services are involved.</p>
    #   @return [Types::AwsOpportunityRelatedEntities]
    # @!attribute customer
    #   <p>Provides details about the customer associated with the AWS Opportunity, including account information, industry, and other customer data. These details help partners understand the business context of the opportunity.</p>
    #   @return [Types::AwsOpportunityCustomer]
    # @!attribute project
    #   <p>Provides details about the project associated with the AWS Opportunity, including the customer’s business problem, expected outcomes, and project scope. This information is crucial for understanding the broader context of the opportunity.</p>
    #   @return [Types::AwsOpportunityProject]
    class GetAwsOpportunitySummaryResponse < Struct.new(
      :catalog,
      :related_opportunity_id,
      :origin,
      :involvement_type,
      :visibility,
      :life_cycle,
      :opportunity_team,
      :insights,
      :involvement_type_change_reason,
      :related_entity_ids,
      :customer,
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. The field accepts values from the predefined set: <code>AWS</code> for live operations or <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Specifies the unique identifier for the retrieved engagement invitation.</p>
    #   @return [String]
    class GetEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the engagement invitation.</p>
    #   @return [String]
    # @!attribute payload_type
    #   <p>The type of payload contained in the engagement invitation, indicating what data or context the payload covers.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique identifier assigned to the engagement invitation being retrieved.</p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p>The identifier of the engagement associated with this invitation.This ID links the invitation to its corresponding engagement.</p>
    #   @return [String]
    # @!attribute engagement_title
    #   <p>The title of the engagement invitation, summarizing the purpose or objectives of the opportunity shared by AWS.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the engagement invitation.</p>
    #   @return [String]
    # @!attribute invitation_date
    #   <p>The date when the engagement invitation was sent to the partner.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>Indicates the date on which the engagement invitation will expire if not accepted by the partner.</p>
    #   @return [Time]
    # @!attribute sender_aws_account_id
    #   <p>Specifies the AWS Account ID of the sender, which identifies the AWS team responsible for sharing the engagement invitation.</p>
    #   @return [String]
    # @!attribute sender_company_name
    #   <p>The name of the AWS organization or team that sent the engagement invitation.</p>
    #   @return [String]
    # @!attribute receiver
    #   <p>Information about the partner organization or team that received the engagement invitation, including contact details and identifiers.</p>
    #   @return [Types::Receiver]
    # @!attribute catalog
    #   <p>Indicates the catalog from which the engagement invitation details are retrieved. This field helps in identifying the appropriate catalog (e.g., <code>AWS</code> or <code>Sandbox</code>) used in the request.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>If the engagement invitation was rejected, this field specifies the reason provided by the partner for the rejection.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Details of the engagement invitation payload, including specific data relevant to the invitation's contents, such as customer information and opportunity insights.</p>
    #   @return [Types::Payload]
    # @!attribute invitation_message
    #   <p>The message sent to the invited partner when the invitation was created.</p>
    #   @return [String]
    # @!attribute engagement_description
    #   <p>The description of the engagement associated with this invitation.</p>
    #   @return [String]
    # @!attribute existing_members
    #   <p>A list of active members currently part of the Engagement. This array contains a maximum of 10 members, each represented by an object with the following properties.</p> <ul> <li> <p>CompanyName: The name of the member's company.</p> </li> <li> <p>WebsiteUrl: The website URL of the member's company.</p> </li> </ul>
    #   @return [Array<Types::EngagementMemberSummary>]
    class GetEngagementInvitationResponse < Struct.new(
      :arn,
      :payload_type,
      :id,
      :engagement_id,
      :engagement_title,
      :status,
      :invitation_date,
      :expiration_date,
      :sender_aws_account_id,
      :sender_company_name,
      :receiver,
      :catalog,
      :rejection_reason,
      :payload,
      :invitation_message,
      :engagement_description,
      :existing_members,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the engagement request. Valid values are <code>AWS</code> and <code>Sandbox</code>.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Specifies the identifier of the Engagement record to retrieve.</p>
    #   @return [String]
    class GetEngagementRequest < Struct.new(
      :catalog,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique resource identifier of the engagement retrieved.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the engagement retrieved.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the engagement. It provides a brief, descriptive name for the engagement that is meaningful and easily recognizable.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A more detailed description of the engagement. This provides additional context or information about the engagement's purpose or scope.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the Engagement was created, presented in ISO 8601 format (UTC). For example: "2023-05-01T20:37:46Z". This timestamp helps track the lifecycle of the Engagement.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The AWS account ID of the user who originally created the engagement. This field helps in tracking the origin of the engagement.</p>
    #   @return [String]
    # @!attribute member_count
    #   <p>Specifies the current count of members participating in the Engagement. This count includes all active members regardless of their roles or permissions within the Engagement.</p>
    #   @return [Integer]
    # @!attribute contexts
    #   <p>A list of context objects associated with the engagement. Each context provides additional information related to the Engagement, such as customer projects or documents.</p>
    #   @return [Array<Types::EngagementContextDetails>]
    class GetEngagementResponse < Struct.new(
      :id,
      :arn,
      :title,
      :description,
      :created_at,
      :created_by,
      :member_count,
      :contexts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is fetched from. Use <code>AWS</code> to retrieve opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> to retrieve opportunities in a secure, isolated testing environment.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    #   @return [String]
    class GetOpportunityRequest < Struct.new(
      :catalog,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity information is retrieved from. Use <code>AWS</code> to retrieve opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> to retrieve opportunities in a secure and isolated testing environment.</p>
    #   @return [String]
    # @!attribute primary_needs_from_aws
    #   <p>Identifies the type of support the partner needs from Amazon Web Services.</p> <p>Valid values:</p> <ul> <li> <p>Cosell—Architectural Validation: Confirmation from Amazon Web Services that the partner's proposed solution architecture is aligned with Amazon Web Services best practices and poses minimal architectural risks.</p> </li> <li> <p>Cosell—Business Presentation: Request Amazon Web Services seller's participation in a joint customer presentation.</p> </li> <li> <p>Cosell—Competitive Information: Access to Amazon Web Services competitive resources and support for the partner's proposed solution.</p> </li> <li> <p>Cosell—Pricing Assistance: Connect with an Amazon Web Services seller for support situations where a partner may be receiving an upfront discount on a service (for example: EDP deals).</p> </li> <li> <p>Cosell—Technical Consultation: Connect with an Amazon Web Services Solutions Architect to address the partner's questions about the proposed solution.</p> </li> <li> <p>Cosell—Total Cost of Ownership Evaluation: Assistance with quoting different cost savings of proposed solutions on Amazon Web Services versus on-premises or a traditional hosting environment.</p> </li> <li> <p>Cosell—Deal Support: Request Amazon Web Services seller's support to progress the opportunity (for example: joint customer call, strategic positioning).</p> </li> <li> <p>Cosell—Support for Public Tender/RFx: Opportunity related to the public sector where the partner needs Amazon Web Services RFx support.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute national_security
    #   <p>Indicates whether the <code>Opportunity</code> pertains to a national security project. This field must be set to <code>true</code> only when the customer's industry is <i>Government</i>. Additional privacy and security measures apply during the review and management process for opportunities marked as <code>NationalSecurity</code>.</p>
    #   @return [String]
    # @!attribute partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload sent back to the partner.</p>
    #   @return [String]
    # @!attribute customer
    #   <p>Specifies details of the customer associated with the <code>Opportunity</code>.</p>
    #   @return [Types::Customer]
    # @!attribute project
    #   <p>An object that contains project details summary for the <code>Opportunity</code>.</p>
    #   @return [Types::Project]
    # @!attribute opportunity_type
    #   <p>Specifies the opportunity type as renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, which helps to ensure service continuity.</p> </li> <li> <p>Expansion opportunity: Represents an opportunity to expand the scope of a customer's contract or subscription, either by adding new services or increasing the volume of existing services.</p> </li> </ul>
    #   @return [String]
    # @!attribute marketing
    #   <p>An object that contains marketing details for the <code>Opportunity</code>.</p>
    #   @return [Types::Marketing]
    # @!attribute software_revenue
    #   <p>Specifies details of a customer's procurement terms. Required only for partners in eligible programs.</p>
    #   @return [Types::SoftwareRevenue]
    # @!attribute id
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the opportunity.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p> <code>DateTime</code> when the opportunity was last modified.</p>
    #   @return [Time]
    # @!attribute created_date
    #   <p> <code>DateTime</code> when the <code>Opportunity</code> was last created.</p>
    #   @return [Time]
    # @!attribute related_entity_identifiers
    #   <p>Provides information about the associations of other entities with the opportunity. These entities include identifiers for <code>AWSProducts</code>, <code>Partner Solutions</code>, and <code>AWSMarketplaceOffers</code>.</p>
    #   @return [Types::RelatedEntityIdentifiers]
    # @!attribute life_cycle
    #   <p>An object that contains lifecycle details for the <code>Opportunity</code>.</p>
    #   @return [Types::LifeCycle]
    # @!attribute opportunity_team
    #   <p>Represents the internal team handling the opportunity. Specify the members involved in collaborating on this opportunity within the partner's organization.</p>
    #   @return [Array<Types::Contact>]
    class GetOpportunityResponse < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :id,
      :arn,
      :last_modified_date,
      :created_date,
      :related_entity_identifiers,
      :life_cycle,
      :opportunity_team,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p> AWS: Retrieves the snapshot job from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the snapshot job from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    #   @return [String]
    # @!attribute resource_snapshot_job_identifier
    #   <p>The unique identifier of the resource snapshot job to be retrieved. This identifier is crucial for pinpointing the specific job you want to query. </p>
    #   @return [String]
    class GetResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which the snapshot job was created. This will match the Catalog specified in the request. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the snapshot job. This matches the ResourceSnapshotJobIdentifier provided in the request. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot job. This globally unique identifier can be used for resource-specific operations across AWS services. </p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p>The identifier of the engagement associated with this snapshot job. This links the job to a specific engagement context. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource being snapshotted. This would have "Opportunity" as a value as it is dependent on the supported resource type.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the specific resource being snapshotted. The format might vary depending on the ResourceType. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource being snapshotted. This provides a globally unique identifier for the resource across AWS. </p>
    #   @return [String]
    # @!attribute resource_snapshot_template_name
    #   <p>The name of the template used for creating the snapshot. This is the same as the template name. It defines the structure and content of the snapshot.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the snapshot job was created in ISO 8601 format (UTC). Example: "2023-05-01T20:37:46Z" </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the snapshot job. Valid values:</p> <ul> <li> <p>STOPPED: The job is not currently running.</p> </li> <li> <p>RUNNING: The job is actively executing.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_successful_execution_date
    #   <p>The date and time of the last successful execution of the job, in ISO 8601 format (UTC). Example: "2023-05-01T20:37:46Z" </p>
    #   @return [Time]
    # @!attribute last_failure
    #   <p>If the job has encountered any failures, this field contains the error message from the most recent failure. This can be useful for troubleshooting issues with the job. </p>
    #   @return [String]
    class GetResourceSnapshotJobResponse < Struct.new(
      :catalog,
      :id,
      :arn,
      :engagement_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :resource_snapshot_template_name,
      :created_at,
      :status,
      :last_successful_execution_date,
      :last_failure,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Retrieves the snapshot from the production AWS environment.</p> </li> <li> <p>Sandbox: Retrieves the snapshot from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p>The unique identifier of the engagement associated with the snapshot. This field links the snapshot to a specific engagement context.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Specifies the type of resource that was snapshotted. This field determines the structure and content of the snapshot payload. Valid value includes:<code>Opportunity</code>: For opportunity-related data. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The unique identifier of the specific resource that was snapshotted. The format and constraints of this identifier depend on the ResourceType specified. For <code>Opportunity</code> type, it will be an <code>opportunity ID</code> </p>
    #   @return [String]
    # @!attribute resource_snapshot_template_identifier
    #   <p>he name of the template that defines the schema for the snapshot. This template determines which subset of the resource data is included in the snapshot and must correspond to an existing and valid template for the specified <code>ResourceType</code>.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>Specifies which revision of the snapshot to retrieve. If omitted returns the latest revision.</p>
    #   @return [Integer]
    class GetResourceSnapshotRequest < Struct.new(
      :catalog,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :revision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which the snapshot was created. Matches the Catalog specified in the request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource snapshot.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The AWS account ID of the principal (user or role) who created the snapshot. This helps in tracking the origin of the snapshot. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the snapshot was created, in ISO 8601 format (e.g., "2023-06-01T14:30:00Z"). This allows for precise tracking of when the snapshot was taken. </p>
    #   @return [Time]
    # @!attribute engagement_id
    #   <p>The identifier of the engagement associated with this snapshot. Matches the EngagementIdentifier specified in the request. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was snapshotted. Matches the ResourceType specified in the request.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the specific resource that was snapshotted. Matches the ResourceIdentifier specified in the request.</p>
    #   @return [String]
    # @!attribute resource_snapshot_template_name
    #   <p>The name of the view used for this snapshot. This is the same as the template name.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number of this snapshot. This is a positive integer that is sequential and unique within the context of a resource view.</p>
    #   @return [Integer]
    # @!attribute payload
    #   <p> Represents the payload of a resource snapshot. This structure is designed to accommodate different types of resource snapshots, currently supporting opportunity summaries. </p>
    #   @return [Types::ResourceSnapshotPayload]
    class GetResourceSnapshotResponse < Struct.new(
      :catalog,
      :arn,
      :created_by,
      :created_at,
      :engagement_id,
      :resource_type,
      :resource_id,
      :resource_snapshot_template_name,
      :revision,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the settings are defined. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    class GetSellingSystemSettingsRequest < Struct.new(
      :catalog,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the settings are defined. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute resource_snapshot_job_role_arn
    #   <p>Specifies the ARN of the IAM Role used for resource snapshot job executions.</p>
    #   @return [String]
    class GetSellingSystemSettingsResponse < Struct.new(
      :catalog,
      :resource_snapshot_job_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Industry
      AEROSPACE_SATELLITE = 'Aerospace'
      AGRICULTURE = 'Agriculture'
      AUTOMOTIVE = 'Automotive'
      COMPUTERS_ELECTRONICS = 'Computers and Electronics'
      CONSUMER_GOODS = 'Consumer Goods'
      EDUCATION = 'Education'
      ENERGY_OIL_GAS = 'Energy - Oil and Gas'
      ENERGY_POWER_UTILITIES = 'Energy - Power and Utilities'
      FINANCIAL_SERVICES = 'Financial Services'
      GAMING = 'Gaming'
      GOVERNMENT = 'Government'
      HEALTHCARE = 'Healthcare'
      HOSPITALITY = 'Hospitality'
      LIFE_SCIENCES = 'Life Sciences'
      MANUFACTURING = 'Manufacturing'
      MARKETING_ADVERTISING = 'Marketing and Advertising'
      MEDIA_ENTERTAINMENT = 'Media and Entertainment'
      MINING = 'Mining'
      NON_PROFIT_ORGANIZATION = 'Non-Profit Organization'
      PROFESSIONAL_SERVICES = 'Professional Services'
      REALESTATE_CONSTRUCTION = 'Real Estate and Construction'
      RETAIL = 'Retail'
      SOFTWARE_INTERNET = 'Software and Internet'
      TELECOMMUNICATIONS = 'Telecommunications'
      TRANSPORTATION_LOGISTICS = 'Transportation and Logistics'
      TRAVEL = 'Travel'
      WHOLESALE_DISTRIBUTION = 'Wholesale and Distribution'
      OTHER = 'Other'
    end

    # <p>This error occurs when the specified resource can’t be found or doesn't exist. Resource ID and type might be incorrect.</p> <p>Suggested action: This is usually a transient error. Retry after the provided retry delay or a short interval. If the problem persists, contact AWS support.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The Invitation structure represents an invitation exchanged between partners and AWS. It includes a message, receiver information, and a payload providing context for the invitation. </p>
    # @!attribute message
    #   <p> A message accompanying the invitation. </p>
    #   @return [String]
    # @!attribute receiver
    #   <p>Represents the entity that received the Engagement Invitation, including account and company details. This field is essential for tracking the partner who is being invited to collaborate.</p>
    #   @return [Types::Receiver]
    # @!attribute payload
    #   <p>Contains the data payload associated with the Engagement Invitation. This payload includes essential details related to the AWS opportunity and is used by partners to evaluate whether to accept or reject the engagement.</p>
    #   @return [Types::Payload]
    class Invitation < Struct.new(
      :message,
      :receiver,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InvitationStatus
      ACCEPTED = 'ACCEPTED'
      PENDING = 'PENDING'
      REJECTED = 'REJECTED'
      EXPIRED = 'EXPIRED'
    end

    module InvolvementTypeChangeReason
      EXPANSION_OPPORTUNITY = 'Expansion Opportunity'
      CHANGE_IN_DEAL_INFORMATION = 'Change in Deal Information'
      CUSTOMER_REQUESTED = 'Customer Requested'
      TECHNICAL_COMPLEXITY = 'Technical Complexity'
      RISK_MITIGATION = 'Risk Mitigation'
    end

    # <p>Defines a filter to retrieve opportunities based on the last modified date. This filter is useful for tracking changes or updates to opportunities over time.</p>
    # @!attribute after_last_modified_date
    #   <p>Specifies the date after which the opportunities were modified. Use this filter to retrieve only those opportunities that were modified after a given timestamp.</p>
    #   @return [Time]
    # @!attribute before_last_modified_date
    #   <p>Specifies the date before which the opportunities were modified. Use this filter to retrieve only those opportunities that were modified before a given timestamp.</p>
    #   @return [Time]
    class LastModifiedDate < Struct.new(
      :after_last_modified_date,
      :before_last_modified_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains the <code>Opportunity</code> lifecycle's details.</p>
    # @!attribute stage
    #   <p>Specifies the current stage of the <code>Opportunity</code>'s lifecycle as it maps to Amazon Web Services stages from the current stage in the partner CRM. This field provides a translated value of the stage, and offers insight into the <code>Opportunity</code>'s progression in the sales cycle, according to Amazon Web Services definitions.</p> <note> <p>A lead and a prospect must be further matured to a <code>Qualified</code> opportunity before submission. Opportunities that were closed/lost before submission aren't suitable for submission.</p> </note> <p>The descriptions of each sales stage are:</p> <ul> <li> <p>Prospect: Amazon Web Services identifies the opportunity. It can be active (Comes directly from the end customer through a lead) or latent (Your account team believes it exists based on research, account plans, sales plays).</p> </li> <li> <p>Qualified: Your account team engaged with the customer to discuss viability and requirements. The customer agreed that the opportunity is real, of interest, and may solve business/technical needs.</p> </li> <li> <p>Technical Validation: All parties understand the implementation plan.</p> </li> <li> <p>Business Validation: Pricing was proposed, and all parties agree to the steps to close.</p> </li> <li> <p>Committed: The customer signed the contract, but Amazon Web Services hasn't started billing.</p> </li> <li> <p>Launched: The workload is complete, and Amazon Web Services has started billing.</p> </li> <li> <p>Closed Lost: The opportunity is lost, and there are no steps to move forward.</p> </li> </ul>
    #   @return [String]
    # @!attribute closed_lost_reason
    #   <p>Specifies the reason code when an opportunity is marked as <i>Closed Lost</i>. When you select an appropriate reason code, you communicate the context for closing the <code>Opportunity</code>, and aid in accurate reports and analysis of opportunity outcomes. The possible values are:</p> <ul> <li> <p>Customer Deficiency: The customer lacked necessary resources or capabilities.</p> </li> <li> <p>Delay/Cancellation of Project: The project was delayed or canceled.</p> </li> <li> <p>Legal/Tax/Regulatory: Legal, tax, or regulatory issues prevented progress.</p> </li> <li> <p>Lost to Competitor—Google: The opportunity was lost to Google.</p> </li> <li> <p>Lost to Competitor—Microsoft: The opportunity was lost to Microsoft.</p> </li> <li> <p>Lost to Competitor—SoftLayer: The opportunity was lost to SoftLayer.</p> </li> <li> <p>Lost to Competitor—VMWare: The opportunity was lost to VMWare.</p> </li> <li> <p>Lost to Competitor—Other: The opportunity was lost to a competitor not listed above.</p> </li> <li> <p>No Opportunity: There was no opportunity to pursue.</p> </li> <li> <p>On Premises Deployment: The customer chose an on-premises solution.</p> </li> <li> <p>Partner Gap: The partner lacked necessary resources or capabilities.</p> </li> <li> <p>Price: The price was not competitive or acceptable to the customer.</p> </li> <li> <p>Security/Compliance: Security or compliance issues prevented progress.</p> </li> <li> <p>Technical Limitations: Technical limitations prevented progress.</p> </li> <li> <p>Customer Experience: Issues related to the customer's experience impacted the decision.</p> </li> <li> <p>Other: Any reason not covered by the other values.</p> </li> <li> <p>People/Relationship/Governance: Issues related to people, relationships, or governance.</p> </li> <li> <p>Product/Technology: Issues related to the product or technology.</p> </li> <li> <p>Financial/Commercial: Financial or commercial issues impacted the decision.</p> </li> </ul>
    #   @return [String]
    # @!attribute next_steps
    #   <p>Specifies the upcoming actions or tasks for the <code>Opportunity</code>. Use this field to communicate with Amazon Web Services about the next actions required for the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute target_close_date
    #   <p>Specifies the date when Amazon Web Services expects to start significant billing, when the project finishes, and when it moves into production. This field informs the Amazon Web Services seller about when the opportunity launches and starts to incur Amazon Web Services usage.</p> <p>Ensure the <code>Target Close Date</code> isn't in the past.</p>
    #   @return [String]
    # @!attribute review_status
    #   <p>Indicates the review status of an opportunity referred by a partner. This field is read-only and only applicable for partner referrals. The possible values are:</p> <ul> <li> <p>Pending Submission: Not submitted for validation (editable).</p> </li> <li> <p>Submitted: Submitted for validation, and Amazon Web Services hasn't reviewed it (read-only).</p> </li> <li> <p>In Review: Amazon Web Services is validating (read-only).</p> </li> <li> <p>Action Required: Issues that Amazon Web Services highlights need to be addressed. Partners should use the <code>UpdateOpportunity</code> API action to update the opportunity and helps to ensure that all required changes are made. Only the following fields are editable when the <code>Lifecycle.ReviewStatus</code> is <code>Action Required</code>:</p> <ul> <li> <p>Customer.Account.Address.City</p> </li> <li> <p>Customer.Account.Address.CountryCode</p> </li> <li> <p>Customer.Account.Address.PostalCode</p> </li> <li> <p>Customer.Account.Address.StateOrRegion</p> </li> <li> <p>Customer.Account.Address.StreetAddress</p> </li> <li> <p>Customer.Account.WebsiteUrl</p> </li> <li> <p>LifeCycle.TargetCloseDate</p> </li> <li> <p>Project.ExpectedMonthlyAWSRevenue.Amount</p> </li> <li> <p>Project.ExpectedMonthlyAWSRevenue.CurrencyCode</p> </li> <li> <p>Project.CustomerBusinessProblem</p> </li> <li> <p>PartnerOpportunityIdentifier</p> </li> </ul> <p>After updates, the opportunity re-enters the validation phase. This process repeats until all issues are resolved, and the opportunity's <code>Lifecycle.ReviewStatus</code> is set to <code>Approved</code> or <code>Rejected</code>.</p> </li> <li> <p>Approved: Validated and converted into the Amazon Web Services seller's pipeline (editable).</p> </li> <li> <p>Rejected: Disqualified (read-only).</p> </li> </ul>
    #   @return [String]
    # @!attribute review_comments
    #   <p>Contains detailed feedback from Amazon Web Services when requesting additional information from partners. Provides specific guidance on what partners need to provide or clarify for opportunity validation, complementing the <code>ReviewStatusReason</code> field.</p>
    #   @return [String]
    # @!attribute review_status_reason
    #   <p>Code indicating the validation decision during the Amazon Web Services opportunity review. Applies when status is <code>Rejected</code> or <code>Action Required</code>. Used to document validation results for AWS Partner Referrals and indicate when additional information is needed from partners as part of the APN Customer Engagement (ACE) program.</p>
    #   @return [String]
    # @!attribute next_steps_history
    #   <p>Captures a chronological record of the next steps or actions planned or taken for the current opportunity, along with the timestamp.</p>
    #   @return [Array<Types::NextStepsHistory>]
    class LifeCycle < Struct.new(
      :stage,
      :closed_lost_reason,
      :next_steps,
      :target_close_date,
      :review_status,
      :review_comments,
      :review_status_reason,
      :next_steps_history,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides the lifecycle view of an opportunity resource shared through a snapshot. </p>
    # @!attribute target_close_date
    #   <p> The projected launch date of the opportunity shared through a snapshot. </p>
    #   @return [String]
    # @!attribute review_status
    #   <p> Defines the approval status of the opportunity shared through a snapshot. </p>
    #   @return [String]
    # @!attribute stage
    #   <p> Defines the current stage of the opportunity shared through a snapshot. </p>
    #   @return [String]
    # @!attribute next_steps
    #   <p> Describes the next steps for the opportunity shared through a snapshot. </p>
    #   @return [String]
    class LifeCycleForView < Struct.new(
      :target_close_date,
      :review_status,
      :stage,
      :next_steps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains a <code>LifeCycle</code> object's subset of fields.</p>
    # @!attribute stage
    #   <p>Specifies the current stage of the <code>Opportunity</code>'s lifecycle as it maps to Amazon Web Services stages from the current stage in the partner CRM. This field provides a translated value of the stage, and offers insight into the <code>Opportunity</code>'s progression in the sales cycle, according to Amazon Web Services definitions.</p> <note> <p>A lead and a prospect must be further matured to a <code>Qualified</code> opportunity before submission. Opportunities that were closed/lost before submission aren't suitable for submission.</p> </note> <p>The descriptions of each sales stage are:</p> <ul> <li> <p>Prospect: Amazon Web Services identifies the opportunity. It can be active (Comes directly from the end customer through a lead) or latent (Your account team believes it exists based on research, account plans, sales plays).</p> </li> <li> <p>Qualified: Your account team engaged with the customer to discuss viability and understand requirements. The customer agreed that the opportunity is real, of interest, and may solve business/technical needs.</p> </li> <li> <p>Technical Validation: All parties understand the implementation plan.</p> </li> <li> <p>Business Validation: Pricing was proposed, and all parties agree to the steps to close.</p> </li> <li> <p>Committed: The customer signed the contract, but Amazon Web Services hasn't started billing.</p> </li> <li> <p>Launched: The workload is complete, and Amazon Web Services has started billing.</p> </li> <li> <p>Closed Lost: The opportunity is lost, and there are no steps to move forward.</p> </li> </ul>
    #   @return [String]
    # @!attribute closed_lost_reason
    #   <p>Specifies the reason code when an opportunity is marked as <i>Closed Lost</i>. When you select an appropriate reason code, you communicate the context for closing the <code>Opportunity</code>, and aid in accurate reports and analysis of opportunity outcomes.</p>
    #   @return [String]
    # @!attribute next_steps
    #   <p>Specifies the upcoming actions or tasks for the <code>Opportunity</code>. This field is utilized to communicate to Amazon Web Services the next actions required for the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute target_close_date
    #   <p>Specifies the date when Amazon Web Services expects to start significant billing, when the project finishes, and when it moves into production. This field informs the Amazon Web Services seller about when the opportunity launches and starts to incur Amazon Web Services usage.</p> <p>Ensure the <code>Target Close Date</code> isn't in the past.</p>
    #   @return [String]
    # @!attribute review_status
    #   <p>Indicates the review status of a partner referred opportunity. This field is read-only and only applicable for partner referrals. Valid values:</p> <ul> <li> <p>Pending Submission: Not submitted for validation (editable).</p> </li> <li> <p>Submitted: Submitted for validation and not yet Amazon Web Services reviewed (read-only).</p> </li> <li> <p>In Review: Undergoing Amazon Web Services validation (read-only).</p> </li> <li> <p>Action Required: Address any issues Amazon Web Services highlights. Use the <code>UpdateOpportunity</code> API action to update the opportunity, and ensure you make all required changes. Only these fields are editable when the <code>Lifecycle.ReviewStatus</code> is <code>Action Required</code>:</p> <ul> <li> <p>Customer.Account.Address.City</p> </li> <li> <p>Customer.Account.Address.CountryCode</p> </li> <li> <p>Customer.Account.Address.PostalCode</p> </li> <li> <p>Customer.Account.Address.StateOrRegion</p> </li> <li> <p>Customer.Account.Address.StreetAddress</p> </li> <li> <p>Customer.Account.WebsiteUrl</p> </li> <li> <p>LifeCycle.TargetCloseDate</p> </li> <li> <p>Project.ExpectedCustomerSpend.Amount</p> </li> <li> <p>Project.ExpectedCustomerSpend.CurrencyCode</p> </li> <li> <p>Project.CustomerBusinessProblem</p> </li> <li> <p>PartnerOpportunityIdentifier</p> </li> </ul> <p>After updates, the opportunity re-enters the validation phase. This process repeats until all issues are resolved, and the opportunity's <code>Lifecycle.ReviewStatus</code> is set to <code>Approved</code> or <code>Rejected</code>.</p> </li> <li> <p>Approved: Validated and converted into the Amazon Web Services seller's pipeline (editable).</p> </li> <li> <p>Rejected: Disqualified (read-only).</p> </li> </ul>
    #   @return [String]
    # @!attribute review_comments
    #   <p>Indicates why an opportunity was sent back for further details. Partners must take corrective action based on the <code>ReviewComments</code>.</p>
    #   @return [String]
    # @!attribute review_status_reason
    #   <p>Indicates the reason a specific decision was taken during the opportunity review process. This field combines the reasons for both disqualified and action required statuses, and provides clarity for why an opportunity was disqualified or required further action.</p>
    #   @return [String]
    class LifeCycleSummary < Struct.new(
      :stage,
      :closed_lost_reason,
      :next_steps,
      :target_close_date,
      :review_status,
      :review_comments,
      :review_status_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Specifies a subset of fields associated with tasks related to accepting an engagement invitation. </p>
    # @!attribute task_id
    #   <p> Unique identifier of the task. </p>
    #   @return [String]
    # @!attribute task_arn
    #   <p> The Amazon Resource Name (ARN) that uniquely identifies the task. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> Task start timestamp. </p>
    #   @return [Time]
    # @!attribute task_status
    #   <p> Status of the task. </p>
    #   @return [String]
    # @!attribute message
    #   <p> Detailed message describing the failure and possible recovery steps. </p>
    #   @return [String]
    # @!attribute reason_code
    #   <p> A code pointing to the specific reason for the failure. </p>
    #   @return [String]
    # @!attribute opportunity_id
    #   <p> Unique identifier of opportunity that was created. </p>
    #   @return [String]
    # @!attribute resource_snapshot_job_id
    #   <p> Unique identifier of the resource snapshot job that was created. </p>
    #   @return [String]
    # @!attribute engagement_invitation_id
    #   <p> The unique identifier of the engagement invitation that was accepted. </p>
    #   @return [String]
    class ListEngagementByAcceptingInvitationTaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> Use this parameter to control the number of items returned in each request, which can be useful for performance tuning and managing large result sets. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> Use this parameter for pagination when the result set spans multiple pages. This value is obtained from the NextToken field in the response of a previous call to this API. </p>
    #   @return [String]
    # @!attribute sort
    #   <p> Specifies the sorting criteria for the returned results. This allows you to order the tasks based on specific attributes. </p>
    #   @return [Types::ListTasksSortBase]
    # @!attribute catalog
    #   <p> Specifies the catalog related to the request. Valid values are: </p> <ul> <li> <p> AWS: Retrieves the request from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the request from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    #   @return [String]
    # @!attribute task_status
    #   <p> Filters the tasks based on their current status. This allows you to focus on tasks in specific states. </p>
    #   @return [Array<String>]
    # @!attribute opportunity_identifier
    #   <p> Filters tasks by the identifiers of the opportunities they created or are associated with. </p>
    #   @return [Array<String>]
    # @!attribute engagement_invitation_identifier
    #   <p> Filters tasks by the identifiers of the engagement invitations they are processing. </p>
    #   @return [Array<String>]
    # @!attribute task_identifier
    #   <p> Filters tasks by their unique identifiers. Use this when you want to retrieve information about specific tasks. </p>
    #   @return [Array<String>]
    class ListEngagementByAcceptingInvitationTasksRequest < Struct.new(
      :max_results,
      :next_token,
      :sort,
      :catalog,
      :task_status,
      :opportunity_identifier,
      :engagement_invitation_identifier,
      :task_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_summaries
    #   <p> An array of <code>EngagementByAcceptingInvitationTaskSummary</code> objects, each representing a task that matches the specified filters. The array may be empty if no tasks match the criteria. </p>
    #   @return [Array<Types::ListEngagementByAcceptingInvitationTaskSummary>]
    # @!attribute next_token
    #   <p> A token used for pagination to retrieve the next page of results.If there are more results available, this field will contain a token that can be used in a subsequent API call to retrieve the next page. If there are no more results, this field will be null or an empty string. </p>
    #   @return [String]
    class ListEngagementByAcceptingInvitationTasksResponse < Struct.new(
      :task_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides a summary of a task related to creating an engagement from an opportunity. This structure contains key information about the task's status, associated identifiers, and any failure details. </p>
    # @!attribute task_id
    #   <p> A unique identifier for a specific task. </p>
    #   @return [String]
    # @!attribute task_arn
    #   <p> The Amazon Resource Name (ARN) uniquely identifying this task within AWS. This ARN can be used for referencing the task in other AWS services or APIs. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The timestamp indicating when the task was initiated, in RFC 3339 5.6 date-time format. </p>
    #   @return [Time]
    # @!attribute task_status
    #   <p> The current status of the task. </p>
    #   @return [String]
    # @!attribute message
    #   <p> A detailed message providing additional information about the task, especially useful in case of failures. This field may contain error details or other relevant information about the task's execution </p>
    #   @return [String]
    # @!attribute reason_code
    #   <p> A code indicating the specific reason for a task failure. This field is populated when the task status is FAILED and provides a categorized reason for the failure. </p>
    #   @return [String]
    # @!attribute opportunity_id
    #   <p> The unique identifier of the original Opportunity from which the Engagement is being created. This field helps track the source of the Engagement creation task. </p>
    #   @return [String]
    # @!attribute resource_snapshot_job_id
    #   <p> The identifier of the resource snapshot job associated with this task, if a snapshot was created as part of the Engagement creation process. </p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p> The unique identifier of the engagement created as a result of the task. This field is populated when the task is completed successfully. </p>
    #   @return [String]
    # @!attribute engagement_invitation_id
    #   <p>The unique identifier of the Engagement Invitation.</p>
    #   @return [String]
    class ListEngagementFromOpportunityTaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_id,
      :engagement_invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> Specifies the maximum number of results to return in a single page of the response.Use this parameter to control the number of items returned in each request, which can be useful for performance tuning and managing large result sets. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for requesting the next page of results. This value is obtained from the NextToken field in the response of a previous call to this API. Use this parameter for pagination when the result set spans multiple pages. </p>
    #   @return [String]
    # @!attribute sort
    #   <p> Specifies the sorting criteria for the returned results. This allows you to order the tasks based on specific attributes. </p>
    #   @return [Types::ListTasksSortBase]
    # @!attribute catalog
    #   <p> Specifies the catalog related to the request. Valid values are: </p> <ul> <li> <p> AWS: Retrieves the request from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the request from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    #   @return [String]
    # @!attribute task_status
    #   <p> Filters the tasks based on their current status. This allows you to focus on tasks in specific states. </p>
    #   @return [Array<String>]
    # @!attribute task_identifier
    #   <p> Filters tasks by their unique identifiers. Use this when you want to retrieve information about specific tasks. </p>
    #   @return [Array<String>]
    # @!attribute opportunity_identifier
    #   <p> The identifier of the original opportunity associated with this task. </p>
    #   @return [Array<String>]
    # @!attribute engagement_identifier
    #   <p> Filters tasks by the identifiers of the engagements they created or are associated with. </p>
    #   @return [Array<String>]
    class ListEngagementFromOpportunityTasksRequest < Struct.new(
      :max_results,
      :next_token,
      :sort,
      :catalog,
      :task_status,
      :task_identifier,
      :opportunity_identifier,
      :engagement_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_summaries
    #   <p> TaskSummaries An array of TaskSummary objects containing details about each task. </p>
    #   @return [Array<Types::ListEngagementFromOpportunityTaskSummary>]
    # @!attribute next_token
    #   <p> A token used for pagination to retrieve the next page of results. If there are more results available, this field will contain a token that can be used in a subsequent API call to retrieve the next page. If there are no more results, this field will be null or an empty string. </p>
    #   @return [String]
    class ListEngagementFromOpportunityTasksResponse < Struct.new(
      :task_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog from which to list the engagement invitations. Use <code>AWS</code> for production invitations or <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of engagement invitations to return in the response. If more results are available, a pagination token will be provided.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve additional pages of results when the response to a previous request was truncated. Pass this token to continue listing invitations from where the previous call left off.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>Specifies the sorting options for listing engagement invitations. Invitations can be sorted by fields such as <code>InvitationDate</code> or <code>Status</code> to help partners view results in their preferred order.</p>
    #   @return [Types::OpportunityEngagementInvitationSort]
    # @!attribute payload_type
    #   <p>Defines the type of payload associated with the engagement invitations to be listed. The attributes in this payload help decide on acceptance or rejection of the invitation.</p>
    #   @return [Array<String>]
    # @!attribute participant_type
    #   <p>Specifies the type of participant for which to list engagement invitations. Identifies the role of the participant.</p>
    #   @return [String]
    # @!attribute status
    #   <p> Status values to filter the invitations. </p>
    #   @return [Array<String>]
    # @!attribute engagement_identifier
    #   <p> Retrieves a list of engagement invitation summaries based on specified filters. The ListEngagementInvitations operation allows you to view all invitations that you have sent or received. You must specify the ParticipantType to filter invitations where you are either the SENDER or the RECEIVER. Invitations will automatically expire if not accepted within 15 days. </p>
    #   @return [Array<String>]
    # @!attribute sender_aws_account_id
    #   <p> List of sender AWS account IDs to filter the invitations. </p>
    #   @return [Array<String>]
    class ListEngagementInvitationsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :payload_type,
      :participant_type,
      :status,
      :engagement_identifier,
      :sender_aws_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_invitation_summaries
    #   <p>An array containing summaries of engagement invitations. Each summary includes information such as the invitation title, invitation date, and the current status of the invitation.</p>
    #   @return [Array<Types::EngagementInvitationSummary>]
    # @!attribute next_token
    #   <p>A pagination token returned when there are more results available than can be returned in a single call. Use this token to retrieve additional pages of engagement invitation summaries.</p>
    #   @return [String]
    class ListEngagementInvitationsResponse < Struct.new(
      :engagement_invitation_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog related to the request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Identifier of the Engagement record to retrieve members from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListEngagementMembersRequest < Struct.new(
      :catalog,
      :identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_member_list
    #   <p> Provides a list of engagement members. </p>
    #   @return [Array<Types::EngagementMember>]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results. If there are more results available than can be returned in a single response, this token will be present. Use this token in a subsequent request to retrieve the next page of results. If there are no more results, this value will be null. </p>
    #   @return [String]
    class ListEngagementMembersResponse < Struct.new(
      :engagement_member_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which to search for engagement-resource associations. Valid Values: "AWS" or "Sandbox"</p> <ul> <li> <p> <code>AWS</code> for production environments.</p> </li> <li> <p> <code>Sandbox</code> for testing and development purposes.</p> </li> </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits the number of results returned in a single call. Use this to control the number of results returned, especially useful for pagination.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used for pagination of results. Include this token in subsequent requests to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p>Filters the results to include only associations related to the specified engagement. Use this when you want to find all resources associated with a specific engagement.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Filters the results to include only associations with resources of the specified type. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Filters the results to include only associations with the specified resource. Varies depending on the resource type. Use this when you want to find all engagements associated with a specific resource.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Filters the response to include only snapshots of resources owned by the specified AWS account ID. Use this when you want to find associations related to resources owned by a particular account. </p>
    #   @return [String]
    class ListEngagementResourceAssociationsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_resource_association_summaries
    #   <p> A list of engagement-resource association summaries. </p>
    #   @return [Array<Types::EngagementResourceAssociationSummary>]
    # @!attribute next_token
    #   <p> A token to retrieve the next set of results. Use this token in a subsequent request to retrieve additional results if the response was truncated. </p>
    #   @return [String]
    class ListEngagementResourceAssociationsResponse < Struct.new(
      :engagement_resource_association_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p> Specifies the catalog related to the request. </p>
    #   @return [String]
    # @!attribute created_by
    #   <p> A list of AWS account IDs. When specified, the response includes engagements created by these accounts. This filter is useful for finding engagements created by specific team members. </p>
    #   @return [Array<String>]
    # @!attribute exclude_created_by
    #   <p>An array of strings representing AWS Account IDs. Use this to exclude engagements created by specific users. </p>
    #   @return [Array<String>]
    # @!attribute sort
    #   <p>Specifies the sorting parameters for listing Engagements.</p>
    #   @return [Types::EngagementSort]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. This value is returned from a previous call.</p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p>An array of strings representing engagement identifiers to retrieve.</p>
    #   @return [Array<String>]
    class ListEngagementsRequest < Struct.new(
      :catalog,
      :created_by,
      :exclude_created_by,
      :sort,
      :max_results,
      :next_token,
      :engagement_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engagement_summary_list
    #   <p>An array of engagement summary objects.</p>
    #   @return [Array<Types::EngagementSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. This field will be null if there are no more results. </p>
    #   @return [String]
    class ListEngagementsResponse < Struct.new(
      :engagement_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunities are listed in. Use <code>AWS</code> for listing real opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return in a single call. This limits the number of opportunities returned in the response to avoid providing too many results at once.</p> <p>Default: 20</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>An object that specifies how the response is sorted. The default <code>Sort.SortBy</code> value is <code>LastModifiedDate</code>.</p>
    #   @return [Types::OpportunitySort]
    # @!attribute last_modified_date
    #   <p>Filters the opportunities based on their last modified date. This filter helps retrieve opportunities that were updated after the specified date, allowing partners to track recent changes or updates.</p>
    #   @return [Types::LastModifiedDate]
    # @!attribute identifier
    #   <p>Filters the opportunities based on the opportunity identifier. This allows partners to retrieve specific opportunities by providing their unique identifiers, ensuring precise results.</p>
    #   @return [Array<String>]
    # @!attribute life_cycle_stage
    #   <p>Filters the opportunities based on their lifecycle stage. This filter allows partners to retrieve opportunities at various stages in the sales cycle, such as <code>Qualified</code>, <code>Technical Validation</code>, <code>Business Validation</code>, or <code>Closed Won</code>.</p>
    #   @return [Array<String>]
    # @!attribute life_cycle_review_status
    #   <p>Filters the opportunities based on their current lifecycle approval status. Use this filter to retrieve opportunities with statuses such as <code>Pending Submission</code>, <code>In Review</code>, <code>Action Required</code>, or <code>Approved</code>.</p>
    #   @return [Array<String>]
    # @!attribute customer_company_name
    #   <p>Filters the opportunities based on the customer's company name. This allows partners to search for opportunities associated with a specific customer by matching the provided company name string.</p>
    #   @return [Array<String>]
    class ListOpportunitiesRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :last_modified_date,
      :identifier,
      :life_cycle_stage,
      :life_cycle_review_status,
      :customer_company_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute opportunity_summaries
    #   <p>An array that contains minimal details for opportunities that match the request criteria. This summary view provides a quick overview of relevant opportunities.</p>
    #   @return [Array<Types::OpportunitySummary>]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    #   @return [String]
    class ListOpportunitiesResponse < Struct.new(
      :opportunity_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p> Specifies the catalog related to the request. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call. If omitted, defaults to 50. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of results. </p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p> The identifier of the engagement to filter the response. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the jobs to filter the response. </p>
    #   @return [String]
    # @!attribute sort
    #   <p> Configures the sorting of the response. If omitted, results are sorted by <code>CreatedDate</code> in descending order. </p>
    #   @return [Types::SortObject]
    class ListResourceSnapshotJobsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :status,
      :sort,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_snapshot_job_summaries
    #   <p> An array of resource snapshot job summary objects. </p>
    #   @return [Array<Types::ResourceSnapshotJobSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results. If there are no additional results, this value is null. </p>
    #   @return [String]
    class ListResourceSnapshotJobsResponse < Struct.new(
      :resource_snapshot_job_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p> Specifies the catalog related to the request. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return in a single call. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of results. </p>
    #   @return [String]
    # @!attribute engagement_identifier
    #   <p> The unique identifier of the engagement associated with the snapshots. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Filters the response to include only snapshots of the specified resource type. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p> Filters the response to include only snapshots of the specified resource. </p>
    #   @return [String]
    # @!attribute resource_snapshot_template_identifier
    #   <p>Filters the response to include only snapshots created using the specified template.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Filters the response to include only snapshots of resources owned by the specified AWS account. </p>
    #   @return [String]
    class ListResourceSnapshotsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :engagement_identifier,
      :resource_type,
      :resource_identifier,
      :resource_snapshot_template_identifier,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_snapshot_summaries
    #   <p> An array of resource snapshot summary objects. </p>
    #   @return [Array<Types::ResourceSnapshotSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results. If there are no additional results, this value is null. </p>
    #   @return [String]
    class ListResourceSnapshotsResponse < Struct.new(
      :resource_snapshot_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the solutions are listed in. Use <code>AWS</code> to list solutions in the Amazon Web Services catalog, and <code>Sandbox</code> to list solutions in a secure and isolated testing environment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided in the next call to retrieve the next set of results.</p> <p>Default: 20</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>Object that configures sorting done on the response. Default <code>Sort.SortBy</code> is <code>Identifier</code>.</p>
    #   @return [Types::SolutionSort]
    # @!attribute status
    #   <p>Filters solutions based on their status. This filter helps partners manage their solution portfolios effectively.</p>
    #   @return [Array<String>]
    # @!attribute identifier
    #   <p>Filters the solutions based on their unique identifier. Use this filter to retrieve specific solutions by providing the solution's identifier for accurate results.</p>
    #   @return [Array<String>]
    # @!attribute category
    #   <p>Filters the solutions based on the category to which they belong. This allows partners to search for solutions within specific categories, such as <code>Software</code>, <code>Consulting</code>, or <code>Managed Services</code>.</p>
    #   @return [Array<String>]
    class ListSolutionsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :sort,
      :status,
      :identifier,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute solution_summaries
    #   <p>An array with minimal details for solutions matching the request criteria.</p>
    #   @return [Array<Types::SolutionBase>]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    #   @return [String]
    class ListSolutionsResponse < Struct.new(
      :solution_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Defines the sorting parameters for listing tasks. This structure allows for specifying the field to sort by and the order of sorting. </p>
    # @!attribute sort_order
    #   <p> Determines the order in which the sorted results are presented. </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p> Specifies the field by which the task list should be sorted. </p>
    #   @return [String]
    class ListTasksSortBase < Struct.new(
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ListTasksSortName
      START_TIME = 'StartTime'
    end

    # <p>An object that contains marketing details for the <code>Opportunity</code>.</p>
    # @!attribute campaign_name
    #   <p>Specifies the <code>Opportunity</code> marketing campaign code. The Amazon Web Services campaign code is a reference to specific marketing initiatives, promotions, or activities. This field captures the identifier used to track and categorize the <code>Opportunity</code> within marketing campaigns. If you don't have a campaign code, contact your Amazon Web Services point of contact to obtain one.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates if the <code>Opportunity</code> was sourced from an Amazon Web Services marketing activity. Use the value <code>Marketing Activity</code>. Use <code>None</code> if it's not associated with an Amazon Web Services marketing activity. This field helps Amazon Web Services track the return on marketing investments and enables better distribution of marketing budgets among partners.</p>
    #   @return [String]
    # @!attribute use_cases
    #   <p>Specifies the marketing activity use case or purpose that led to the <code>Opportunity</code>'s creation or contact. This field captures the context or marketing activity's execution's intention and the direct correlation to the generated opportunity or contact. Must be empty when <code>Marketing.AWSFundingUsed = No</code>.</p> <p>Valid values: <code>AI/ML | Analytics | Application Integration | Blockchain | Business Applications | Cloud Financial Management | Compute | Containers | Customer Engagement | Databases | Developer Tools | End User Computing | Front End Web &amp; Mobile | Game Tech | IoT | Management &amp; Governance | Media Services | Migration &amp; Transfer | Networking &amp; Content Delivery | Quantum Technologies | Robotics | Satellite | Security | Serverless | Storage | VR &amp; AR</code> </p>
    #   @return [Array<String>]
    # @!attribute channels
    #   <p>Specifies the <code>Opportunity</code>'s channel that the marketing activity is associated with or was contacted through. This field provides information about the specific marketing channel that contributed to the generation of the lead or contact.</p>
    #   @return [Array<String>]
    # @!attribute aws_funding_used
    #   <p>Indicates if the <code>Opportunity</code> is a marketing development fund (MDF) funded activity.</p>
    #   @return [String]
    class Marketing < Struct.new(
      :campaign_name,
      :source,
      :use_cases,
      :channels,
      :aws_funding_used,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MarketingSource
      MARKETING_ACTIVITY = 'Marketing Activity'
      NONE = 'None'
    end

    # <p>Specifies payments details.</p>
    # @!attribute amount
    #   <p>Specifies the payment amount.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>Specifies the payment currency.</p>
    #   @return [String]
    class MonetaryValue < Struct.new(
      :amount,
      :currency_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NationalSecurity
      YES = 'Yes'
      NO = 'No'
    end

    # <p>Read-only; shows the last 50 values and change dates for the <code>NextSteps</code> field.</p>
    # @!attribute value
    #   <p>Indicates the step's execution details.</p>
    #   @return [String]
    # @!attribute time
    #   <p>Indicates the step execution time.</p>
    #   @return [Time]
    class NextStepsHistory < Struct.new(
      :value,
      :time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines sorting options for retrieving Engagement Invitations. Sorting can be done based on various criteria like the invitation date or status.</p>
    # @!attribute sort_order
    #   <p>Defines the order in which the Engagement Invitations are sorted. The values can be <code>ASC</code> (ascending) or <code>DESC</code> (descending).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the field by which the Engagement Invitations are sorted. Common values include <code>InvitationDate</code> and <code>Status</code>.</p>
    #   @return [String]
    class OpportunityEngagementInvitationSort < Struct.new(
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpportunityEngagementInvitationSortName
      INVITATION_DATE = 'InvitationDate'
    end

    # <p>Represents the data payload of an Engagement Invitation for a specific opportunity. This contains detailed information that partners use to evaluate the engagement.</p>
    # @!attribute sender_contacts
    #   <p>Represents the contact details of the AWS representatives involved in sending the Engagement Invitation. These contacts are opportunity stakeholders.</p>
    #   @return [Array<Types::SenderContact>]
    # @!attribute receiver_responsibilities
    #   <p>Outlines the responsibilities or expectations of the receiver in the context of the invitation.</p>
    #   @return [Array<String>]
    # @!attribute customer
    #   <p>Contains information about the customer related to the opportunity in the Engagement Invitation. This data helps partners understand the customer’s profile and requirements.</p>
    #   @return [Types::EngagementCustomer]
    # @!attribute project
    #   <p>Describes the project details associated with the opportunity, including the customer’s needs and the scope of work expected to be performed.</p>
    #   @return [Types::ProjectDetails]
    class OpportunityInvitationPayload < Struct.new(
      :sender_contacts,
      :receiver_responsibilities,
      :customer,
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpportunityOrigin
      AWS_REFERRAL = 'AWS Referral'
      PARTNER_REFERRAL = 'Partner Referral'
    end

    # <p>Object that configures response sorting.</p>
    # @!attribute sort_order
    #   <p>Sort order.</p> <p>Default: <code>Descending</code> </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Field name to sort by.</p>
    #   @return [String]
    class OpportunitySort < Struct.new(
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpportunitySortName
      LAST_MODIFIEDDATE = 'LastModifiedDate'
      IDENTIFIER = 'Identifier'
      CUSTOMER_COMPANY_NAME = 'CustomerCompanyName'
    end

    # <p>An object that contains an <code>Opportunity</code>'s subset of fields.</p>
    # @!attribute catalog
    #   <p>Specifies the catalog associated with the opportunity, either <code>AWS</code> or <code>Sandbox</code>. This indicates the environment in which the opportunity is managed.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Read-only, system-generated <code>Opportunity</code> unique identifier.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) for the opportunity. This globally unique identifier can be used for IAM policies and cross-service references. </p>
    #   @return [String]
    # @!attribute partner_opportunity_identifier
    #   <p>Specifies the <code>Opportunity</code>'s unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload sent back to the partner. It allows partners to link an opportunity to their CRM.</p>
    #   @return [String]
    # @!attribute opportunity_type
    #   <p>Specifies opportunity type as a renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New Opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal Opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, ensuring continuity of service.</p> </li> <li> <p>Expansion Opportunity: Represents an opportunity to expand the scope of an existing contract or subscription, either by adding new services or increasing the volume of existing services for a current customer.</p> </li> </ul>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p> <code>DateTime</code> when the <code>Opportunity</code> was last modified.</p>
    #   @return [Time]
    # @!attribute created_date
    #   <p> <code>DateTime</code> when the <code>Opportunity</code> was last created.</p>
    #   @return [Time]
    # @!attribute life_cycle
    #   <p>An object that contains the <code>Opportunity</code>'s lifecycle details.</p>
    #   @return [Types::LifeCycleSummary]
    # @!attribute customer
    #   <p>An object that contains the <code>Opportunity</code>'s customer details.</p>
    #   @return [Types::CustomerSummary]
    # @!attribute project
    #   <p>An object that contains the <code>Opportunity</code>'s project details summary.</p>
    #   @return [Types::ProjectSummary]
    class OpportunitySummary < Struct.new(
      :catalog,
      :id,
      :arn,
      :partner_opportunity_identifier,
      :opportunity_type,
      :last_modified_date,
      :created_date,
      :life_cycle,
      :customer,
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides a comprehensive view of an opportunity summary, including lifecycle information, team details, opportunity type, primary needs from AWS, and associated project information. </p>
    # @!attribute opportunity_type
    #   <p> Specifies the opportunity type. </p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p> Contains information about the opportunity's lifecycle, including its current stage, status, and important dates such as creation and last modification times. </p>
    #   @return [Types::LifeCycleForView]
    # @!attribute opportunity_team
    #   <p> Represents the internal team handling the opportunity. Specify the members involved in collaborating on an opportunity within the partner's organization. </p>
    #   @return [Array<Types::Contact>]
    # @!attribute primary_needs_from_aws
    #   <p> Identifies the type of support the partner needs from AWS. </p>
    #   @return [Array<String>]
    # @!attribute customer
    #   <p>An object that contains the customer's <code>Account</code> and <code>Contact</code>.</p>
    #   @return [Types::Customer]
    # @!attribute project
    #   <p> Contains summary information about the project associated with the opportunity, including project name, description, timeline, and other relevant details. </p>
    #   @return [Types::ProjectView]
    # @!attribute related_entity_identifiers
    #   <p>This field provides the associations' information for other entities with the opportunity. These entities include identifiers for <code>AWSProducts</code>, <code>Partner Solutions</code>, and <code>AWSMarketplaceOffers</code>.</p>
    #   @return [Types::RelatedEntityIdentifiers]
    class OpportunitySummaryView < Struct.new(
      :opportunity_type,
      :lifecycle,
      :opportunity_team,
      :primary_needs_from_aws,
      :customer,
      :project,
      :related_entity_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpportunityType
      NET_NEW_BUSINESS = 'Net New Business'
      FLAT_RENEWAL = 'Flat Renewal'
      EXPANSION = 'Expansion'
    end

    module ParticipantType
      SENDER = 'SENDER'
      RECEIVER = 'RECEIVER'
    end

    # <p>Contains the data payload associated with the Engagement Invitation. This payload includes essential details related to the AWS opportunity and is used by partners to evaluate whether to accept or reject the engagement.</p>
    # @!attribute opportunity_invitation
    #   <p>Specifies the details of the opportunity invitation within the Engagement Invitation payload. This data helps partners understand the context, scope, and expected involvement for the opportunity from AWS.</p>
    #   @return [Types::OpportunityInvitationPayload]
    class Payload < Struct.new(
      :opportunity_invitation,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class OpportunityInvitation < Payload; end
      class Unknown < Payload; end
    end

    module PaymentFrequency
      MONTHLY = 'Monthly'
    end

    module PrimaryNeedFromAws
      CO_SELL_ARCHITECTURAL_VALIDATION = 'Co-Sell - Architectural Validation'
      CO_SELL_BUSINESS_PRESENTATION = 'Co-Sell - Business Presentation'
      CO_SELL_COMPETITIVE_INFORMATION = 'Co-Sell - Competitive Information'
      CO_SELL_PRICING_ASSISTANCE = 'Co-Sell - Pricing Assistance'
      CO_SELL_TECHNICAL_CONSULTATION = 'Co-Sell - Technical Consultation'
      CO_SELL_TOTAL_COST_OF_OWNERSHIP_EVALUATION = 'Co-Sell - Total Cost of Ownership Evaluation'
      CO_SELL_DEAL_SUPPORT = 'Co-Sell - Deal Support'
      CO_SELL_SUPPORT_FOR_PUBLIC_TENDER_RFX = 'Co-Sell - Support for Public Tender / RFx'
    end

    # <p>Tracks the history of next steps associated with the opportunity. This field captures the actions planned for the future and their timeline.</p>
    # @!attribute value
    #   <p>Represents the details of the next step recorded, such as follow-up actions or decisions made. This field helps in tracking progress and ensuring alignment with project goals.</p>
    #   @return [String]
    # @!attribute time
    #   <p>Indicates the date and time when a particular next step was recorded or planned. This helps in managing the timeline for the opportunity.</p>
    #   @return [Time]
    class ProfileNextStepsHistory < Struct.new(
      :value,
      :time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains the <code>Opportunity</code>'s project details.</p>
    # @!attribute delivery_models
    #   <p>Specifies the deployment or consumption model for your solution or service in the <code>Opportunity</code>'s context. You can select multiple options.</p> <p>Options' descriptions from the <code>Delivery Model</code> field are:</p> <ul> <li> <p>SaaS or PaaS: Your Amazon Web Services based solution deployed as SaaS or PaaS in your Amazon Web Services environment.</p> </li> <li> <p>BYOL or AMI: Your Amazon Web Services based solution deployed as BYOL or AMI in the end customer's Amazon Web Services environment.</p> </li> <li> <p>Managed Services: The end customer's Amazon Web Services business management (For example: Consulting, design, implementation, billing support, cost optimization, technical support).</p> </li> <li> <p>Professional Services: Offerings to help enterprise end customers achieve specific business outcomes for enterprise cloud adoption (For example: Advisory or transformation planning).</p> </li> <li> <p>Resell: Amazon Web Services accounts and billing management for your customers.</p> </li> <li> <p>Other: Delivery model not described above.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute expected_customer_spend
    #   <p>Represents the estimated amount that the customer is expected to spend on AWS services related to the opportunity. This helps in evaluating the potential financial value of the opportunity for AWS.</p>
    #   @return [Array<Types::ExpectedCustomerSpend>]
    # @!attribute title
    #   <p>Specifies the <code>Opportunity</code>'s title or name.</p>
    #   @return [String]
    # @!attribute apn_programs
    #   <p>Specifies the Amazon Partner Network (APN) program that influenced the <code>Opportunity</code>. APN programs refer to specific partner programs or initiatives that can impact the <code>Opportunity</code>.</p> <p>Valid values: <code>APN Immersion Days | APN Solution Space | ATO (Authority to Operate) | AWS Marketplace Campaign | IS Immersion Day SFID Program | ISV Workload Migration | Migration Acceleration Program | P3 | Partner Launch Initiative | Partner Opportunity Acceleration Funded | The Next Smart | VMware Cloud on AWS | Well-Architected | Windows | Workspaces/AppStream Accelerator Program | WWPS NDPP</code> </p>
    #   @return [Array<String>]
    # @!attribute customer_business_problem
    #   <p>Describes the problem the end customer has, and how the partner is helping. Utilize this field to provide a concise narrative that outlines the customer's business challenge or issue. Elaborate on how the partner's solution or offerings align to resolve the customer's business problem. Include relevant information about the partner's value proposition, unique selling points, and expertise to tackle the issue. Offer insights on how the proposed solution meets the customer's needs and provides value. Use concise language and precise descriptions to convey the context and significance of the <code>Opportunity</code>. The content in this field helps Amazon Web Services understand the nature of the <code>Opportunity</code> and the strategic fit of the partner's solution.</p>
    #   @return [String]
    # @!attribute customer_use_case
    #   <p>Specifies the proposed solution focus or type of workload for the Opportunity. This field captures the primary use case or objective of the proposed solution, and provides context and clarity to the addressed workload.</p> <p>Valid values: <code>AI Machine Learning and Analytics | Archiving | Big Data: Data Warehouse/Data Integration/ETL/Data Lake/BI | Blockchain | Business Applications: Mainframe Modernization | Business Applications &amp; Contact Center | Business Applications &amp; SAP Production | Centralized Operations Management | Cloud Management Tools | Cloud Management Tools &amp; DevOps with Continuous Integration &amp; Continuous Delivery (CICD) | Configuration, Compliance &amp; Auditing | Connected Services | Containers &amp; Serverless | Content Delivery &amp; Edge Services | Database | Edge Computing/End User Computing | Energy | Enterprise Governance &amp; Controls | Enterprise Resource Planning | Financial Services | Healthcare and Life Sciences | High Performance Computing | Hybrid Application Platform | Industrial Software | IOT | Manufacturing, Supply Chain and Operations | Media &amp; High performance computing (HPC) | Migration/Database Migration | Monitoring, logging and performance | Monitoring &amp; Observability | Networking | Outpost | SAP | Security &amp; Compliance | Storage &amp; Backup | Training | VMC | VMWare | Web development &amp; DevOps</code> </p>
    #   @return [String]
    # @!attribute related_opportunity_identifier
    #   <p>Specifies the current opportunity's parent opportunity identifier.</p>
    #   @return [String]
    # @!attribute sales_activities
    #   <p>Specifies the <code>Opportunity</code>'s sales activities conducted with the end customer. These activities help drive Amazon Web Services assignment priority.</p> <p>Valid values:</p> <ul> <li> <p>Initialized discussions with customer: Initial conversations with the customer to understand their needs and introduce your solution.</p> </li> <li> <p>Customer has shown interest in solution: After initial discussions, the customer is interested in your solution.</p> </li> <li> <p>Conducted POC/demo: You conducted a proof of concept (POC) or demonstration of the solution for the customer.</p> </li> <li> <p>In evaluation/planning stage: The customer is evaluating the solution and planning potential implementation.</p> </li> <li> <p>Agreed on solution to Business Problem: Both parties agree on how the solution addresses the customer's business problem.</p> </li> <li> <p>Completed Action Plan: A detailed action plan is complete and outlines the steps for implementation.</p> </li> <li> <p>Finalized Deployment Need: Both parties agree with and finalized the deployment needs.</p> </li> <li> <p>SOW Signed: Both parties signed a statement of work (SOW), and formalize the agreement and detail the project scope and deliverables.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute competitor_name
    #   <p>Name of the <code>Opportunity</code>'s competitor (if any). Use <code>Other</code> to submit a value not in the picklist.</p>
    #   @return [String]
    # @!attribute other_competitor_names
    #   <p>Only allowed when <code>CompetitorNames</code> has <code>Other</code> selected.</p>
    #   @return [String]
    # @!attribute other_solution_description
    #   <p>Specifies the offered solution for the customer's business problem when the <code> RelatedEntityIdentifiers.Solutions</code> field value is <code>Other</code>.</p>
    #   @return [String]
    # @!attribute additional_comments
    #   <p>Captures additional comments or information for the <code>Opportunity</code> that weren't captured in other fields.</p>
    #   @return [String]
    class Project < Struct.new(
      :delivery_models,
      :expected_customer_spend,
      :title,
      :apn_programs,
      :customer_business_problem,
      :customer_use_case,
      :related_opportunity_identifier,
      :sales_activities,
      :competitor_name,
      :other_competitor_names,
      :other_solution_description,
      :additional_comments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the project associated with the Engagement Invitation, including the business problem and expected outcomes.</p>
    # @!attribute business_problem
    #   <p>Describes the business problem that the project aims to solve. This information is crucial for understanding the project’s goals and objectives.</p>
    #   @return [String]
    # @!attribute title
    #   <p>Specifies the title of the project. This title helps partners quickly identify and understand the focus of the project.</p>
    #   @return [String]
    # @!attribute target_completion_date
    #   <p>Specifies the estimated date of project completion. This field helps track the project timeline and manage expectations.</p>
    #   @return [String]
    # @!attribute expected_customer_spend
    #   <p>Contains revenue estimates for the partner related to the project. This field provides an idea of the financial potential of the opportunity for the partner.</p>
    #   @return [Array<Types::ExpectedCustomerSpend>]
    class ProjectDetails < Struct.new(
      :business_problem,
      :title,
      :target_completion_date,
      :expected_customer_spend,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains a <code>Project</code> object's subset of fields.</p>
    # @!attribute delivery_models
    #   <p>Specifies your solution or service's deployment or consumption model in the <code>Opportunity</code>'s context. You can select multiple options.</p> <p>Options' descriptions from the <code>Delivery Model</code> field are:</p> <ul> <li> <p>SaaS or PaaS: Your Amazon Web Services based solution deployed as SaaS or PaaS in your Amazon Web Services environment.</p> </li> <li> <p>BYOL or AMI: Your Amazon Web Services based solution deployed as BYOL or AMI in the end customer's Amazon Web Services environment.</p> </li> <li> <p>Managed Services: The end customer's Amazon Web Services business management (For example: Consulting, design, implementation, billing support, cost optimization, technical support).</p> </li> <li> <p>Professional Services: Offerings to help enterprise end customers achieve specific business outcomes for enterprise cloud adoption (For example: Advisory or transformation planning).</p> </li> <li> <p>Resell: Amazon Web Services accounts and billing management for your customers.</p> </li> <li> <p>Other: Delivery model not described above.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute expected_customer_spend
    #   <p>Provides a summary of the expected customer spend for the project, offering a high-level view of the potential financial impact.</p>
    #   @return [Array<Types::ExpectedCustomerSpend>]
    class ProjectSummary < Struct.new(
      :delivery_models,
      :expected_customer_spend,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Provides the project view of an opportunity resource shared through a snapshot. </p>
    # @!attribute delivery_models
    #   <p> Describes the deployment or consumption model for the partner solution or offering. This field indicates how the project's solution will be delivered or implemented for the customer. </p>
    #   @return [Array<String>]
    # @!attribute expected_customer_spend
    #   <p> Provides information about the anticipated customer spend related to this project. This may include details such as amount, frequency, and currency of expected expenditure. </p>
    #   @return [Array<Types::ExpectedCustomerSpend>]
    # @!attribute customer_use_case
    #   <p> Specifies the proposed solution focus or type of workload for the project. </p>
    #   @return [String]
    # @!attribute sales_activities
    #   <p> Lists the pre-sales activities that have occurred with the end-customer related to the opportunity. This field is conditionally mandatory when the project is qualified for Co-Sell and helps drive assignment priority on the AWS side. It provides insight into the engagement level with the customer. </p>
    #   @return [Array<String>]
    # @!attribute other_solution_description
    #   <p> Offers a description of other solutions if the standard solutions do not adequately cover the project's scope. </p>
    #   @return [String]
    class ProjectView < Struct.new(
      :delivery_models,
      :expected_customer_spend,
      :customer_use_case,
      :sales_activities,
      :other_solution_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the settings will be updated. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute resource_snapshot_job_role_identifier
    #   <p>Specifies the ARN of the IAM Role used for resource snapshot job executions.</p>
    #   @return [String]
    class PutSellingSystemSettingsRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_role_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the settings are defined. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute resource_snapshot_job_role_arn
    #   <p>Specifies the ARN of the IAM Role used for resource snapshot job executions.</p>
    #   @return [String]
    class PutSellingSystemSettingsResponse < Struct.new(
      :catalog,
      :resource_snapshot_job_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReasonCode
      INVITATION_ACCESS_DENIED = 'InvitationAccessDenied'
      INVITATION_VALIDATION_FAILED = 'InvitationValidationFailed'
      ENGAGEMENT_ACCESS_DENIED = 'EngagementAccessDenied'
      OPPORTUNITY_ACCESS_DENIED = 'OpportunityAccessDenied'
      RESOURCE_SNAPSHOT_JOB_ACCESS_DENIED = 'ResourceSnapshotJobAccessDenied'
      RESOURCE_SNAPSHOT_JOB_VALIDATION_FAILED = 'ResourceSnapshotJobValidationFailed'
      RESOURCE_SNAPSHOT_JOB_CONFLICT = 'ResourceSnapshotJobConflict'
      ENGAGEMENT_VALIDATION_FAILED = 'EngagementValidationFailed'
      ENGAGEMENT_CONFLICT = 'EngagementConflict'
      OPPORTUNITY_SUBMISSION_FAILED = 'OpportunitySubmissionFailed'
      ENGAGEMENT_INVITATION_CONFLICT = 'EngagementInvitationConflict'
      INTERNAL_ERROR = 'InternalError'
      OPPORTUNITY_VALIDATION_FAILED = 'OpportunityValidationFailed'
      OPPORTUNITY_CONFLICT = 'OpportunityConflict'
      RESOURCE_SNAPSHOT_ACCESS_DENIED = 'ResourceSnapshotAccessDenied'
      RESOURCE_SNAPSHOT_VALIDATION_FAILED = 'ResourceSnapshotValidationFailed'
      RESOURCE_SNAPSHOT_CONFLICT = 'ResourceSnapshotConflict'
      SERVICE_QUOTA_EXCEEDED = 'ServiceQuotaExceeded'
      REQUEST_THROTTLED = 'RequestThrottled'
    end

    # <p>Represents the entity that received the Engagement Invitation, including account and company details. This field is essential for tracking the partner who is being invited to collaborate.</p>
    # @!attribute account
    #   <p>Specifies the AWS account of the partner who received the Engagement Invitation. This field is used to track the invitation recipient within the AWS ecosystem.</p>
    #   @return [Types::AccountReceiver]
    class Receiver < Struct.new(
      :account,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Account < Receiver; end
      class Unknown < Receiver; end
    end

    module ReceiverResponsibility
      DISTRIBUTOR = 'Distributor'
      RESELLER = 'Reseller'
      HARDWARE_PARTNER = 'Hardware Partner'
      MANAGED_SERVICE_PROVIDER = 'Managed Service Provider'
      SOFTWARE_PARTNER = 'Software Partner'
      SERVICES_PARTNER = 'Services Partner'
      TRAINING_PARTNER = 'Training Partner'
      CO_SELL_FACILITATOR = 'Co-Sell Facilitator'
      FACILITATOR = 'Facilitator'
    end

    # @!attribute catalog
    #   <p>This is the catalog that's associated with the engagement invitation. Acceptable values are <code>AWS</code> or <code>Sandbox</code>, and these values determine the environment in which the opportunity is managed.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>This is the unique identifier of the rejected <code>EngagementInvitation</code>. Providing the correct identifier helps to ensure that the intended invitation is rejected.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>This describes the reason for rejecting the engagement invitation, which helps AWS track usage patterns. Acceptable values include the following:</p> <ul> <li> <p> <i>Customer problem unclear:</i> The customer's problem isn't understood.</p> </li> <li> <p> <i>Next steps unclear:</i> The next steps required to proceed aren't understood.</p> </li> <li> <p> <i>Unable to support:</i> The partner is unable to provide support due to resource or capability constraints.</p> </li> <li> <p> <i>Duplicate of partner referral:</i> The opportunity is a duplicate of an existing referral.</p> </li> <li> <p> <i>Other:</i> Any reason not covered by other values.</p> </li> </ul>
    #   @return [String]
    class RejectEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      :rejection_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This field provides the associations' information for other entities with the opportunity. These entities include identifiers for <code>AWSProducts</code>, <code>Partner Solutions</code>, and <code>AWSMarketplaceOffers</code>.</p>
    # @!attribute aws_marketplace_offers
    #   <p>Takes one value per opportunity. Each value is an Amazon Resource Name (ARN), in this format: <code>"offers": ["arn:aws:aws-marketplace:us-east-1:999999999999:AWSMarketplace/Offer/offer-sampleOffer32"]</code>.</p> <p>Use the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html">ListEntities</a> action in the Marketplace Catalog APIs for a list of offers in the associated Marketplace seller account.</p>
    #   @return [Array<String>]
    # @!attribute solutions
    #   <p>Enables partner solutions or offerings' association with an opportunity. To associate a solution, provide the solution's unique identifier, which you can obtain with the <code>ListSolutions</code> operation.</p> <p>If the specific solution identifier is not available, you can use the value <code>Other</code> and provide details about the solution in the <code>otherSolutionOffered</code> field. But when the opportunity reaches the <code>Committed</code> stage or beyond, the <code>Other</code> value cannot be used, and a valid solution identifier must be provided.</p> <p>By associating the relevant solutions with the opportunity, you can communicate the offerings that are being considered or implemented to address the customer's business problem.</p>
    #   @return [Array<String>]
    # @!attribute aws_products
    #   <p>Enables the association of specific Amazon Web Services products with the <code>Opportunity</code>. Partners can indicate the relevant Amazon Web Services products for the <code>Opportunity</code>'s solution and align with the customer's needs. Returns multiple values separated by commas. For example, <code>"AWSProducts" : ["AmazonRedshift", "AWSAppFabric", "AWSCleanRooms"]</code>.</p> <p>Use the file with the list of Amazon Web Services products hosted on GitHub: <a href="https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json"> Amazon Web Services products</a>.</p>
    #   @return [Array<String>]
    class RelatedEntityIdentifiers < Struct.new(
      :aws_marketplace_offers,
      :solutions,
      :aws_products,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RelatedEntityType
      SOLUTIONS = 'Solutions'
      AWS_PRODUCTS = 'AwsProducts'
      AWS_MARKETPLACE_OFFERS = 'AwsMarketplaceOffers'
    end

    # <p>This error occurs when the specified resource can't be found. The resource might not exist, or isn't visible with the current credentials.</p> <p>Suggested action: Verify that the resource ID is correct and the resource is in the expected AWS region. Check IAM permissions for accessing the resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceSnapshotJobStatus
      RUNNING = 'Running'
      STOPPED = 'Stopped'
    end

    # <p> An object that contains a <code>Resource Snapshot Job</code>'s subset of fields. </p>
    # @!attribute id
    #   <p> The unique identifier for the resource snapshot job within the AWS Partner Central system. This ID is used for direct references to the job within the service. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) for the resource snapshot job. </p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p>The unique identifier of the Engagement.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the snapshot job.</p> <p>Valid values:</p> <ul> <li> <p> STOPPED: The job is not currently running. </p> </li> <li> <p> RUNNING: The job is actively executing. </p> </li> </ul>
    #   @return [String]
    class ResourceSnapshotJobSummary < Struct.new(
      :id,
      :arn,
      :engagement_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Represents the payload of a resource snapshot. This structure is designed to accommodate different types of resource snapshots, currently supporting opportunity summaries. </p>
    # @!attribute opportunity_summary
    #   <p> An object that contains an <code>opportunity</code>'s subset of fields. </p>
    #   @return [Types::OpportunitySummaryView]
    class ResourceSnapshotPayload < Struct.new(
      :opportunity_summary,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class OpportunitySummary < ResourceSnapshotPayload; end
      class Unknown < ResourceSnapshotPayload; end
    end

    # <p> Provides a concise summary of a resource snapshot, including its unique identifier and version information. This structure is used to quickly reference and identify specific versions of resource snapshots. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the snapshot. This globally unique identifier can be used for cross-service references and in IAM policies. </p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number of the snapshot. This integer value is incremented each time the snapshot is updated, allowing for version tracking of the resource snapshot. </p>
    #   @return [Integer]
    # @!attribute resource_type
    #   <p>The type of resource snapshotted.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the specific resource snapshotted. The format might vary depending on the ResourceType. </p>
    #   @return [String]
    # @!attribute resource_snapshot_template_name
    #   <p>The name of the template used to create the snapshot.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The AWS account ID of the entity that owns the resource from which the snapshot was created.</p>
    #   @return [String]
    class ResourceSnapshotSummary < Struct.new(
      :arn,
      :revision,
      :resource_type,
      :resource_id,
      :resource_snapshot_template_name,
      :created_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceType
      OPPORTUNITY = 'Opportunity'
    end

    module RevenueModel
      CONTRACT = 'Contract'
      PAY_AS_YOU_GO = 'Pay-as-you-go'
      SUBSCRIPTION = 'Subscription'
    end

    module ReviewStatus
      PENDING_SUBMISSION = 'Pending Submission'
      SUBMITTED = 'Submitted'
      IN_REVIEW = 'In review'
      APPROVED = 'Approved'
      REJECTED = 'Rejected'
      ACTION_REQUIRED = 'Action Required'
    end

    module SalesActivity
      INITIALIZED_DISCUSSIONS_WITH_CUSTOMER = 'Initialized discussions with customer'
      CUSTOMER_HAS_SHOWN_INTEREST = 'Customer has shown interest in solution'
      CONDUCTED_POC_DEMO = 'Conducted POC / Demo'
      IN_EVALUATION_PLANNING_STAGE = 'In evaluation / planning stage'
      AGREED_ON_SOLUTION_TO_BUSINESS_PROBLEM = 'Agreed on solution to Business Problem'
      COMPLETED_ACTION_PLAN = 'Completed Action Plan'
      FINALIZED_DEPLOYMENT_NEEDS = 'Finalized Deployment Need'
      SOW_SIGNED = 'SOW Signed'
    end

    module SalesInvolvementType
      FOR_VISIBILITY_ONLY = 'For Visibility Only'
      CO_SELL = 'Co-Sell'
    end

    # <p>An object that contains the details of the sender-provided contact person for the <code>EngagementInvitation</code>.</p>
    # @!attribute email
    #   <p>The sender-provided contact's email address associated with the <code>EngagementInvitation</code>.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The sender-provided contact's last name associated with the <code>EngagementInvitation</code>.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The sender-provided contact's first name associated with the <code>EngagementInvitation</code>.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>The sender-provided contact's title (job title or role) associated with the <code>EngagementInvitation</code>.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>The sender-provided contact's phone number associated with the <code>EngagementInvitation</code>.</p>
    #   @return [String]
    class SenderContact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This error occurs when the request would cause a service quota to be exceeded. Service quotas represent the maximum allowed use of a specific resource, and this error indicates that the request would surpass that limit.</p> <p>Suggested action: Review the <a href="https://docs.aws.amazon.com/partner-central/latest/selling-api/quotas.html">Quotas</a> for the resource, and either reduce usage or request a quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a customer's procurement terms details. Required only for partners in eligible programs.</p>
    # @!attribute delivery_model
    #   <p>Specifies the customer's intended payment type agreement or procurement method to acquire the solution or service outlined in the <code>Opportunity</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Specifies the payment value (amount and currency).</p>
    #   @return [Types::MonetaryValue]
    # @!attribute effective_date
    #   <p>Specifies the <code>Opportunity</code>'s customer engagement start date for the contract's effectiveness.</p>
    #   @return [String]
    # @!attribute expiration_date
    #   <p>Specifies the expiration date for the contract between the customer and Amazon Web Services partner. It signifies the termination date of the agreed-upon engagement period between both parties.</p>
    #   @return [String]
    class SoftwareRevenue < Struct.new(
      :delivery_model,
      :value,
      :effective_date,
      :expiration_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies minimal information for the solution offered to solve the customer's business problem.</p>
    # @!attribute catalog
    #   <p>Specifies the catalog in which the solution is hosted, either <code>AWS</code> or <code>Sandbox</code>. This helps partners differentiate between live solutions and those in testing environments.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Enables the association of solutions (offerings) to opportunities.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The SolutionBase structure provides essential information about a solution. </p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies the solution name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the solution's current status, which indicates its state in the system. Valid values: <code>Active</code> | <code>Inactive</code> | <code>Draft</code>. The status helps partners and Amazon Web Services track the solution's lifecycle and availability. Filter for <code>Active</code> solutions for association to an opportunity.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Specifies the solution category, which helps to categorize and organize the solutions partners offer. Valid values: <code>Software Product</code> | <code>Consulting Service</code> | <code>Hardware Product</code> | <code>Communications Product</code> | <code>Professional Service</code> | <code>Managed Service</code> | <code>Value-Added Resale Amazon Web Services Service</code> | <code>Distribution Service</code> | <code>Training Service</code> | <code>Merger and Acquisition Advising Service</code>.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>Indicates the solution creation date. This is useful to track and audit.</p>
    #   @return [Time]
    class SolutionBase < Struct.new(
      :catalog,
      :id,
      :arn,
      :name,
      :status,
      :category,
      :created_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configures the solutions' response sorting that enables partners to order solutions based on specified attributes.</p>
    # @!attribute sort_order
    #   <p>Specifies the sorting order, either <code>Ascending</code> or <code>Descending</code>. The default is <code>Descending</code>.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies the attribute to sort by, such as <code>Name</code>, <code>CreatedDate</code>, or <code>Status</code>.</p>
    #   @return [String]
    class SolutionSort < Struct.new(
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SolutionSortName
      IDENTIFIER = 'Identifier'
      NAME = 'Name'
      STATUS = 'Status'
      CATEGORY = 'Category'
      CREATEDDATE = 'CreatedDate'
    end

    module SolutionStatus
      ACTIVE = 'Active'
      INACTIVE = 'Inactive'
      DRAFT = 'Draft'
    end

    module SortBy
      CREATED_DATE = 'CreatedDate'
    end

    # <p> Defines the sorting parameters for listing resource snapshot jobs. This structure allows you to specify the field to sort by and the order of sorting. </p>
    # @!attribute sort_by
    #   <p> Specifies the field by which to sort the resource snapshot jobs. </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p> Determines the order in which the sorted results are presented. </p>
    #   @return [String]
    class SortObject < Struct.new(
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SortOrder
      ASCENDING = 'ASCENDING'
      DESCENDING = 'DESCENDING'
    end

    module Stage
      PROSPECT = 'Prospect'
      QUALIFIED = 'Qualified'
      TECHNICAL_VALIDATION = 'Technical Validation'
      BUSINESS_VALIDATION = 'Business Validation'
      COMMITTED = 'Committed'
      LAUNCHED = 'Launched'
      CLOSED_LOST = 'Closed Lost'
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the task. Use <code>AWS</code> for production engagements and <code>Sandbox</code> for testing scenarios.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier provided by the client that helps to ensure the idempotency of the request. This can be a random or meaningful string but must be unique for each request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Specifies the unique identifier of the <code>EngagementInvitation</code> to be accepted. Providing the correct identifier helps ensure that the correct engagement is processed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    #   @return [Array<Types::Tag>]
    class StartEngagementByAcceptingInvitationTaskRequest < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier of the task, used to track the task’s progress.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task, used for tracking and managing the task within AWS.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp indicating when the task was initiated. The format follows RFC 3339 section 5.6.</p>
    #   @return [Time]
    # @!attribute task_status
    #   <p>Indicates the current status of the task.</p>
    #   @return [String]
    # @!attribute message
    #   <p>If the task fails, this field contains a detailed message describing the failure and possible recovery steps.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>Indicates the reason for task failure using an enumerated code.</p>
    #   @return [String]
    # @!attribute opportunity_id
    #   <p>Returns the original opportunity identifier passed in the request. This is the unique identifier for the opportunity.</p>
    #   @return [String]
    # @!attribute resource_snapshot_job_id
    #   <p>The identifier of the Resource Snapshot Job created as part of this task.</p>
    #   @return [String]
    # @!attribute engagement_invitation_id
    #   <p>Returns the identifier of the engagement invitation that was accepted and used to create the opportunity.</p>
    #   @return [String]
    class StartEngagementByAcceptingInvitationTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog in which the engagement is tracked. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token provided by the client to help ensure the idempotency of the request. It helps prevent the same task from being performed multiple times.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the opportunity from which the engagement task is to be initiated. This helps ensure that the task is applied to the correct opportunity.</p>
    #   @return [String]
    # @!attribute aws_submission
    #   <p>Indicates the level of AWS involvement in the opportunity. This field helps track AWS participation throughout the engagement, such as providing technical support, deal assistance, and sales support.</p>
    #   @return [Types::AwsSubmission]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    #   @return [Array<Types::Tag>]
    class StartEngagementFromOpportunityTaskRequest < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :aws_submission,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier of the task, used to track the task’s progress. This value follows a specific pattern: <code>^oit-[0-9a-z]{13}$</code>.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task, used for tracking and managing the task within AWS.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp indicating when the task was initiated. The format follows RFC 3339 section 5.6.</p>
    #   @return [Time]
    # @!attribute task_status
    #   <p>Indicates the current status of the task. Valid values include <code>IN_PROGRESS</code>, <code>COMPLETE</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>If the task fails, this field contains a detailed message describing the failure and possible recovery steps.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>Indicates the reason for task failure using an enumerated code.</p>
    #   @return [String]
    # @!attribute opportunity_id
    #   <p>Returns the original opportunity identifier passed in the request, which is the unique identifier for the opportunity created in the partner’s system.</p>
    #   @return [String]
    # @!attribute resource_snapshot_job_id
    #   <p>The identifier of the resource snapshot job created to add the opportunity resource snapshot to the Engagement. Only populated if TaskStatus is COMPLETE</p>
    #   @return [String]
    # @!attribute engagement_id
    #   <p>The identifier of the newly created Engagement. Only populated if TaskStatus is COMPLETE.</p>
    #   @return [String]
    # @!attribute engagement_invitation_id
    #   <p>The identifier of the new Engagement invitation. Only populated if TaskStatus is COMPLETE.</p>
    #   @return [String]
    class StartEngagementFromOpportunityTaskResponse < Struct.new(
      :task_id,
      :task_arn,
      :start_time,
      :task_status,
      :message,
      :reason_code,
      :opportunity_id,
      :resource_snapshot_job_id,
      :engagement_id,
      :engagement_invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Starts the request from the production AWS environment.</p> </li> <li> <p>Sandbox: Starts the request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    #   @return [String]
    # @!attribute resource_snapshot_job_identifier
    #   <p>The identifier of the resource snapshot job to start.</p>
    #   @return [String]
    class StartResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Stops the request from the production AWS environment.</p> </li> <li> <p>Sandbox: Stops the request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    #   @return [String]
    # @!attribute resource_snapshot_job_identifier
    #   <p>The identifier of the job to stop.</p>
    #   @return [String]
    class StopResourceSnapshotJobRequest < Struct.new(
      :catalog,
      :resource_snapshot_job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Submits the opportunity request from the production AWS environment.</p> </li> <li> <p>Sandbox: Submits the opportunity request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the Opportunity previously created by partner and needs to be submitted.</p>
    #   @return [String]
    # @!attribute involvement_type
    #   <p>Specifies the level of AWS sellers' involvement on the opportunity. Valid values:</p> <ul> <li> <p> <code>Co-sell</code>: Indicates the user wants to co-sell with AWS. Share the opportunity with AWS to receive deal assistance and support.</p> </li> <li> <p> <code>For Visibility Only</code>: Indicates that the user does not need support from AWS Sales Rep. Share this opportunity with AWS for visibility only, you will not receive deal assistance and support.</p> </li> </ul>
    #   @return [String]
    # @!attribute visibility
    #   <p>Determines whether to restrict visibility of the opportunity from AWS sales. Default value is Full. Valid values:</p> <ul> <li> <p> <code>Full</code>: The opportunity is fully visible to AWS sales.</p> </li> <li> <p> <code>Limited</code>: The opportunity has restricted visibility to AWS sales.</p> </li> </ul>
    #   @return [String]
    class SubmitOpportunityRequest < Struct.new(
      :catalog,
      :identifier,
      :involvement_type,
      :visibility,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The key-value pair assigned to a specified resource.</p>
    # @!attribute key
    #   <p>The key in the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value in the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TaskStatus
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETE = 'COMPLETE'
      FAILED = 'FAILED'
    end

    # <p>This error occurs when there are too many requests sent. Review the provided quotas and adapt your usage to avoid throttling.</p> <p>This error occurs when there are too many requests sent. Review the provided <a href="https://docs.aws.amazon.com/partner-central/latest/selling-api/quotas.html">Quotas</a> and retry after the provided delay.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is updated in. Use <code>AWS</code> to update real opportunities in the production environment, and <code>Sandbox</code> for testing in secure, isolated environments. When you use the <code>Sandbox</code> catalog, it allows you to simulate and validate your interactions with Amazon Web Services services without affecting live data or operations.</p>
    #   @return [String]
    # @!attribute primary_needs_from_aws
    #   <p>Identifies the type of support the partner needs from Amazon Web Services.</p> <p>Valid values:</p> <ul> <li> <p>Cosell—Architectural Validation: Confirmation from Amazon Web Services that the partner's proposed solution architecture is aligned with Amazon Web Services best practices and poses minimal architectural risks.</p> </li> <li> <p>Cosell—Business Presentation: Request Amazon Web Services seller's participation in a joint customer presentation.</p> </li> <li> <p>Cosell—Competitive Information: Access to Amazon Web Services competitive resources and support for the partner's proposed solution.</p> </li> <li> <p>Cosell—Pricing Assistance: Connect with an AWS seller for support situations where a partner may be receiving an upfront discount on a service (for example: EDP deals).</p> </li> <li> <p>Cosell—Technical Consultation: Connection with an Amazon Web Services Solutions Architect to address the partner's questions about the proposed solution.</p> </li> <li> <p>Cosell—Total Cost of Ownership Evaluation: Assistance with quoting different cost savings of proposed solutions on Amazon Web Services versus on-premises or a traditional hosting environment.</p> </li> <li> <p>Cosell—Deal Support: Request Amazon Web Services seller's support to progress the opportunity (for example: joint customer call, strategic positioning).</p> </li> <li> <p>Cosell—Support for Public Tender/RFx: Opportunity related to the public sector where the partner needs RFx support from Amazon Web Services.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute national_security
    #   <p>Specifies if the opportunity is associated with national security concerns. This flag is only applicable when the industry is <code>Government</code>. For national-security-related opportunities, validation and compliance rules may apply, impacting the opportunity's visibility and processing.</p>
    #   @return [String]
    # @!attribute partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload sent back to the partner.</p>
    #   @return [String]
    # @!attribute customer
    #   <p>Specifies details of the customer associated with the <code>Opportunity</code>.</p>
    #   @return [Types::Customer]
    # @!attribute project
    #   <p>An object that contains project details summary for the <code>Opportunity</code>.</p>
    #   @return [Types::Project]
    # @!attribute opportunity_type
    #   <p>Specifies the opportunity type as a renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, ensuring continuity of service.</p> </li> <li> <p>Expansion opportunity: Represents an opportunity to expand the scope of an existing contract or subscription, either by adding new services or increasing the volume of existing services for a current customer.</p> </li> </ul>
    #   @return [String]
    # @!attribute marketing
    #   <p>An object that contains marketing details for the <code>Opportunity</code>.</p>
    #   @return [Types::Marketing]
    # @!attribute software_revenue
    #   <p>Specifies details of a customer's procurement terms. Required only for partners in eligible programs.</p>
    #   @return [Types::SoftwareRevenue]
    # @!attribute last_modified_date
    #   <p> <code>DateTime</code> when the opportunity was last modified.</p>
    #   @return [Time]
    # @!attribute identifier
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    #   @return [String]
    # @!attribute life_cycle
    #   <p>An object that contains lifecycle details for the <code>Opportunity</code>.</p>
    #   @return [Types::LifeCycle]
    class UpdateOpportunityRequest < Struct.new(
      :catalog,
      :primary_needs_from_aws,
      :national_security,
      :partner_opportunity_identifier,
      :customer,
      :project,
      :opportunity_type,
      :marketing,
      :software_revenue,
      :last_modified_date,
      :identifier,
      :life_cycle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p> <code>DateTime</code> when the opportunity was last modified.</p>
    #   @return [Time]
    class UpdateOpportunityResponse < Struct.new(
      :id,
      :last_modified_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service or business validation rules.</p> <p>Suggested action: Review the error message, including the failed fields and reasons, to correct the request payload.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The primary reason for this validation exception to occur.</p> <ul> <li> <p> <i>REQUEST_VALIDATION_FAILED:</i> The request format is not valid.</p> <p>Fix: Verify your request payload includes all required fields, uses correct data types and string formats.</p> </li> <li> <p> <i>BUSINESS_VALIDATION_FAILED:</i> The requested change doesn't pass the business validation rules.</p> <p>Fix: Check that your change aligns with the business rules defined by AWS Partner Central.</p> </li> </ul>
    #   @return [String]
    # @!attribute error_list
    #   <p>A list of issues that were discovered in the submitted request or the resource state.</p>
    #   @return [Array<Types::ValidationExceptionError>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates an invalid value for a field.</p> <ul> <li> <p> <i>REQUIRED_FIELD_MISSING:</i> The request is missing a required field.</p> <p>Fix: Verify your request payload includes all required fields.</p> </li> <li> <p> <i>INVALID_ENUM_VALUE:</i> The enum field value isn't an accepted values.</p> <p>Fix: Check the documentation for the list of valid enum values, and update your request with a valid value.</p> </li> <li> <p> <i>INVALID_STRING_FORMAT:</i> The string format is invalid.</p> <p>Fix: Confirm that the string is in the expected format (For example: email address, date).</p> </li> <li> <p> <i>INVALID_VALUE:</i> The value isn't valid.</p> <p>Fix: Confirm that the value meets the expected criteria and is within the allowable range or set.</p> </li> <li> <p> <i>TOO_MANY_VALUES:</i> There are too many values in a field that expects fewer entries.</p> <p>Fix: Reduce the number of values to match the expected limit.</p> </li> <li> <p> <i>ACTION_NOT_PERMITTED:</i> The action isn't permitted due to current state or permissions.</p> <p>Fix: Verify that the action is appropriate for the current state, and that you have the necessary permissions to perform it.</p> </li> <li> <p> <i>DUPLICATE_KEY_VALUE:</i> The value in a field duplicates a value that must be unique.</p> <p>Fix: Verify that the value is unique and doesn't duplicate an existing value in the system.</p> </li> </ul>
    # @!attribute field_name
    #   <p>Specifies the field name with the invalid value.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies the detailed error message for the invalid field value.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Specifies the error code for the invalid field value.</p>
    #   @return [String]
    class ValidationExceptionError < Struct.new(
      :field_name,
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionErrorCode
      REQUIRED_FIELD_MISSING = 'REQUIRED_FIELD_MISSING'
      INVALID_ENUM_VALUE = 'INVALID_ENUM_VALUE'
      INVALID_STRING_FORMAT = 'INVALID_STRING_FORMAT'
      INVALID_VALUE = 'INVALID_VALUE'
      TOO_MANY_VALUES = 'TOO_MANY_VALUES'
      INVALID_RESOURCE_STATE = 'INVALID_RESOURCE_STATE'
      DUPLICATE_KEY_VALUE = 'DUPLICATE_KEY_VALUE'
      VALUE_OUT_OF_RANGE = 'VALUE_OUT_OF_RANGE'
      ACTION_NOT_PERMITTED = 'ACTION_NOT_PERMITTED'
    end

    module ValidationExceptionReason
      REQUEST_VALIDATION_FAILED = 'REQUEST_VALIDATION_FAILED'
      BUSINESS_VALIDATION_FAILED = 'BUSINESS_VALIDATION_FAILED'
    end

    module Visibility
      FULL = 'Full'
      LIMITED = 'Limited'
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralMarketing
  module Types

    # You do not have sufficient access to perform this action.
    #
    # An IAM denial carries no `Reason`. A refusal for the caller's Partner
    # Central state carries one, so a client tells the two apart by its
    # presence.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Why the caller was refused, when the refusal is about the caller's
    #   Partner Central state rather than IAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # One thing that must be fixed before activation.
    #
    # @!attribute [rw] code
    #   What is wrong. Branch on this, not on `Message`.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The asset field to fix. Present for asset-level issues, except
    #   `SEND_MODE_MISSING` and a `CONTENT_REJECTED` that refused the
    #   asset's text as a whole rather than one field.
    #   @return [String]
    #
    # @!attribute [rw] campaign_setting
    #   The `UpdateCampaign` member to set. Present for campaign-level
    #   issues.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_field
    #   The partner-profile value to set or shorten, in AWS Partner Central,
    #   or the derived value whose input it is. Present on
    #   `PARTNER_PROFILE_FIELD_MISSING` and
    #   `PARTNER_PROFILE_FIELD_DOES_NOT_FIT`.
    #   @return [String]
    #
    # @!attribute [rw] affected_asset_ids
    #   The assets this campaign-level issue blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   A description for display. Don't parse it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ActivationIssue AWS API Documentation
    #
    class ActivationIssue < Struct.new(
      :code,
      :field_id,
      :campaign_setting,
      :partner_profile_field,
      :affected_asset_ids,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An `AssetLink` field's constraints.
    #
    # @!attribute [rw] category
    #   The category of asset the field may name. The value must be an asset
    #   of this category on the same campaign; list the candidates with
    #   `ListCampaignAssets`.
    #   @return [String]
    #
    # @!attribute [rw] label_field_id
    #   The text field on the same asset whose copy names the linked asset,
    #   such as the "Solution Brief" in "Your Solution Brief is ready to
    #   download!". When the partner picks an asset, fill this field with
    #   the picked asset's `LinkLabel`, in a preview and in the same save,
    #   unless the partner has edited it. The field stays editable. The
    #   service does the same when a save changes the link without setting
    #   this field and the partner has never written it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/AssetLinkFieldType AWS API Documentation
    #
    class AssetLinkFieldType < Struct.new(
      :category,
      :label_field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One blueprint to instantiate.
    #
    # Carries nothing but the blueprint's identity, and that is the point
    # rather than a saving: category, name, FileFormat and platform are all
    # derived from the named blueprint, so no caller has a member with which
    # to contradict the pinned schema (asset design section 3.1).
    #
    # There is deliberately no per-entry ClientToken. AWS Batch Operations
    # requires a *request identifier* per entry -- "a request identifier CAN
    # either be a resource identifier or a client idempotency token" -- and
    # SourceAssetTemplateIdentifier is a resource identifier, unique across
    # entries and echoed in this entry's error. Idempotency is structural
    # rather than token-based: an asset id is derived from (CampaignId,
    # SourceAssetTemplateId), so a replayed entry resolves to the same asset
    # (I-16).
    #
    # @!attribute [rw] source_asset_template_identifier
    #   The asset template to instantiate, as returned by
    #   GetCampaignTemplate in CampaignTemplate.AssetTemplates\[\].id.
    #
    #   Must belong to the campaign's own campaign template. An asset's
    #   editable field schema is copied from this blueprint at creation and
    #   pinned, so an asset without one could be neither validated on update
    #   nor made live.
    #
    #   Also this entry's request identifier: it MUST be unique across the
    #   request's entries, since a campaign holds at most one asset per
    #   blueprint (I-15) and two entries naming the same blueprint could not
    #   both succeed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAssetEntry AWS API Documentation
    #
    class BatchCreateCampaignAssetEntry < Struct.new(
      :source_asset_template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Why one entry could not be instantiated.
    #
    # @!attribute [rw] source_asset_template_id
    #   The failing entry's request identifier, so a caller can match this
    #   error to the entry it sent.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Error code -- ResourceNotFoundException when the blueprint is not on
    #   the campaign's bound template, InternalServerException otherwise.
    #   Throttling never appears here: DG throttles per operation, so a
    #   throttle fails the whole batch.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Human-readable cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAssetError AWS API Documentation
    #
    class BatchCreateCampaignAssetError < Struct.new(
      :source_asset_template_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchCreateCampaignAsset operation.
    #
    # DG-038: replaces CreateCampaignAssetRequest. Selecting assets is a set
    # decision -- a partner picks which of the bound campaign template's
    # blueprints this campaign will carry -- so the operation takes a list
    # of entries and there is no singular create. "Add the blueprint I
    # skipped" is a batch of one.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   The blueprints to instantiate, one entry each.
    #   @return [Array<Types::BatchCreateCampaignAssetEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAssetRequest AWS API Documentation
    #
    class BatchCreateCampaignAssetRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for BatchCreateCampaignAsset.
    #
    # Per-entry, per AWS Batch Operations. `Errors` is required and is empty
    # rather than absent on a fully successful call; `Successful` is the
    # success list the standard makes optional, and DG returns it because a
    # client otherwise cannot learn the ids that were created.
    #
    # Status is 200 whenever entries were processed individually --
    # including when every entry failed, since the batch itself succeeded
    # and the entries did not. A 4xx means the batch could not be attempted
    # as a whole and nothing was written.
    #
    # A partial batch is a real state and the recovery is to re-send the
    # same entry list: an entry is idempotent by identity (I-15/I-16), so
    # what landed no-ops and what did not gets created. An already-existing
    # asset is therefore a `Successful` row, not an error -- were it an
    # error, a client looping until `Errors` is empty would never terminate.
    #
    # @!attribute [rw] errors
    #   One entry per blueprint that could not be instantiated. Empty, never
    #   absent, when all entries succeeded.
    #   @return [Array<Types::BatchCreateCampaignAssetError>]
    #
    # @!attribute [rw] successful
    #   One entry per asset that exists as a result of this call, whether
    #   created here or already present.
    #   @return [Array<Types::BatchCreateCampaignAssetResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAssetResponse AWS API Documentation
    #
    class BatchCreateCampaignAssetResponse < Struct.new(
      :errors,
      :successful)
      SENSITIVE = []
      include Aws::Structure
    end

    # One asset that exists as a result of this call.
    #
    # @!attribute [rw] source_asset_template_id
    #   The entry's request identifier.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The asset's identifier, derived from (CampaignId,
    #   SourceAssetTemplateId) rather than minted, so the same entry always
    #   resolves to the same id.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   For a multi-layout blueprint, the asset's layout options, so a
    #   client can render the first layout picker without reading each asset
    #   back. Nothing is selected at creation. Absent for a single-layout
    #   blueprint.
    #   @return [Types::CampaignAssetLayout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/BatchCreateCampaignAssetResult AWS API Documentation
    #
    class BatchCreateCampaignAssetResult < Struct.new(
      :source_asset_template_id,
      :id,
      :layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # A marketing campaign resource.
    #
    # @!attribute [rw] campaign_id
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The campaign ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The campaign's state, derived on every read from `EndOn` and its
    #   assets. See `CampaignState`.
    #   @return [String]
    #
    # @!attribute [rw] campaign_template_id
    #   The campaign template this campaign draws its assets from. Set at
    #   create, immutable.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language the campaign's assets are written and typeset in: its
    #   template's `LanguageCode`, set at create. To work in another
    #   language, create the campaign from that language's template.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile
    #   The partner's branding — display name, website and logo — from
    #   their AWS Partner Central profile, rendered onto every asset of this
    #   campaign. Read-only here: the partner edits it in Partner Central,
    #   and the next activation or export uses the change. Absent only when
    #   the partner has no profile.
    #   @return [Types::PartnerProfileBranding]
    #
    # @!attribute [rw] sender_email
    #   The address the campaign's emails are sent from. Absent until one
    #   is set.
    #   @return [String]
    #
    # @!attribute [rw] privacy_policy_url
    #   The URL of the partner's privacy policy. Absent until one is set.
    #   @return [String]
    #
    # @!attribute [rw] partner_address
    #   The partner's postal address. Absent until one is set.
    #   @return [String]
    #
    # @!attribute [rw] partner_badge
    #   The partner's badge. Absent until one is set, and every badge slot
    #   shows the Standalone AWS Partner badge while the partner's primary
    #   AWS Partner path is at stage Validated or Differentiated. Below
    #   that, no badge is shown.
    #   @return [Types::PartnerBadgeDetail]
    #
    # @!attribute [rw] email_target
    #   The attached recipient list — metadata only. There is no read path
    #   for the addresses.
    #   @return [Types::EmailTargetDetail]
    #
    # @!attribute [rw] email_target_engagement_group_ids
    #   The engagement groups set by `CreateCampaign` / `UpdateCampaign`.
    #   Absent until set. Resolved to recipients at Start, where the stage
    #   can.
    #   @return [Array<String>]
    #
    # @!attribute [rw] social_connections
    #   The account the campaign's social posts publish from, per platform,
    #   as set by `UpdateCampaign`. Absent until one is set.
    #
    #   Needed only for a platform where you hold two or more connections.
    #   With none set, a post uses your one connection on its platform, and
    #   fails `SOCIAL\_CONNECTION\_NOT\_CHOSEN` when you hold several. A
    #   choice that no longer names a connection on its platform fails
    #   `SOCIAL\_CONNECTION\_MISSING`. Join with `ListSocialConnections`
    #   for each connection's status.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] estimated_budget
    #   What the partner expects the campaign to cost.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] total_budget
    #   The campaign's total budget.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] target_audience
    #   Target audience configuration.
    #   @return [Types::TargetAudience]
    #
    # @!attribute [rw] start_on
    #   The first day of the campaign's run window.
    #   @return [String]
    #
    # @!attribute [rw] end_on
    #   The last day of the campaign's run window.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Last update timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] activation_issues
    #   Campaign settings that must be set before the assets listed in each
    #   issue can be activated. Empty when nothing is missing.
    #
    #   Each issue names the setting in `CampaignSetting` — set it with
    #   `UpdateCampaign` — or the profile value in `PartnerProfileField` —
    #   set it in Partner Central — and the assets it blocks in
    #   `AffectedAssetIds`. `StartCampaignAssetActivationTask` refuses with
    #   `ValidationException` (`CAMPAIGN_INCOMPLETE`) while a requested
    #   asset is affected.
    #   @return [Array<Types::ActivationIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :campaign_id,
      :arn,
      :name,
      :state,
      :campaign_template_id,
      :language,
      :partner_profile,
      :sender_email,
      :privacy_policy_url,
      :partner_address,
      :partner_badge,
      :email_target,
      :email_target_engagement_group_ids,
      :social_connections,
      :estimated_budget,
      :total_budget,
      :target_audience,
      :start_on,
      :end_on,
      :created_at,
      :updated_at,
      :activation_issues)
      SENSITIVE = [:sender_email, :partner_address]
      include Aws::Structure
    end

    # A marketing asset resource within a campaign.
    #
    # @!attribute [rw] id
    #   The asset identifier.
    #   @return [String]
    #
    # @!attribute [rw] campaign_id
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The asset category.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] link_label
    #   DOCUMENT only: the words a page uses for this document, such as
    #   "eBook". Fill an `AssetLink` field's `LabelFieldId` with it when
    #   the partner picks this asset.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Whether the asset is live.
    #
    #   Reports current truth only, and nothing else on this shape overrides
    #   it. During an *initial* publication it stays INACTIVE until the
    #   delivery platform holds the object; during a *re*-publication it
    #   stays ACTIVE, because the previously published content is still
    #   serving.
    #
    #   A stopped asset and one never started both read INACTIVE;
    #   `LastActivationStatus` tells them apart, because a stop does not
    #   change how the last activation went — stopped is INACTIVE with that
    #   member `SUCCEEDED`, never started is INACTIVE with it absent.
    #
    #   An update never moves this member.
    #   @return [String]
    #
    # @!attribute [rw] last_activation_status
    #   How the most recent hand-over to the delivery platform ended.
    #
    #   The hand-over, not the delivery: if DG got the artifact scheduled at
    #   the platform this is SUCCEEDED, and whether the platform then
    #   delivered is `DeliveryStatus`. Per category the hand-over point is —
    #   email: the mailing armed; social: the create, which *is* the
    #   schedule; landing page: create plus publish-personalisation;
    #   document: bytes written.
    #
    #   Read with `State` this is what separates a stopped asset (INACTIVE
    #   with SUCCEEDED here) from one never activated (INACTIVE with this
    #   member absent) — a stop does not change how the last *activation*
    #   went.
    #
    #   There is no public UNKNOWN. A hand-over whose outcome DG cannot yet
    #   determine reports IN\_PROGRESS, because a partner's action is
    #   identical either way and there is nothing to do with "unknown".
    #   Reporting it as FAILED would be the harmful collapse: that reads as
    #   safe to retry, and a retry on an at-most-once create publishes a
    #   second live object.
    #
    #   Omitted before the first activation attempt.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status
    #   What the platform did with the artifact after accepting it.
    #
    #   EMAIL and SOCIAL\_POST only — absent on every other category, which
    #   has no delivery event. See the DeliveryStatus docs.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status_reason
    #   Why delivery failed. Present only when DeliveryStatus is FAILED. For
    #   an email the platform rejected: SENDER\_EMAIL\_INVALID,
    #   RECIPIENT\_LIST\_EMPTY, MAILING\_CREDITS\_EXHAUSTED or
    #   RECIPIENT\_LIMIT\_EXCEEDED. Otherwise DELIVERY\_FAILED. A Facebook
    #   post refused because its connection has no Page is FAILED with
    #   SOCIAL\_CONNECTION\_PAGE\_REQUIRED, and withdrawn: reconnect
    #   Facebook with a Page selected. A social post the platform stopped
    #   retrying, because it could not publish within 12 hours of its
    #   scheduled time, is FAILED with DELIVERY\_FAILED. Any other social
    #   post that could not be published stays PENDING while it is
    #   investigated, and is reported FAILED with DELIVERY\_FAILED once it
    #   is confirmed it will not go out. Deactivate and activate the asset
    #   again to retry.
    #   @return [String]
    #
    # @!attribute [rw] source_asset_template_id
    #   The asset template this asset was created from: the
    #   `SourceAssetTemplateIdentifier` its `BatchCreateCampaignAsset` entry
    #   named, one of `GetCampaignTemplate`'s
    #   `CampaignTemplate.AssetTemplates[].Id`. Set at create and never
    #   writable. Absent on an asset created before DG recorded it, which
    #   can't be activated either. A campaign holds at most one asset per
    #   asset template, so this is how a client matches a campaign's assets
    #   to its template's asset templates, for example to create the same
    #   assets in another campaign. Names don't identify one: two asset
    #   templates can share a name.
    #   @return [String]
    #
    # @!attribute [rw] social_platform
    #   SOCIAL\_POST only: the platform the post goes to, set from its
    #   template and never writable. The same value
    #   `CampaignAssetSummary.SocialPlatform` reports. Absent for every
    #   other category.
    #   @return [String]
    #
    # @!attribute [rw] file_format
    #   Concrete file format of the finished artifact. For `DOWNLOAD_ONLY`
    #   this is the format of the object export copies through verbatim.
    #   @return [String]
    #
    # @!attribute [rw] send_mode
    #   When this asset sends, as chosen with UpdateCampaignAsset. `EMAIL`
    #   and `SOCIAL_POST` only — the two categories whose delivery platform
    #   holds a schedule of its own. Absent until chosen, and then the asset
    #   reports `SEND_MODE_MISSING`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_send_at
    #   The send time, present only when `SendMode` is `SCHEDULED`. It
    #   reaches the delivery platform at the asset's next activation.
    #
    #   Was `scheduleDate: UtcDate`; retyped with the write member of the
    #   same name.
    #   @return [Time]
    #
    # @!attribute [rw] field_values
    #   The asset's pinned template fields — the field schema copied from
    #   the blueprint at instantiation, each paired with the partner's
    #   current value. Present on every asset instantiated from a blueprint
    #   that offers editable fields, whatever its category (design section
    #   3.1); absent on one whose blueprint offers none.
    #   @return [Array<Types::CampaignAssetFieldValue>]
    #
    # @!attribute [rw] layout_previews
    #   The asset's AWS-authored layout, as stable public CDN URLs composed
    #   from the fileKeys copied off the blueprint at instantiation.
    #   Together with FieldValues this makes the asset self-describing: a
    #   client renders the edit form and shows the real layout while
    #   editing, with no template lookup.
    #
    #   The stored form is a bare object key and the URL is composed on
    #   read. The key is revision-addressed and prior revisions are
    #   retained, so the key IS the pin — nothing is copied into the asset
    #   bucket, and there is no version parameter to carry (DG-038).
    #
    #   One entry for every category except LANDING\_PAGE, which has two and
    #   distinguishes them with PageType.
    #
    #   On a multi-layout asset, the SELECTED option's pages only (its
    #   first option when none is stored); each option's own previews are
    #   on layout.options.
    #   @return [Array<Types::LayoutPreview>]
    #
    # @!attribute [rw] layout
    #   A multi-layout asset's layout choice (DG-044): the selection once
    #   made, and every option the asset was created with. Absent for a
    #   single-layout asset.
    #
    #   FieldValues is always the union of every option's fields, selected
    #   or not, so a client can switch layouts without a round trip: each
    #   option lists its own FieldIds. The selection drives layout.selected
    #   and the top-level LayoutPreviews only.
    #   @return [Types::CampaignAssetLayout]
    #
    # @!attribute [rw] activation_issues
    #   What must be fixed on this asset before it can be activated. Empty
    #   when the asset is ready.
    #
    #   Issues don't block saving: an asset can be saved incomplete and
    #   fixed over several updates. `StartCampaignAssetActivationTask`
    #   refuses an asset that still has issues: an issue blocks activation
    #   when only an edit to the asset can change the outcome. Most issues
    #   name the field to fix in `FieldId`. Fix it with
    #   `UpdateCampaignAsset`, then read this list again.
    #
    #   Besides the issues computed from the asset's content, the list
    #   carries what the last activation found: `CONTENT_REJECTED` and
    #   `PARTNER_IMAGE_REJECTED` when moderation refused a field. Editing
    #   that field removes its issue. A `CONTENT_REJECTED` without a
    #   `FieldId` means the text was refused as a whole; editing any text
    #   field removes it.
    #
    #   Problems with the campaign's own settings, such as a missing
    #   recipient list, and with the partner's profile, such as a missing
    #   logo, are reported on `Campaign.ActivationIssues`, not here.
    #   @return [Array<Types::ActivationIssue>]
    #
    # @!attribute [rw] public_url
    #   The live public address this asset's activation produced.
    #
    #   A landing page's page URL, read back from the delivery platform at
    #   activation and preserved across every convergence; a document's
    #   public CDN URL, composed on read from the key the publish wrote.
    #   Absent until the asset activates, and absent for EMAIL and
    #   SOCIAL\_POST, which produce no partner-addressable URL of their own.
    #
    #   For a landing page this is the entire deliverable — without it a
    #   partner has no way to learn where their live page is. A WIDGET
    #   landing page reports none: it is embedded rather than standalone, so
    #   absence there is expected rather than a fault.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Last update timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAsset AWS API Documentation
    #
    class CampaignAsset < Struct.new(
      :id,
      :campaign_id,
      :category,
      :name,
      :link_label,
      :state,
      :last_activation_status,
      :delivery_status,
      :delivery_status_reason,
      :source_asset_template_id,
      :social_platform,
      :file_format,
      :send_mode,
      :scheduled_send_at,
      :field_values,
      :layout_previews,
      :layout,
      :activation_issues,
      :public_url,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # How one asset named in a task is going.
    #
    # @!attribute [rw] campaign_asset_id
    #   The asset this outcome belongs to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This asset's contribution to the task's status.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Why the activation did not succeed. Present when status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of `Reason` for display. Don't parse it. For a
    #   mailing-credit shortfall it states the credits needed and remaining.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetActivationOutcome AWS API Documentation
    #
    class CampaignAssetActivationOutcome < Struct.new(
      :campaign_asset_id,
      :status,
      :reason,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Why a campaign asset export task failed. Present only when the task's
    # status is FAILED.
    #
    # Dedicated to the export flow — deliberately not the service-wide
    # FailureReason/FailureCode, so export codes are not advertised in the
    # SDKs of unrelated operations. Treat an unrecognised code as an
    # unspecified failure and fall back to message.
    #
    # @!attribute [rw] code
    #   Machine-readable failure cause.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Human-readable explanation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetExportFailureReason AWS API Documentation
    #
    class CampaignAssetExportFailureReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One template field on an asset: the schema snapshot taken at
    # instantiation plus the current value. The value is absent while the
    # field is unfilled.
    #
    # Schema and value are one shape rather than two lists because a client
    # rendering an edit form needs both together, and because the pin
    # (design section 3.1) is what an update validates against — separating
    # them would let values outlive the schema they were checked against.
    #
    # Addressed by the **DG** FieldId throughout. The delivery platform's
    # own field-definition ids stay on the template record and are joined in
    # at activation, so a vendor identifier never reaches an asset row or a
    # response (DG-025 containment).
    #
    # @!attribute [rw] field
    #   The field schema (snapshot from the template).
    #   @return [Types::CampaignAssetTemplateField]
    #
    # @!attribute [rw] value
    #   The field's current value; the variant matches the field's type.
    #   @return [Types::TemplateFieldValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetFieldValue AWS API Documentation
    #
    class CampaignAssetFieldValue < Struct.new(
      :field,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image stored on one of your assets, named by the field that holds
    # it.
    #
    # @!attribute [rw] campaign_identifier
    #   The source campaign's id or ARN.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifier
    #   The source asset's id.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The source image field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetImageSource AWS API Documentation
    #
    class CampaignAssetImageSource < Struct.new(
      :campaign_identifier,
      :campaign_asset_identifier,
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A multi-layout asset's layout choice: the selection, when made, and
    # its options.
    #
    # @!attribute [rw] selected
    #   The selected option's value. An asset is created with its first
    #   option selected; an asset created before that rule, with none
    #   stored, reports and activates its first option.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Every option the asset was created with, in authored order.
    #   @return [Array<Types::CampaignAssetLayoutOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetLayout AWS API Documentation
    #
    class CampaignAssetLayout < Struct.new(
      :selected,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # One layout a multi-layout asset offers.
    #
    # @!attribute [rw] value
    #   The value that selects this option.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Display label.
    #   @return [String]
    #
    # @!attribute [rw] field_ids
    #   The fields this option uses: the FieldValues that stay in scope when
    #   it is selected. Lets a client show an option's form before
    #   selecting it.
    #   @return [Array<String>]
    #
    # @!attribute [rw] layout_previews
    #   This option's pages, in page order.
    #   @return [Array<Types::LayoutPreview>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetLayoutOption AWS API Documentation
    #
    class CampaignAssetLayoutOption < Struct.new(
      :value,
      :label,
      :field_ids,
      :layout_previews)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation of an asset for list operations.
    #
    # @!attribute [rw] id
    #   The asset identifier.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The asset category.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] link_label
    #   DOCUMENT only: the words a page uses for this document, such as
    #   "eBook". A client listing the candidates for an `AssetLink` field
    #   reads it here, so a preview can update on pick without a fetch.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Where the asset sits in its lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] last_activation_status
    #   How the last hand-over to the delivery platform ended. Absent before
    #   the first activation.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status
    #   Whether the platform has delivered the asset.
    #   @return [String]
    #
    # @!attribute [rw] delivery_status_reason
    #   Why delivery failed. Present only when DeliveryStatus is FAILED. For
    #   an email the platform rejected: SENDER\_EMAIL\_INVALID,
    #   RECIPIENT\_LIST\_EMPTY, MAILING\_CREDITS\_EXHAUSTED or
    #   RECIPIENT\_LIMIT\_EXCEEDED. Otherwise DELIVERY\_FAILED. A Facebook
    #   post refused because its connection has no Page is FAILED with
    #   SOCIAL\_CONNECTION\_PAGE\_REQUIRED, and withdrawn: reconnect
    #   Facebook with a Page selected. A social post the platform stopped
    #   retrying, because it could not publish within 12 hours of its
    #   scheduled time, is FAILED with DELIVERY\_FAILED. Any other social
    #   post that could not be published stays PENDING while it is
    #   investigated, and is reported FAILED with DELIVERY\_FAILED once it
    #   is confirmed it will not go out. Deactivate and activate the asset
    #   again to retry.
    #   @return [String]
    #
    # @!attribute [rw] source_asset_template_id
    #   The asset template this asset was created from. The same value
    #   `CampaignAsset.SourceAssetTemplateId` reports, and absent when it
    #   is.
    #   @return [String]
    #
    # @!attribute [rw] social_platform
    #   SOCIAL\_POST only: the platform the post goes to. Join it with
    #   ListSocialConnections' status for that platform to show a post that
    #   cannot activate (a connection missing, EXPIRED or PAGE\_REQUIRED)
    #   before Start is pressed.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When the asset first went live, set once. Absent if it never has.
    #   @return [Time]
    #
    # @!attribute [rw] file_format
    #   Concrete file format of the finished artifact.
    #   @return [String]
    #
    # @!attribute [rw] send_mode
    #   When this asset sends, as chosen with UpdateCampaignAsset. `EMAIL`
    #   and `SOCIAL_POST` only — the two categories whose delivery platform
    #   holds a schedule of its own. Absent until chosen, and then the asset
    #   reports `SEND_MODE_MISSING`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_send_at
    #   The send time, present only when `SendMode` is `SCHEDULED`. It
    #   reaches the delivery platform at the asset's next activation.
    #
    #   Was `scheduleDate: UtcDate`; retyped with the write member of the
    #   same name.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetSummary AWS API Documentation
    #
    class CampaignAssetSummary < Struct.new(
      :id,
      :category,
      :name,
      :link_label,
      :state,
      :last_activation_status,
      :delivery_status,
      :delivery_status_reason,
      :source_asset_template_id,
      :social_platform,
      :started_at,
      :file_format,
      :send_mode,
      :scheduled_send_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # One asset blueprint inside a campaign template. The id is
    # template-local — an asset template is not a standalone resource and
    # has no ARN.
    #
    # @!attribute [rw] id
    #   The template-local asset template identifier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The kind of asset this blueprint instantiates as.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Display label; becomes the instantiated asset's name.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   Ordering for preview and instantiation.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   The editable-field schema, copied and pinned onto each campaign
    #   asset at create. Fields the service fills itself are not listed.
    #   @return [Array<Types::CampaignAssetTemplateField>]
    #
    # @!attribute [rw] layout_previews
    #   Previews of the AWS-authored layout skeleton.
    #   @return [Array<Types::LayoutPreview>]
    #
    # @!attribute [rw] prerequisite_asset_template_ids
    #   The asset templates this one embeds output from, such as an email's
    #   landing page. Each must be in the same `BatchCreateCampaignAsset`
    #   request or already an asset on the campaign, else the create is
    #   refused `PREREQUISITE_ASSET_MISSING`; include them when the partner
    #   picks this one. Absent when there are none. A link the partner
    #   chooses, such as a landing page's download button, is not listed
    #   here: it is an `AssetLink` field and needs nothing at create.
    #   @return [Array<String>]
    #
    # @!attribute [rw] social_platform
    #   SOCIAL\_POST only: the platform an asset made from this blueprint
    #   posts to, which the asset reports as `SocialPlatform`. Fixed by the
    #   template, so a client can show which social connection the post
    #   needs before it is created. Absent for every other type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetTemplate AWS API Documentation
    #
    class CampaignAssetTemplate < Struct.new(
      :id,
      :type,
      :label,
      :display_order,
      :fields,
      :layout_previews,
      :prerequisite_asset_template_ids,
      :social_platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # One slot in an asset template's layout: addressing key, placement,
    # and the field kind carrying its own constraints, placeholder or
    # default.
    #
    # @!attribute [rw] field_id
    #   The field identifier; matches a \{\{fieldId}} slot in the layout.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Human-readable name for the field, for display. Authored in the
    #   template policy, never derived from the field id or the source
    #   layout's field name: the id is a slug (`Page_2_Title`) and is not
    #   meant to be shown to a partner. Absent on fields imported before
    #   labels existed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   What belongs in this field, in English: its role in the asset and
    #   what good content for it is (for example "Headline that names the
    #   customer and leads with a source-backed statistic"). AWS-authored
    #   with the template; never written by a partner. Absent when the
    #   template carries none, never empty. Pinned onto the asset with the
    #   field, so a corrected description reaches assets created after the
    #   correction.
    #   @return [String]
    #
    # @!attribute [rw] section
    #   Layout section the field belongs to.
    #   @return [String]
    #
    # @!attribute [rw] page
    #   One-based page number, for paginated layouts (print documents).
    #   @return [Integer]
    #
    # @!attribute [rw] required
    #   Whether the field must be filled before the asset can be activated.
    #   Derived from DG policy — never inherited from an upstream authoring
    #   system.
    #
    #   Required for activation, not for saving: `UpdateCampaignAsset`
    #   accepts partial content and may clear a required field. An unfilled
    #   required field appears in the asset's `ActivationIssues` as
    #   `REQUIRED_FIELD_MISSING`, and activation refuses the asset with the
    #   same code.
    #
    #   A text field is filled only by a non-blank value, and a rich-text
    #   field only by a value with non-blank text; a `Placeholder` never
    #   fills one. An image field is filled by the partner's image or by
    #   the template's `DefaultValue`. A field the campaign fills
    #   (`CampaignSetting`) or the partner's profile fills
    #   (`PartnerProfileField`) is never unfilled on the asset.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The field kind, with that kind's constraints, placeholder or
    #   default.
    #   @return [Types::FieldType]
    #
    # @!attribute [rw] campaign_setting
    #   The campaign setting this field shows, when it shows one: the
    #   partner sets it once on the campaign and every asset displays it.
    #   Present only on such fields.
    #
    #   A client shows the field as "Set on the campaign", linking to the
    #   campaign, rather than as an input. `UpdateCampaignAsset` refuses a
    #   value for it with `FIELD_SET_ON_CAMPAIGN`, and on an asset the field
    #   carries no value: read it from the named member of `GetCampaign`'s
    #   `Campaign`.
    #   @return [String]
    #
    # @!attribute [rw] partner_profile_field
    #   The partner-profile value this field shows, when it shows one: the
    #   partner's AWS Partner Central profile supplies it, and every asset
    #   of every campaign displays it. Present only on such fields.
    #
    #   A client shows the field as "From your Partner Central profile"
    #   rather than as an input. `UpdateCampaignAsset` refuses a value for
    #   it with `FIELD_FROM_PARTNER_PROFILE`. On a read the field carries
    #   the partner's resolved value — the logo as its URL, the name and
    #   website as text — so a slot renders from this list alone;
    #   `GetCampaign`'s `Campaign$PartnerProfile` carries the same three
    #   values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignAssetTemplateField AWS API Documentation
    #
    class CampaignAssetTemplateField < Struct.new(
      :field_id,
      :label,
      :description,
      :section,
      :page,
      :required,
      :type,
      :campaign_setting,
      :partner_profile_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # How to order `ListCampaigns`. Ties break by campaign id, ascending.
    #
    # @!attribute [rw] sort_by
    #   The attribute to sort by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The direction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignSort AWS API Documentation
    #
    class CampaignSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation of a campaign for list operations.
    #
    # @!attribute [rw] campaign_id
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The campaign ARN. Present on the summary so a caller can tag a
    #   campaign straight from a list result without a GetCampaign per row —
    #   the same reason the audit timestamps are here.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The campaign's state, derived on every read from `EndOn` and its
    #   assets. See `CampaignState`.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language the campaign's assets are written and typeset in. See
    #   `Campaign$Language`.
    #   @return [String]
    #
    # @!attribute [rw] start_on
    #   The first day of the campaign's run window.
    #   @return [String]
    #
    # @!attribute [rw] end_on
    #   The last day of the campaign's run window.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp. Present on the summary so a caller can order a
    #   list by recency without reading each campaign in full.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Last update timestamp. Present on the summary for the same reason as
    #   CreatedAt.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignSummary AWS API Documentation
    #
    class CampaignSummary < Struct.new(
      :campaign_id,
      :arn,
      :name,
      :state,
      :language,
      :start_on,
      :end_on,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A platform-managed campaign template — an AWS-authored kit of asset
    # blueprints a partner creates a campaign from.
    #
    # @!attribute [rw] id
    #   The campaign template identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Target industry for filtering or categorization.
    #   @return [String]
    #
    # @!attribute [rw] use_case
    #   Campaign use case for filtering or categorization.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A short overview of the campaign, as plain text in the template's
    #   language: no HTML and no character entities. Absent when the
    #   template has none; never an empty string.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Language the template is authored in, which a campaign created from
    #   it takes. A template has one language; the same content in another
    #   language is another template.
    #   @return [String]
    #
    # @!attribute [rw] collection
    #   The browsing context the template is listed in. Every template has
    #   exactly one.
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   AWS services the template promotes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_segments
    #   The customer segments the template is written for. Absent when the
    #   template names none, in which case it matches every
    #   `CustomerSegments` search filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] themes
    #   The template's marketing themes. Absent when the template names
    #   none, in which case it matches every `Themes` search filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] setup_duration
    #   Estimated setup time.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail_url
    #   Thumbnail URL.
    #   @return [String]
    #
    # @!attribute [rw] effective_date_begin
    #   The instant the template becomes available to partners. Until then
    #   the template does not exist to a partner: SearchCampaignTemplates
    #   omits it and GetCampaignTemplate returns ResourceNotFoundException.
    #   @return [Time]
    #
    # @!attribute [rw] asset_templates
    #   The ordered asset blueprints. One call serves both template browsing
    #   and server-side copy-at-create.
    #   @return [Array<Types::CampaignAssetTemplate>]
    #
    # @!attribute [rw] reference_materials
    #   The template's reference materials: guides, briefs, copy blocks and
    #   other files a partner downloads and uses in their own channels. Kept
    #   apart from `AssetTemplates` because none of them can become a
    #   campaign asset — they have no editable field and nothing to activate
    #   — and listing them beside the blueprints invited a
    #   `BatchCreateCampaignAsset` that could only fail.
    #
    #   Absent when the template has none.
    #   @return [Array<Types::ReferenceMaterial>]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Last update timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignTemplate AWS API Documentation
    #
    class CampaignTemplate < Struct.new(
      :id,
      :name,
      :industry,
      :use_case,
      :description,
      :language_code,
      :collection,
      :aws_services,
      :customer_segments,
      :themes,
      :setup_duration,
      :thumbnail_url,
      :effective_date_begin,
      :asset_templates,
      :reference_materials,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation of a campaign template, returned by search.
    #
    # @!attribute [rw] id
    #   The campaign template identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Target industry for filtering or categorization.
    #   @return [String]
    #
    # @!attribute [rw] use_case
    #   Campaign use case for filtering or categorization.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The campaign overview. See `CampaignTemplate$Description`.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Language the template is authored in. See
    #   `CampaignTemplate$LanguageCode`.
    #   @return [String]
    #
    # @!attribute [rw] collection
    #   The browsing context the template is listed in. See
    #   `CampaignTemplate$Collection`.
    #   @return [String]
    #
    # @!attribute [rw] aws_services
    #   AWS services the template promotes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_segments
    #   The customer segments the template is written for. See
    #   `CampaignTemplate$CustomerSegments`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] themes
    #   The template's marketing themes. See `CampaignTemplate$Themes`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbnail_url
    #   Thumbnail URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CampaignTemplateSummary AWS API Documentation
    #
    class CampaignTemplateSummary < Struct.new(
      :id,
      :name,
      :industry,
      :use_case,
      :description,
      :language_code,
      :collection,
      :aws_services,
      :customer_segments,
      :themes,
      :thumbnail_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The affected resource identifier. For a uniqueness conflict this is
    #   the identifier of the *existing* resource, so the caller can act on
    #   it without a separate lookup.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The affected resource type.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Machine-readable cause, for clients that branch on it.
    #
    #   An open set of `SCREAMING_SNAKE_CASE` tokens, deliberately typed as
    #   a string rather than an enum. `ConflictException` is shared by every
    #   resource in this service, so an enum here would accumulate values
    #   that are meaningful for one resource and inapplicable to the rest —
    #   the cohesiveness problem the Backward Compatibility standard
    #   describes under "Sharing enums" — and each new value would force an
    #   SDK regeneration on callers who can never encounter it. Clients MUST
    #   treat an unrecognised value as an unspecified conflict and fall back
    #   to `Message`.
    #
    #   Values in use today:
    #
    #   From the campaign asset activation path. Every one of these is
    #   decided before the operation returns, so a caller that receives one
    #   knows nothing was started.
    #
    #   These two are thrown by `DeactivateCampaignAsset`, which refuses one
    #   asset outright. `StartCampaignAssetActivationTask` reports the same
    #   two causes **per asset** as a FAILED task entry instead of throwing,
    #   because one bad identifier must not refuse the twenty-four good ones
    #   beside it — so the spellings are deliberately identical to
    #   `CampaignAssetStateReason`'s, letting a client match one string
    #   whichever way the refusal arrived. The two types evolve
    #   independently on purpose: this is an open string shared by every
    #   resource, that is a closed enum owned by one operation.
    #
    #   * `ASSET_START_IN_PROGRESS` — the asset is already being started, or
    #     another caller changed it during this request. Retryable once the
    #     outcome is visible.
    #   * `PREREQUISITE_ASSET_NOT_ACTIVE` — this asset embeds output from
    #     another asset that is not live. `ResourceId` carries that asset's
    #     identifier.
    #
    #   From the prerequisite edges between a campaign's assets — an email
    #   that embeds its landing page's URL. Both refuse the whole request
    #   and write nothing.
    #
    #   * `PREREQUISITE_ASSET_MISSING` — from `BatchCreateCampaignAsset`: an
    #     entry's blueprint embeds another blueprint's output, and that
    #     blueprint is neither named in the same request nor already an
    #     asset on the campaign. Retry with it in the request. `ResourceId`
    #     carries the missing blueprint's identifier.
    #   * `ASSET_HAS_DEPENDENTS` — from `DeleteCampaignAsset`: another asset
    #     on the campaign embeds this asset's output, so deleting it would
    #     leave that asset unactivatable. Delete the dependents first. The
    #     message names them.
    #
    #   `CAMPAIGN_COMPLETED` — the campaign is complete (the UTC date is
    #   after its `EndOn`), so it and its assets are read-only. Refuses
    #   `UpdateCampaign`, `BatchCreateCampaignAsset`, `UpdateCampaignAsset`,
    #   `DeleteCampaignAsset` and `StartCampaignAssetActivationTask`; never
    #   `DeactivateCampaignAsset`. **Not retryable, and not fixable** —
    #   `EndOn` cannot be moved once it has passed, so nothing the caller
    #   does will make the write succeed. `ResourceId` carries the campaign
    #   identifier.
    #
    #   ⚠️ This is the one conflict reason whose condition **never clears**,
    #   which sits awkwardly with `ConflictException` promising a state that
    #   may change. It is a conflict rather than a validation failure
    #   because the request is well formed and would have succeeded a moment
    #   earlier — the resource's state is what refuses it, which is what
    #   this exception is for. Contrast `ASSET_NOT_STARTABLE`, which moved
    #   to `ValidationException` precisely because it is a property of the
    #   asset's *type* rather than of its state.
    #
    #   ⚠️ **`COMPLETED` also exists as a `CampaignAssetExportTaskStatus`
    #   value, on a different axis.** That one means an export archive
    #   finished assembling. The two are unrelated and must not be unified.
    #
    #   `CAMPAIGN_HAS_ACTIVE_ASSETS` — from `DeleteCampaign`: at least one
    #   of the campaign's assets is live, and deleting the campaign would
    #   orphan what the delivery platform still serves or sends. Deactivate
    #   those assets with `DeactivateCampaignAsset`, then retry. The message
    #   names them. `ResourceId` carries the campaign identifier.
    #
    #   `CAMPAIGN_ACTIVATION_IN_PROGRESS` — from
    #   `StartCampaignAssetActivationTask` and `DeleteCampaign`, refusing
    #   the whole request: one activation task runs on a campaign at a time.
    #   `ResourceId` carries the **holding task's id**, so a caller can
    #   poll `GetCampaignAssetActivationTask` rather than guess. Retryable
    #   once that task reaches a terminal status.
    #
    #   `SERVICE_LINKED_ROLE_DELETION_IN_PROGRESS` — from
    #   `StartCampaignAssetActivationTask`, refusing the whole request: this
    #   service's service-linked role is being deleted, so no asset may go
    #   live. Not a lease conflict: `ResourceId` is unset and there is no
    #   task to poll. Retryable after a short wait; if the role was deleted,
    #   the next activation recreates it.
    #
    #   `LAYOUT_LOCKED_AFTER_ACTIVATION` — from `UpdateCampaignAsset`,
    #   refusing a `Layout` change on a multi-layout asset that has
    #   activated successfully at least once (DG-044). The published object
    #   is that layout's, so switching would leave the asset describing a
    #   layout that is not the one live. **Not fixable**: the asset keeps
    #   its layout for life. A failed activation does not lock it.
    #   Re-sending the layout already selected is not a change and is
    #   accepted. `ResourceId` carries the asset identifier.
    #
    #   `ASSET_START_IN_PROGRESS` — also from `UpdateCampaignAsset`,
    #   refusing any edit to an asset the campaign's running activation
    #   task has accepted and not yet finished: the run publishes the
    #   content it read, so an edit accepted mid-run would either be
    #   published unvalidated or never published. Nothing is written.
    #   Retryable once the asset's outcome on the task
    #   (`GetCampaignAssetActivationTask`) is terminal; the asset's
    #   siblings may still be running. `ResourceId` carries the asset
    #   identifier.
    #
    #   `ASSET_ALREADY_ACTIVE` — from `UpdateCampaignAsset`, refusing any
    #   change to a live email or social post, content or schedule.
    #   Deactivate it first; the next activation sends everything current.
    #   Landing pages and documents are edited live and converge by
    #   re-activation. `ResourceId` carries the asset identifier.
    #
    #   `ASSET_NOT_DEACTIVATABLE` — from `DeactivateCampaignAsset`, for an
    #   asset that can't be stopped: a document, banner or landing page
    #   until the campaign has completed, when it becomes removable. Until
    #   then, update it and activate it again. `ResourceId` carries the
    #   asset identifier.
    #
    #   `ASSET_HAS_LOCKED_SENDS` — from `DeactivateCampaignAsset`, within an
    #   hour of the asset's send (a social post's publish), when it can no
    #   longer be withdrawn. `ASSET_ALREADY_DELIVERED` — the same, once that
    #   time has passed: a sent email or a published post cannot be
    #   recalled. Neither is retryable.
    #
    #   Three values were removed with the campaign lifecycle and the
    #   singular activate, and none should be re-added here:
    #
    #   * `CAMPAIGN_NOT_STARTED` — a campaign has no state to be started out
    #     of.
    #   * `ASSET_NOT_STARTABLE` — moved to `ValidationException`, with no
    #     reason. The value's own documentation said it was "not retryable
    #     and not fixable: it is a property of the asset's type", and
    #     `ConflictException` promises a state that may change. The gate
    #     itself stays — deleting it lets a download-only asset into a task
    #     with no dispatch arm, which would succeed and do nothing.
    #   * `ASSET_START_UNCONFIRMED` — described a state that no longer
    #     occurs. DG cannot be more idempotent than a platform whose social
    #     create has no idempotency key, so an ambiguous hand-over is now an
    #     ordinary failure carrying `INTERNAL_ERROR`. Holding the asset in a
    #     distinct state bought a guarantee that was never real, and had no
    #     exit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for CreateCampaign operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] campaign_template_id
    #   The campaign template this campaign draws its assets from.
    #
    #   Binds the campaign to a single source template: every asset must
    #   come from this template's asset templates, and one from another
    #   template is refused at `BatchCreateCampaignAsset`. Immutable once
    #   set. Every campaign has one: a campaign's language and its assets'
    #   blueprints both come from its template. Templates are AWS-authored
    #   and read-only — they are discovered
    #   through `SearchCampaignTemplates` and `GetCampaignTemplate`, and
    #   there is no create, update or delete operation for one. The
    #   template's id only: a campaign template has no ARN (DG-084).
    #   The member keeps the `<Resource>Id` name, which is the convention
    #   for referencing another resource from a body. </Resource>
    #   @return [String]
    #
    # @!attribute [rw] sender_email
    #   The address every email of this campaign is sent from.
    #
    #   Printable ASCII only, with no spaces or line breaks, or field code
    #   `PATTERN\_MISMATCH`. Then three rules, all checked when the sender
    #   is set. Its domain must exactly match, ignoring case, the domain of
    #   the partner's alliance lead email in AWS Partner Central (a
    #   subdomain does not), or field code
    #   `SENDER\_DOMAIN\_NOT\_ALLIANCE\_LEAD`. Then, for a sender at
    #   example.com, DNS must hold the CNAME
    #   `dkim.\_domainkey.example.com` → `dkim.\_domainkey.md02.com`
    #   (field code `SENDER\_DOMAIN\_DKIM\_MISSING`) and a DMARC record,
    #   one TXT `\_dmarc.example.com` starting `v=DMARC1` with a `p`
    #   of `none`, `quarantine` or `reject` (field code
    #   `SENDER\_DOMAIN\_DMARC\_MISSING`). Both DNS codes are reported
    #   together when both records are missing. A partner who can't satisfy
    #   them can't set a sender, so can't run
    #   email campaigns. A shared mail provider's domain, such as
    #   gmail.com, can't carry the records. Optional here: a campaign with
    #   no sender can be created and edited, but its email assets cannot be
    #   activated until one is set.
    #   @return [String]
    #
    # @!attribute [rw] privacy_policy_url
    #   The URL of the partner's privacy policy, linked from every email
    #   and landing page footer. Optional here: a campaign whose emails or
    #   landing pages show it cannot activate them until one is set.
    #   @return [String]
    #
    # @!attribute [rw] partner_address
    #   The partner's physical postal address, shown in every email footer
    #   and as a landing page's contact line. Optional here: an email that
    #   shows it cannot activate until one is set. A landing page that shows
    #   it publishes it empty when it is unset, and a document's footer
    #   then prints the partner's name alone.
    #   @return [String]
    #
    # @!attribute [rw] partner_badge
    #   The partner's badge — a tier or designation badge from AWS Partner
    #   Badge Manager — shown in every badge slot of the campaign's emails,
    #   landing pages and documents. Optional: until one is set, every badge
    #   slot shows the Standalone AWS Partner badge.
    #
    #   A PNG or JPEG of at most 2 MB, staged like an asset image and
    #   checked the same way: it must have passed the staging scan
    #   (`SCAN\_REJECTED`, or `SCAN\_IN\_PROGRESS` while it is pending),
    #   and its bytes must be the format its name says
    #   (`IMAGE\_FORMAT\_NOT\_SUPPORTED`). Any shape is accepted: a badge
    #   is drawn whole, never cropped. Content moderation judges it when an
    #   asset that shows it is activated.
    #   @return [Types::FileRef]
    #
    # @!attribute [rw] email_target
    #   The campaign's send audience — a CSV of recipient email addresses.
    #
    #   The campaign's *target*: who the campaign is sent to, as distinct
    #   from a `CampaignAsset`, which is the content that is sent. It sits
    #   on the campaign and not on the activation call because a partner
    #   assembles it in the same wizard flow that sets the name and the
    #   dates — and because attaching it here means it is validated, staged
    #   and resolved to a count before anything is activated, rather than at
    #   the last click. Required format: a header row naming the email
    #   column `Email`,
    #   `E-mail`, `Email Address` or `E-mail Address` — compared
    #   without case, spaces or punctuation. Other columns are permitted and
    #   ignored, and with two email columns the first is used. A file
    #   without such a header is refused with field code
    #   `EMAIL\_COLUMN\_MISSING`: the address column is never guessed. The
    #   rows reach the delivery platform's importer as the partner wrote
    #   them — a partner's audience is never rewritten. At most 5 MB,
    #   checked against the object's size before anything is
    #   copied, and at most 10,000 distinct addresses, refused with
    #   `RECIPIENT\_LIST\_TOO\_LARGE`. A file with no valid address at all
    #   is refused with `RECIPIENT\_LIST\_EMPTY`; otherwise rows without a
    #   usable address are not a refusal: they are skipped and counted, and
    #   `GetCampaign` reports the counts. Optional here, because a
    #   campaign is a container and holds no state to be incomplete in — but
    #   an email asset cannot be activated without it, so the requirement
    #   moved to the point of activation. Editable at any time, and an edit
    #   reaches the delivery platform only
    #   when an asset is activated after it. Each email activation loads the
    #   audience into a contact list of its own, so an address taken off the
    #   file is not sent to by the next activation. The bytes are
    #   write-only. No response returns a URL or an `S3Uri`
    #   for this file; `GetCampaign` returns the scan verdict, when the
    #   list was attached and how its rows resolved, and nothing more.
    #   @return [Types::FileRef]
    #
    # @!attribute [rw] email_target_engagement_group_ids
    #   Engagement groups whose contacts the campaign's emails will also go
    #   to: the `Id`s `ListEngagementGroups` returns (AWS Partner Central
    #   Selling). 1–10, each named once.
    #
    #   Each group is named once: a repeated id is refused with field code
    #   `INVALID\_VALUE`. Not checked against your groups when saved.
    #   StartCampaignAssetActivationTask resolves them to recipients. On a
    #   stage that can't resolve groups yet, Start refuses an email while
    #   groups are set (`ENGAGEMENT\_GROUPS\_UNAVAILABLE`), rather than
    #   send to `EmailTarget` alone.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_audience
    #   Advisory targeting metadata. Refined later, and not validated here.
    #   @return [Types::TargetAudience]
    #
    # @!attribute [rw] estimated_budget
    #   What the partner expects the campaign to cost.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] total_budget
    #   The campaign's total budget.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] start_on
    #   The first day of the campaign's run window. Not after `EndOn`
    #   (`ValidationException`, `INVALID_VALUE`).
    #   @return [String]
    #
    # @!attribute [rw] end_on
    #   The last day of the campaign's run window, inclusive and in UTC.
    #   Not in the past: the campaign completes at the UTC midnight after it
    #   (see `CampaignState`). A scheduled send must fall on or before it.
    #
    #   Optional here, but required before any asset activates: until it is
    #   set, GetCampaign's `ActivationIssues` reports `END_ON_MISSING` and
    #   StartCampaignAssetActivationTask refuses (`CAMPAIGN_INCOMPLETE`).
    #   Set it with UpdateCampaign.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token. Same token within 24h returns existing resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to apply at creation.
    #
    #   Tag-on-create rather than create-then-tag is a Tagris requirement,
    #   not a convenience: it is what lets a tag-based access control policy
    #   govern the creation itself. A campaign created untagged and tagged a
    #   moment later is briefly outside any such policy.
    #
    #   A key beginning `aws:` (any case) is reserved for AWS-applied
    #   system tags and is refused with `ValidationException`, as is a key
    #   repeated in the list; nothing is created. The tags are recorded
    #   before the campaign is written, so a create that cannot record them
    #   fails and creates nothing. A retry with the same `ClientToken`
    #   returns the campaign the first attempt created and does not re-apply
    #   tags — use `TagResource` to change them afterwards.
    #   `ListTagsForResource` returns them.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :catalog,
      :name,
      :campaign_template_id,
      :sender_email,
      :privacy_policy_url,
      :partner_address,
      :partner_badge,
      :email_target,
      :email_target_engagement_group_ids,
      :target_audience,
      :estimated_budget,
      :total_budget,
      :start_on,
      :end_on,
      :client_token,
      :tags)
      SENSITIVE = [:sender_email, :partner_address]
      include Aws::Structure
    end

    # Output for CreateCampaign.
    #
    # @!attribute [rw] id
    #   The new campaign's identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The new campaign's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for CreateSocialConnectionAuthorizationUrl.
    #
    # Names a platform, not a connection: the same call serves a first
    # connect, connecting another account, and re-authorizing an expired
    # one. Which of those it was is decided by the account the partner
    # consents with, and shows up in ListSocialConnections afterwards.
    # Writes nothing in this service.
    #
    # @!attribute [rw] catalog
    #   Catalog the connection belongs to.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Social platform to authorize.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateSocialConnectionAuthorizationUrlRequest AWS API Documentation
    #
    class CreateSocialConnectionAuthorizationUrlRequest < Struct.new(
      :catalog,
      :platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for CreateSocialConnectionAuthorizationUrl.
    #
    # @!attribute [rw] platform
    #   Social platform the URL authorizes.
    #   @return [String]
    #
    # @!attribute [rw] authorization_url
    #   Fresh single-use URL the partner visits to grant authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/CreateSocialConnectionAuthorizationUrlResponse AWS API Documentation
    #
    class CreateSocialConnectionAuthorizationUrlResponse < Struct.new(
      :platform,
      :authorization_url)
      SENSITIVE = [:authorization_url]
      include Aws::Structure
    end

    # Input for DeactivateCampaignAsset.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifier
    #   The asset identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeactivateCampaignAssetRequest AWS API Documentation
    #
    class DeactivateCampaignAssetRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for DeactivateCampaignAsset.
    #
    # Synchronous, so the outcome of the stop is this response — there is no
    # `lastDeactivationStatus`, and its absence is not an oversight.
    # Activation is asynchronous and its outcome arrives long after the
    # response, which is why that one has to be persisted where a partner
    # can read it later.
    #
    # @!attribute [rw] id
    #   The asset identifier.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The asset's lifecycle position — INACTIVE once the stop is
    #   confirmed.
    #   @return [String]
    #
    # @!attribute [rw] last_activation_status
    #   How the most recent *activation* attempt ended, which a stop does
    #   not change. Read with state, it is what separates a stopped asset
    #   (INACTIVE + SUCCEEDED) from one never activated (INACTIVE, this
    #   member absent). Omitted until a first activation has been attempted.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Why the asset sits where it does. Present when LastActivationStatus
    #   is FAILED, or on a deliberate INACTIVE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeactivateCampaignAssetResponse AWS API Documentation
    #
    class DeactivateCampaignAssetResponse < Struct.new(
      :id,
      :state,
      :last_activation_status,
      :state_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for DeleteCampaignAsset operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifier
    #   The asset identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteCampaignAssetRequest AWS API Documentation
    #
    class DeleteCampaignAssetRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for DeleteCampaign.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :catalog,
      :campaign_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for DeleteSocialConnection.
    #
    # @!attribute [rw] catalog
    #   Catalog the connection belongs to.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier or ARN of the social connection to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/DeleteSocialConnectionRequest AWS API Documentation
    #
    class DeleteSocialConnectionRequest < Struct.new(
      :catalog,
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The campaign's attached recipient list, as read — metadata only.
    #
    # No URL and no `S3Uri`, presigned or otherwise. The file is a list of
    # email addresses belonging to people who are not the partner, so there
    # is no read path for the bytes at all; what a caller needs is whether
    # the list was accepted and how many recipients it resolved to. The
    # three counts describe the file as it was read when attached. They
    # are absent for a list attached before the service began reading lists
    # at upload.
    #
    # @!attribute [rw] scan_status
    #   The scan verdict for the attached list.
    #   @return [String]
    #
    # @!attribute [rw] attached_at
    #   When the list was attached.
    #   @return [Time]
    #
    # @!attribute [rw] valid_count
    #   Distinct usable addresses — the recipients an email activation sends
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] rejected_count
    #   Rows skipped because their email cell is not a usable address.
    #   @return [Integer]
    #
    # @!attribute [rw] duplicate_count
    #   Rows repeating an address already counted. Not an error: each
    #   address is sent to once.
    #   @return [Integer]
    #
    # @!attribute [rw] file_name
    #   The display name of the uploaded file, as the partner named it, with
    #   no path: for example `Q4 leads.csv`. Absent for a list attached
    #   before the service kept the name. There is no link to the file: the
    #   list is never downloadable from the campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/EmailTargetDetail AWS API Documentation
    #
    class EmailTargetDetail < Struct.new(
      :scan_status,
      :attached_at,
      :valid_count,
      :rejected_count,
      :duplicate_count,
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The kind of a template field, carrying that kind's constraints,
    # placeholder or default. One discriminator instead of a separate kind
    # enum, constraints blob and preset value, so kind and constraints
    # cannot disagree. Read-only — templates are AWS-authored; the service
    # validates each partner value against it.
    #
    # A URL the partner types is not a distinct kind: it is text with a URL
    # pattern, and its link role is carried by the layout placeholder. The
    # same holds for a colour, which is text with a hex-colour pattern. A
    # link to another of the campaign's assets, whose URL DG writes at
    # activation, is `AssetLink`.
    #
    # @note FieldType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FieldType corresponding to the set member.
    #
    # @!attribute [rw] text
    #   A plain-text field.
    #   @return [Types::TextFieldType]
    #
    # @!attribute [rw] rich_text
    #   A field whose value is a constrained HTML fragment.
    #   @return [Types::RichTextFieldType]
    #
    # @!attribute [rw] image
    #   An image field.
    #   @return [Types::ImageFieldType]
    #
    # @!attribute [rw] asset_link
    #   A link to another asset on the same campaign. The partner chooses
    #   which asset, by `LinkedAssetId`; at activation DG writes that
    #   asset's public URL into the field. A landing page's download
    #   button is one, naming a `DOCUMENT`.
    #   @return [Types::AssetLinkFieldType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/FieldType AWS API Documentation
    #
    class FieldType < Struct.new(
      :text,
      :rich_text,
      :image,
      :asset_link,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < FieldType; end
      class RichText < FieldType; end
      class Image < FieldType; end
      class AssetLink < FieldType; end
      class Unknown < FieldType; end
    end

    # A value-only update to one email template field. The write counterpart
    # of CampaignAssetFieldValue: it carries just the addressing key and the
    # new value, never the service-owned schema.
    #
    # @!attribute [rw] field_id
    #   The field to update; must match a FieldId in the asset's stored
    #   schema.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The new value. Omit to clear the field.
    #   @return [Types::TemplateFieldValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/FieldValueInput AWS API Documentation
    #
    class FieldValueInput < Struct.new(
      :field_id,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a partner-supplied file in the Partner Central file
    # staging bucket.
    #
    # The URI must be `s3://\{stagingBucket}/\{callerAccountId}/…`, where
    # the account id segment equals the caller's session-derived account —
    # never an account named in the request body. A mismatch is refused
    # `FILE\_REFERENCE\_NOT\_OWNED`; any other bucket,
    # `FILE\_REFERENCE\_INVALID`. `VersionId` is required: the staging
    # bucket is versioned, and the
    # service takes exactly the version the upload returned, so a later
    # upload to the same key cannot change what was referenced. The service
    # copies that version into storage it controls and pins the copy for
    # scanning and processing.
    #
    # @!attribute [rw] s3_uri
    #   The `s3://` location of the file.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the object to take: the `VersionId` the staging
    #   upload returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/FileRef AWS API Documentation
    #
    class FileRef < Struct.new(
      :s3_uri,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetCampaignAssetActivationTask.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign whose current task to read. This addresses the task,
    #   and also authorizes the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetActivationTaskRequest AWS API Documentation
    #
    class GetCampaignAssetActivationTaskRequest < Struct.new(
      :catalog,
      :campaign_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetCampaignAssetActivationTask: the campaign's most recent
    # task.
    #
    # @!attribute [rw] campaign_id
    #   The campaign's id. Canonical: because `CampaignIdentifier` accepts
    #   an id or an ARN, echoing this tells a caller who passed an ARN what
    #   the id is. The task's own id is `TaskId`.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   Opaque correlation value for the task. Echoed so a caller can tell
    #   the task it started from a later one that superseded it. Never an
    #   input: the campaign is what addresses a task, because a campaign has
    #   at most one.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   The task's status over every asset it names, refused ones included:
    #   one refused and one succeeded is PARTIAL\_FAILURE.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   When the task reached a terminal status. Absent while IN\_PROGRESS.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   One entry per asset the request named, in the order named. An asset
    #   refused up front is FAILED from the first response, with its reason.
    #   @return [Array<Types::CampaignAssetActivationOutcome>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetActivationTaskResponse AWS API Documentation
    #
    class GetCampaignAssetActivationTaskResponse < Struct.new(
      :campaign_id,
      :task_id,
      :task_status,
      :started_at,
      :ended_at,
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetCampaignAssetExportTask.
    #
    # Takes the catalog, the owning campaign, and the export task
    # identifier. The campaign identifier is required so the operation can
    # be authorized on the task's owning campaign/\{CampaignId}: the task
    # is addressable by its id within the caller's partition, but the
    # campaign is not derivable from the task id alone at authorization
    # time.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign that owns the export task. Accepts the campaign id or
    #   ARN. Required so the read is authorized on campaign/\{CampaignId};
    #   the task must belong to this campaign or the request resolves to
    #   not-found.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_export_task_identifier
    #   The export task to retrieve: the `Id` StartCampaignAssetExportTask
    #   returned (`etsk-…`).
    #
    #   An id only. An export task has no ARN: none is returned, recorded or
    #   authorized on (the read authorizes on its campaign), so there is no
    #   ARN to accept (DG-063 D-35).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetExportTaskRequest AWS API Documentation
    #
    class GetCampaignAssetExportTaskRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_export_task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetCampaignAssetExportTask.
    #
    # @!attribute [rw] id
    #   The export task identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task's state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] download_url
    #   Presigned GET URL for the ZIP archive. Present only when status is
    #   COMPLETED. Freshly minted on each call and short-lived (&lt;=15
    #   minutes).
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   When DownloadUrl expires. Present only when status is COMPLETED.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   Why the task failed. Present only when status is FAILED.
    #   @return [Types::CampaignAssetExportFailureReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetExportTaskResponse AWS API Documentation
    #
    class GetCampaignAssetExportTaskResponse < Struct.new(
      :id,
      :status,
      :created_at,
      :download_url,
      :expires_at,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetCampaignAsset operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifier
    #   The asset identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetRequest AWS API Documentation
    #
    class GetCampaignAssetRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetCampaignAsset.
    #
    # @!attribute [rw] asset
    #   The asset resource.
    #   @return [Types::CampaignAsset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignAssetResponse AWS API Documentation
    #
    class GetCampaignAssetResponse < Struct.new(
      :asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetCampaign operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignRequest AWS API Documentation
    #
    class GetCampaignRequest < Struct.new(
      :catalog,
      :campaign_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetCampaign.
    #
    # @!attribute [rw] campaign
    #   The campaign.
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignResponse AWS API Documentation
    #
    class GetCampaignResponse < Struct.new(
      :campaign)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetCampaignTemplate.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The campaign template's id. A campaign template has no ARN
    #   (DG-084).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignTemplateRequest AWS API Documentation
    #
    class GetCampaignTemplateRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetCampaignTemplate.
    #
    # @!attribute [rw] campaign_template
    #   The campaign template, including its asset templates.
    #   @return [Types::CampaignTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/GetCampaignTemplateResponse AWS API Documentation
    #
    class GetCampaignTemplateResponse < Struct.new(
      :campaign_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image field's constraints and default.
    #
    # @!attribute [rw] max_size_bytes
    #   Maximum accepted file size in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_formats
    #   Accepted image formats.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The AWS-authored image the asset uses until the partner sets one:
    #   shown in previews and published in an empty slot of an email,
    #   landing page, banner ad or social post. It fills a required image
    #   field. A document leaves an empty image slot blank.
    #   @return [Types::LayoutPreview]
    #
    # @!attribute [rw] recommended_width_pixels
    #   The image size, in pixels, that fills this slot and prints sharply,
    #   for example 1920 x 301 for a full-width header. Shown to the partner
    #   as "Recommended: W x H px".
    #
    #   Present, together with `RecommendedHeightPixels`, on document (PDF)
    #   image slots only, where the slot is a fixed rectangle. Such a slot
    #   is always filled: the image is scaled to cover it, centred, and
    #   clipped to it, the same as CSS `object-fit: cover`. An image whose
    #   shape is too far from W:H is refused with
    #   `IMAGE_ASPECT_RATIO_MISMATCH`; one narrower than W is accepted. A
    #   slot showing the partner's logo or badge, and a slot without the
    #   two members (every slot from before sizes existed), fits the image
    #   inside instead (`object-fit: contain`): a logo or a badge is never
    #   cropped. Email and landing-page image slots are laid out by HTML and
    #   carry neither.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_height_pixels
    #   The image height, in pixels, that fills this slot. Present exactly
    #   when `RecommendedWidthPixels` is.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ImageFieldType AWS API Documentation
    #
    class ImageFieldType < Struct.new(
      :max_size_bytes,
      :allowed_formats,
      :default_value,
      :recommended_width_pixels,
      :recommended_height_pixels)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Seconds before retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rendering of an AWS-authored layout skeleton or placeholder image.
    #
    # The url is a stable, cache-friendly CloudFront URL rather than a
    # presigned GET, because the bytes are AWS marketing content that is
    # already public. The key's random segment is the object's only
    # protection, so the URL is a bearer credential for the object and is
    # withheld entirely while a template is not yet effective — see
    # CampaignTemplate.EffectiveDateBegin.
    #
    # @!attribute [rw] format
    #   The format of the referenced object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A stable URL serving the object. Not presigned, so it does not
    #   expire.
    #   @return [String]
    #
    # @!attribute [rw] page_type
    #   Which page of a multi-page layout this is. Present only for
    #   LANDING\_PAGE, which genuinely has two layout objects — the page
    #   carrying the form, and the confirmation page shown after submit —
    #   and absent for every other category, which has one.
    #
    #   A confirmation page is a second LAYOUT, never a second asset:
    #   modelling it as its own asset would give it a lifecycle, an
    #   activation and a state it does not have.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/LayoutPreview AWS API Documentation
    #
    class LayoutPreview < Struct.new(
      :format,
      :url,
      :page_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListCampaignAssets operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaignAssetsRequest AWS API Documentation
    #
    class ListCampaignAssetsRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListCampaignAssets operation.
    #
    # @!attribute [rw] items
    #   The list of results.
    #   @return [Array<Types::CampaignAssetSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaignAssetsResponse AWS API Documentation
    #
    class ListCampaignAssetsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListCampaigns operation.
    #
    # Filters combine with AND. Results are eventually consistent: a
    # campaign created, renamed or activated a moment ago can take up to a
    # second to appear with its current values. `GetCampaign` is strongly
    # consistent.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifiers
    #   Only these campaigns, each named by its id or its campaign ARN. A
    #   campaign that does not exist, was deleted, or whose ARN names
    #   another account or catalog is left out rather than refused.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   Only campaigns whose name contains this, compared
    #   case-insensitively.
    #   @return [String]
    #
    # @!attribute [rw] states
    #   Only campaigns in one of these states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort
    #   The order of the results. Default: `CREATED_AT`, `DESCENDING`.
    #   @return [Types::CampaignSort]
    #
    # @!attribute [rw] max_results
    #   Maximum results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Bound to the filters and sort it was issued for: a
    #   request that changes `CampaignIdentifiers`, `Name`, `States` or
    #   `Sort` between pages is refused with `ValidationException`.
    #   `MaxResults` may change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaignsRequest AWS API Documentation
    #
    class ListCampaignsRequest < Struct.new(
      :catalog,
      :campaign_identifiers,
      :name,
      :states,
      :sort,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListCampaigns operation.
    #
    # @!attribute [rw] items
    #   The list of results.
    #   @return [Array<Types::CampaignSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListCampaignsResponse AWS API Documentation
    #
    class ListCampaignsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListSocialConnections.
    #
    # @!attribute [rw] catalog
    #   Catalog to list connections from.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Restrict results to a single social platform.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListSocialConnectionsRequest AWS API Documentation
    #
    class ListSocialConnectionsRequest < Struct.new(
      :catalog,
      :platform,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListSocialConnections.
    #
    # @!attribute [rw] items
    #   The social connections for this partner and catalog.
    #   @return [Array<Types::SocialConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page, absent on the last page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListSocialConnectionsResponse AWS API Documentation
    #
    class ListSocialConnectionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListTagsForResource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags should be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListTagsForResource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource the tags belong to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags currently applied. Absent rather than empty when the
    #   resource carries no tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An amount of money in a named currency.
    #
    # The amount is a decimal string, not a float: a budget is exact, and
    # binary floating point cannot represent every two-decimal value.
    # Mirrors the Partner Central Selling API's
    # `ExpectedCustomerSpend.Amount`.
    #
    # @!attribute [rw] amount
    #   The amount, as a decimal string with at most two decimal places.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The ISO 4217 currency the amount is denominated in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/MonetaryValue AWS API Documentation
    #
    class MonetaryValue < Struct.new(
      :amount,
      :currency_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The campaign's partner badge, as read.
    #
    # @!attribute [rw] url
    #   A presigned GET of the badge, which expires one hour after the read:
    #   fetch it again with `GetCampaign` when it returns 403.
    #   @return [String]
    #
    # @!attribute [rw] attached_at
    #   When the badge was set.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/PartnerBadgeDetail AWS API Documentation
    #
    class PartnerBadgeDetail < Struct.new(
      :url,
      :attached_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partner's branding, read from their AWS Partner Central profile.
    #
    # The profile is the only source: a campaign carries no branding of its
    # own, so every campaign of a partner shows the same identity, vetted by
    # Partner Central. Edit it in Partner Central.
    #
    # @!attribute [rw] display_name
    #   The profile's display name.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The profile's website.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   The profile's logo URL, as AWS Partner Central serves it — the
    #   image every asset of the campaign shows. Absent when the profile
    #   names none.
    #
    #   Partner Central Marketing keeps no copy: the same URL is written
    #   into a published landing page and email, and fetched when a document
    #   is composed, so what a client renders from it is what is sent. Only
    #   a document fetches the image: one it cannot fetch and draw fails
    #   that asset with `INTERNAL\_ERROR`, which a retry can clear. A
    #   landing page or email links the URL as given, so a logo that does
    #   not load shows as a broken image.
    #   @return [String]
    #
    # @!attribute [rw] refreshed_at
    #   When this branding was last read from Partner Central. Earlier than
    #   the request when Partner Central could not be reached and Partner
    #   Central Marketing answered from its last copy.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/PartnerProfileBranding AWS API Documentation
    #
    class PartnerProfileBranding < Struct.new(
      :display_name,
      :website_url,
      :logo_url,
      :refreshed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference material that comes with a campaign template: a file the
    # partner downloads as-is.
    #
    # Not a blueprint: it carries no fields, cannot be instantiated, and is
    # not activated.
    #
    # Not the `ReferenceMaterial` resource deleted on 2026-09-22 (its six
    # operations, ARN and record are gone). That was partner-uploaded and
    # addressable; this is AWS-authored template content with no identity of
    # its own.
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A stable public CDN URL for the file. AWS-authored content, so it is
    #   not presigned and carries no expiry — the same treatment as
    #   `LayoutPreview.url`, and withheld on the same condition: absent
    #   while the template's `EffectiveDateBegin` is in the future.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ReferenceMaterial AWS API Documentation
    #
    class ReferenceMaterial < Struct.new(
      :name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The affected resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The affected resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rich-text field's constraints and placeholder. Distinct from text
    # because the value is a markup fragment whose permitted tags are part
    # of the contract: a client needs the tag list to configure its editor,
    # and the service needs it to sanitize.
    #
    # @!attribute [rw] max_length
    #   Maximum accepted length of the markup fragment.
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_tags
    #   The HTML tags permitted in the value. Anything else is stripped.
    #   @return [Array<String>]
    #
    # @!attribute [rw] placeholder
    #   Example markup shown where the field is empty in a preview of the
    #   asset, restricted to AllowedTags. Never the asset's value: it is
    #   not set on the asset at create, does not fill a required field, and
    #   is never published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/RichTextFieldType AWS API Documentation
    #
    class RichTextFieldType < Struct.new(
      :max_length,
      :allowed_tags,
      :placeholder)
      SENSITIVE = [:placeholder]
      include Aws::Structure
    end

    # Input for SearchCampaignTemplates.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox). AWS and Sandbox templates may differ.
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   Free-text query matched against the template's name and
    #   description. Any word may match, and the last word matches as a
    #   prefix when it has 3 or more characters, so `nov` finds Amazon Nova.
    #   A template whose name holds the query as a phrase ranks first, then
    #   whole-word matches, then prefix-only ones. Omit to browse the whole
    #   catalog. Text analysis is derived from each template's own
    #   LanguageCode, never from the language filter.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Restrict to templates in these industries. Values within this member
    #   are OR-ed; distinct facet members are AND-ed. Exact, case-sensitive
    #   match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] use_case
    #   Restrict to templates with these campaign use cases. Values within
    #   this member are OR-ed; distinct facet members are AND-ed. Exact,
    #   case-sensitive match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   Restrict to templates in these language(s), matched by each
    #   template's `LanguageCode`. Values within this member are OR-ed;
    #   distinct facet members are AND-ed. Narrows results; it does not
    #   reinterpret SearchText.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_services
    #   Restrict to templates promoting these AWS services. Values within
    #   this member are OR-ed; distinct facet members are AND-ed. Exact,
    #   case-sensitive match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_segments
    #   Restrict to templates for these customer segments. Values within
    #   this member are OR-ed; distinct facet members are AND-ed. A template
    #   that names no customer segment matches every value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] themes
    #   Restrict to templates with these themes. Values within this member
    #   are OR-ed; distinct facet members are AND-ed. A template that names
    #   no theme matches every value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] collection
    #   Restrict to templates in these collections. Values within this
    #   member are OR-ed; distinct facet members are AND-ed. Omit for no
    #   restriction; there is no default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/SearchCampaignTemplatesRequest AWS API Documentation
    #
    class SearchCampaignTemplatesRequest < Struct.new(
      :catalog,
      :search_text,
      :industry,
      :use_case,
      :language,
      :aws_services,
      :customer_segments,
      :themes,
      :collection,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for SearchCampaignTemplates.
    #
    # @!attribute [rw] total_results
    #   Total count over the whole matching set, not just this page — for
    #   "over N results" display.
    #   @return [Integer]
    #
    # @!attribute [rw] campaign_templates
    #   This page of template summaries.
    #   @return [Array<Types::CampaignTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/SearchCampaignTemplatesResponse AWS API Documentation
    #
    class SearchCampaignTemplatesResponse < Struct.new(
      :total_results,
      :campaign_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The affected resource type.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The exceeded quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a social connection returned by ListSocialConnections.
    #
    # Carries no ARN (owner ruling 2026-10-05): a connection is addressed by
    # its `Id`. Social connections are not taggable, and every social
    # operation authorizes on its action rather than on a resource ARN.
    #
    # @!attribute [rw] id
    #   Identifier of the social connection.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Social platform this connection authorizes.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Authorization state.
    #   @return [String]
    #
    # @!attribute [rw] page_name
    #   The Facebook Page this connection publishes to. Absent where no Page
    #   applies.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   Display name of the account behind this connection. Absent when the
    #   execution backend reports none.
    #   @return [String]
    #
    # @!attribute [rw] connected_at
    #   When the account was last authorized. Advances on every
    #   re-authorization.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   When the authorization lapses. Absent where the platform reports no
    #   expiry (X never does). A connection past this time reads EXPIRED
    #   only once the backend notices, so treat this as a warning date, not
    #   a status.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/SocialConnectionSummary AWS API Documentation
    #
    class SocialConnectionSummary < Struct.new(
      :id,
      :platform,
      :status,
      :page_name,
      :account_name,
      :connected_at,
      :expires_at)
      SENSITIVE = [:account_name]
      include Aws::Structure
    end

    # Input for StartCampaignAssetActivationTask.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier, which also authorizes the call.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifiers
    #   The assets to activate, in any order — the service derives the
    #   dependency order and ignores the order given here.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token. Two requests carrying the same token are one
    #   request, and the second returns the first one's task rather than
    #   starting a second.
    #
    #   The deduplication window is the **life of the task record**, not a
    #   fixed number of hours: replaying a token after the task has expired
    #   starts a new task. Stated because a caller would otherwise assume
    #   the usual few-hour guarantee.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetActivationTaskRequest AWS API Documentation
    #
    class StartCampaignAssetActivationTaskRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_identifiers,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for StartCampaignAssetActivationTask: the task just created.
    #
    # @!attribute [rw] campaign_id
    #   The campaign's id. Canonical: because `CampaignIdentifier` accepts
    #   an id or an ARN, echoing this tells a caller who passed an ARN what
    #   the id is. The task's own id is `TaskId`.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   Opaque correlation value for the task. Echoed so a caller can tell
    #   the task it started from a later one that superseded it. Never an
    #   input: the campaign is what addresses a task, because a campaign has
    #   at most one.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   The task's status over every asset it names, refused ones included:
    #   one refused and one succeeded is PARTIAL\_FAILURE.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   When the task reached a terminal status. Absent while IN\_PROGRESS.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   One entry per asset the request named, in the order named. An asset
    #   refused up front is FAILED from the first response, with its reason.
    #   @return [Array<Types::CampaignAssetActivationOutcome>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetActivationTaskResponse AWS API Documentation
    #
    class StartCampaignAssetActivationTaskResponse < Struct.new(
      :campaign_id,
      :task_id,
      :task_status,
      :started_at,
      :ended_at,
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for StartCampaignAssetExportTask.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign whose assets are exported. Accepts the campaign id or
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token. Two requests carrying the same token within the
    #   dedup window are one request and return the same task id.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetExportTaskRequest AWS API Documentation
    #
    class StartCampaignAssetExportTaskRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for StartCampaignAssetExportTask.
    #
    # Returns the newly created task id and its status, which is always
    # IN\_PROGRESS on this synchronous return. Poll
    # GetCampaignAssetExportTask for the outcome.
    #
    # @!attribute [rw] id
    #   The export task identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task's state, always IN\_PROGRESS at creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/StartCampaignAssetExportTaskResponse AWS API Documentation
    #
    class StartCampaignAssetExportTaskResponse < Struct.new(
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair applied to a resource.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for TagResource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add or replace.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for TagResource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Advisory targeting metadata for a campaign.
    #
    # Describes who the campaign is *about*, and never drives a send —
    # that is `EmailTarget`. Nothing here is validated at create, because
    # a partner refines it across the wizard.
    #
    # @!attribute [rw] industries
    #   Target industries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] company_sizes
    #   Target company sizes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] countries
    #   Target countries, as ISO 3166-1 alpha-2 codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TargetAudience AWS API Documentation
    #
    class TargetAudience < Struct.new(
      :industries,
      :company_sizes,
      :countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a template field. Exactly one variant is set, matching
    # the field's type: text and RichText fields use text, image fields use
    # ImageReference (or, on a write, CampaignAssetImage), AssetLink fields
    # use LinkedAssetId.
    #
    # @note TemplateFieldValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TemplateFieldValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TemplateFieldValue corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Text value — for both text and RichText fields. A RichText value is
    #   a markup fragment restricted to the field's AllowedTags.
    #   @return [String]
    #
    # @!attribute [rw] image_reference
    #   Image reference (image fields).
    #
    #   On a write, one of exactly two forms:
    #
    #   * the `s3://` URI of a file you staged in the Partner Central file
    #     staging bucket. It is scanned, then copied into this asset.
    #   * the URL Build with AI returned for a suggested image, unchanged.
    #     It is copied into this asset and not scanned. Any other URL is
    #     refused with `FILE_REFERENCE_INVALID`, including one a read
    #     returned: to keep the current image, omit the field; to put it on
    #     another asset, use `CampaignAssetImage`.
    #
    #   On a read, a URL the caller can fetch: an image in the asset's own
    #   storage comes back as a presigned GET that expires one hour after
    #   the read, so fetch it again with `GetCampaignAsset` when it returns
    #   403; an image already on DG's public CDN comes back as that stable
    #   URL. A stored reference outside this asset's storage, or not a
    #   raster image, is never signed, and the value is omitted. The signed
    #   URL serves the image as its image type, whatever the upload
    #   declared.
    #   @return [String]
    #
    # @!attribute [rw] linked_asset_id
    #   The asset an `AssetLink` field names: the id of an asset on the same
    #   campaign, of the field's category. It is a prerequisite of this
    #   asset while linked, so it activates first, this asset cannot start
    #   until it is live, and it cannot be deleted.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_image
    #   Write only. Copies an image stored on another of your assets into
    #   this image field. The image is checked against this field's
    #   constraints and not scanned again. Also requires
    #   `partnercentral:GetCampaignAsset` on the source campaign. Reads
    #   return the copy as `ImageReference`.
    #   @return [Types::CampaignAssetImageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TemplateFieldValue AWS API Documentation
    #
    class TemplateFieldValue < Struct.new(
      :text,
      :image_reference,
      :linked_asset_id,
      :campaign_asset_image,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < TemplateFieldValue; end
      class ImageReference < TemplateFieldValue; end
      class LinkedAssetId < TemplateFieldValue; end
      class CampaignAssetImage < TemplateFieldValue; end
      class Unknown < TemplateFieldValue; end
    end

    # A plain-text field's constraints and placeholder.
    #
    # @!attribute [rw] min_length
    #   Minimum accepted length.
    #   @return [Integer]
    #
    # @!attribute [rw] max_length
    #   Maximum accepted length.
    #   @return [Integer]
    #
    # @!attribute [rw] pattern
    #   Regular expression the value must match — used for URL, email, phone
    #   and hex-colour fields.
    #   @return [String]
    #
    # @!attribute [rw] placeholder
    #   Example text shown where the field is empty in a preview of the
    #   asset. Never the asset's value: it is not set on the asset at
    #   create, does not fill a required field, and is never published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/TextFieldType AWS API Documentation
    #
    class TextFieldType < Struct.new(
      :min_length,
      :max_length,
      :pattern,
      :placeholder)
      SENSITIVE = [:placeholder]
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Seconds before retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for UntagResource.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove. Associated values are removed with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for UntagResource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Input for UpdateCampaignAsset operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] campaign_asset_identifier
    #   The asset identifier.
    #   @return [String]
    #
    # @!attribute [rw] field_values
    #   Value-only updates to the asset's pinned template fields, keyed by
    #   FieldId. The field schema (labels, descriptions, constraints,
    #   placeholders, image defaults) is service-owned and pinned at
    #   instantiation, so clients send only the values they are changing.
    #   Fields omitted keep their stored values; send the entry with `Value`
    #   omitted to clear one.
    #
    #   Named `FieldValues` to match the member it edits on `CampaignAsset`,
    #   which is the same concept read back. It was `templateFieldUpdates`;
    #   the two names for one concept were the defect, not the length.
    #   @return [Array<Types::FieldValueInput>]
    #
    # @!attribute [rw] layout
    #   Selects a multi-layout asset's layout: one of the values in
    #   `CampaignAsset.layout.options`.
    #
    #   PATCH: omitted leaves the selection unchanged, and there is no way
    #   to clear it. A value that is not one of the asset's options — or
    #   any value on a single-layout asset — is a plain
    #   `ValidationException`, and nothing in the call is applied. Every
    #   pinned field stays writable whichever layout is selected.
    #   @return [String]
    #
    # @!attribute [rw] send_mode
    #   When a **sendable** asset (`EMAIL`, `SOCIAL_POST`) sends: on
    #   activation, or at `ScheduledSendAt`.
    #
    #   A mode beside a value rather than a union, on purpose:
    #   `ScheduledSendAt` stays a plain `Timestamp`, and the precedent is
    #   EventBridge Scheduler's `FlexibleTimeWindow { Mode,
    #   MaximumWindowInMinutes }`. The pair is checked as one, and a request
    #   where they disagree is refused with `ValidationException`
    #   (`INVALID_VALUE`, naming the member) and applies nothing:
    #
    #   * `SCHEDULED` requires `ScheduledSendAt`; a reschedule resends
    #     `SCHEDULED` with the new time;
    #   * `ON_ACTIVATION` forbids `ScheduledSendAt`, and drops any time
    #     already stored;
    #   * `ScheduledSendAt` without `SendMode` is refused.
    #
    #   PATCH: omitted leaves both unchanged. Until a mode is chosen the
    #   asset reports `SEND_MODE_MISSING` and does not activate: no default,
    #   because an unchosen send mails the real audience. Rejected with
    #   `ValidationException` (`NOT_SUPPORTED_FOR_CATEGORY`) for a category
    #   that has no send (`LANDING_PAGE`, `DOCUMENT`, `BANNER_AD`). Like
    #   every other edit, it reaches the delivery platform at the asset's
    #   next activation, and a live email or social post refuses it
    #   (`ASSET_ALREADY_ACTIVE`): deactivate first.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_send_at
    #   The send time, with `SendMode: SCHEDULED` and only then. See
    #   `SendMode`.
    #
    #   Must be at least an hour out (`SEND_WINDOW_TOO_SOON`), unless it is
    #   the time already stored: resending the stored mode and time changes
    #   nothing and is accepted, so a form that always resubmits does not
    #   trip the window.
    #
    #   Must also fall on or before the campaign's `EndOn` (by the end of
    #   that UTC day): refused with `ValidationException` (`INVALID_VALUE`)
    #   otherwise, so nothing is scheduled to send after the campaign
    #   completes.
    #
    #   Was `scheduleDate`, a `YYYY-MM-DD` string. Retyped because a date
    #   alone cannot express a send *time*, which is the whole point of a
    #   schedule — and because the resource already spelled the same concept
    #   `ScheduledSendAt` on the activation responses. Two spellings of one
    #   concept on one resource was the defect.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   Idempotency token. Retry-safety only — this is **not** a concurrency
    #   token, and sequential edits to one field are last-writer-wins.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaignAssetRequest AWS API Documentation
    #
    class UpdateCampaignAssetRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :campaign_asset_identifier,
      :field_values,
      :layout,
      :send_mode,
      :scheduled_send_at,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for UpdateCampaignAsset.
    #
    # A minimal acknowledgment, not an echo. Read GetCampaignAsset for the
    # applied values (`FieldValues`).
    #
    # @!attribute [rw] id
    #   The asset identifier.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The asset's state, **unchanged**.
    #
    #   An update never moves it, so a live asset stays ACTIVE while its
    #   edited values take effect for the next activation. There is no
    #   edit-outcome member: a 200 means every submitted value applied, and
    #   every failure is a refusal on the call itself (DG-040 Decision 11).
    #   @return [String]
    #
    # @!attribute [rw] activation_issues
    #   What must be fixed on this asset before it can be activated. Empty
    #   when the asset is ready.
    #
    #   Issues don't block saving: an asset can be saved incomplete and
    #   fixed over several updates. `StartCampaignAssetActivationTask`
    #   refuses an asset that still has issues: an issue blocks activation
    #   when only an edit to the asset can change the outcome. Most issues
    #   name the field to fix in `FieldId`. Fix it with
    #   `UpdateCampaignAsset`, then read this list again.
    #
    #   Besides the issues computed from the asset's content, the list
    #   carries what the last activation found: `CONTENT_REJECTED` and
    #   `PARTNER_IMAGE_REJECTED` when moderation refused a field. Editing
    #   that field removes its issue. A `CONTENT_REJECTED` without a
    #   `FieldId` means the text was refused as a whole; editing any text
    #   field removes it.
    #
    #   Problems with the campaign's own settings, such as a missing
    #   recipient list, and with the partner's profile, such as a missing
    #   logo, are reported on `Campaign.ActivationIssues`, not here.
    #   @return [Array<Types::ActivationIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaignAssetResponse AWS API Documentation
    #
    class UpdateCampaignAssetResponse < Struct.new(
      :id,
      :state,
      :activation_issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for UpdateCampaign operation.
    #
    # @!attribute [rw] catalog
    #   The catalog (AWS or Sandbox).
    #   @return [String]
    #
    # @!attribute [rw] campaign_identifier
    #   The campaign identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name.
    #   @return [String]
    #
    # @!attribute [rw] sender_email
    #   Sets or replaces the address the campaign's emails are sent from.
    #   Checked by the same three rules as on `CreateCampaign`, with the
    #   same codes, but only when it differs, ignoring case, from the stored
    #   sender: re-sending the stored one is not checked, and
    #   `StartCampaignAssetActivationTask` re-checks it before an email
    #   activates.
    #
    #   Replaces, never clears: like every member of this operation, an
    #   omitted value leaves the sender as it was, and there is no way to
    #   remove one once set.
    #   @return [String]
    #
    # @!attribute [rw] privacy_policy_url
    #   Sets or replaces the URL of the partner's privacy policy. Replaces,
    #   never clears.
    #   @return [String]
    #
    # @!attribute [rw] partner_address
    #   Sets or replaces the partner's postal address. Replaces, never
    #   clears.
    #   @return [String]
    #
    # @!attribute [rw] partner_badge
    #   Sets or replaces the partner's badge, checked exactly as on
    #   `CreateCampaign`. Replaces, never clears: upload the Standalone AWS
    #   Partner badge to show it again. The badge an asset already published
    #   keeps showing on it until that asset is activated again.
    #   @return [Types::FileRef]
    #
    # @!attribute [rw] email_target
    #   Replaces the campaign's attached recipient list.
    #
    #   The referenced object is copied and pinned again on every call that
    #   supplies it, so the pinned copy always reflects the *last*
    #   `UpdateCampaign` that named one. Editing the source object in your
    #   own bucket without calling this operation again has no effect.
    #   Replaces, never detaches: a partner can swap the list but cannot
    #   remove it.
    #   @return [Types::FileRef]
    #
    # @!attribute [rw] email_target_engagement_group_ids
    #   Engagement groups whose contacts the campaign's emails will also go
    #   to (see `CreateCampaign`). Replaces the stored list; never clears
    #   it.
    #
    #   As on `CreateCampaign`: each group once (`INVALID\_VALUE`
    #   otherwise), not checked against your groups when saved, and resolved
    #   at Start where the stage can (`ENGAGEMENT\_GROUPS\_UNAVAILABLE`
    #   where it can't).
    #   @return [Array<String>]
    #
    # @!attribute [rw] social_connections
    #   Sets the account the campaign's social posts publish from, per
    #   platform. Each platform named replaces that platform's choice; a
    #   platform not named keeps its own. Replaces, never clears.
    #
    #   Not checked against your connections here: a connection can be
    #   deleted at any time, so the activation checks the choice. See
    #   `Campaign$SocialConnections`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] estimated_budget
    #   What the partner expects the campaign to cost.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] total_budget
    #   The campaign's total budget.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] target_audience
    #   Target audience configuration.
    #   @return [Types::TargetAudience]
    #
    # @!attribute [rw] client_token
    #   Idempotency token. Accepted and not stored: this is a change-only
    #   partial update with last-writer-wins, so re-applying the same call
    #   produces the same result and the same response. There is nothing a
    #   replay cache would protect.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] start_on
    #   The first day of the campaign's run window. Not after `EndOn`
    #   (`ValidationException`, `INVALID_VALUE`).
    #   @return [String]
    #
    # @!attribute [rw] end_on
    #   The last day of the campaign's run window, inclusive and in UTC.
    #
    #   Editable only while the campaign is open, like everything else here:
    #   once the stored `EndOn` has passed the campaign is completed and
    #   this update is refused (`CAMPAIGN_COMPLETED`). Refused with
    #   `ValidationException` (`INVALID_VALUE`) when it is in the past, or
    #   earlier than the day of a scheduled send on one of the campaign's
    #   assets: move or cancel that send first. Setting it to today ends the
    #   campaign at the next UTC midnight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaignRequest AWS API Documentation
    #
    class UpdateCampaignRequest < Struct.new(
      :catalog,
      :campaign_identifier,
      :name,
      :sender_email,
      :privacy_policy_url,
      :partner_address,
      :partner_badge,
      :email_target,
      :email_target_engagement_group_ids,
      :social_connections,
      :estimated_budget,
      :total_budget,
      :target_audience,
      :client_token,
      :start_on,
      :end_on)
      SENSITIVE = [:sender_email, :partner_address]
      include Aws::Structure
    end

    # Output for UpdateCampaign.
    #
    # @!attribute [rw] id
    #   The campaign identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/UpdateCampaignResponse AWS API Documentation
    #
    class UpdateCampaignResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    #
    # A caller branches on `Reason`, and where the rejection is attributable
    # to particular fields it reads `FieldList` rather than parsing
    # `Message`, which is prose and may change.
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The single coarse reason the request was rejected, for a caller that
    #   does not care which field.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Every field that failed, not just the first.
    #
    #   ⚠️ **Every field, deliberately.** The convention comment carried
    #   by most internal models — *"if more than one field caused the
    #   error, pick one and elaborate in the message"* — is the reading
    #   this service does NOT take: a partner editing a form would then
    #   discover their errors one request at a time. The whole request is
    #   validated and the full set reported, so one round of fixes is one
    #   call. **Each entry names a member of the request just sent**, and
    #   only
    #   that: the value to change and send again. A template field value is
    #   `Name` `FieldValues` with the template field in `FieldId`, one
    #   entry per failing field. **When it is present.** Only when the
    #   refusal points at something
    #   the partner fixes in a form, and then every such refusal carries it:
    #   - `UpdateCampaignAsset`: `FieldValues` (including a file the
    #   content scan declined, which is why a partner handles image failures
    #   and text failures the same way, through this list), `Layout`,
    #   `SendMode` and `ScheduledSendAt`; - `CreateCampaign` and
    #   `UpdateCampaign`: campaign settings and files; -
    #   `GetCampaignTemplate`: `Identifier`. Every other
    #   `ValidationException` carries `Message` only — tags,
    #   ARNs, social connections, exports, and `CAMPAIGN\_INCOMPLETE`,
    #   whose missing settings are not members of the request it refuses.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A field that failed validation.
    #
    # @!attribute [rw] name
    #   The member of the request that failed, as the request names it:
    #   `FieldValues` for a template field value, `Layout`, `EmailTarget`,
    #   `Identifier`, and so on. It is never a template field id: a template
    #   field is always `FieldValues`, with the field in `FieldId`.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The template field that failed, when `Name` is `FieldValues`; absent
    #   otherwise.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Why this field failed, in prose a partner can be shown directly.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Why this field failed, as a value a client branches on. Read this
    #   rather than `Message`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-marketing-2026-05-31/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :field_id,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


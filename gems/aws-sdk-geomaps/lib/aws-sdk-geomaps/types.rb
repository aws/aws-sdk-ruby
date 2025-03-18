# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GeoMaps
  module Types

    # The request was denied because of insufficient access or permissions.
    # Check with an administrator to verify your permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] font_stack
    #   Name of the `FontStack` to retrieve.
    #
    #   Example: `Amazon Ember Bold,Noto Sans Bold`.
    #
    #   The supported font stacks are as follows:
    #
    #   * Amazon Ember Bold
    #
    #   * Amazon Ember Bold Italic
    #
    #   * Amazon Ember Bold,Noto Sans Bold
    #
    #   * Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold
    #
    #   * Amazon Ember Condensed RC BdItalic
    #
    #   * Amazon Ember Condensed RC Bold
    #
    #   * Amazon Ember Condensed RC Bold Italic
    #
    #   * Amazon Ember Condensed RC Bold,Noto Sans Bold
    #
    #   * Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic
    #     Condensed Bold
    #
    #   * Amazon Ember Condensed RC Light
    #
    #   * Amazon Ember Condensed RC Light Italic
    #
    #   * Amazon Ember Condensed RC LtItalic
    #
    #   * Amazon Ember Condensed RC Regular
    #
    #   * Amazon Ember Condensed RC Regular Italic
    #
    #   * Amazon Ember Condensed RC Regular,Noto Sans Regular
    #
    #   * Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans
    #     Arabic Condensed Regular
    #
    #   * Amazon Ember Condensed RC RgItalic
    #
    #   * Amazon Ember Condensed RC ThItalic
    #
    #   * Amazon Ember Condensed RC Thin
    #
    #   * Amazon Ember Condensed RC Thin Italic
    #
    #   * Amazon Ember Heavy
    #
    #   * Amazon Ember Heavy Italic
    #
    #   * Amazon Ember Light
    #
    #   * Amazon Ember Light Italic
    #
    #   * Amazon Ember Medium
    #
    #   * Amazon Ember Medium Italic
    #
    #   * Amazon Ember Medium,Noto Sans Medium
    #
    #   * Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium
    #
    #   * Amazon Ember Regular
    #
    #   * Amazon Ember Regular Italic
    #
    #   * Amazon Ember Regular Italic,Noto Sans Italic
    #
    #   * Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic
    #     Regular
    #
    #   * Amazon Ember Regular,Noto Sans Regular
    #
    #   * Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular
    #
    #   * Amazon Ember Thin
    #
    #   * Amazon Ember Thin Italic
    #
    #   * AmazonEmberCdRC\_Bd
    #
    #   * AmazonEmberCdRC\_BdIt
    #
    #   * AmazonEmberCdRC\_Lt
    #
    #   * AmazonEmberCdRC\_LtIt
    #
    #   * AmazonEmberCdRC\_Rg
    #
    #   * AmazonEmberCdRC\_RgIt
    #
    #   * AmazonEmberCdRC\_Th
    #
    #   * AmazonEmberCdRC\_ThIt
    #
    #   * AmazonEmber\_Bd
    #
    #   * AmazonEmber\_BdIt
    #
    #   * AmazonEmber\_He
    #
    #   * AmazonEmber\_HeIt
    #
    #   * AmazonEmber\_Lt
    #
    #   * AmazonEmber\_LtIt
    #
    #   * AmazonEmber\_Md
    #
    #   * AmazonEmber\_MdIt
    #
    #   * AmazonEmber\_Rg
    #
    #   * AmazonEmber\_RgIt
    #
    #   * AmazonEmber\_Th
    #
    #   * AmazonEmber\_ThIt
    #
    #   * Noto Sans Black
    #
    #   * Noto Sans Black Italic
    #
    #   * Noto Sans Bold
    #
    #   * Noto Sans Bold Italic
    #
    #   * Noto Sans Extra Bold
    #
    #   * Noto Sans Extra Bold Italic
    #
    #   * Noto Sans Extra Light
    #
    #   * Noto Sans Extra Light Italic
    #
    #   * Noto Sans Italic
    #
    #   * Noto Sans Light
    #
    #   * Noto Sans Light Italic
    #
    #   * Noto Sans Medium
    #
    #   * Noto Sans Medium Italic
    #
    #   * Noto Sans Regular
    #
    #   * Noto Sans Semi Bold
    #
    #   * Noto Sans Semi Bold Italic
    #
    #   * Noto Sans Thin
    #
    #   * Noto Sans Thin Italic
    #
    #   * NotoSans-Bold
    #
    #   * NotoSans-Italic
    #
    #   * NotoSans-Medium
    #
    #   * NotoSans-Regular
    #
    #   * Open Sans Regular,Arial Unicode MS Regular
    #   @return [String]
    #
    # @!attribute [rw] font_unicode_range
    #   A Unicode range of characters to download glyphs for. This must be
    #   aligned to multiples of 256.
    #
    #   Example: `0-255.pdf`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetGlyphsRequest AWS API Documentation
    #
    class GetGlyphsRequest < Struct.new(
      :font_stack,
      :font_unicode_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   The Glyph, as a binary blob.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Header that represents the format of the response. The response
    #   returns the following as the HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   Header that instructs caching configuration for the client.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The glyph's Etag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetGlyphsResponse AWS API Documentation
    #
    class GetGlyphsResponse < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_name
    #   `Sprites` API: The name of the sprite ﬁle to retrieve, following
    #   pattern `sprites(@2x)?\.(png|json)`.
    #
    #   Example: `sprites.png`
    #   @return [String]
    #
    # @!attribute [rw] style
    #   Style specifies the desired map style for the `Sprites` APIs.
    #   @return [String]
    #
    # @!attribute [rw] color_scheme
    #   Sets color tone for map such as dark and light for specific map
    #   styles. It applies to only vector map styles such as Standard and
    #   Monochrome.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for ColorScheme are case sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] variant
    #   Optimizes map styles for specific use case or industry. You can
    #   choose allowed variant only with Standard map style.
    #
    #   Example: `Default`
    #
    #   <note markdown="1"> Valid values for Variant are case sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetSpritesRequest AWS API Documentation
    #
    class GetSpritesRequest < Struct.new(
      :file_name,
      :style,
      :color_scheme,
      :variant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   The body of the sprite sheet or JSON offset file (image/png or
    #   application/json, depending on input).
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Header that represents the format of the response. The response
    #   returns the following as the HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   Header that instructs caching configuration for the client.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The sprite's Etag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetSpritesResponse AWS API Documentation
    #
    class GetSpritesResponse < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bounding_box
    #   Takes in two pairs of coordinates, \[Lon, Lat\], denoting
    #   south-westerly and north-easterly edges of the image. The underlying
    #   area becomes the view of the image.
    #
    #   Example: -123.17075,49.26959,-123.08125,49.31429
    #   @return [String]
    #
    # @!attribute [rw] bounded_positions
    #   Takes in two or more pair of coordinates, \[Lon, Lat\], with each
    #   coordinate separated by a comma. The API will generate an image to
    #   encompass all of the provided coordinates.
    #
    #   <note markdown="1"> Cannot be used with `Zoom` and or `Radius`
    #
    #    </note>
    #
    #   Example: 97.170451,78.039098,99.045536,27.176178
    #   @return [String]
    #
    # @!attribute [rw] center
    #   Takes in a pair of coordinates, \[Lon, Lat\], which becomes the
    #   center point of the image. This parameter requires that either zoom
    #   or radius is set.
    #
    #   <note markdown="1"> Cannot be used with `Zoom` and or `Radius`
    #
    #    </note>
    #
    #   Example: 49.295,-123.108
    #   @return [String]
    #
    # @!attribute [rw] color_scheme
    #   Sets color tone for map, such as dark and light for specific map
    #   styles. It only applies to vector map styles, such as Standard.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for `ColorScheme` are case sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] compact_overlay
    #   Takes in a string to draw geometries on the image. The input is a
    #   comma separated format as follows format: `[Lon, Lat]`
    #
    #   Example:
    #   `line:-122.407653,37.798557,-122.413291,37.802443;color=%23DD0000;width=7;outline-color=#00DD00;outline-width=5yd|point:-122.40572,37.80004;label=Fog
    #   Hill Market;size=large;text-color=%23DD0000;color=#EE4B2B`
    #
    #   <note markdown="1"> Currently it supports the following geometry types: point, line and
    #   polygon. It does not support multiPoint , multiLine and
    #   multiPolgyon.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] crop_labels
    #   It is a flag that takes in true or false. It prevents the labels
    #   that are on the edge of the image from being cut or obscured.
    #   @return [Boolean]
    #
    # @!attribute [rw] geo_json_overlay
    #   Takes in a string to draw geometries on the image. The input is a
    #   valid GeoJSON collection object.
    #
    #   Example: `{"type":"FeatureCollection","features":
    #   [{"type":"Feature","geometry":{"type":"MultiPoint","coordinates":
    #   [[-90.076345,51.504107],[-0.074451,51.506892]]},"properties":
    #   {"color":"#00DD00"}}]}`
    #   @return [String]
    #
    # @!attribute [rw] height
    #   Specifies the height of the map image.
    #   @return [Integer]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] label_size
    #   Overrides the label size auto-calculated by `FileName`. Takes in one
    #   of the values - `Small` or `Large`.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   Specifies the language on the map labels using the BCP 47 language
    #   tag, limited to ISO 639-1 two-letter language codes. If the
    #   specified language data isn't available for the map image, the
    #   labels will default to the regional primary language.
    #
    #   Supported codes:
    #
    #   * `ar`
    #
    #   * `as`
    #
    #   * `az`
    #
    #   * `be`
    #
    #   * `bg`
    #
    #   * `bn`
    #
    #   * `bs`
    #
    #   * `ca`
    #
    #   * `cs`
    #
    #   * `cy`
    #
    #   * `da`
    #
    #   * `de`
    #
    #   * `el`
    #
    #   * `en`
    #
    #   * `es`
    #
    #   * `et`
    #
    #   * `eu`
    #
    #   * `fi`
    #
    #   * `fo`
    #
    #   * `fr`
    #
    #   * `ga`
    #
    #   * `gl`
    #
    #   * `gn`
    #
    #   * `gu`
    #
    #   * `he`
    #
    #   * `hi`
    #
    #   * `hr`
    #
    #   * `hu`
    #
    #   * `hy`
    #
    #   * `id`
    #
    #   * `is`
    #
    #   * `it`
    #
    #   * `ja`
    #
    #   * `ka`
    #
    #   * `kk`
    #
    #   * `km`
    #
    #   * `kn`
    #
    #   * `ko`
    #
    #   * `ky`
    #
    #   * `lt`
    #
    #   * `lv`
    #
    #   * `mk`
    #
    #   * `ml`
    #
    #   * `mr`
    #
    #   * `ms`
    #
    #   * `mt`
    #
    #   * `my`
    #
    #   * `nl`
    #
    #   * `no`
    #
    #   * `or`
    #
    #   * `pa`
    #
    #   * `pl`
    #
    #   * `pt`
    #
    #   * `ro`
    #
    #   * `ru`
    #
    #   * `sk`
    #
    #   * `sl`
    #
    #   * `sq`
    #
    #   * `sr`
    #
    #   * `sv`
    #
    #   * `ta`
    #
    #   * `te`
    #
    #   * `th`
    #
    #   * `tr`
    #
    #   * `uk`
    #
    #   * `uz`
    #
    #   * `vi`
    #
    #   * `zh`
    #   @return [String]
    #
    # @!attribute [rw] padding
    #   Applies additional space (in pixels) around overlay feature to
    #   prevent them from being cut or obscured.
    #
    #   <note markdown="1"> Value for max and min is determined by:
    #
    #    Min: `1`
    #
    #    Max: `min(height, width)/4`
    #
    #    </note>
    #
    #   Example: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] political_view
    #   Specifies the political view, using ISO 3166-2 or ISO 3166-3 country
    #   code format.
    #
    #   The following political views are currently supported:
    #
    #   * `ARG`: Argentina's view on the Southern Patagonian Ice Field and
    #     Tierra Del Fuego, including the Falkland Islands, South Georgia,
    #     and South Sandwich Islands
    #
    #   * `EGY`: Egypt's view on Bir Tawil
    #
    #   * `IND`: India's view on Gilgit-Baltistan
    #
    #   * `KEN`: Kenya's view on the Ilemi Triangle
    #
    #   * `MAR`: Morocco's view on Western Sahara
    #
    #   * `RUS`: Russia's view on Crimea
    #
    #   * `SDN`: Sudan's view on the Halaib Triangle
    #
    #   * `SRB`: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands
    #
    #   * `SUR`: Suriname's view on the Courantyne Headwaters and Lawa
    #     Headwaters
    #
    #   * `SYR`: Syria's view on the Golan Heights
    #
    #   * `TUR`: Turkey's view on Cyprus and Northern Cyprus
    #
    #   * `TZA`: Tanzania's view on Lake Malawi
    #
    #   * `URY`: Uruguay's view on Rincon de Artigas
    #
    #   * `VNM`: Vietnam's view on the Paracel Islands and Spratly Islands
    #   @return [String]
    #
    # @!attribute [rw] points_of_interests
    #   Determines if the result image will display icons representing
    #   points of interest on the map.
    #   @return [String]
    #
    # @!attribute [rw] radius
    #   Used with center parameter, it specifies the zoom of the image where
    #   you can control it on a granular level. Takes in any value `>= 1`.
    #
    #   Example: `1500`
    #
    #   <note markdown="1"> Cannot be used with `Zoom`.
    #
    #    </note>
    #
    #   **Unit**: `Meters`
    #   @return [Integer]
    #
    # @!attribute [rw] file_name
    #   The map scaling parameter to size the image, icons, and labels. It
    #   follows the pattern of `^map(@2x)?$`.
    #
    #   Example: `map, map@2x`
    #   @return [String]
    #
    # @!attribute [rw] scale_bar_unit
    #   Displays a scale on the bottom right of the map image with the unit
    #   specified in the input.
    #
    #   Example: `KilometersMiles, Miles, Kilometers, MilesKilometers`
    #   @return [String]
    #
    # @!attribute [rw] style
    #   `Style` specifies the desired map style.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   Specifies the width of the map image.
    #   @return [Integer]
    #
    # @!attribute [rw] zoom
    #   Specifies the zoom level of the map image.
    #
    #   <note markdown="1"> Cannot be used with `Radius`.
    #
    #    </note>
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStaticMapRequest AWS API Documentation
    #
    class GetStaticMapRequest < Struct.new(
      :bounding_box,
      :bounded_positions,
      :center,
      :color_scheme,
      :compact_overlay,
      :crop_labels,
      :geo_json_overlay,
      :height,
      :key,
      :label_size,
      :language,
      :padding,
      :political_view,
      :points_of_interests,
      :radius,
      :file_name,
      :scale_bar_unit,
      :style,
      :width,
      :zoom)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   The blob represents a map image as a `jpeg` for the `GetStaticMap`
    #   API.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Header that represents the format of the response. The response
    #   returns the following as the HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   Header that instructs caching configuration for the client.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The static map's Etag.
    #   @return [String]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the request is charged at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStaticMapResponse AWS API Documentation
    #
    class GetStaticMapResponse < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      :etag,
      :pricing_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] style
    #   Style specifies the desired map style.
    #   @return [String]
    #
    # @!attribute [rw] color_scheme
    #   Sets color tone for map such as dark and light for specific map
    #   styles. It applies to only vector map styles such as Standard and
    #   Monochrome.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for ColorScheme are case sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] political_view
    #   Specifies the political view using ISO 3166-2 or ISO 3166-3 country
    #   code format.
    #
    #   The following political views are currently supported:
    #
    #   * `ARG`: Argentina's view on the Southern Patagonian Ice Field and
    #     Tierra Del Fuego, including the Falkland Islands, South Georgia,
    #     and South Sandwich Islands
    #
    #   * `EGY`: Egypt's view on Bir Tawil
    #
    #   * `IND`: India's view on Gilgit-Baltistan
    #
    #   * `KEN`: Kenya's view on the Ilemi Triangle
    #
    #   * `MAR`: Morocco's view on Western Sahara
    #
    #   * `RUS`: Russia's view on Crimea
    #
    #   * `SDN`: Sudan's view on the Halaib Triangle
    #
    #   * `SRB`: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands
    #
    #   * `SUR`: Suriname's view on the Courantyne Headwaters and Lawa
    #     Headwaters
    #
    #   * `SYR`: Syria's view on the Golan Heights
    #
    #   * `TUR`: Turkey's view on Cyprus and Northern Cyprus
    #
    #   * `TZA`: Tanzania's view on Lake Malawi
    #
    #   * `URY`: Uruguay's view on Rincon de Artigas
    #
    #   * `VNM`: Vietnam's view on the Paracel Islands and Spratly Islands
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStyleDescriptorRequest AWS API Documentation
    #
    class GetStyleDescriptorRequest < Struct.new(
      :style,
      :color_scheme,
      :political_view,
      :key)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   This Blob contains the body of the style descriptor which is in
    #   application/json format.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Header that represents the format of the response. The response
    #   returns the following as the HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   Header that instructs caching configuration for the client.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The style descriptor's Etag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStyleDescriptorResponse AWS API Documentation
    #
    class GetStyleDescriptorResponse < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tileset
    #   Specifies the desired tile set.
    #
    #   Valid Values: `raster.satellite | vector.basemap`
    #   @return [String]
    #
    # @!attribute [rw] z
    #   The zoom value for the map tile.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   The X axis value for the map tile. Must be between 0 and 19.
    #   @return [String]
    #
    # @!attribute [rw] y
    #   The Y axis value for the map tile.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetTileRequest AWS API Documentation
    #
    class GetTileRequest < Struct.new(
      :tileset,
      :z,
      :x,
      :y,
      :key)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   The blob represents a vector tile in `mvt` or a raster tile in an
    #   image format.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Header that represents the format of the response. The response
    #   returns the following as the HTTP body.
    #   @return [String]
    #
    # @!attribute [rw] cache_control
    #   Header that instructs caching configuration for the client.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The pricing bucket for which the request is charged at.
    #   @return [String]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the request is charged at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetTileResponse AWS API Documentation
    #
    class GetTileResponse < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      :etag,
      :pricing_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The field where the invalid entry was detected.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A message with the reason for the validation exception error.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the Amazon
    # Location service.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


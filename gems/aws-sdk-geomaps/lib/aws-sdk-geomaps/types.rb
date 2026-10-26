# frozen_string_literal: true

# This is generated code!

module Aws::GeoMaps
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied because of insufficient access or permissions. Check with an administrator to verify your permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute font_stack
    #   <p>Name of the <code>FontStack</code> to retrieve. </p> <p>Example: <code>Amazon Ember Bold,Noto Sans Bold</code>.</p> <p>The supported font stacks are as follows:</p> <ul> <li> <p>Amazon Ember Bold</p> </li> <li> <p>Amazon Ember Bold Italic</p> </li> <li> <p>Amazon Ember Bold,Noto Sans Bold</p> </li> <li> <p>Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold</p> </li> <li> <p>Amazon Ember Condensed RC BdItalic</p> </li> <li> <p>Amazon Ember Condensed RC Bold</p> </li> <li> <p>Amazon Ember Condensed RC Bold Italic</p> </li> <li> <p>Amazon Ember Condensed RC Bold,Noto Sans Bold</p> </li> <li> <p>Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic Condensed Bold</p> </li> <li> <p>Amazon Ember Condensed RC Light</p> </li> <li> <p>Amazon Ember Condensed RC Light Italic</p> </li> <li> <p>Amazon Ember Condensed RC LtItalic</p> </li> <li> <p>Amazon Ember Condensed RC Regular</p> </li> <li> <p>Amazon Ember Condensed RC Regular Italic</p> </li> <li> <p>Amazon Ember Condensed RC Regular,Noto Sans Regular</p> </li> <li> <p>Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic Condensed Regular</p> </li> <li> <p>Amazon Ember Condensed RC RgItalic</p> </li> <li> <p>Amazon Ember Condensed RC ThItalic</p> </li> <li> <p>Amazon Ember Condensed RC Thin</p> </li> <li> <p>Amazon Ember Condensed RC Thin Italic</p> </li> <li> <p>Amazon Ember Heavy</p> </li> <li> <p>Amazon Ember Heavy Italic</p> </li> <li> <p>Amazon Ember Light</p> </li> <li> <p>Amazon Ember Light Italic</p> </li> <li> <p>Amazon Ember Medium</p> </li> <li> <p>Amazon Ember Medium Italic</p> </li> <li> <p>Amazon Ember Medium,Noto Sans Medium</p> </li> <li> <p>Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium</p> </li> <li> <p>Amazon Ember Regular</p> </li> <li> <p>Amazon Ember Regular Italic</p> </li> <li> <p>Amazon Ember Regular Italic,Noto Sans Italic</p> </li> <li> <p>Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic Regular</p> </li> <li> <p>Amazon Ember Regular,Noto Sans Regular</p> </li> <li> <p>Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular</p> </li> <li> <p>Amazon Ember Thin</p> </li> <li> <p>Amazon Ember Thin Italic</p> </li> <li> <p>AmazonEmberCdRC_Bd</p> </li> <li> <p>AmazonEmberCdRC_BdIt</p> </li> <li> <p>AmazonEmberCdRC_Lt</p> </li> <li> <p>AmazonEmberCdRC_LtIt</p> </li> <li> <p>AmazonEmberCdRC_Rg</p> </li> <li> <p>AmazonEmberCdRC_RgIt</p> </li> <li> <p>AmazonEmberCdRC_Th</p> </li> <li> <p>AmazonEmberCdRC_ThIt</p> </li> <li> <p>AmazonEmber_Bd</p> </li> <li> <p>AmazonEmber_BdIt</p> </li> <li> <p>AmazonEmber_He</p> </li> <li> <p>AmazonEmber_HeIt</p> </li> <li> <p>AmazonEmber_Lt</p> </li> <li> <p>AmazonEmber_LtIt</p> </li> <li> <p>AmazonEmber_Md</p> </li> <li> <p>AmazonEmber_MdIt</p> </li> <li> <p>AmazonEmber_Rg</p> </li> <li> <p>AmazonEmber_RgIt</p> </li> <li> <p>AmazonEmber_Th</p> </li> <li> <p>AmazonEmber_ThIt</p> </li> <li> <p>Noto Sans Black</p> </li> <li> <p>Noto Sans Black Italic</p> </li> <li> <p>Noto Sans Bold</p> </li> <li> <p>Noto Sans Bold Italic</p> </li> <li> <p>Noto Sans Extra Bold</p> </li> <li> <p>Noto Sans Extra Bold Italic</p> </li> <li> <p>Noto Sans Extra Light</p> </li> <li> <p>Noto Sans Extra Light Italic</p> </li> <li> <p>Noto Sans Italic</p> </li> <li> <p>Noto Sans Light</p> </li> <li> <p>Noto Sans Light Italic</p> </li> <li> <p>Noto Sans Medium</p> </li> <li> <p>Noto Sans Medium Italic</p> </li> <li> <p>Noto Sans Regular</p> </li> <li> <p>Noto Sans Semi Bold</p> </li> <li> <p>Noto Sans Semi Bold Italic</p> </li> <li> <p>Noto Sans Thin</p> </li> <li> <p>Noto Sans Thin Italic</p> </li> <li> <p>NotoSans-Bold</p> </li> <li> <p>NotoSans-Italic</p> </li> <li> <p>NotoSans-Medium</p> </li> <li> <p>NotoSans-Regular</p> </li> <li> <p>Open Sans Regular,Arial Unicode MS Regular</p> </li> </ul>
    #   @return [String]
    # @!attribute font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. This must be aligned to multiples of 256. </p> <p>Example: <code>0-255.pbf</code> </p>
    #   @return [String]
    class GetGlyphsRequest < Struct.new(
      nil,
      :font_stack,
      :font_unicode_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>The Glyph, as a binary blob.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Header that represents the format of the response. The response returns the following as the HTTP body.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Header that instructs caching configuration for the client.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The glyph's Etag.</p>
    #   @return [String]
    class GetGlyphsResponse < Struct.new(
      nil,
      :blob,
      :content_type,
      :cache_control,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_name
    #   <p> <code>Sprites</code> API: The name of the sprite ﬁle to retrieve, following pattern <code>sprites(@2x)?\.(png|json)</code>.</p> <p>Example: <code>sprites.png</code> </p>
    #   @return [String]
    # @!attribute style
    #   <p>Style specifies the desired map style for the <code>Sprites</code> APIs.</p>
    #   @return [String]
    # @!attribute color_scheme
    #   <p>Sets the color tone for the map sprites, such as dark and light.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for ColorScheme are case sensitive.</p> </note>
    #   @return [String]
    # @!attribute variant
    #   <p>Optimizes map styles for specific use case or industry. You can choose allowed variant only with Standard map style.</p> <p>Example: <code>Default</code> </p> <note> <p>Valid values for Variant are case sensitive.</p> </note>
    #   @return [String]
    class GetSpritesRequest < Struct.new(
      nil,
      :file_name,
      :style,
      :color_scheme,
      :variant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>The body of the sprite sheet or JSON offset file (image/png or application/json, depending on input).</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Header that represents the format of the response. The response returns the following as the HTTP body.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Header that instructs caching configuration for the client.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The sprite's Etag.</p>
    #   @return [String]
    class GetSpritesResponse < Struct.new(
      nil,
      :blob,
      :content_type,
      :cache_control,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bounding_box
    #   <p>Takes in two pairs of coordinates in World Geodetic System (WGS 84) format: [longitude, latitude], denoting south-westerly and north-easterly edges of the image. The underlying area becomes the view of the image. </p> <p>Example: -123.17075,49.26959,-123.08125,49.31429</p>
    #   @return [String]
    # @!attribute bounded_positions
    #   <p>Takes in two or more pair of coordinates in World Geodetic System (WGS 84) format: [longitude, latitude], with each coordinate separated by a comma. The API will generate an image to encompass all of the provided coordinates. </p> <note> <p>Cannot be used with <code>Zoom</code> and or <code>Radius</code> </p> </note> <p>Example: 97.170451,78.039098,99.045536,27.176178</p>
    #   @return [String]
    # @!attribute center
    #   <p>Takes in a pair of coordinates in World Geodetic System (WGS 84) format: [longitude, latitude], which becomes the center point of the image. This parameter requires that either zoom or radius is set.</p> <note> <p>Cannot be used with <code>Zoom</code> and or <code>Radius</code> </p> </note> <p>Example: 49.295,-123.108</p>
    #   @return [String]
    # @!attribute color_scheme
    #   <p>Sets the color tone for the map, such as dark and light.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for <code>ColorScheme</code> are case sensitive.</p> </note>
    #   @return [String]
    # @!attribute compact_overlay
    #   <p>Takes in a string to draw geometries on the image. The input is a comma separated format as follows format: <code>[Lon, Lat]</code> </p> <p>Example: <code>line:-122.407653,37.798557,-122.413291,37.802443;color=%23DD0000;width=7;outline-color=#00DD00;outline-width=5yd|point:-122.40572,37.80004;label=Fog Hill Market;size=large;text-color=%23DD0000;color=#EE4B2B</code> </p> <note> <p>Currently it supports the following geometry types: point, line and polygon. It does not support multiPoint , multiLine and multiPolgyon.</p> </note>
    #   @return [String]
    # @!attribute crop_labels
    #   <p>It is a flag that takes in true or false. It prevents the labels that are on the edge of the image from being cut or obscured.</p>
    #   @return [Boolean]
    # @!attribute geo_json_overlay
    #   <p>Takes in a string to draw geometries on the image. The input is a valid GeoJSON collection object. </p> <p>Example: <code>{"type":"FeatureCollection","features": [{"type":"Feature","geometry":{"type":"MultiPoint","coordinates": [[-90.076345,51.504107],[-0.074451,51.506892]]},"properties": {"color":"#00DD00"}}]}</code> </p>
    #   @return [String]
    # @!attribute height
    #   <p>Specifies the height of the map image.</p>
    #   @return [Integer]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute label_size
    #   <p>Overrides the label size auto-calculated by <code>FileName</code>. Takes in one of the values - <code>Small</code> or <code>Large</code>.</p>
    #   @return [String]
    # @!attribute language
    #   <p>Specifies the language on the map labels using the BCP 47 language tag, limited to ISO 639-1 two-letter language codes. If the specified language data isn't available for the map image, the labels will default to the regional primary language.</p> <p>Supported codes:</p> <ul> <li> <p> <code>ar</code> </p> </li> <li> <p> <code>as</code> </p> </li> <li> <p> <code>az</code> </p> </li> <li> <p> <code>be</code> </p> </li> <li> <p> <code>bg</code> </p> </li> <li> <p> <code>bn</code> </p> </li> <li> <p> <code>bs</code> </p> </li> <li> <p> <code>ca</code> </p> </li> <li> <p> <code>cs</code> </p> </li> <li> <p> <code>cy</code> </p> </li> <li> <p> <code>da</code> </p> </li> <li> <p> <code>de</code> </p> </li> <li> <p> <code>el</code> </p> </li> <li> <p> <code>en</code> </p> </li> <li> <p> <code>es</code> </p> </li> <li> <p> <code>et</code> </p> </li> <li> <p> <code>eu</code> </p> </li> <li> <p> <code>fi</code> </p> </li> <li> <p> <code>fo</code> </p> </li> <li> <p> <code>fr</code> </p> </li> <li> <p> <code>ga</code> </p> </li> <li> <p> <code>gl</code> </p> </li> <li> <p> <code>gn</code> </p> </li> <li> <p> <code>gu</code> </p> </li> <li> <p> <code>he</code> </p> </li> <li> <p> <code>hi</code> </p> </li> <li> <p> <code>hr</code> </p> </li> <li> <p> <code>hu</code> </p> </li> <li> <p> <code>hy</code> </p> </li> <li> <p> <code>id</code> </p> </li> <li> <p> <code>is</code> </p> </li> <li> <p> <code>it</code> </p> </li> <li> <p> <code>ja</code> </p> </li> <li> <p> <code>ka</code> </p> </li> <li> <p> <code>kk</code> </p> </li> <li> <p> <code>km</code> </p> </li> <li> <p> <code>kn</code> </p> </li> <li> <p> <code>ko</code> </p> </li> <li> <p> <code>ky</code> </p> </li> <li> <p> <code>lt</code> </p> </li> <li> <p> <code>lv</code> </p> </li> <li> <p> <code>mk</code> </p> </li> <li> <p> <code>ml</code> </p> </li> <li> <p> <code>mr</code> </p> </li> <li> <p> <code>ms</code> </p> </li> <li> <p> <code>mt</code> </p> </li> <li> <p> <code>my</code> </p> </li> <li> <p> <code>nl</code> </p> </li> <li> <p> <code>no</code> </p> </li> <li> <p> <code>or</code> </p> </li> <li> <p> <code>pa</code> </p> </li> <li> <p> <code>pl</code> </p> </li> <li> <p> <code>pt</code> </p> </li> <li> <p> <code>ro</code> </p> </li> <li> <p> <code>ru</code> </p> </li> <li> <p> <code>sk</code> </p> </li> <li> <p> <code>sl</code> </p> </li> <li> <p> <code>sq</code> </p> </li> <li> <p> <code>sr</code> </p> </li> <li> <p> <code>sv</code> </p> </li> <li> <p> <code>ta</code> </p> </li> <li> <p> <code>te</code> </p> </li> <li> <p> <code>th</code> </p> </li> <li> <p> <code>tr</code> </p> </li> <li> <p> <code>uk</code> </p> </li> <li> <p> <code>uz</code> </p> </li> <li> <p> <code>vi</code> </p> </li> <li> <p> <code>zh</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute padding
    #   <p>Applies additional space (in pixels) around overlay feature to prevent them from being cut or obscured.</p> <note> <p>Value for max and min is determined by:</p> <p>Min: <code>1</code> </p> <p>Max: <code>min(height, width)/4</code> </p> </note> <p>Example: <code>100</code> </p>
    #   @return [Integer]
    # @!attribute political_view
    #   <p>Specifies the political view, using ISO 3166-2 or ISO 3166-3 country code format.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    #   @return [String]
    # @!attribute points_of_interests
    #   <p>Determines if the result image will display icons representing points of interest on the map.</p>
    #   @return [String]
    # @!attribute radius
    #   <p>Used with center parameter, it specifies the zoom of the image where you can control it on a granular level. Takes in any value <code>&gt;= 1</code>. </p> <p>Example: <code>1500</code> </p> <note> <p>Cannot be used with <code>Zoom</code>.</p> </note> <p> <b>Unit</b>: <code>Meters</code> </p> <p/>
    #   @return [Integer]
    # @!attribute file_name
    #   <p>The map scaling parameter to size the image, icons, and labels. It follows the pattern of <code>^map(@2x)?$</code>.</p> <p>Example: <code>map, map@2x</code> </p>
    #   @return [String]
    # @!attribute scale_bar_unit
    #   <p>Displays a scale on the bottom right of the map image with the unit specified in the input. </p> <p>Example: <code>KilometersMiles, Miles, Kilometers, MilesKilometers</code> </p>
    #   @return [String]
    # @!attribute style
    #   <p> <code>Style</code> specifies the desired map style.</p>
    #   @return [String]
    # @!attribute width
    #   <p>Specifies the width of the map image.</p>
    #   @return [Integer]
    # @!attribute zoom
    #   <p>Specifies the zoom level of the map image.</p> <note> <p>Cannot be used with <code>Radius</code>.</p> </note>
    #   @return [Float]
    class GetStaticMapRequest < Struct.new(
      nil,
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
      :zoom,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>The blob represents a map image as a <code>jpeg</code> for the <code>GetStaticMap</code> API.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Header that represents the format of the response. The response returns the following as the HTTP body.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Header that instructs caching configuration for the client.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The static map's Etag.</p>
    #   @return [String]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the request is charged at.</p>
    #   @return [String]
    class GetStaticMapResponse < Struct.new(
      nil,
      :blob,
      :content_type,
      :cache_control,
      :e_tag,
      :pricing_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute style
    #   <p>Style specifies the desired map style. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>Standard</code> and <code>Monochrome</code> values.</p>
    #   @return [String]
    # @!attribute color_scheme
    #   <p>Sets the color tone for the map, such as dark and light.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for ColorScheme are case sensitive.</p> </note>
    #   @return [String]
    # @!attribute political_view
    #   <p>Specifies the political view using ISO 3166-2 or ISO 3166-3 country code format. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    #   @return [String]
    # @!attribute terrain
    #   <p>Adjusts how physical terrain details are rendered on the map. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <p>The following terrain styles are currently supported:</p> <ul> <li> <p> <code>Hillshade</code>: Displays the physical terrain details through shading and highlighting of elevation change and geographic features.</p> </li> <li> <p> <code>Terrain3D</code>: Displays physical terrain details and elevations as a three-dimensional model.</p> </li> </ul> <p> <code>Hillshade</code> is valid only for the <code>Standard</code> and <code>Monochrome</code> map styles.</p>
    #   @return [String]
    # @!attribute contour_density
    #   <p>Displays the shape and steepness of terrain features using elevation lines. The density value controls how densely the available contour line information is rendered on the map. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <p>This parameter is valid for all map styles except <code>Satellite</code>.</p>
    #   @return [String]
    # @!attribute traffic
    #   <p>Displays real-time traffic information overlay on map, such as incident events and flow events. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <p>This parameter is valid for all map styles except <code>Satellite</code>.</p>
    #   @return [String]
    # @!attribute travel_modes
    #   <p>Renders additional map information relevant to selected travel modes. Information for multiple travel modes can be displayed simultaneously, although this increases the overall information density rendered on the map. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> <p>This parameter is valid for all map styles except <code>Satellite</code>.</p>
    #   @return [Array<String>]
    # @!attribute buildings
    #   <p>Adjusts how building details are rendered on the map.</p> <p>The following building styles are currently supported:</p> <ul> <li> <p> <code>Buildings3D</code>: Displays buildings as three-dimensional extrusions on the map.</p> </li> </ul> <p> <code>Buildings3D</code> is valid only for the <code>Standard</code> and <code>Monochrome</code> map styles.</p>
    #   @return [String]
    # @!attribute poi_density
    #   <p>Controls how densely points of interest are rendered on the map. The density value controls the zoom level at which each category of points of interest appears, and how quickly less prominent points of interest are revealed as you zoom in. Denser values display more points of interest at lower zoom levels.</p> <p>Use <code>Off</code> to hide all points of interest. When you omit this parameter, the map renders at <code>Default</code> density.</p> <note> <p>The difference between density values is most noticeable at mid-range zoom levels. At high zoom levels, all density values converge on displaying every available point of interest.</p> </note> <p>This parameter is valid only for the <code>Standard</code> and <code>Hybrid</code> map styles. In <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, this parameter is valid only for the <code>Standard</code> map style.</p>
    #   @return [String]
    # @!attribute poi_categories
    #   <p>Renders only the specified categories of points of interest. When you omit this parameter, the map renders all categories.</p> <p>The following categories are currently supported:</p> <ul> <li> <p> <code>FoodAndDrink</code> </p> </li> <li> <p> <code>Entertainment</code> </p> </li> <li> <p> <code>SightsAndMuseums</code> </p> </li> <li> <p> <code>Transportation</code> </p> </li> <li> <p> <code>Accommodations</code> </p> </li> <li> <p> <code>LeisureAndOutdoor</code> </p> </li> <li> <p> <code>Shopping</code> </p> </li> <li> <p> <code>BusinessAndServices</code> </p> </li> <li> <p> <code>FacilitiesAndBuildings</code> </p> </li> </ul> <p>Specify each category as a separate <code>poi-categories</code> query parameter. Duplicate values are rejected.</p> <note> <p>This parameter has no effect when <code>poi-density</code> is set to <code>Off</code>, which hides all points of interest regardless of category.</p> </note> <p>This parameter is valid only for the <code>Standard</code> and <code>Hybrid</code> map styles. In <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, this parameter is valid only for the <code>Standard</code> map style.</p>
    #   @return [Array<String>]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    class GetStyleDescriptorRequest < Struct.new(
      nil,
      :style,
      :color_scheme,
      :political_view,
      :terrain,
      :contour_density,
      :traffic,
      :travel_modes,
      :buildings,
      :poi_density,
      :poi_categories,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>This Blob contains the body of the style descriptor which is in application/json format.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Header that represents the format of the response. The response returns the following as the HTTP body.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Header that instructs caching configuration for the client.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The style descriptor's Etag.</p>
    #   @return [String]
    class GetStyleDescriptorResponse < Struct.new(
      nil,
      :blob,
      :content_type,
      :cache_control,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute additional_features
    #   <p>A list of optional additional parameters such as map styles that can be requested for each result. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p>
    #   @return [Array<String>]
    # @!attribute tileset
    #   <p>Specifies the desired tile set. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only the <code>vector.basemap</code> value.</p> <p>Valid Values: <code>raster.satellite | vector.basemap | vector.traffic | raster.dem</code> </p>
    #   @return [String]
    # @!attribute z
    #   <p>The zoom value for the map tile.</p>
    #   @return [String]
    # @!attribute x
    #   <p>The X axis value for the map tile.</p>
    #   @return [String]
    # @!attribute y
    #   <p>The Y axis value for the map tile.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    class GetTileRequest < Struct.new(
      nil,
      :additional_features,
      :tileset,
      :z,
      :x,
      :y,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>The blob represents a vector tile in <code>mvt</code> or a raster tile in an image format.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Header that represents the format of the response. The response returns the following as the HTTP body.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Header that instructs caching configuration for the client.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The pricing bucket for which the request is charged at.</p>
    #   @return [String]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the request is charged at.</p>
    #   @return [String]
    class GetTileResponse < Struct.new(
      nil,
      :blob,
      :content_type,
      :cache_control,
      :e_tag,
      :pricing_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when the associated resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The field where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the Amazon Location service.</p>
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

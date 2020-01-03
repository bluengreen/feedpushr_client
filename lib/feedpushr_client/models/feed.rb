=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module FeedpushrClient
  # A RSS feed (default view)
  class Feed
    # Date of creation
    attr_accessor :cdate

    # Number of consecutive aggregation errors
    attr_accessor :error_count

    # Last aggregation error
    attr_accessor :error_msg

    # URL of the feed website
    attr_accessor :html_url

    # URL of the PubSubHubbud hub
    attr_accessor :hub_url

    # ID of feed (MD5 of the xmlUrl)
    attr_accessor :id

    # Last aggregation pass
    attr_accessor :last_check

    # Date of modification
    attr_accessor :mdate

    # Total number of processed items
    attr_accessor :nb_processed_items

    # Next aggregation pass
    attr_accessor :next_check

    # Aggregation status
    attr_accessor :status

    # List of tags
    attr_accessor :tags

    # Text attribute of the Feed
    attr_accessor :text

    # Title of the Feed
    attr_accessor :title

    # URL of the XML feed
    attr_accessor :xml_url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cdate' => :'cdate',
        :'error_count' => :'errorCount',
        :'error_msg' => :'errorMsg',
        :'html_url' => :'htmlUrl',
        :'hub_url' => :'hubUrl',
        :'id' => :'id',
        :'last_check' => :'lastCheck',
        :'mdate' => :'mdate',
        :'nb_processed_items' => :'nbProcessedItems',
        :'next_check' => :'nextCheck',
        :'status' => :'status',
        :'tags' => :'tags',
        :'text' => :'text',
        :'title' => :'title',
        :'xml_url' => :'xmlUrl'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cdate' => :'DateTime',
        :'error_count' => :'Integer',
        :'error_msg' => :'String',
        :'html_url' => :'String',
        :'hub_url' => :'String',
        :'id' => :'String',
        :'last_check' => :'DateTime',
        :'mdate' => :'DateTime',
        :'nb_processed_items' => :'Integer',
        :'next_check' => :'DateTime',
        :'status' => :'String',
        :'tags' => :'Array<String>',
        :'text' => :'String',
        :'title' => :'String',
        :'xml_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FeedpushrClient::Feed` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FeedpushrClient::Feed`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cdate')
        self.cdate = attributes[:'cdate']
      end

      if attributes.key?(:'error_count')
        self.error_count = attributes[:'error_count']
      end

      if attributes.key?(:'error_msg')
        self.error_msg = attributes[:'error_msg']
      end

      if attributes.key?(:'html_url')
        self.html_url = attributes[:'html_url']
      end

      if attributes.key?(:'hub_url')
        self.hub_url = attributes[:'hub_url']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_check')
        self.last_check = attributes[:'last_check']
      end

      if attributes.key?(:'mdate')
        self.mdate = attributes[:'mdate']
      end

      if attributes.key?(:'nb_processed_items')
        self.nb_processed_items = attributes[:'nb_processed_items']
      end

      if attributes.key?(:'next_check')
        self.next_check = attributes[:'next_check']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'xml_url')
        self.xml_url = attributes[:'xml_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cdate.nil?
        invalid_properties.push('invalid value for "cdate", cdate cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @mdate.nil?
        invalid_properties.push('invalid value for "mdate", mdate cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @xml_url.nil?
        invalid_properties.push('invalid value for "xml_url", xml_url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cdate.nil?
      return false if @id.nil?
      return false if @mdate.nil?
      status_validator = EnumAttributeValidator.new('String', ["running", "stopped"])
      return false unless status_validator.valid?(@status)
      return false if @title.nil?
      return false if @xml_url.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["running", "stopped"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cdate == o.cdate &&
          error_count == o.error_count &&
          error_msg == o.error_msg &&
          html_url == o.html_url &&
          hub_url == o.hub_url &&
          id == o.id &&
          last_check == o.last_check &&
          mdate == o.mdate &&
          nb_processed_items == o.nb_processed_items &&
          next_check == o.next_check &&
          status == o.status &&
          tags == o.tags &&
          text == o.text &&
          title == o.title &&
          xml_url == o.xml_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cdate, error_count, error_msg, html_url, hub_url, id, last_check, mdate, nb_processed_items, next_check, status, tags, text, title, xml_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        FeedpushrClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
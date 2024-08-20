=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # Paging attributes.
  class ContainerImageMetaPage
    include BaseGenericModel

    # The cursor used to get the current results, if any.
    attr_accessor :cursor

    # Number of results returned
    attr_reader :limit

    # The cursor used to get the next results, if any.
    attr_accessor :next_cursor

    # The cursor used to get the previous results, if any.
    attr_accessor :prev_cursor

    # Total number of records that match the query.
    attr_accessor :total

    # Type of Container Image pagination.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cursor' => :'cursor',
        :'limit' => :'limit',
        :'next_cursor' => :'next_cursor',
        :'prev_cursor' => :'prev_cursor',
        :'total' => :'total',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cursor' => :'String',
        :'limit' => :'Integer',
        :'next_cursor' => :'String',
        :'prev_cursor' => :'String',
        :'total' => :'Integer',
        :'type' => :'ContainerImageMetaPageType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'prev_cursor',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ContainerImageMetaPage` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'cursor')
        self.cursor = attributes[:'cursor']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'next_cursor')
        self.next_cursor = attributes[:'next_cursor']
      end

      if attributes.key?(:'prev_cursor')
        self.prev_cursor = attributes[:'prev_cursor']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@limit.nil? && @limit > 10000
      return false if !@limit.nil? && @limit < 0
      true
    end

    # Custom attribute writer method with validation
    # @param limit [Object] Object to be assigned
    # @!visibility private
    def limit=(limit)
      if !limit.nil? && limit > 10000
        fail ArgumentError, 'invalid value for "limit", must be smaller than or equal to 10000.'
      end
      if !limit.nil? && limit < 0
        fail ArgumentError, 'invalid value for "limit", must be greater than or equal to 0.'
      end
      @limit = limit
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
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
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cursor == o.cursor &&
          limit == o.limit &&
          next_cursor == o.next_cursor &&
          prev_cursor == o.prev_cursor &&
          total == o.total &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cursor, limit, next_cursor, prev_cursor, total, type].hash
    end
  end
end

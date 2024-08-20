=begin
#Datadog API V1 Collection

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

module DatadogAPIClient::V1
  # Use the Lookup Processor to define a mapping between a log attribute
  # and a human readable value saved in the processors mapping table.
  # For example, you can use the Lookup Processor to map an internal service ID
  # into a human readable service name. Alternatively, you could also use it to check
  # if the MAC address that just attempted to connect to the production
  # environment belongs to your list of stolen machines.
  class LogsLookupProcessor
    include BaseGenericModel

    # Value to set the target attribute if the source value is not found in the list.
    attr_accessor :default_lookup

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Mapping table of values for the source attribute and their associated target attribute values,
    # formatted as `["source_key1,target_value1", "source_key2,target_value2"]`
    attr_reader :lookup_table

    # Name of the processor.
    attr_accessor :name

    # Source attribute used to perform the lookup.
    attr_reader :source

    # Name of the attribute that contains the corresponding value in the mapping list
    # or the `default_lookup` if not found in the mapping list.
    attr_reader :target

    # Type of logs lookup processor.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'default_lookup' => :'default_lookup',
        :'is_enabled' => :'is_enabled',
        :'lookup_table' => :'lookup_table',
        :'name' => :'name',
        :'source' => :'source',
        :'target' => :'target',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'default_lookup' => :'String',
        :'is_enabled' => :'Boolean',
        :'lookup_table' => :'Array<String>',
        :'name' => :'String',
        :'source' => :'String',
        :'target' => :'String',
        :'type' => :'LogsLookupProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsLookupProcessor` initialize method"
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

      if attributes.key?(:'default_lookup')
        self.default_lookup = attributes[:'default_lookup']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'lookup_table')
        if (value = attributes[:'lookup_table']).is_a?(Array)
          self.lookup_table = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @lookup_table.nil?
      return false if @source.nil?
      return false if @target.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param lookup_table [Object] Object to be assigned
    # @!visibility private
    def lookup_table=(lookup_table)
      if lookup_table.nil?
        fail ArgumentError, 'invalid value for "lookup_table", lookup_table cannot be nil.'
      end
      @lookup_table = lookup_table
    end

    # Custom attribute writer method with validation
    # @param source [Object] Object to be assigned
    # @!visibility private
    def source=(source)
      if source.nil?
        fail ArgumentError, 'invalid value for "source", source cannot be nil.'
      end
      @source = source
    end

    # Custom attribute writer method with validation
    # @param target [Object] Object to be assigned
    # @!visibility private
    def target=(target)
      if target.nil?
        fail ArgumentError, 'invalid value for "target", target cannot be nil.'
      end
      @target = target
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          default_lookup == o.default_lookup &&
          is_enabled == o.is_enabled &&
          lookup_table == o.lookup_table &&
          name == o.name &&
          source == o.source &&
          target == o.target &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [default_lookup, is_enabled, lookup_table, name, source, target, type].hash
    end
  end
end

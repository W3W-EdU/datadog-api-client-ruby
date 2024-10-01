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
  # Handle attributes.
  class MicrosoftTeamsApiHandleAttributes
    include BaseGenericModel

    # Channel id.
    attr_reader :channel_id

    # Handle name.
    attr_reader :name

    # Team id.
    attr_reader :team_id

    # Tenant id.
    attr_reader :tenant_id

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'channel_id' => :'channel_id',
        :'name' => :'name',
        :'team_id' => :'team_id',
        :'tenant_id' => :'tenant_id'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'channel_id' => :'String',
        :'name' => :'String',
        :'team_id' => :'String',
        :'tenant_id' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MicrosoftTeamsApiHandleAttributes` initialize method"
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

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'team_id')
        self.team_id = attributes[:'team_id']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@channel_id.nil? && @channel_id.to_s.length > 255
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@team_id.nil? && @team_id.to_s.length > 255
      return false if !@tenant_id.nil? && @tenant_id.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param channel_id [Object] Object to be assigned
    # @!visibility private
    def channel_id=(channel_id)
      if !channel_id.nil? && channel_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "channel_id", the character length must be smaller than or equal to 255.'
      end
      @channel_id = channel_id
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param team_id [Object] Object to be assigned
    # @!visibility private
    def team_id=(team_id)
      if !team_id.nil? && team_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "team_id", the character length must be smaller than or equal to 255.'
      end
      @team_id = team_id
    end

    # Custom attribute writer method with validation
    # @param tenant_id [Object] Object to be assigned
    # @!visibility private
    def tenant_id=(tenant_id)
      if !tenant_id.nil? && tenant_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "tenant_id", the character length must be smaller than or equal to 255.'
      end
      @tenant_id = tenant_id
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
          channel_id == o.channel_id &&
          name == o.name &&
          team_id == o.team_id &&
          tenant_id == o.tenant_id
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [channel_id, name, team_id, tenant_id].hash
    end
  end
end

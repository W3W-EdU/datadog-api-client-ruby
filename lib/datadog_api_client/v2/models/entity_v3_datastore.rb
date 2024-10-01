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
  # Schema for datastore entities
  class EntityV3Datastore
    include BaseGenericModel

    # The schema version of entity type. The field is known as schema-version in the previous version
    attr_reader :api_version

    # Datadog product integrations for the datastore entity
    attr_accessor :datadog

    # Custom extensions. This is the free-formed field to send client side metadata. No Datadog features are affected by this field.
    attr_accessor :extensions

    # A base schema for defining third party integrations
    attr_accessor :integrations

    # The definition of Entity V3 Datastore Kind object.
    attr_reader :kind

    # The definition of Entity V3 Metadata object.
    attr_reader :metadata

    # The definition of Entity V3 Datastore Spec object.
    attr_accessor :spec

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'api_version' => :'apiVersion',
        :'datadog' => :'datadog',
        :'extensions' => :'extensions',
        :'integrations' => :'integrations',
        :'kind' => :'kind',
        :'metadata' => :'metadata',
        :'spec' => :'spec'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'api_version' => :'EntityV3APIVersion',
        :'datadog' => :'EntityV3DatastoreDatadog',
        :'extensions' => :'Hash<String, Object>',
        :'integrations' => :'EntityV3Integrations',
        :'kind' => :'EntityV3DatastoreKind',
        :'metadata' => :'EntityV3Metadata',
        :'spec' => :'EntityV3DatastoreSpec'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EntityV3Datastore` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::EntityV3Datastore`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'api_version')
        self.api_version = attributes[:'api_version']
      end

      if attributes.key?(:'datadog')
        self.datadog = attributes[:'datadog']
      end

      if attributes.key?(:'extensions')
        self.extensions = attributes[:'extensions']
      end

      if attributes.key?(:'integrations')
        self.integrations = attributes[:'integrations']
      end

      if attributes.key?(:'kind')
        self.kind = attributes[:'kind']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'spec')
        self.spec = attributes[:'spec']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @api_version.nil?
      return false if @kind.nil?
      return false if @metadata.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param api_version [Object] Object to be assigned
    # @!visibility private
    def api_version=(api_version)
      if api_version.nil?
        fail ArgumentError, 'invalid value for "api_version", api_version cannot be nil.'
      end
      @api_version = api_version
    end

    # Custom attribute writer method with validation
    # @param kind [Object] Object to be assigned
    # @!visibility private
    def kind=(kind)
      if kind.nil?
        fail ArgumentError, 'invalid value for "kind", kind cannot be nil.'
      end
      @kind = kind
    end

    # Custom attribute writer method with validation
    # @param metadata [Object] Object to be assigned
    # @!visibility private
    def metadata=(metadata)
      if metadata.nil?
        fail ArgumentError, 'invalid value for "metadata", metadata cannot be nil.'
      end
      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_version == o.api_version &&
          datadog == o.datadog &&
          extensions == o.extensions &&
          integrations == o.integrations &&
          kind == o.kind &&
          metadata == o.metadata &&
          spec == o.spec
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [api_version, datadog, extensions, integrations, kind, metadata, spec].hash
    end
  end
end

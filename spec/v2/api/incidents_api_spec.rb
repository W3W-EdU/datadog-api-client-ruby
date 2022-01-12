=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V2::IncidentsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IncidentsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::IncidentsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncidentsAPI' do
    it 'should create an instance of IncidentsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::IncidentsAPI)
    end
  end

  # unit tests for create_incident
  # Create an incident
  # Create an incident.
  # @param body Incident payload.
  # @param [Hash] opts the optional parameters
  # @return [IncidentResponse]
  describe 'create_incident test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_incident
  # Delete an existing incident
  # Deletes an existing incident from the users organization.
  # @param incident_id The UUID of the incident.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_incident test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_incident
  # Get the details of an incident
  # Get the details of an incident by &#x60;incident_id&#x60;.
  # @param incident_id The UUID of the incident.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<IncidentRelatedObject>] :include Specifies which types of related objects should be included in the response.
  # @return [IncidentResponse]
  describe 'get_incident test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_incidents
  # Get a list of incidents
  # Get all incidents for the user&#39;s organization.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<IncidentRelatedObject>] :include Specifies which types of related objects should be included in the response.
  # @option opts [Integer] :page_size Size for a given page.
  # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
  # @return [IncidentsResponse]
  describe 'list_incidents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_incident
  # Update an existing incident
  # Updates an incident. Provide only the attributes that should be updated as this request is a partial update.
  # @param incident_id The UUID of the incident.
  # @param body Incident Payload.
  # @param [Hash] opts the optional parameters
  # @return [IncidentResponse]
  describe 'update_incident test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

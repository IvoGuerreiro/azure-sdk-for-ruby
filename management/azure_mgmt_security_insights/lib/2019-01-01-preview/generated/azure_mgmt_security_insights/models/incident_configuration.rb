# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Incident Configuration property bag.
    #
    class IncidentConfiguration

      include MsRestAzure

      # @return [Boolean] Create incidents from alerts triggered by this
      # analytics rule
      attr_accessor :create_incident

      # @return [GroupingConfiguration] Set how the alerts that are triggered
      # by this analytics rule, are grouped into incidents
      attr_accessor :grouping_configuration


      #
      # Mapper for IncidentConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IncidentConfiguration',
          type: {
            name: 'Composite',
            class_name: 'IncidentConfiguration',
            model_properties: {
              create_incident: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createIncident',
                type: {
                  name: 'Boolean'
                }
              },
              grouping_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupingConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'GroupingConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end

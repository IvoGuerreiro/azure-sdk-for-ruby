# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The list of new failover policies for the failover priority change.
    #
    class FailoverPolicies

      include MsRestAzure

      # @return [Array<FailoverPolicy>] List of failover policies.
      attr_accessor :failover_policies


      #
      # Mapper for FailoverPolicies class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverPolicies',
          type: {
            name: 'Composite',
            class_name: 'FailoverPolicies',
            model_properties: {
              failover_policies: {
                client_side_validation: true,
                required: true,
                serialized_name: 'failoverPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FailoverPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverPolicy'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

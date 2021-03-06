# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # SKU of an Azure Firewall.
    #
    class AzureFirewallSku

      include MsRestAzure

      # @return [AzureFirewallSkuName] Name of an Azure Firewall SKU. Possible
      # values include: 'AZFW_VNet', 'AZFW_Hub'
      attr_accessor :name

      # @return [AzureFirewallSkuTier] Tier of an Azure Firewall. Possible
      # values include: 'Standard', 'Premium'
      attr_accessor :tier


      #
      # Mapper for AzureFirewallSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallSku',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end

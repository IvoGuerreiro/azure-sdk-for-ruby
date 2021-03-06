# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Model object.
    #
    #
    class KeyVaultProperties

      include MsRestAzure

      # @return [String] The URL of the Key Vault key used to encrypt the
      # account. The key may either be versioned (for example
      # https://vault/keys/mykey/version1) or reference a key without a version
      # (for example https://vault/keys/mykey).
      attr_accessor :key_identifier

      # @return [String] The current key used to encrypt the Media Services
      # account, including the key version.
      attr_accessor :current_key_identifier


      #
      # Mapper for KeyVaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultProperties',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultProperties',
            model_properties: {
              key_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyIdentifier',
                type: {
                  name: 'String'
                }
              },
              current_key_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentKeyIdentifier',
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

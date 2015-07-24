# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Storage
  module Models
    #
    # Model object.
    #
    class StorageAccountProperties
      # @return Gets the status of the storage account at the time the
      # operation was called. Possible values for this property include:
      # 'Creating', 'ResolvingDNS', 'Succeeded'
      attr_accessor :provisioning_state

      # @return Gets the type of the storage account. Possible values for this
      # property include: 'Standard_LRS', 'Standard_ZRS', 'Standard_GRS',
      # 'Standard_RAGRS', 'Premium_LRS'
      attr_accessor :account_type

      # @return [Endpoints] Gets the URLs that are used to perform a retrieval
      # of a public blob, queue or table object.Note that StandardZRS and
      # PremiumLRS accounts only return the blob endpoint.
      attr_accessor :primary_endpoints

      # @return [String] Gets the location of the primary for the storage
      # account.
      attr_accessor :primary_location

      # @return Gets the status indicating whether the primary location of the
      # storage account is available or unavailable. Possible values for this
      # property include: 'Available', 'Unavailable'
      attr_accessor :status_of_primary

      # @return Gets the timestamp of the most recent instance of a failover
      # to the secondary location. Only the most recent timestamp is
      # retained. This element is not returned if there has never been a
      # failover instance. Only available if the accountType is StandardGRS
      # or StandardRAGRS.
      attr_accessor :last_geo_failover_time

      # @return [String] Gets the location of the geo replicated secondary for
      # the storage account. Only available if the accountType is StandardGRS
      # or StandardRAGRS.
      attr_accessor :secondary_location

      # @return Gets the status indicating whether the secondary location of
      # the storage account is available or unavailable. Only available if
      # the accountType is StandardGRS or StandardRAGRS. Possible values for
      # this property include: 'Available', 'Unavailable'
      attr_accessor :status_of_secondary

      # @return Gets the creation date and time of the storage account in UTC.
      attr_accessor :creation_time

      # @return [CustomDomain] Gets the user assigned custom domain assigned
      # to this storage account.
      attr_accessor :custom_domain

      # @return [Endpoints] Gets the URLs that are used to perform a retrieval
      # of a public blob, queue or table object from the secondary location
      # of the storage account. Only available if the accountType is
      # StandardRAGRS.
      attr_accessor :secondary_endpoints

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @primary_endpoints.validate unless @primary_endpoints.nil?
        @custom_domain.validate unless @custom_domain.nil?
        @secondary_endpoints.validate unless @secondary_endpoints.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.account_type
        output_object['accountType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.primary_endpoints
        if (serialized_property)
          serialized_property = Azure::ARM::Storage::Models::Endpoints.serialize_object(serialized_property)
        end
        output_object['primaryEndpoints'] = serialized_property unless serialized_property.nil?

        serialized_property = object.primary_location
        output_object['primaryLocation'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status_of_primary
        output_object['statusOfPrimary'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_geo_failover_time
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['lastGeoFailoverTime'] = serialized_property unless serialized_property.nil?

        serialized_property = object.secondary_location
        output_object['secondaryLocation'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status_of_secondary
        output_object['statusOfSecondary'] = serialized_property unless serialized_property.nil?

        serialized_property = object.creation_time
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['creationTime'] = serialized_property unless serialized_property.nil?

        serialized_property = object.custom_domain
        if (serialized_property)
          serialized_property = Azure::ARM::Storage::Models::CustomDomain.serialize_object(serialized_property)
        end
        output_object['customDomain'] = serialized_property unless serialized_property.nil?

        serialized_property = object.secondary_endpoints
        if (serialized_property)
          serialized_property = Azure::ARM::Storage::Models::Endpoints.serialize_object(serialized_property)
        end
        output_object['secondaryEndpoints'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [StorageAccountProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = StorageAccountProperties.new

        deserialized_property = object['provisioningState']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Storage::ProvisioningState.constants.any? { |e| Azure::ARM::Storage::ProvisioningState.const_get(e) == deserialized_property })
        output_object.provisioning_state = deserialized_property

        deserialized_property = object['accountType']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Storage::AccountType.constants.any? { |e| Azure::ARM::Storage::AccountType.const_get(e) == deserialized_property })
        output_object.account_type = deserialized_property

        deserialized_property = object['primaryEndpoints']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Storage::Models::Endpoints.deserialize_object(deserialized_property)
        end
        output_object.primary_endpoints = deserialized_property

        deserialized_property = object['primaryLocation']
        output_object.primary_location = deserialized_property

        deserialized_property = object['statusOfPrimary']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Storage::AccountStatus.constants.any? { |e| Azure::ARM::Storage::AccountStatus.const_get(e) == deserialized_property })
        output_object.status_of_primary = deserialized_property

        deserialized_property = object['lastGeoFailoverTime']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.last_geo_failover_time = deserialized_property

        deserialized_property = object['secondaryLocation']
        output_object.secondary_location = deserialized_property

        deserialized_property = object['statusOfSecondary']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Storage::AccountStatus.constants.any? { |e| Azure::ARM::Storage::AccountStatus.const_get(e) == deserialized_property })
        output_object.status_of_secondary = deserialized_property

        deserialized_property = object['creationTime']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.creation_time = deserialized_property

        deserialized_property = object['customDomain']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Storage::Models::CustomDomain.deserialize_object(deserialized_property)
        end
        output_object.custom_domain = deserialized_property

        deserialized_property = object['secondaryEndpoints']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Storage::Models::Endpoints.deserialize_object(deserialized_property)
        end
        output_object.secondary_endpoints = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end

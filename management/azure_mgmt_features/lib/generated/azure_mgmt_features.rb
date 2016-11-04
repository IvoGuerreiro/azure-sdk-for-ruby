# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_features/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Features
  autoload :Features,                                           'generated/azure_mgmt_features/features.rb'
  autoload :FeatureClient,                                      'generated/azure_mgmt_features/feature_client.rb'

  module Models
    autoload :FeatureResult,                                      'generated/azure_mgmt_features/models/feature_result.rb'
    autoload :FeatureOperationsListResult,                        'generated/azure_mgmt_features/models/feature_operations_list_result.rb'
    autoload :FeatureProperties,                                  'generated/azure_mgmt_features/models/feature_properties.rb'
  end
end

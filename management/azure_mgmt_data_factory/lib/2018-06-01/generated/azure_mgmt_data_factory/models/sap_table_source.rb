# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity source for SAP Table source.
    #
    class SapTableSource < TabularSource

      include MsRestAzure


      def initialize
        @type = "SapTableSource"
      end

      attr_accessor :type

      # @return The number of rows to be retrieved. Type: integer(or Expression
      # with resultType integer).
      attr_accessor :row_count

      # @return The number of rows that will be skipped. Type: integer (or
      # Expression with resultType integer).
      attr_accessor :row_skips

      # @return The fields of the SAP table that will be retrieved. For
      # example, column0, column1. Type: string (or Expression with resultType
      # string).
      attr_accessor :rfc_table_fields

      # @return The options for the filtering of the SAP Table. For example,
      # COLUMN0 EQ SOME VALUE. Type: string (or Expression with resultType
      # string).
      attr_accessor :rfc_table_options

      # @return Specifies the maximum number of rows that will be retrieved at
      # a time when retrieving data from SAP Table. Type: integer (or
      # Expression with resultType integer).
      attr_accessor :batch_size

      # @return Specifies the custom RFC function module that will be used to
      # read data from SAP Table. Type: string (or Expression with resultType
      # string).
      attr_accessor :custom_rfc_read_table_function_module

      # @return The single character that will be used as delimiter passed to
      # SAP RFC as well as splitting the output data retrieved. Type: string
      # (or Expression with resultType string).
      attr_accessor :sap_data_column_delimiter

      # @return [SapTablePartitionOption] The partition mechanism that will be
      # used for SAP table read in parallel. Possible values include: 'None',
      # 'PartitionOnInt', 'PartitionOnCalendarYear',
      # 'PartitionOnCalendarMonth', 'PartitionOnCalendarDate',
      # 'PartitionOnTime'
      attr_accessor :partition_option

      # @return [SapTablePartitionSettings] The settings that will be leveraged
      # for SAP table source partitioning.
      attr_accessor :partition_settings


      #
      # Mapper for SapTableSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapTableSource',
          type: {
            name: 'Composite',
            class_name: 'SapTableSource',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              query_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryTimeout',
                type: {
                  name: 'Object'
                }
              },
              additional_columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalColumns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalColumnsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalColumns'
                      }
                  }
                }
              },
              row_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rowCount',
                type: {
                  name: 'Object'
                }
              },
              row_skips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rowSkips',
                type: {
                  name: 'Object'
                }
              },
              rfc_table_fields: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rfcTableFields',
                type: {
                  name: 'Object'
                }
              },
              rfc_table_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rfcTableOptions',
                type: {
                  name: 'Object'
                }
              },
              batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'batchSize',
                type: {
                  name: 'Object'
                }
              },
              custom_rfc_read_table_function_module: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customRfcReadTableFunctionModule',
                type: {
                  name: 'Object'
                }
              },
              sap_data_column_delimiter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sapDataColumnDelimiter',
                type: {
                  name: 'Object'
                }
              },
              partition_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionOption',
                type: {
                  name: 'String'
                }
              },
              partition_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SapTablePartitionSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end

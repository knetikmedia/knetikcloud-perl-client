# WWW::SwaggerClient::Object::SearchReferenceMapping

## Load the model package
```perl
use WWW::SwaggerClient::Object::SearchReferenceMapping;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique identifier for the mapping to protect against duplicates | 
**ref_id_field** | **string** | The field within the type that contains the id from the refType | 
**ref_type** | **string** | The index type that the mapping pulls data from | 
**source_field_to_destination_field** | **HASH[string,string]** | A map whose keys are the field names in the refType and values are the field name in the type | 
**type** | **string** | The index type that the mapping is for | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



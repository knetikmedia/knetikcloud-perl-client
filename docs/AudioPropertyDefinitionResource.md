# KnetikCloud::Object::AudioPropertyDefinitionResource

## Load the model package
```perl
use KnetikCloud::Object::AudioPropertyDefinitionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **string** | The name of the property | 
**required** | **boolean** | Whether the property is required | 
**type** | **string** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **string** | If provided, a file type the property must match | [optional] 
**max_length** | **int** | If provided, the maximum length of the audio | [optional] 
**min_length** | **int** | If provided, the minimum length of the audio | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



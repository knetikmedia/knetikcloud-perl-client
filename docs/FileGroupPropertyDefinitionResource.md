# KnetikCloud::Object::FileGroupPropertyDefinitionResource

## Load the model package
```perl
use KnetikCloud::Object::FileGroupPropertyDefinitionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **string** | The name of the property | 
**required** | **boolean** | Whether the property is required | 
**type** | **string** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**file_type** | **string** | If provided, a file type that the property must match | [optional] 
**max_count** | **int** | If provided, the maximum number of files in the group | [optional] 
**max_file_size** | **int** | If provided, the maximum allowed size per file in bytes | [optional] 
**min_count** | **int** | If provided, the minimum number of files in the group | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



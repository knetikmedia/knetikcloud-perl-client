# KnetikCloud::Object::TimePeriodGettable

## Load the model package
```perl
use KnetikCloud::Object::TimePeriodGettable;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** |  | [optional] 
**type_hint** | **string** | Used for polymorphic type recognition and thus must match an expected type with additional properties | [optional] 
**get_limit** | **int** | The time period limit | 
**group_name** | **string** | The name of a group of items. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that the other properties here will be the same for all, but this is not enforced and the item being recieved will use its settings. | [optional] 
**time_length** | **int** | The length of time | 
**unit_of_time** | **string** | The unit of time | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



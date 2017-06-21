# KnetikCloud::Object::AchievementDefinitionResource

## Load the model package
```perl
use KnetikCloud::Object::AchievementDefinitionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this resource type | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**description** | **string** | The description of the achievement. Must be at least 2 characters in length. | [optional] 
**hidden** | **boolean** | Whether the achievement is hidden from the user | 
**name** | **string** | The name of the achievement. Must be at least 6 characters in length. IMMUTABLE | 
**required_progress** | **int** | The required progress for the achievement definition | 
**rule_id** | **string** | The id of the rule generated for this achievement | [optional] 
**tags** | **ARRAY[string]** | The tags for the achievement definition | [optional] 
**template** | **string** | An achievement template this achievement is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**trigger_event_name** | **string** | The name of the trigger event associated with this achievement | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



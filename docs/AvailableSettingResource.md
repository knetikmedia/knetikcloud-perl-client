# KnetikCloud::Object::AvailableSettingResource

## Load the model package
```perl
use KnetikCloud::Object::AvailableSettingResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advanced_option** | **boolean** | Whether the setting is advanced. Default: false | [optional] 
**default_value** | **string** | The default value of the setting (must be in options array). Ex: easy | 
**description** | **string** | The description of the setting: Ex: Choose the difficulty level to show more or less complicated questions (for a trivia activity) | [optional] 
**key** | **string** | The unique ID for the setting: Ex: difficulty | 
**name** | **string** | The textual name of the setting: Ex: Difficulty Level | 
**options** | [**ARRAY[SettingOption]**](SettingOption.md) | The set of options available for this setting, Ex: easy, medium, hard | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



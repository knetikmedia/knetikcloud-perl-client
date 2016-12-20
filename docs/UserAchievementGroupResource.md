# WWW::SwaggerClient::Object::UserAchievementGroupResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::UserAchievementGroupResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**achievements** | [**ARRAY[UserAchievementResource]**](UserAchievementResource.md) | The list of achievements associated with the group | 
**group_name** | **string** | The name of the group.  If used by Leveling, this will represent the level name | 
**id** | **string** | The id of the achievement progress | [optional] 
**progress** | **int** | The current progress of the user on the group | 
**user_id** | **int** | The id of the user whose progress is being tracked | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



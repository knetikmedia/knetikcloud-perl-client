# WWW::SwaggerClient::Object::ChallengeActivityResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::ChallengeActivityResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_id** | **int** | The id of the activity | 
**challenge_id** | **int** | The id of the challenge | [optional] 
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing | [optional] 
**id** | **int** | The unique ID for this resource | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**settings** | [**ARRAY[SelectedSettingResource]**](SelectedSettingResource.md) | The list of settings and the select options | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



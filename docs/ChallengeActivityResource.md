# KnetikCloud::Object::ChallengeActivityResource

## Load the model package
```perl
use KnetikCloud::Object::ChallengeActivityResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_id** | **int** | The id of the activity | 
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**challenge_id** | **int** | The id of the challenge | [optional] 
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing | [optional] 
**id** | **int** | The unique ID for this resource | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**settings** | [**ARRAY[SelectedSettingResource]**](SelectedSettingResource.md) | The list of settings and the select options | [optional] 
**template** | **string** | A challenge activity template this challenge activity is validated against (private). May be null and no validation of additional_properties will be done | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



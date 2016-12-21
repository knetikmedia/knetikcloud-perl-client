# WWW::SwaggerClient::Object::ChallengeResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::ChallengeResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activities** | **int** | The number of activities allowed to this challenge | [optional] 
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**campaign_id** | **int** | The id of the campaign this challenge is a part of. The challenge must be tied to an active campaign before it will spawn events | [optional] 
**copy_of** | **int** | The ID of the original challenge it was copied from | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**end_date** | **int** | The end date of this challenge in seconds since epoch. required if part of a campaign | [optional] 
**id** | **int** | The unique ID for that resource | [optional] 
**leaderboard_strategy** | **string** | The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service. | [optional] 
**long_description** | **string** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **string** | The user friendly name of that resource | 
**next_event_date** | **int** | The next date this challenge will be occur in seconds since epoch | [optional] 
**reward_lag_minutes** | **int** | The number of minutes minimum to wait at the end of this challenge before running rewards, to allow activities to complete | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of the challenge. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**schedule** | [**Schedule**](Schedule.md) | The repeat schedule for the challenge | [optional] 
**short_description** | **string** | The user friendly name of that resource. Defaults to blank string | [optional] 
**start_date** | **int** | The start date of this challenge in seconds since epoch. required if part of a campaign | [optional] 
**template** | **string** | A challenge template this challenge is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



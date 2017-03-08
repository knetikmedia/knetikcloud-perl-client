# KnetikCloud::Object::CampaignResource

## Load the model package
```perl
use KnetikCloud::Object::CampaignResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether the campaign is active or not.  Defaults to false | [optional] 
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type | [optional] 
**created_date** | **int** | The date/time this resource was created in seconds since unix epoch | [optional] 
**id** | **int** | The unique ID for that resource | [optional] 
**leaderboard_strategy** | **string** | The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service | [optional] 
**long_description** | **string** | The user friendly name of that resource. Defaults to blank string | [optional] 
**name** | **string** | The user friendly name of that resource | 
**next_challenge** | **string** | The name of the next challenge coming up | [optional] 
**next_challenge_date** | **int** | The date/time of the next challenge coming up | [optional] 
**reward_set** | [**RewardSetResource**](RewardSetResource.md) | The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing | [optional] 
**reward_status** | **string** | Indicate if the rewards have been given out already | [optional] 
**short_description** | **string** | The user friendly name of that resource. Defaults to blank string | [optional] 
**template** | **string** | A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done | [optional] 
**updated_date** | **int** | The date/time this resource was last updated in seconds since unix epoch | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



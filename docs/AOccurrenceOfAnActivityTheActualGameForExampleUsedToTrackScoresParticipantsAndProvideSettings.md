# KnetikCloud::Object::AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings

## Load the model package
```perl
use KnetikCloud::Object::AOccurrenceOfAnActivityTheActualGameForExampleUsedToTrackScoresParticipantsAndProvideSettings;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_id** | **int** | The id of the activity | 
**challenge_activity_id** | **int** | The id of the challenge activity (as part of the event, required if eventId set) | [optional] 
**created_date** | **int** | The date this occurrence was created, unix timestamp in seconds | [optional] 
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity | [optional] 
**event_id** | **int** | The id of the event | [optional] 
**id** | **int** | The id of the activity occurrence | [optional] 
**reward_status** | **string** | Indicate if the rewards have been given out already | [optional] 
**settings** | [**ARRAY[SelectedSettingResource]**](SelectedSettingResource.md) | The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. | [optional] 
**simulated** | **boolean** | Whether this occurrence will be ran as a simulation. Simulations will not be rewarded. Useful for bot play or trials | [optional] 
**start_date** | **int** | The date this occurrence was started, unix timestamp in seconds. null if not yet started | [optional] 
**status** | **string** | The current status of the occurrence (default: OPEN) | [optional] 
**updated_date** | **int** | The date this occurrence was last updated, unix timestamp in seconds | [optional] 
**users** | [**ARRAY[ActivityUserResource]**](ActivityUserResource.md) | The list of users participating in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



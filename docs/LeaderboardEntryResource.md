# KnetikCloud::Object::LeaderboardEntryResource

## Load the model package
```perl
use KnetikCloud::Object::LeaderboardEntryResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **int** | The position of the user in the leaderboard. Null means non-compete or disqualification | [optional] 
**score** | **int** | The raw score in this leaderboard. Null means non-compete or disqualification | [optional] 
**updated_date** | **int** | The date this score was recorded or updated. Unix timestamp in seconds | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The player for this entry | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



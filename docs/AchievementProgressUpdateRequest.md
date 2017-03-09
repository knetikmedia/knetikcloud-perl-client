# KnetikCloud::Object::AchievementProgressUpdateRequest

## Load the model package
```perl
use KnetikCloud::Object::AchievementProgressUpdateRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**increment_value** | **boolean** | Whether to add one to the current progress instead of setting it to progress_value. Default: false | [optional] 
**progress_value** | **int** | The amount of progress towards earning the achievement. The max/target depends on the achievement. Required if increment_value is false/missing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# KnetikCloud::Object::BatchResult

## Load the model package
```perl
use KnetikCloud::Object::BatchResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_return** | [**ARRAY[BatchReturn]**](BatchReturn.md) | List of batch responses.  Returns in the order requested | [optional] 
**created_date** | **int** | The date the batch call started processing | [optional] 
**id** | **string** | The token to use at the /batch/{token} endpoint if the request times out | [optional] 
**updated_date** | **int** | The date the batch call finished processing | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



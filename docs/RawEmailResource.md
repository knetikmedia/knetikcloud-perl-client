# KnetikCloud::Object::RawEmailResource

## Load the model package
```perl
use KnetikCloud::Object::RawEmailResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **string** | The body of the outgoing message. | 
**from** | **string** | Address to attribute the outgoing message to. Optional if the config email.out_address is set. | [optional] 
**html** | **boolean** | Whether the body is to be treated as html. Default false. | [optional] 
**recipients** | **ARRAY[int]** | A list of user ids to send the message to. | 
**subject** | **string** | The subject of the outgoing message. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WWW::SwaggerClient::Object::UserItemLogResource

## Load the model package
```perl
use WWW::SwaggerClient::Object::UserItemLogResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The log entry id | [optional] 
**info** | **string** | Additional information defined by the type | [optional] 
**item** | [**SimpleReferenceResourceint**](SimpleReferenceResourceint.md) | The item interacted with | [optional] 
**log_date** | **int** | The date/time this event occurred in seconds since epoch | [optional] 
**type** | **string** | The type of event | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user making the interaction | [optional] 
**user_inventory** | **int** | The id of the inventory entry this event is related to, if any | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



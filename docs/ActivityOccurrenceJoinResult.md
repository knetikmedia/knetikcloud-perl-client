# WWW::SwaggerClient::Object::ActivityOccurrenceJoinResult

## Load the model package
```perl
use WWW::SwaggerClient::Object::ActivityOccurrenceJoinResult;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entitlement** | [**ActivityEntitlementResource**](ActivityEntitlementResource.md) | The details on the entitlement object needed to enter the occurrence (if any) | [optional] 
**error_code** | **int** | Zero if the user was/could be added to the occurrence. Jsapi error code indicating the reason of the failure otherwise | 
**message** | **string** | An error message if failure | [optional] 
**user_id** | **int** | The user&#39;s id | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



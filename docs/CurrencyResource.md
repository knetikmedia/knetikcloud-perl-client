# KnetikCloud::Object::CurrencyResource

## Load the model package
```perl
use KnetikCloud::Object::CurrencyResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** | Whether the currency is active. Default true | [optional] 
**code** | **string** | The unique id code for the currency. Maximum 5 characters | 
**created_date** | **int** | The unix timestamp in seconds the currency was added to the system | [optional] 
**factor** | **double** | The decimal to multiply the system base currency (from config &#39;currency&#39;) to localize to this one. Should be 1 for the base currency itself. | 
**icon** | **string** | The url for an icon of the currency | [optional] 
**name** | **string** | The name of the currency | 
**type** | **string** | The type of currency. Default &#39;real&#39; | [optional] 
**updated_date** | **int** | The unix timestamp in seconds the currency was last updated in the system. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



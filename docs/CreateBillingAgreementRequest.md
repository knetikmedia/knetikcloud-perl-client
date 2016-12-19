# WWW::SwaggerClient::Object::CreateBillingAgreementRequest

## Load the model package
```perl
use WWW::SwaggerClient::Object::CreateBillingAgreementRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancel_url** | **string** | The endpoint URL to which PayPal should forward the user if they cancel (do not accept) the agreement | 
**return_url** | **string** | The endpoint URL to which PayPal should forward the user after they accept the agreement. This endpoint will receive information needed for the next step | 
**user_id** | **int** | The ID of the user. Defaults to the logged in user | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



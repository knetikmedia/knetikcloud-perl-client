# KnetikCloud::Object::FinalizeBillingAgreementRequest

## Load the model package
```perl
use KnetikCloud::Object::FinalizeBillingAgreementRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **int** | The ID of the invoice being paid along with the creation of this agreement | [optional] 
**new_default** | **boolean** | Whether the new payment method created should be the user&#39;s default | [optional] 
**payer_id** | **string** | The payer ID from PayPal (passed as a parameter in the return URL). Only required if an invoice ID was included | [optional] 
**token** | **string** | The token from PayPal (passed as a parameter in the return URL) | 
**user_id** | **int** | The ID of the user. Defaults to the logged in user | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# KnetikCloud::Object::FinalizePayPalPaymentRequest

## Load the model package
```perl
use KnetikCloud::Object::FinalizePayPalPaymentRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **int** | The ID of the invoice that is being paid. Must match the invoice sent in originally | 
**payer_id** | **string** | The ID of the payer that PayPal returned with the user at the return URL | 
**token** | **string** | The token that PayPal returned with the user in the return URL | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



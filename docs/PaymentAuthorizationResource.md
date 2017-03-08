# KnetikCloud::Object::PaymentAuthorizationResource

## Load the model package
```perl
use KnetikCloud::Object::PaymentAuthorizationResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captured** | **boolean** | Whether this authorization has been captured | [optional] 
**created** | **int** | The date this authorization was received, unix timestamp in seconds | [optional] 
**details** | **object** | The details for this authorization. Format dependent on payment provider | [optional] 
**id** | **int** | The id of the authorization | [optional] 
**invoice** | **int** | The invoice this authorization is intended to pay | [optional] 
**payment_type** | [**SimpleReferenceResourceint**](SimpleReferenceResourceint.md) | The payment type (which provider) this payment is through | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



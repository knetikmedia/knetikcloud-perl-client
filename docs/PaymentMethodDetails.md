# KnetikCloud::Object::PaymentMethodDetails

## Load the model package
```perl
use KnetikCloud::Object::PaymentMethodDetails;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **boolean** |  | [optional] 
**expiration_date** | **int** | The expiration date for the payment method, expressed as seconds since epoch. Typically used for credit card payment methods | [optional] 
**expiration_month** | **int** | The expiration month (1 - 12) for the payment method. Typically used for credit card payment methods | [optional] 
**expiration_year** | **int** | The expiration year for the payment method. Typically used for credit card payment methods | [optional] 
**last4** | **string** | The last 4 digits of the account number for the payment method. Typically used for credit card payment methods | [optional] 
**sort** | **int** | The sort value for the payment method | [optional] 
**unique_key** | **string** | An optional unique identifier | [optional] 
**verified** | **boolean** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



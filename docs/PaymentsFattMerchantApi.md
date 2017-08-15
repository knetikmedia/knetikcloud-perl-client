# KnetikCloud::PaymentsFattMerchantApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsFattMerchantApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_fatt_merchant_payment_method**](PaymentsFattMerchantApi.md#create_or_update_fatt_merchant_payment_method) | **PUT** /payment/provider/fattmerchant/payment-methods | Create or update a FattMerchant payment method for a user


# **create_or_update_fatt_merchant_payment_method**
> PaymentMethodResource create_or_update_fatt_merchant_payment_method(request => $request)

Create or update a FattMerchant payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsFattMerchantApi;
my $api_instance = KnetikCloud::PaymentsFattMerchantApi->new(
);

my $request = KnetikCloud::Object::FattMerchantPaymentMethodRequest->new(); # FattMerchantPaymentMethodRequest | Request containing payment method information for user

eval { 
    my $result = $api_instance->create_or_update_fatt_merchant_payment_method(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsFattMerchantApi->create_or_update_fatt_merchant_payment_method: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**FattMerchantPaymentMethodRequest**](FattMerchantPaymentMethodRequest.md)| Request containing payment method information for user | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


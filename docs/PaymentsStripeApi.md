# KnetikCloud::PaymentsStripeApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsStripeApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_stripe_payment_method**](PaymentsStripeApi.md#create_stripe_payment_method) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**pay_stripe_invoice**](PaymentsStripeApi.md#pay_stripe_invoice) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **create_stripe_payment_method**
> PaymentMethodResource create_stripe_payment_method(request => $request)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsStripeApi;
my $api_instance = KnetikCloud::PaymentsStripeApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $request = KnetikCloud::Object::StripeCreatePaymentMethod->new(); # StripeCreatePaymentMethod | The request to create a Stripe customer with payment info

eval { 
    my $result = $api_instance->create_stripe_payment_method(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsStripeApi->create_stripe_payment_method: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pay_stripe_invoice**
> pay_stripe_invoice(request => $request)

Pay with a single use token

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsStripeApi;
my $api_instance = KnetikCloud::PaymentsStripeApi->new(
);

my $request = KnetikCloud::Object::StripePaymentRequest->new(); # StripePaymentRequest | The request to pay an invoice

eval { 
    $api_instance->pay_stripe_invoice(request => $request);
};
if ($@) {
    warn "Exception when calling PaymentsStripeApi->pay_stripe_invoice: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripePaymentRequest**](StripePaymentRequest.md)| The request to pay an invoice | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


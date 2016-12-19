# WWW::SwaggerClient::PaymentsStripeApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsStripeApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_using_post1**](PaymentsStripeApi.md#create_customer_using_post1) | **POST** /payment/provider/stripe/payment-methods | Create a Stripe payment method for a user
[**pay_invoice_using_post1**](PaymentsStripeApi.md#pay_invoice_using_post1) | **POST** /payment/provider/stripe/payments | Pay with a single use token


# **create_customer_using_post1**
> PaymentMethodResource create_customer_using_post1(request => $request)

Create a Stripe payment method for a user

Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsStripeApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsStripeApi->new();
my $request = WWW::SwaggerClient::Object::StripeCreatePaymentMethod->new(); # StripeCreatePaymentMethod | The request to create a Stripe customer with payment info

eval { 
    my $result = $api_instance->create_customer_using_post1(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsStripeApi->create_customer_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StripeCreatePaymentMethod**](StripeCreatePaymentMethod.md)| The request to create a Stripe customer with payment info | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pay_invoice_using_post1**
> pay_invoice_using_post1(request => $request)

Pay with a single use token

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsStripeApi;

my $api_instance = WWW::SwaggerClient::PaymentsStripeApi->new();
my $request = WWW::SwaggerClient::Object::StripePaymentRequest->new(); # StripePaymentRequest | The request to pay an invoice

eval { 
    $api_instance->pay_invoice_using_post1(request => $request);
};
if ($@) {
    warn "Exception when calling PaymentsStripeApi->pay_invoice_using_post1: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


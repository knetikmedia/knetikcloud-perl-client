# WWW::SwaggerClient::PaymentsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_method_using_post**](PaymentsApi.md#create_payment_method_using_post) | **POST** /users/{user_id}/payment-methods | Create a new payment method for a user
[**delete_payment_method_using_delete**](PaymentsApi.md#delete_payment_method_using_delete) | **DELETE** /users/{user_id}/payment-methods/{id} | Delete an existing payment method for a user
[**get_payment_method_using_get**](PaymentsApi.md#get_payment_method_using_get) | **GET** /users/{user_id}/payment-methods/{id} | Get a single payment method for a user
[**get_payment_methods_using_get**](PaymentsApi.md#get_payment_methods_using_get) | **GET** /users/{user_id}/payment-methods | Get all payment methods for a user
[**payment_authorization_using_post**](PaymentsApi.md#payment_authorization_using_post) | **POST** /payment/authorizations | Authorize payment of an invoice for later capture
[**payment_capture_using_post**](PaymentsApi.md#payment_capture_using_post) | **POST** /payment/authorizations/{id}/capture | Capture an existing invoice payment authorization
[**update_payment_method_using_put**](PaymentsApi.md#update_payment_method_using_put) | **PUT** /users/{user_id}/payment-methods/{id} | Update an existing payment method for a user


# **create_payment_method_using_post**
> PaymentMethodResource create_payment_method_using_post(user_id => $user_id, payment_method => $payment_method)

Create a new payment method for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $user_id = 56; # int | ID of the user for whom the payment method is being created
my $payment_method = WWW::SwaggerClient::Object::PaymentMethodResource->new(); # PaymentMethodResource | Payment method being created

eval { 
    my $result = $api_instance->create_payment_method_using_post(user_id => $user_id, payment_method => $payment_method);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsApi->create_payment_method_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| ID of the user for whom the payment method is being created | 
 **payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md)| Payment method being created | [optional] 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_payment_method_using_delete**
> delete_payment_method_using_delete(user_id => $user_id, id => $id)

Delete an existing payment method for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $user_id = 56; # int | ID of the user for whom the payment method is being updated
my $id = 56; # int | ID of the payment method being deleted

eval { 
    $api_instance->delete_payment_method_using_delete(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling PaymentsApi->delete_payment_method_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| ID of the user for whom the payment method is being updated | 
 **id** | **int**| ID of the payment method being deleted | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_payment_method_using_get**
> PaymentMethodResource get_payment_method_using_get(user_id => $user_id, id => $id)

Get a single payment method for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $user_id = 56; # int | ID of the user for whom the payment method is being retrieved
my $id = 56; # int | ID of the payment method being retrieved

eval { 
    my $result = $api_instance->get_payment_method_using_get(user_id => $user_id, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsApi->get_payment_method_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| ID of the user for whom the payment method is being retrieved | 
 **id** | **int**| ID of the payment method being retrieved | 

### Return type

[**PaymentMethodResource**](PaymentMethodResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_payment_methods_using_get**
> ARRAY[PaymentMethodResource] get_payment_methods_using_get(user_id => $user_id, size => $size, page => $page, order => $order)

Get all payment methods for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $user_id = 56; # int | ID of the user for whom the payment methods are being retrieved
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_payment_methods_using_get(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsApi->get_payment_methods_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| ID of the user for whom the payment methods are being retrieved | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**ARRAY[PaymentMethodResource]**](PaymentMethodResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payment_authorization_using_post**
> PaymentAuthorizationResource payment_authorization_using_post(request => $request)

Authorize payment of an invoice for later capture

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $request = WWW::SwaggerClient::Object::PaymentAuthorizationResource->new(); # PaymentAuthorizationResource | Payment authorization request

eval { 
    my $result = $api_instance->payment_authorization_using_post(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsApi->payment_authorization_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)| Payment authorization request | [optional] 

### Return type

[**PaymentAuthorizationResource**](PaymentAuthorizationResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payment_capture_using_post**
> payment_capture_using_post(id => $id)

Capture an existing invoice payment authorization

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $id = 56; # int | ID of the payment authorization to capture

eval { 
    $api_instance->payment_capture_using_post(id => $id);
};
if ($@) {
    warn "Exception when calling PaymentsApi->payment_capture_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the payment authorization to capture | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_payment_method_using_put**
> update_payment_method_using_put(user_id => $user_id, id => $id, payment_method => $payment_method)

Update an existing payment method for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsApi->new();
my $user_id = 56; # int | ID of the user for whom the payment method is being updated
my $id = 56; # int | ID of the payment method being updated
my $payment_method = WWW::SwaggerClient::Object::PaymentMethodResource->new(); # PaymentMethodResource | The updated payment method data

eval { 
    $api_instance->update_payment_method_using_put(user_id => $user_id, id => $id, payment_method => $payment_method);
};
if ($@) {
    warn "Exception when calling PaymentsApi->update_payment_method_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| ID of the user for whom the payment method is being updated | 
 **id** | **int**| ID of the payment method being updated | 
 **payment_method** | [**PaymentMethodResource**](PaymentMethodResource.md)| The updated payment method data | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


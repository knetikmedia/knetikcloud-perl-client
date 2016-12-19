# WWW::SwaggerClient::UsersSubscriptionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersSubscriptionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_details_using_get**](UsersSubscriptionsApi.md#get_subscription_details_using_get) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**get_subscription_details_using_get1**](UsersSubscriptionsApi.md#get_subscription_details_using_get1) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivate_using_post**](UsersSubscriptionsApi.md#reactivate_using_post) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**set_bill_date_using_put**](UsersSubscriptionsApi.md#set_bill_date_using_put) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**set_payment_method_using_put**](UsersSubscriptionsApi.md#set_payment_method_using_put) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**set_status_using_put**](UsersSubscriptionsApi.md#set_status_using_put) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**set_user_plan_using_put**](UsersSubscriptionsApi.md#set_user_plan_using_put) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user


# **get_subscription_details_using_get**
> InventorySubscriptionResource get_subscription_details_using_get(user_id => $user_id, inventory_id => $inventory_id)

Get details about a user's subscription

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory

eval { 
    my $result = $api_instance->get_subscription_details_using_get(user_id => $user_id, inventory_id => $inventory_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->get_subscription_details_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 

### Return type

[**InventorySubscriptionResource**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscription_details_using_get1**
> ARRAY[InventorySubscriptionResource] get_subscription_details_using_get1(user_id => $user_id)

Get details about a user's subscriptions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_subscription_details_using_get1(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->get_subscription_details_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

[**ARRAY[InventorySubscriptionResource]**](InventorySubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactivate_using_post**
> InvoiceResource reactivate_using_post(user_id => $user_id, inventory_id => $inventory_id, reactivate_subscription_request => $reactivate_subscription_request)

Reactivate a subscription and charge fee

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $reactivate_subscription_request = WWW::SwaggerClient::Object::ReactivateSubscriptionRequest->new(); # ReactivateSubscriptionRequest | The reactivate subscription request object inventory

eval { 
    my $result = $api_instance->reactivate_using_post(user_id => $user_id, inventory_id => $inventory_id, reactivate_subscription_request => $reactivate_subscription_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->reactivate_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **reactivate_subscription_request** | [**ReactivateSubscriptionRequest**](ReactivateSubscriptionRequest.md)| The reactivate subscription request object inventory | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_bill_date_using_put**
> set_bill_date_using_put(user_id => $user_id, inventory_id => $inventory_id, bill_date => $bill_date)

Set a new date to bill a subscription on

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $bill_date = WWW::SwaggerClient::Object::int->new(); # int | The new bill date. Unix timestamp in seconds

eval { 
    $api_instance->set_bill_date_using_put(user_id => $user_id, inventory_id => $inventory_id, bill_date => $bill_date);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_bill_date_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **bill_date** | **int**| The new bill date. Unix timestamp in seconds | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_payment_method_using_put**
> set_payment_method_using_put(user_id => $user_id, inventory_id => $inventory_id, payment_method_id => $payment_method_id)

Set the payment method to use for a subscription

May send null to use floating default

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $payment_method_id = WWW::SwaggerClient::Object::int->new(); # int | The id of the payment method

eval { 
    $api_instance->set_payment_method_using_put(user_id => $user_id, inventory_id => $inventory_id, payment_method_id => $payment_method_id);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_payment_method_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **payment_method_id** | **int**| The id of the payment method | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_status_using_put**
> set_status_using_put(user_id => $user_id, inventory_id => $inventory_id, status => $status)

Set the status of a subscription

The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $status = WWW::SwaggerClient::Object::string->new(); # string | The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: ('current', 'canceled', 'stopped', 'payment_failed', 'suspended')

eval { 
    $api_instance->set_status_using_put(user_id => $user_id, inventory_id => $inventory_id, status => $status);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_status_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **status** | **string**| The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_user_plan_using_put**
> set_user_plan_using_put(user_id => $user_id, inventory_id => $inventory_id, plan_id => $plan_id)

Set a new subscription plan for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersSubscriptionsApi->new();
my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $plan_id = WWW::SwaggerClient::Object::string->new(); # string | The id of the new plan. Must be from the same subscription

eval { 
    $api_instance->set_user_plan_using_put(user_id => $user_id, inventory_id => $inventory_id, plan_id => $plan_id);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_user_plan_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **plan_id** | **string**| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


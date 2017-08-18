# KnetikCloud::UsersSubscriptionsApi

## Load the API package
```perl
use KnetikCloud::Object::UsersSubscriptionsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_subscription_details**](UsersSubscriptionsApi.md#get_user_subscription_details) | **GET** /users/{user_id}/subscriptions/{inventory_id} | Get details about a user&#39;s subscription
[**get_users_subscription_details**](UsersSubscriptionsApi.md#get_users_subscription_details) | **GET** /users/{user_id}/subscriptions | Get details about a user&#39;s subscriptions
[**reactivate_user_subscription**](UsersSubscriptionsApi.md#reactivate_user_subscription) | **POST** /users/{user_id}/subscriptions/{inventory_id}/reactivate | Reactivate a subscription and charge fee
[**set_subscription_bill_date**](UsersSubscriptionsApi.md#set_subscription_bill_date) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/bill-date | Set a new date to bill a subscription on
[**set_subscription_payment_method**](UsersSubscriptionsApi.md#set_subscription_payment_method) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/payment-method | Set the payment method to use for a subscription
[**set_subscription_status**](UsersSubscriptionsApi.md#set_subscription_status) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/status | Set the status of a subscription
[**set_user_subscription_plan**](UsersSubscriptionsApi.md#set_user_subscription_plan) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/plan | Set a new subscription plan for a user
[**set_user_subscription_price**](UsersSubscriptionsApi.md#set_user_subscription_price) | **PUT** /users/{user_id}/subscriptions/{inventory_id}/price-override | Set a new subscription price for a user


# **get_user_subscription_details**
> InventorySubscriptionResource get_user_subscription_details(user_id => $user_id, inventory_id => $inventory_id)

Get details about a user's subscription

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory

eval { 
    my $result = $api_instance->get_user_subscription_details(user_id => $user_id, inventory_id => $inventory_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->get_user_subscription_details: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_subscription_details**
> ARRAY[InventorySubscriptionResource] get_users_subscription_details(user_id => $user_id)

Get details about a user's subscriptions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_users_subscription_details(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->get_users_subscription_details: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

[**ARRAY[InventorySubscriptionResource]**](InventorySubscriptionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactivate_user_subscription**
> InvoiceResource reactivate_user_subscription(user_id => $user_id, inventory_id => $inventory_id, reactivate_subscription_request => $reactivate_subscription_request)

Reactivate a subscription and charge fee

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $reactivate_subscription_request = KnetikCloud::Object::ReactivateSubscriptionRequest->new(); # ReactivateSubscriptionRequest | The reactivate subscription request object inventory

eval { 
    my $result = $api_instance->reactivate_user_subscription(user_id => $user_id, inventory_id => $inventory_id, reactivate_subscription_request => $reactivate_subscription_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->reactivate_user_subscription: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_subscription_bill_date**
> set_subscription_bill_date(user_id => $user_id, inventory_id => $inventory_id, bill_date => $bill_date)

Set a new date to bill a subscription on

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $bill_date = KnetikCloud::Object::int->new(); # int | The new bill date. Unix timestamp in seconds

eval { 
    $api_instance->set_subscription_bill_date(user_id => $user_id, inventory_id => $inventory_id, bill_date => $bill_date);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_subscription_bill_date: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_subscription_payment_method**
> set_subscription_payment_method(user_id => $user_id, inventory_id => $inventory_id, payment_method_id => $payment_method_id)

Set the payment method to use for a subscription

May send null to use floating default

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $payment_method_id = KnetikCloud::Object::IntWrapper->new(); # IntWrapper | The id of the payment method

eval { 
    $api_instance->set_subscription_payment_method(user_id => $user_id, inventory_id => $inventory_id, payment_method_id => $payment_method_id);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_subscription_payment_method: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **payment_method_id** | [**IntWrapper**](IntWrapper.md)| The id of the payment method | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_subscription_status**
> set_subscription_status(user_id => $user_id, inventory_id => $inventory_id, status => $status)

Set the status of a subscription

Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $status = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: ('current', 'canceled', 'stopped', 'payment_failed', 'suspended')

eval { 
    $api_instance->set_subscription_status(user_id => $user_id, inventory_id => $inventory_id, status => $status);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_subscription_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **status** | [**StringWrapper**](StringWrapper.md)| The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_user_subscription_plan**
> set_user_subscription_plan(user_id => $user_id, inventory_id => $inventory_id, plan_id => $plan_id)

Set a new subscription plan for a user

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $plan_id = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | The id of the new plan. Must be from the same subscription

eval { 
    $api_instance->set_user_subscription_plan(user_id => $user_id, inventory_id => $inventory_id, plan_id => $plan_id);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_user_subscription_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **plan_id** | [**StringWrapper**](StringWrapper.md)| The id of the new plan. Must be from the same subscription | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_user_subscription_price**
> set_user_subscription_price(user_id => $user_id, inventory_id => $inventory_id, the override details => $the override details)

Set a new subscription price for a user

This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UsersSubscriptionsApi;
my $api_instance = KnetikCloud::UsersSubscriptionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The id of the user
my $inventory_id = 56; # int | The id of the user's inventory
my $the override details = KnetikCloud::Object::SubscriptionPriceOverrideRequest->new(); # SubscriptionPriceOverrideRequest | override

eval { 
    $api_instance->set_user_subscription_price(user_id => $user_id, inventory_id => $inventory_id, the override details => $the override details);
};
if ($@) {
    warn "Exception when calling UsersSubscriptionsApi->set_user_subscription_price: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **inventory_id** | **int**| The id of the user&#39;s inventory | 
 **the override details** | [**SubscriptionPriceOverrideRequest**](SubscriptionPriceOverrideRequest.md)| override | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


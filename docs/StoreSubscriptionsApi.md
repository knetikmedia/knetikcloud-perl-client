# WWW::SwaggerClient::StoreSubscriptionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreSubscriptionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subscription_template_using_post**](StoreSubscriptionsApi.md#create_subscription_template_using_post) | **POST** /subscriptions/templates | Create a subscription template
[**create_subscription_using_post**](StoreSubscriptionsApi.md#create_subscription_using_post) | **POST** /subscriptions | Creates a subscription item and associated plans
[**delete_plan_using_delete**](StoreSubscriptionsApi.md#delete_plan_using_delete) | **DELETE** /subscriptions/{id}/plans/{plan_id} | Delete a subscription plan
[**delete_subscription_template_using_delete**](StoreSubscriptionsApi.md#delete_subscription_template_using_delete) | **DELETE** /subscriptions/templates/{id} | Delete a subscription template
[**get_subscription_template_using_get**](StoreSubscriptionsApi.md#get_subscription_template_using_get) | **GET** /subscriptions/templates/{id} | Get a single subscription template
[**get_subscription_templates_using_get**](StoreSubscriptionsApi.md#get_subscription_templates_using_get) | **GET** /subscriptions/templates | List and search subscription templates
[**get_subscription_using_get**](StoreSubscriptionsApi.md#get_subscription_using_get) | **GET** /subscriptions/{id} | Retrieve a single subscription item and associated plans
[**list_subscriptions_using_get**](StoreSubscriptionsApi.md#list_subscriptions_using_get) | **GET** /subscriptions | List available subscription items and associated plans
[**process_using_post**](StoreSubscriptionsApi.md#process_using_post) | **POST** /subscriptions/process | Processes subscriptions and charge dues
[**update_subscription_template_using_put**](StoreSubscriptionsApi.md#update_subscription_template_using_put) | **PUT** /subscriptions/templates/{id} | Update a subscription template
[**update_subscription_using_put**](StoreSubscriptionsApi.md#update_subscription_using_put) | **PUT** /subscriptions/{id} | Updates a subscription item and associated plans


# **create_subscription_template_using_post**
> SubscriptionTemplateResource create_subscription_template_using_post(subscription_template_resource => $subscription_template_resource)

Create a subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $subscription_template_resource = WWW::SwaggerClient::Object::SubscriptionTemplateResource->new(); # SubscriptionTemplateResource | The new subscription template

eval { 
    my $result = $api_instance->create_subscription_template_using_post(subscription_template_resource => $subscription_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->create_subscription_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_template_resource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The new subscription template | [optional] 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_subscription_using_post**
> SubscriptionResource create_subscription_using_post(subscription_resource => $subscription_resource)

Creates a subscription item and associated plans

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $subscription_resource = WWW::SwaggerClient::Object::SubscriptionResource->new(); # SubscriptionResource | The subscription to be created

eval { 
    my $result = $api_instance->create_subscription_using_post(subscription_resource => $subscription_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->create_subscription_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_resource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription to be created | [optional] 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_plan_using_delete**
> delete_plan_using_delete(id => $id, plan_id => $plan_id)

Delete a subscription plan

Must not be locked or a migration target

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 56; # int | The id of the subscription
my $plan_id = 'plan_id_example'; # string | The id of the plan

eval { 
    $api_instance->delete_plan_using_delete(id => $id, plan_id => $plan_id);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->delete_plan_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 
 **plan_id** | **string**| The id of the plan | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_subscription_template_using_delete**
> delete_subscription_template_using_delete(id => $id, cascade => $cascade)

Delete a subscription template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_subscription_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->delete_subscription_template_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscription_template_using_get**
> SubscriptionTemplateResource get_subscription_template_using_get(id => $id)

Get a single subscription template

Subscription Templates define a type of subscription and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_subscription_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->get_subscription_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscription_templates_using_get**
> PageSubscriptionTemplateResource get_subscription_templates_using_get(size => $size, page => $page, order => $order)

List and search subscription templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_subscription_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->get_subscription_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageSubscriptionTemplateResource**](PageSubscriptionTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_subscription_using_get**
> SubscriptionResource get_subscription_using_get(id => $id)

Retrieve a single subscription item and associated plans

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 56; # int | The id of the subscription

eval { 
    my $result = $api_instance->get_subscription_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->get_subscription_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 

### Return type

[**SubscriptionResource**](SubscriptionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_subscriptions_using_get**
> PageSubscriptionResource list_subscriptions_using_get(size => $size, page => $page, order => $order)

List available subscription items and associated plans

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->list_subscriptions_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->list_subscriptions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageSubscriptionResource**](PageSubscriptionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **process_using_post**
> process_using_post()

Processes subscriptions and charge dues

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();

eval { 
    $api_instance->process_using_post();
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->process_using_post: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_subscription_template_using_put**
> update_subscription_template_using_put(id => $id, subscription_template_resource => $subscription_template_resource)

Update a subscription template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 'id_example'; # string | The id of the template
my $subscription_template_resource = WWW::SwaggerClient::Object::SubscriptionTemplateResource->new(); # SubscriptionTemplateResource | The subscription template resource object

eval { 
    $api_instance->update_subscription_template_using_put(id => $id, subscription_template_resource => $subscription_template_resource);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->update_subscription_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **subscription_template_resource** | [**SubscriptionTemplateResource**](SubscriptionTemplateResource.md)| The subscription template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_subscription_using_put**
> update_subscription_using_put(id => $id, subscription_resource => $subscription_resource)

Updates a subscription item and associated plans

Will not remove plans left out

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreSubscriptionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreSubscriptionsApi->new();
my $id = 56; # int | The id of the subscription
my $subscription_resource = WWW::SwaggerClient::Object::SubscriptionResource->new(); # SubscriptionResource | The subscription resource object

eval { 
    $api_instance->update_subscription_using_put(id => $id, subscription_resource => $subscription_resource);
};
if ($@) {
    warn "Exception when calling StoreSubscriptionsApi->update_subscription_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the subscription | 
 **subscription_resource** | [**SubscriptionResource**](SubscriptionResource.md)| The subscription resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# WWW::SwaggerClient::DispositionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::DispositionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_disposition_using_post**](DispositionsApi.md#add_disposition_using_post) | **POST** /dispositions | Add a new disposition. 
[**delete_disposition_using_delete**](DispositionsApi.md#delete_disposition_using_delete) | **DELETE** /dispositions/{id} | Delete a disposition
[**get_disposition_count_using_get**](DispositionsApi.md#get_disposition_count_using_get) | **GET** /dispositions/count | Returns a list of disposition counts
[**get_disposition_using_get**](DispositionsApi.md#get_disposition_using_get) | **GET** /dispositions/{id} | Returns a disposition
[**get_dispositions_using_get**](DispositionsApi.md#get_dispositions_using_get) | **GET** /dispositions | Returns a page of dispositions


# **add_disposition_using_post**
> DispositionResource add_disposition_using_post(disposition => $disposition)

Add a new disposition. 

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DispositionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DispositionsApi->new();
my $disposition = WWW::SwaggerClient::Object::DispositionResource->new(); # DispositionResource | The new disposition record

eval { 
    my $result = $api_instance->add_disposition_using_post(disposition => $disposition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->add_disposition_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition** | [**DispositionResource**](DispositionResource.md)| The new disposition record | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_disposition_using_delete**
> delete_disposition_using_delete(id => $id)

Delete a disposition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DispositionsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DispositionsApi->new();
my $id = 789; # int | The id of the disposition record

eval { 
    $api_instance->delete_disposition_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling DispositionsApi->delete_disposition_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the disposition record | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_disposition_count_using_get**
> ARRAY[DispositionCount] get_disposition_count_using_get(filter_context => $filter_context, filter_owner => $filter_owner)

Returns a list of disposition counts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DispositionsApi;

my $api_instance = WWW::SwaggerClient::DispositionsApi->new();
my $filter_context = 'filter_context_example'; # string | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
my $filter_owner = 'filter_owner_example'; # string | Filter for dispositions from a specific user by id or 'me'

eval { 
    my $result = $api_instance->get_disposition_count_using_get(filter_context => $filter_context, filter_owner => $filter_owner);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_disposition_count_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **string**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filter_owner** | **string**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 

### Return type

[**ARRAY[DispositionCount]**](DispositionCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_disposition_using_get**
> DispositionResource get_disposition_using_get(id => $id)

Returns a disposition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DispositionsApi;

my $api_instance = WWW::SwaggerClient::DispositionsApi->new();
my $id = 789; # int | The id of the disposition record

eval { 
    my $result = $api_instance->get_disposition_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_disposition_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the disposition record | 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dispositions_using_get**
> PageDispositionResource get_dispositions_using_get(filter_context => $filter_context, filter_owner => $filter_owner, size => $size, page => $page, order => $order)

Returns a page of dispositions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DispositionsApi;

my $api_instance = WWW::SwaggerClient::DispositionsApi->new();
my $filter_context = 'filter_context_example'; # string | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
my $filter_owner = 'filter_owner_example'; # string | Filter for dispositions from a specific user by id or 'me'
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_dispositions_using_get(filter_context => $filter_context, filter_owner => $filter_owner, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_dispositions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **string**| Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 | [optional] 
 **filter_owner** | **string**| Filter for dispositions from a specific user by id or &#39;me&#39; | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageDispositionResource**](PageDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


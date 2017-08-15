# KnetikCloud::DispositionsApi

## Load the API package
```perl
use KnetikCloud::Object::DispositionsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_disposition**](DispositionsApi.md#add_disposition) | **POST** /dispositions | Add a new disposition
[**delete_disposition**](DispositionsApi.md#delete_disposition) | **DELETE** /dispositions/{id} | Delete a disposition
[**get_disposition**](DispositionsApi.md#get_disposition) | **GET** /dispositions/{id} | Returns a disposition
[**get_disposition_counts**](DispositionsApi.md#get_disposition_counts) | **GET** /dispositions/count | Returns a list of disposition counts
[**get_dispositions**](DispositionsApi.md#get_dispositions) | **GET** /dispositions | Returns a page of dispositions


# **add_disposition**
> DispositionResource add_disposition(disposition => $disposition)

Add a new disposition

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DispositionsApi;
my $api_instance = KnetikCloud::DispositionsApi->new(
);

my $disposition = KnetikCloud::Object::DispositionResource->new(); # DispositionResource | The new disposition record

eval { 
    my $result = $api_instance->add_disposition(disposition => $disposition);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->add_disposition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition** | [**DispositionResource**](DispositionResource.md)| The new disposition record | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_disposition**
> delete_disposition(id => $id)

Delete a disposition

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DispositionsApi;
my $api_instance = KnetikCloud::DispositionsApi->new(
);

my $id = 789; # int | The id of the disposition record

eval { 
    $api_instance->delete_disposition(id => $id);
};
if ($@) {
    warn "Exception when calling DispositionsApi->delete_disposition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the disposition record | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_disposition**
> DispositionResource get_disposition(id => $id)

Returns a disposition

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DispositionsApi;
my $api_instance = KnetikCloud::DispositionsApi->new(
);

my $id = 789; # int | The id of the disposition record

eval { 
    my $result = $api_instance->get_disposition(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_disposition: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_disposition_counts**
> ARRAY[DispositionCount] get_disposition_counts(filter_context => $filter_context, filter_owner => $filter_owner)

Returns a list of disposition counts

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DispositionsApi;
my $api_instance = KnetikCloud::DispositionsApi->new(
);

my $filter_context = 'filter_context_example'; # string | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
my $filter_owner = 'filter_owner_example'; # string | Filter for dispositions from a specific user by id or 'me'

eval { 
    my $result = $api_instance->get_disposition_counts(filter_context => $filter_context, filter_owner => $filter_owner);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_disposition_counts: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dispositions**
> PageResourceDispositionResource get_dispositions(filter_context => $filter_context, filter_owner => $filter_owner, size => $size, page => $page, order => $order)

Returns a page of dispositions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DispositionsApi;
my $api_instance = KnetikCloud::DispositionsApi->new(
);

my $filter_context = 'filter_context_example'; # string | Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context=video:47
my $filter_owner = 'filter_owner_example'; # string | Filter for dispositions from a specific user by id or 'me'
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_dispositions(filter_context => $filter_context, filter_owner => $filter_owner, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DispositionsApi->get_dispositions: $@\n";
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

[**PageResourceDispositionResource**](PageResourceDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


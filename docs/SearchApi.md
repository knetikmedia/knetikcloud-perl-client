# WWW::SwaggerClient::SearchApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::SearchApi;
```

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**external_add_using_post**](SearchApi.md#external_add_using_post) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**external_delete_all_using_delete**](SearchApi.md#external_delete_all_using_delete) | **DELETE** /search/index/{type} | Delete all objects in an index
[**external_delete_using_delete**](SearchApi.md#external_delete_using_delete) | **DELETE** /search/index/{type}/{id} | Delete an object
[**external_register_using_post**](SearchApi.md#external_register_using_post) | **POST** /search/mappings | Register reference mappings
[**search_using_post**](SearchApi.md#search_using_post) | **POST** /search/index/{type} | Search an index


# **external_add_using_post**
> external_add_using_post(type => $type, id => $id, object => $object)

Add a new object to an index

Mainly intended for internal use.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type
my $id = 'id_example'; # string | The ID of the object
my $object = WWW::SwaggerClient::Object::object->new(); # object | The object to add

eval { 
    $api_instance->external_add_using_post(type => $type, id => $id, object => $object);
};
if ($@) {
    warn "Exception when calling SearchApi->external_add_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 
 **id** | **string**| The ID of the object | 
 **object** | **object**| The object to add | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **external_delete_all_using_delete**
> external_delete_all_using_delete(type => $type)

Delete all objects in an index

Mainly intended for internal use

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type

eval { 
    $api_instance->external_delete_all_using_delete(type => $type);
};
if ($@) {
    warn "Exception when calling SearchApi->external_delete_all_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **external_delete_using_delete**
> external_delete_using_delete(type => $type, id => $id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type
my $id = 'id_example'; # string | The ID of the object to delete

eval { 
    $api_instance->external_delete_using_delete(type => $type, id => $id);
};
if ($@) {
    warn "Exception when calling SearchApi->external_delete_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 
 **id** | **string**| The ID of the object to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **external_register_using_post**
> external_register_using_post(mappings => $mappings)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $mappings = [WWW::SwaggerClient::Object::ARRAY[SearchReferenceMapping]->new()]; # ARRAY[SearchReferenceMapping] | The mappings to add

eval { 
    $api_instance->external_register_using_post(mappings => $mappings);
};
if ($@) {
    warn "Exception when calling SearchApi->external_register_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**ARRAY[SearchReferenceMapping]**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_using_post**
> PageMapstringobject search_using_post(type => $type, query => $query, size => $size, page => $page, order => $order)

Search an index

The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type
my $query = WWW::SwaggerClient::Object::object->new(); # object | The query to be used for the search
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->search_using_post(type => $type, query => $query, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchApi->search_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 
 **query** | **object**| The query to be used for the search | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageMapstringobject**](PageMapstringobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


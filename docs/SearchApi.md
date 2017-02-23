# WWW::SwaggerClient::SearchApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::SearchApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_search_index**](SearchApi.md#add_search_index) | **POST** /search/index/{type}/{id} | Add a new object to an index
[**add_search_mappings**](SearchApi.md#add_search_mappings) | **POST** /search/mappings | Register reference mappings
[**delete_search_index**](SearchApi.md#delete_search_index) | **DELETE** /search/index/{type}/{id} | Delete an object
[**delete_search_indexes**](SearchApi.md#delete_search_indexes) | **DELETE** /search/index/{type} | Delete all objects in an index
[**search_index**](SearchApi.md#search_index) | **POST** /search/index/{type} | Search an index


# **add_search_index**
> add_search_index(type => $type, id => $id, object => $object)

Add a new object to an index

Mainly intended for internal use.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type
my $id = 'id_example'; # string | The ID of the object
my $object = WWW::SwaggerClient::Object::object->new(); # object | The object to add

eval { 
    $api_instance->add_search_index(type => $type, id => $id, object => $object);
};
if ($@) {
    warn "Exception when calling SearchApi->add_search_index: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_search_mappings**
> add_search_mappings(mappings => $mappings)

Register reference mappings

Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $mappings = [WWW::SwaggerClient::Object::ARRAY[SearchReferenceMapping]->new()]; # ARRAY[SearchReferenceMapping] | The mappings to add

eval { 
    $api_instance->add_search_mappings(mappings => $mappings);
};
if ($@) {
    warn "Exception when calling SearchApi->add_search_mappings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mappings** | [**ARRAY[SearchReferenceMapping]**](SearchReferenceMapping.md)| The mappings to add | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_search_index**
> delete_search_index(type => $type, id => $id)

Delete an object

Mainly intended for internal use. Requires SEARCH_ADMIN.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type
my $id = 'id_example'; # string | The ID of the object to delete

eval { 
    $api_instance->delete_search_index(type => $type, id => $id);
};
if ($@) {
    warn "Exception when calling SearchApi->delete_search_index: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_search_indexes**
> delete_search_indexes(type => $type)

Delete all objects in an index

Mainly intended for internal use

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::SearchApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::SearchApi->new();
my $type = 'type_example'; # string | The index type

eval { 
    $api_instance->delete_search_indexes(type => $type);
};
if ($@) {
    warn "Exception when calling SearchApi->delete_search_indexes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_index**
> PageResourceMapstringobject search_index(type => $type, query => $query, size => $size, page => $page)

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

eval { 
    my $result = $api_instance->search_index(type => $type, query => $query, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SearchApi->search_index: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| The index type | 
 **query** | **object**| The query to be used for the search | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceMapstringobject**](PageResourceMapstringobject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


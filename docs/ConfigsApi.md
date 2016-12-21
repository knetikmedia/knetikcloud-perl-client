# WWW::SwaggerClient::ConfigsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ConfigsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_config_using_post**](ConfigsApi.md#create_config_using_post) | **POST** /configs | Create a new config
[**delete_config_using_delete**](ConfigsApi.md#delete_config_using_delete) | **DELETE** /configs/{name} | Delete an existing config
[**get_config_using_get**](ConfigsApi.md#get_config_using_get) | **GET** /configs/{name} | Get a single config
[**get_configs_using_get**](ConfigsApi.md#get_configs_using_get) | **GET** /configs | List and search configs
[**update_config_using_put**](ConfigsApi.md#update_config_using_put) | **PUT** /configs/{name} | Update an existing config


# **create_config_using_post**
> Config create_config_using_post(config => $config)

Create a new config

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ConfigsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ConfigsApi->new();
my $config = WWW::SwaggerClient::Object::Config->new(); # Config | The config object

eval { 
    my $result = $api_instance->create_config_using_post(config => $config);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->create_config_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

[**Config**](Config.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_config_using_delete**
> delete_config_using_delete(name => $name)

Delete an existing config

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ConfigsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ConfigsApi->new();
my $name = 'name_example'; # string | The config name

eval { 
    $api_instance->delete_config_using_delete(name => $name);
};
if ($@) {
    warn "Exception when calling ConfigsApi->delete_config_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The config name | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_config_using_get**
> Config get_config_using_get(name => $name)

Get a single config

Only configs that are public readable will be shown without admin access

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ConfigsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ConfigsApi->new();
my $name = 'name_example'; # string | The config name

eval { 
    my $result = $api_instance->get_config_using_get(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->get_config_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_configs_using_get**
> PageResourceConfig get_configs_using_get(filter_search => $filter_search, size => $size, page => $page, order => $order)

List and search configs

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ConfigsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ConfigsApi->new();
my $filter_search = 'filter_search_example'; # string | Filter for configs whose name contains the given string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_configs_using_get(filter_search => $filter_search, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->get_configs_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **string**| Filter for configs whose name contains the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceConfig**](PageResourceConfig.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_config_using_put**
> update_config_using_put(name => $name, config => $config)

Update an existing config

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ConfigsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ConfigsApi->new();
my $name = 'name_example'; # string | The config name
my $config = WWW::SwaggerClient::Object::Config->new(); # Config | The config object

eval { 
    $api_instance->update_config_using_put(name => $name, config => $config);
};
if ($@) {
    warn "Exception when calling ConfigsApi->update_config_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The config name | 
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


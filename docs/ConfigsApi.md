# KnetikCloud::ConfigsApi

## Load the API package
```perl
use KnetikCloud::Object::ConfigsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_config**](ConfigsApi.md#create_config) | **POST** /configs | Create a new config
[**delete_config**](ConfigsApi.md#delete_config) | **DELETE** /configs/{name} | Delete an existing config
[**get_config**](ConfigsApi.md#get_config) | **GET** /configs/{name} | Get a single config
[**get_configs**](ConfigsApi.md#get_configs) | **GET** /configs | List and search configs
[**update_config**](ConfigsApi.md#update_config) | **PUT** /configs/{name} | Update an existing config


# **create_config**
> Config create_config(config => $config)

Create a new config

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ConfigsApi;
my $api_instance = KnetikCloud::ConfigsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $config = KnetikCloud::Object::Config->new(); # Config | The config object

eval { 
    my $result = $api_instance->create_config(config => $config);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->create_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

[**Config**](Config.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_config**
> delete_config(name => $name)

Delete an existing config

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ConfigsApi;
my $api_instance = KnetikCloud::ConfigsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The config name

eval { 
    $api_instance->delete_config(name => $name);
};
if ($@) {
    warn "Exception when calling ConfigsApi->delete_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The config name | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_config**
> Config get_config(name => $name)

Get a single config

Only configs that are public readable will be shown without admin access

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ConfigsApi;
my $api_instance = KnetikCloud::ConfigsApi->new(
);

my $name = 'name_example'; # string | The config name

eval { 
    my $result = $api_instance->get_config(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->get_config: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_configs**
> PageResourceConfig get_configs(filter_search => $filter_search, size => $size, page => $page, order => $order)

List and search configs

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ConfigsApi;
my $api_instance = KnetikCloud::ConfigsApi->new(
);

my $filter_search = 'filter_search_example'; # string | Filter for configs whose name contains the given string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_configs(filter_search => $filter_search, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConfigsApi->get_configs: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_config**
> update_config(name => $name, config => $config)

Update an existing config

### Example 
```perl
use Data::Dumper;
use KnetikCloud::ConfigsApi;
my $api_instance = KnetikCloud::ConfigsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $name = 'name_example'; # string | The config name
my $config = KnetikCloud::Object::Config->new(); # Config | The config object

eval { 
    $api_instance->update_config(name => $name, config => $config);
};
if ($@) {
    warn "Exception when calling ConfigsApi->update_config: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


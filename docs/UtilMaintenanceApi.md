# WWW::SwaggerClient::UtilMaintenanceApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilMaintenanceApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_using_delete1**](UtilMaintenanceApi.md#delete_using_delete1) | **DELETE** /maintenance | Remove maintenance info
[**get_using_get1**](UtilMaintenanceApi.md#get_using_get1) | **GET** /maintenance | Get current maintenance info
[**post_using_post**](UtilMaintenanceApi.md#post_using_post) | **POST** /maintenance | Set current maintenance info
[**post_using_put**](UtilMaintenanceApi.md#post_using_put) | **PUT** /maintenance | Set current maintenance info


# **delete_using_delete1**
> delete_using_delete1()

Remove maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();

eval { 
    $api_instance->delete_using_delete1();
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->delete_using_delete1: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_using_get1**
> Maintenance get_using_get1()

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();

eval { 
    my $result = $api_instance->get_using_get1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->get_using_get1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_using_post**
> post_using_post(maintenance => $maintenance)

Set current maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();
my $maintenance = WWW::SwaggerClient::Object::Maintenance->new(); # Maintenance | The Maintenance Object

eval { 
    $api_instance->post_using_post(maintenance => $maintenance);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->post_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_using_put**
> post_using_put(maintenance => $maintenance)

Set current maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();
my $maintenance = WWW::SwaggerClient::Object::Maintenance->new(); # Maintenance | The Maintenance Object

eval { 
    $api_instance->post_using_put(maintenance => $maintenance);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->post_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


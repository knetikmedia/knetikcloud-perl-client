# WWW::SwaggerClient::UtilMaintenanceApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UtilMaintenanceApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_maintenance**](UtilMaintenanceApi.md#delete_maintenance) | **DELETE** /maintenance | Delete maintenance info
[**get_maintenance**](UtilMaintenanceApi.md#get_maintenance) | **GET** /maintenance | Get current maintenance info
[**update_maintenance**](UtilMaintenanceApi.md#update_maintenance) | **POST** /maintenance | Set current maintenance info
[**update_maintenance1**](UtilMaintenanceApi.md#update_maintenance1) | **PUT** /maintenance | Set current maintenance info


# **delete_maintenance**
> delete_maintenance()

Delete maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();

eval { 
    $api_instance->delete_maintenance();
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->delete_maintenance: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_maintenance**
> Maintenance get_maintenance()

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();

eval { 
    my $result = $api_instance->get_maintenance();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->get_maintenance: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_maintenance**
> update_maintenance(maintenance => $maintenance)

Set current maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();
my $maintenance = WWW::SwaggerClient::Object::Maintenance->new(); # Maintenance | The maintenance object

eval { 
    $api_instance->update_maintenance(maintenance => $maintenance);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->update_maintenance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_maintenance1**
> update_maintenance1(maintenance => $maintenance)

Set current maintenance info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UtilMaintenanceApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UtilMaintenanceApi->new();
my $maintenance = WWW::SwaggerClient::Object::Maintenance->new(); # Maintenance | The maintenance object

eval { 
    $api_instance->update_maintenance1(maintenance => $maintenance);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->update_maintenance1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


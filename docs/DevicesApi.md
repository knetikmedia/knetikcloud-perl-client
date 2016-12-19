# WWW::SwaggerClient::DevicesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::DevicesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_device_using_post**](DevicesApi.md#create_device_using_post) | **POST** /devices | Create a device
[**delete_device_using_delete**](DevicesApi.md#delete_device_using_delete) | **DELETE** /devices/{id} | Delete a device
[**get_device_using_get**](DevicesApi.md#get_device_using_get) | **GET** /devices/{id} | Get a single device
[**get_devices_using_get**](DevicesApi.md#get_devices_using_get) | **GET** /devices | List and search devices
[**update_device_using_put**](DevicesApi.md#update_device_using_put) | **PUT** /devices/{id} | Update a device


# **create_device_using_post**
> DeviceResource create_device_using_post(device => $device)

Create a device

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DevicesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DevicesApi->new();
my $device = WWW::SwaggerClient::Object::DeviceResource->new(); # DeviceResource | device

eval { 
    my $result = $api_instance->create_device_using_post(device => $device);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->create_device_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_device_using_delete**
> delete_device_using_delete(id => $id)

Delete a device

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DevicesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DevicesApi->new();
my $id = 56; # int | id

eval { 
    $api_instance->delete_device_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling DevicesApi->delete_device_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_device_using_get**
> DeviceResource get_device_using_get(id => $id)

Get a single device

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DevicesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DevicesApi->new();
my $id = 56; # int | id

eval { 
    my $result = $api_instance->get_device_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->get_device_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_devices_using_get**
> PageDeviceResource get_devices_using_get(filter_make => $filter_make, filter_model => $filter_model, size => $size, page => $page, order => $order)

List and search devices

Get a list of devices with optional filtering

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DevicesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DevicesApi->new();
my $filter_make = 'filter_make_example'; # string | Filter for devices with specified make
my $filter_model = 'filter_model_example'; # string | Filter for devices with specified model
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_devices_using_get(filter_make => $filter_make, filter_model => $filter_model, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->get_devices_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_make** | **string**| Filter for devices with specified make | [optional] 
 **filter_model** | **string**| Filter for devices with specified model | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageDeviceResource**](PageDeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_device_using_put**
> update_device_using_put(device => $device, id => $id)

Update a device

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::DevicesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::DevicesApi->new();
my $device = WWW::SwaggerClient::Object::DeviceResource->new(); # DeviceResource | device
my $id = 56; # int | id

eval { 
    $api_instance->update_device_using_put(device => $device, id => $id);
};
if ($@) {
    warn "Exception when calling DevicesApi->update_device_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


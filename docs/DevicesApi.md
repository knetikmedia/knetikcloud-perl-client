# KnetikCloud::DevicesApi

## Load the API package
```perl
use KnetikCloud::Object::DevicesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_device_users**](DevicesApi.md#add_device_users) | **POST** /devices/{id}/users | Add device users
[**create_device**](DevicesApi.md#create_device) | **POST** /devices | Create a device
[**delete_device**](DevicesApi.md#delete_device) | **DELETE** /devices/{id} | Delete a device
[**delete_device_user**](DevicesApi.md#delete_device_user) | **DELETE** /devices/{id}/users/{user_id} | Delete a device user
[**delete_device_users**](DevicesApi.md#delete_device_users) | **DELETE** /devices/{id}/users | Delete all device users
[**get_device**](DevicesApi.md#get_device) | **GET** /devices/{id} | Get a single device
[**get_devices**](DevicesApi.md#get_devices) | **GET** /devices | List and search devices
[**update_device**](DevicesApi.md#update_device) | **PUT** /devices/{id} | Update a device


# **add_device_users**
> DeviceResource add_device_users(user_resources => $user_resources, id => $id)

Add device users

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_resources = [KnetikCloud::Object::ARRAY[SimpleUserResource]->new()]; # ARRAY[SimpleUserResource] | userResources
my $id = 56; # int | id

eval { 
    my $result = $api_instance->add_device_users(user_resources => $user_resources, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->add_device_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_resources** | [**ARRAY[SimpleUserResource]**](SimpleUserResource.md)| userResources | 
 **id** | **int**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_device**
> DeviceResource create_device(device => $device)

Create a device

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $device = KnetikCloud::Object::DeviceResource->new(); # DeviceResource | device

eval { 
    my $result = $api_instance->create_device(device => $device);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->create_device: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_device**
> delete_device(id => $id)

Delete a device

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | id

eval { 
    $api_instance->delete_device(id => $id);
};
if ($@) {
    warn "Exception when calling DevicesApi->delete_device: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_device_user**
> delete_device_user(id => $id, user_id => $user_id)

Delete a device user

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the device
my $user_id = 56; # int | The user id of the device user

eval { 
    $api_instance->delete_device_user(id => $id, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling DevicesApi->delete_device_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the device | 
 **user_id** | **int**| The user id of the device user | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_device_users**
> delete_device_users(id => $id, filter_id => $filter_id)

Delete all device users

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the device
my $filter_id = 'filter_id_example'; # string | Filter for device users to delete with a user id in a given comma separated list of ids

eval { 
    $api_instance->delete_device_users(id => $id, filter_id => $filter_id);
};
if ($@) {
    warn "Exception when calling DevicesApi->delete_device_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the device | 
 **filter_id** | **string**| Filter for device users to delete with a user id in a given comma separated list of ids | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_device**
> DeviceResource get_device(id => $id)

Get a single device

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | id

eval { 
    my $result = $api_instance->get_device(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->get_device: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_devices**
> PageResourceDeviceResource get_devices(filter_make => $filter_make, filter_model => $filter_model, size => $size, page => $page, order => $order)

List and search devices

Get a list of devices with optional filtering

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_make = 'filter_make_example'; # string | Filter for devices with specified make
my $filter_model = 'filter_model_example'; # string | Filter for devices with specified model
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_devices(filter_make => $filter_make, filter_model => $filter_model, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->get_devices: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_make** | **string**| Filter for devices with specified make | [optional] 
 **filter_model** | **string**| Filter for devices with specified model | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceDeviceResource**](PageResourceDeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_device**
> DeviceResource update_device(device => $device, id => $id)

Update a device

### Example 
```perl
use Data::Dumper;
use KnetikCloud::DevicesApi;
my $api_instance = KnetikCloud::DevicesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $device = KnetikCloud::Object::DeviceResource->new(); # DeviceResource | device
my $id = 56; # int | id

eval { 
    my $result = $api_instance->update_device(device => $device, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DevicesApi->update_device: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **int**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


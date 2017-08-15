# KnetikCloud::UtilMaintenanceApi

## Load the API package
```perl
use KnetikCloud::Object::UtilMaintenanceApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_maintenance**](UtilMaintenanceApi.md#delete_maintenance) | **DELETE** /maintenance | Delete maintenance info
[**get_maintenance**](UtilMaintenanceApi.md#get_maintenance) | **GET** /maintenance | Get current maintenance info
[**set_maintenance**](UtilMaintenanceApi.md#set_maintenance) | **POST** /maintenance | Set current maintenance info
[**update_maintenance**](UtilMaintenanceApi.md#update_maintenance) | **PUT** /maintenance | Update current maintenance info


# **delete_maintenance**
> delete_maintenance()

Delete maintenance info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilMaintenanceApi;
my $api_instance = KnetikCloud::UtilMaintenanceApi->new(
);


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

No authorization required

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
use KnetikCloud::UtilMaintenanceApi;
my $api_instance = KnetikCloud::UtilMaintenanceApi->new(
);


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

# **set_maintenance**
> set_maintenance(maintenance => $maintenance)

Set current maintenance info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilMaintenanceApi;
my $api_instance = KnetikCloud::UtilMaintenanceApi->new(
);

my $maintenance = KnetikCloud::Object::Maintenance->new(); # Maintenance | The maintenance object

eval { 
    $api_instance->set_maintenance(maintenance => $maintenance);
};
if ($@) {
    warn "Exception when calling UtilMaintenanceApi->set_maintenance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The maintenance object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_maintenance**
> update_maintenance(maintenance => $maintenance)

Update current maintenance info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::UtilMaintenanceApi;
my $api_instance = KnetikCloud::UtilMaintenanceApi->new(
);

my $maintenance = KnetikCloud::Object::Maintenance->new(); # Maintenance | The maintenance object

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


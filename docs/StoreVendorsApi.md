# WWW::SwaggerClient::StoreVendorsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreVendorsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vendor**](StoreVendorsApi.md#create_vendor) | **POST** /vendors | Create a vendor
[**create_vendor_template**](StoreVendorsApi.md#create_vendor_template) | **POST** /vendors/templates | Create a vendor template
[**delete_vendor**](StoreVendorsApi.md#delete_vendor) | **DELETE** /vendors/{id} | Delete a vendor
[**delete_vendor_template**](StoreVendorsApi.md#delete_vendor_template) | **DELETE** /vendors/templates/{id} | Delete a vendor template
[**get_vendor**](StoreVendorsApi.md#get_vendor) | **GET** /vendors/{id} | Get a single vendor
[**get_vendor_template**](StoreVendorsApi.md#get_vendor_template) | **GET** /vendors/templates/{id} | Get a single vendor template
[**get_vendor_templates**](StoreVendorsApi.md#get_vendor_templates) | **GET** /vendors/templates | List and search vendor templates
[**get_vendors**](StoreVendorsApi.md#get_vendors) | **GET** /vendors | List and search vendors
[**update_vendor**](StoreVendorsApi.md#update_vendor) | **PUT** /vendors/{id} | Update a vendor
[**update_vendor_template**](StoreVendorsApi.md#update_vendor_template) | **PUT** /vendors/templates/{id} | Update a vendor template


# **create_vendor**
> VendorResource create_vendor(vendor => $vendor)

Create a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $vendor = WWW::SwaggerClient::Object::VendorResource->new(); # VendorResource | The vendor

eval { 
    my $result = $api_instance->create_vendor(vendor => $vendor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->create_vendor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_vendor_template**
> ItemTemplateResource create_vendor_template(vendor_template_resource => $vendor_template_resource)

Create a vendor template

Vendor Templates define a type of vendor and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $vendor_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The new vendor template

eval { 
    my $result = $api_instance->create_vendor_template(vendor_template_resource => $vendor_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->create_vendor_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new vendor template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_vendor**
> delete_vendor(id => $id)

Delete a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor

eval { 
    $api_instance->delete_vendor(id => $id);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->delete_vendor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_vendor_template**
> delete_vendor_template(id => $id, cascade => $cascade)

Delete a vendor template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_vendor_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->delete_vendor_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendor**
> VendorResource get_vendor(id => $id)

Get a single vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor

eval { 
    my $result = $api_instance->get_vendor(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendor_template**
> ItemTemplateResource get_vendor_template(id => $id)

Get a single vendor template

Vendor Templates define a type of vendor and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_vendor_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendor_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendor_templates**
> PageResourceItemTemplateResource get_vendor_templates(size => $size, page => $page, order => $order)

List and search vendor templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_vendor_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendor_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vendors**
> PageResourceVendorResource get_vendors(filter_name => $filter_name, size => $size, page => $page, order => $order)

List and search vendors

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $filter_name = 'filter_name_example'; # string | Filters vendors by name starting with the text provided in the filter
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_vendors(filter_name => $filter_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->get_vendors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **string**| Filters vendors by name starting with the text provided in the filter | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceVendorResource**](PageResourceVendorResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_vendor**
> VendorResource update_vendor(id => $id, vendor => $vendor)

Update a vendor

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 56; # int | The id of the vendor
my $vendor = WWW::SwaggerClient::Object::VendorResource->new(); # VendorResource | The vendor

eval { 
    my $result = $api_instance->update_vendor(id => $id, vendor => $vendor);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->update_vendor: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the vendor | 
 **vendor** | [**VendorResource**](VendorResource.md)| The vendor | [optional] 

### Return type

[**VendorResource**](VendorResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_vendor_template**
> ItemTemplateResource update_vendor_template(id => $id, vendor_template_resource => $vendor_template_resource)

Update a vendor template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreVendorsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreVendorsApi->new();
my $id = 'id_example'; # string | The id of the template
my $vendor_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The vendor template resource object

eval { 
    my $result = $api_instance->update_vendor_template(id => $id, vendor_template_resource => $vendor_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreVendorsApi->update_vendor_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **vendor_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The vendor template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


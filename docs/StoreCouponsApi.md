# WWW::SwaggerClient::StoreCouponsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreCouponsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_item**](StoreCouponsApi.md#create_coupon_item) | **POST** /store/coupons | Create a coupon item
[**create_coupon_template**](StoreCouponsApi.md#create_coupon_template) | **POST** /store/coupons/templates | Create a coupon template
[**delete_coupon_item**](StoreCouponsApi.md#delete_coupon_item) | **DELETE** /store/coupons/{id} | Delete a coupon item
[**delete_coupon_template**](StoreCouponsApi.md#delete_coupon_template) | **DELETE** /store/coupons/templates/{id} | Delete a coupon template
[**get_coupon_item**](StoreCouponsApi.md#get_coupon_item) | **GET** /store/coupons/{id} | Get a single coupon item
[**get_coupon_template**](StoreCouponsApi.md#get_coupon_template) | **GET** /store/coupons/templates/{id} | Get a single coupon template
[**get_coupon_templates**](StoreCouponsApi.md#get_coupon_templates) | **GET** /store/coupons/templates | List and search coupon templates
[**update_coupon_item**](StoreCouponsApi.md#update_coupon_item) | **PUT** /store/coupons/{id} | Update a coupon item
[**update_coupon_template**](StoreCouponsApi.md#update_coupon_template) | **PUT** /store/coupons/templates/{id} | Update a coupon template


# **create_coupon_item**
> CouponItem create_coupon_item(cascade => $cascade, coupon_item => $coupon_item)

Create a coupon item

SKUs have to be unique in the entire store.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $coupon_item = WWW::SwaggerClient::Object::CouponItem->new(); # CouponItem | The coupon item object

eval { 
    my $result = $api_instance->create_coupon_item(cascade => $cascade, coupon_item => $coupon_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->create_coupon_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_coupon_template**
> ItemTemplateResource create_coupon_template(coupon_template_resource => $coupon_template_resource)

Create a coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $coupon_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The new coupon template

eval { 
    my $result = $api_instance->create_coupon_template(coupon_template_resource => $coupon_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->create_coupon_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new coupon template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_coupon_item**
> delete_coupon_item(id => $id)

Delete a coupon item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 56; # int | The id of the coupon

eval { 
    $api_instance->delete_coupon_item(id => $id);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->delete_coupon_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_coupon_template**
> delete_coupon_template(id => $id, cascade => $cascade)

Delete a coupon template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_coupon_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->delete_coupon_template: $@\n";
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

# **get_coupon_item**
> CouponItem get_coupon_item(id => $id)

Get a single coupon item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 56; # int | The id of the coupon

eval { 
    my $result = $api_instance->get_coupon_item(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->get_coupon_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_coupon_template**
> ItemTemplateResource get_coupon_template(id => $id)

Get a single coupon template

Coupon Templates define a type of coupon and the properties they have.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_coupon_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->get_coupon_template: $@\n";
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

# **get_coupon_templates**
> PageResourceItemTemplateResource get_coupon_templates(size => $size, page => $page, order => $order)

List and search coupon templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_coupon_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->get_coupon_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceItemTemplateResource**](PageResourceItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_coupon_item**
> CouponItem update_coupon_item(id => $id, cascade => $cascade, coupon_item => $coupon_item)

Update a coupon item

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 56; # int | The id of the coupon
my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $coupon_item = WWW::SwaggerClient::Object::CouponItem->new(); # CouponItem | The coupon item object

eval { 
    my $result = $api_instance->update_coupon_item(id => $id, cascade => $cascade, coupon_item => $coupon_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->update_coupon_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the coupon | 
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **coupon_item** | [**CouponItem**](CouponItem.md)| The coupon item object | [optional] 

### Return type

[**CouponItem**](CouponItem.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_coupon_template**
> ItemTemplateResource update_coupon_template(id => $id, coupon_template_resource => $coupon_template_resource)

Update a coupon template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreCouponsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreCouponsApi->new();
my $id = 'id_example'; # string | The id of the template
my $coupon_template_resource = WWW::SwaggerClient::Object::ItemTemplateResource->new(); # ItemTemplateResource | The coupon template resource object

eval { 
    my $result = $api_instance->update_coupon_template(id => $id, coupon_template_resource => $coupon_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreCouponsApi->update_coupon_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **coupon_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The coupon template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


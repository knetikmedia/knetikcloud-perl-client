# KnetikCloud::StoreBundlesApi

## Load the API package
```perl
use KnetikCloud::Object::StoreBundlesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bundle_item**](StoreBundlesApi.md#create_bundle_item) | **POST** /store/bundles | Create a bundle item
[**create_bundle_template**](StoreBundlesApi.md#create_bundle_template) | **POST** /store/bundles/templates | Create a bundle template
[**delete_bundle_item**](StoreBundlesApi.md#delete_bundle_item) | **DELETE** /store/bundles/{id} | Delete a bundle item
[**delete_bundle_template**](StoreBundlesApi.md#delete_bundle_template) | **DELETE** /store/bundles/templates/{id} | Delete a bundle template
[**get_bundle_item**](StoreBundlesApi.md#get_bundle_item) | **GET** /store/bundles/{id} | Get a single bundle item
[**get_bundle_template**](StoreBundlesApi.md#get_bundle_template) | **GET** /store/bundles/templates/{id} | Get a single bundle template
[**get_bundle_templates**](StoreBundlesApi.md#get_bundle_templates) | **GET** /store/bundles/templates | List and search bundle templates
[**update_bundle_item**](StoreBundlesApi.md#update_bundle_item) | **PUT** /store/bundles/{id} | Update a bundle item
[**update_bundle_template**](StoreBundlesApi.md#update_bundle_template) | **PUT** /store/bundles/templates/{id} | Update a bundle template


# **create_bundle_item**
> BundleItem create_bundle_item(cascade => $cascade, bundle_item => $bundle_item)

Create a bundle item

The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $bundle_item = KnetikCloud::Object::BundleItem->new(); # BundleItem | The bundle item object

eval { 
    my $result = $api_instance->create_bundle_item(cascade => $cascade, bundle_item => $bundle_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->create_bundle_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_bundle_template**
> ItemTemplateResource create_bundle_template(bundle_template_resource => $bundle_template_resource)

Create a bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $bundle_template_resource = KnetikCloud::Object::ItemTemplateResource->new(); # ItemTemplateResource | The new bundle template

eval { 
    my $result = $api_instance->create_bundle_template(bundle_template_resource => $bundle_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->create_bundle_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The new bundle template | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bundle_item**
> delete_bundle_item(id => $id)

Delete a bundle item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the bundle

eval { 
    $api_instance->delete_bundle_item(id => $id);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->delete_bundle_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bundle_template**
> delete_bundle_template(id => $id, cascade => $cascade)

Delete a bundle template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | force deleting the template if it's attached to other objects, cascade = detach

eval { 
    $api_instance->delete_bundle_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->delete_bundle_template: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bundle_item**
> BundleItem get_bundle_item(id => $id)

Get a single bundle item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(
);

my $id = 56; # int | The id of the bundle

eval { 
    my $result = $api_instance->get_bundle_item(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_bundle_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bundle_template**
> ItemTemplateResource get_bundle_template(id => $id)

Get a single bundle template

Bundle Templates define a type of bundle and the properties they have.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_bundle_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_bundle_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bundle_templates**
> PageResourceItemTemplateResource get_bundle_templates(size => $size, page => $page, order => $order)

List and search bundle templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_bundle_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->get_bundle_templates: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bundle_item**
> BundleItem update_bundle_item(id => $id, cascade => $cascade, bundle_item => $bundle_item)

Update a bundle item

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the bundle
my $cascade = 1; # boolean | Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
my $bundle_item = KnetikCloud::Object::BundleItem->new(); # BundleItem | The bundle item object

eval { 
    my $result = $api_instance->update_bundle_item(id => $id, cascade => $cascade, bundle_item => $bundle_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->update_bundle_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the bundle | 
 **cascade** | **boolean**| Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. | [optional] [default to false]
 **bundle_item** | [**BundleItem**](BundleItem.md)| The bundle item object | [optional] 

### Return type

[**BundleItem**](BundleItem.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bundle_template**
> ItemTemplateResource update_bundle_template(id => $id, bundle_template_resource => $bundle_template_resource)

Update a bundle template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::StoreBundlesApi;
my $api_instance = KnetikCloud::StoreBundlesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $bundle_template_resource = KnetikCloud::Object::ItemTemplateResource->new(); # ItemTemplateResource | The bundle template resource object

eval { 
    my $result = $api_instance->update_bundle_template(id => $id, bundle_template_resource => $bundle_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreBundlesApi->update_bundle_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **bundle_template_resource** | [**ItemTemplateResource**](ItemTemplateResource.md)| The bundle template resource object | [optional] 

### Return type

[**ItemTemplateResource**](ItemTemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


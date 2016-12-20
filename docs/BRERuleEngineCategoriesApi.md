# WWW::SwaggerClient::BRERuleEngineCategoriesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineCategoriesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template_using_post1**](BRERuleEngineCategoriesApi.md#create_template_using_post1) | **POST** /bre/categories/templates | Create a BRE category template
[**delete_template_using_delete**](BRERuleEngineCategoriesApi.md#delete_template_using_delete) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**get_categories_using_get**](BRERuleEngineCategoriesApi.md#get_categories_using_get) | **GET** /bre/categories | List categories
[**get_category_using_get**](BRERuleEngineCategoriesApi.md#get_category_using_get) | **GET** /bre/categories/{name} | Get a single category
[**get_template_using_get**](BRERuleEngineCategoriesApi.md#get_template_using_get) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**get_templates_using_get**](BRERuleEngineCategoriesApi.md#get_templates_using_get) | **GET** /bre/categories/templates | List and search BRE category templates
[**update_category_using_put**](BRERuleEngineCategoriesApi.md#update_category_using_put) | **PUT** /bre/categories/{name} | Update a category
[**update_template_using_put1**](BRERuleEngineCategoriesApi.md#update_template_using_put1) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **create_template_using_post1**
> TemplateResource create_template_using_post1(template => $template)

Create a BRE category template

Templates define a type of BRE category and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The category template to create

eval { 
    my $result = $api_instance->create_template_using_post1(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->create_template_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The category template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_template_using_delete**
> delete_template_using_delete(id => $id, cascade => $cascade)

Delete a BRE category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->delete_template_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **cascade** | **string**| The value needed to delete used templates | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_categories_using_get**
> PageResourceBreCategoryResource get_categories_using_get(size => $size, page => $page)

List categories

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_categories_using_get(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_categories_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreCategoryResource**](PageResourceBreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_category_using_get**
> BreCategoryResource get_category_using_get(name => $name)

Get a single category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $name = 'name_example'; # string | The category name

eval { 
    my $result = $api_instance->get_category_using_get(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_category_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The category name | 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_template_using_get**
> TemplateResource get_template_using_get(id => $id)

Get a single BRE category template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_template_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_templates_using_get**
> PageResourceTemplateResource get_templates_using_get(size => $size, page => $page, order => $order)

List and search BRE category templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_category_using_put**
> update_category_using_put(name => $name, category => $category)

Update a category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $name = 'name_example'; # string | The category name
my $category = WWW::SwaggerClient::Object::BreCategoryResource->new(); # BreCategoryResource | The updated BRE category information

eval { 
    $api_instance->update_category_using_put(name => $name, category => $category);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->update_category_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The category name | 
 **category** | [**BreCategoryResource**](BreCategoryResource.md)| The updated BRE category information | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_template_using_put1**
> update_template_using_put1(id => $id, template => $template)

Update a BRE category template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineCategoriesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineCategoriesApi->new();
my $id = 'id_example'; # string | The id of the template
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The updated category template definition

eval { 
    $api_instance->update_template_using_put1(id => $id, template => $template);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->update_template_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated category template definition | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


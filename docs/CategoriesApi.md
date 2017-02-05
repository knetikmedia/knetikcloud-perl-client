# WWW::SwaggerClient::CategoriesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::CategoriesApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category_using_post**](CategoriesApi.md#create_category_using_post) | **POST** /categories | Create a new category
[**create_template_using_post2**](CategoriesApi.md#create_template_using_post2) | **POST** /categories/templates | Create a category template
[**delete_category_using_delete**](CategoriesApi.md#delete_category_using_delete) | **DELETE** /categories/{id} | Delete an existing category
[**delete_template_using_delete1**](CategoriesApi.md#delete_template_using_delete1) | **DELETE** /categories/templates/{id} | Delete a category template
[**get_article_templates_using_get1**](CategoriesApi.md#get_article_templates_using_get1) | **GET** /categories/templates | List and search category templates
[**get_categories_using_get1**](CategoriesApi.md#get_categories_using_get1) | **GET** /categories | List and search categories with optional filters
[**get_category_using_get1**](CategoriesApi.md#get_category_using_get1) | **GET** /categories/{id} | Get a single category
[**get_tags_using_get**](CategoriesApi.md#get_tags_using_get) | **GET** /tags | List all trivia tags in the system
[**get_template_using_get1**](CategoriesApi.md#get_template_using_get1) | **GET** /categories/templates/{id} | Get a single category template
[**update_category_using_put1**](CategoriesApi.md#update_category_using_put1) | **PUT** /categories/{id} | Update an existing category
[**update_template_using_put2**](CategoriesApi.md#update_template_using_put2) | **PUT** /categories/templates/{id} | Update a category template


# **create_category_using_post**
> CategoryResource create_category_using_post(category => $category)

Create a new category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $category = WWW::SwaggerClient::Object::CategoryResource->new(); # CategoryResource | The category to create

eval { 
    my $result = $api_instance->create_category_using_post(category => $category);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->create_category_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_template_using_post2**
> TemplateResource create_template_using_post2(template => $template)

Create a category template

Templates define a type of category and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The template to create

eval { 
    my $result = $api_instance->create_template_using_post2(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->create_template_using_post2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_category_using_delete**
> delete_category_using_delete(id => $id)

Delete an existing category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the category to be deleted

eval { 
    $api_instance->delete_category_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling CategoriesApi->delete_category_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the category to be deleted | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_template_using_delete1**
> delete_template_using_delete1(id => $id, cascade => $cascade)

Delete a category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_template_using_delete1(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CategoriesApi->delete_template_using_delete1: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_article_templates_using_get1**
> PageResourceTemplateResource get_article_templates_using_get1(size => $size, page => $page, order => $order)

List and search category templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_article_templates_using_get1(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_article_templates_using_get1: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_categories_using_get1**
> PageResourceCategoryResource get_categories_using_get1(filter_search => $filter_search, filter_active => $filter_active, size => $size, page => $page, order => $order)

List and search categories with optional filters

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $filter_search = 'filter_search_example'; # string | Filter for categories whose names begin with provided string
my $filter_active = 1; # boolean | Filter for categories that are specifically active or inactive
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_categories_using_get1(filter_search => $filter_search, filter_active => $filter_active, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_categories_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **string**| Filter for categories whose names begin with provided string | [optional] 
 **filter_active** | **boolean**| Filter for categories that are specifically active or inactive | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCategoryResource**](PageResourceCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_category_using_get1**
> CategoryResource get_category_using_get1(id => $id)

Get a single category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the category to retrieve

eval { 
    my $result = $api_instance->get_category_using_get1(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_category_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the category to retrieve | 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_using_get**
> PageResourcestring get_tags_using_get(size => $size, page => $page)

List all trivia tags in the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_tags_using_get(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_tags_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourcestring**](PageResourcestring.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_template_using_get1**
> TemplateResource get_template_using_get1(id => $id)

Get a single category template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_template_using_get1(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_template_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_category_using_put1**
> update_category_using_put1(id => $id, category => $category)

Update an existing category

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the category
my $category = WWW::SwaggerClient::Object::CategoryResource->new(); # CategoryResource | The category to update

eval { 
    $api_instance->update_category_using_put1(id => $id, category => $category);
};
if ($@) {
    warn "Exception when calling CategoriesApi->update_category_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_template_using_put2**
> update_template_using_put2(id => $id, template => $template)

Update a category template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CategoriesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CategoriesApi->new();
my $id = 'id_example'; # string | The id of the template
my $template = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The updated template information

eval { 
    $api_instance->update_template_using_put2(id => $id, template => $template);
};
if ($@) {
    warn "Exception when calling CategoriesApi->update_template_using_put2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


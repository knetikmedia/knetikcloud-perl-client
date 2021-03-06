# KnetikCloud::CategoriesApi

## Load the API package
```perl
use KnetikCloud::Object::CategoriesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category**](CategoriesApi.md#create_category) | **POST** /categories | Create a new category
[**create_category_template**](CategoriesApi.md#create_category_template) | **POST** /categories/templates | Create a category template
[**delete_category**](CategoriesApi.md#delete_category) | **DELETE** /categories/{id} | Delete an existing category
[**delete_category_template**](CategoriesApi.md#delete_category_template) | **DELETE** /categories/templates/{id} | Delete a category template
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /categories | List and search categories with optional filters
[**get_category**](CategoriesApi.md#get_category) | **GET** /categories/{id} | Get a single category
[**get_category_template**](CategoriesApi.md#get_category_template) | **GET** /categories/templates/{id} | Get a single category template
[**get_category_templates**](CategoriesApi.md#get_category_templates) | **GET** /categories/templates | List and search category templates
[**get_tags**](CategoriesApi.md#get_tags) | **GET** /tags | List all trivia tags in the system
[**update_category**](CategoriesApi.md#update_category) | **PUT** /categories/{id} | Update an existing category
[**update_category_template**](CategoriesApi.md#update_category_template) | **PUT** /categories/templates/{id} | Update a category template


# **create_category**
> CategoryResource create_category(category => $category)

Create a new category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $category = KnetikCloud::Object::CategoryResource->new(); # CategoryResource | The category to create

eval { 
    my $result = $api_instance->create_category(category => $category);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->create_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**CategoryResource**](CategoryResource.md)| The category to create | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_category_template**
> TemplateResource create_category_template(template => $template)

Create a category template

Templates define a type of category and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The template to create

eval { 
    my $result = $api_instance->create_category_template(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->create_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_category**
> delete_category(id => $id)

Delete an existing category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the category to be deleted

eval { 
    $api_instance->delete_category(id => $id);
};
if ($@) {
    warn "Exception when calling CategoriesApi->delete_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the category to be deleted | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_category_template**
> delete_category_template(id => $id, cascade => $cascade)

Delete a category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_category_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CategoriesApi->delete_category_template: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_categories**
> PageResourceCategoryResource get_categories(filter_search => $filter_search, filter_active => $filter_active, size => $size, page => $page, order => $order)

List and search categories with optional filters

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(
);

my $filter_search = 'filter_search_example'; # string | Filter for categories whose names begin with provided string
my $filter_active = 1; # boolean | Filter for categories that are specifically active or inactive
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_categories(filter_search => $filter_search, filter_active => $filter_active, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_categories: $@\n";
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

# **get_category**
> CategoryResource get_category(id => $id)

Get a single category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(
);

my $id = 'id_example'; # string | The id of the category to retrieve

eval { 
    my $result = $api_instance->get_category(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_category: $@\n";
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

# **get_category_template**
> TemplateResource get_category_template(id => $id)

Get a single category template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_category_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_category_templates**
> PageResourceTemplateResource get_category_templates(size => $size, page => $page, order => $order)

List and search category templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_category_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_category_templates: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags**
> PageResourcestring get_tags(size => $size, page => $page)

List all trivia tags in the system

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_tags(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->get_tags: $@\n";
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

# **update_category**
> CategoryResource update_category(id => $id, category => $category)

Update an existing category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the category
my $category = KnetikCloud::Object::CategoryResource->new(); # CategoryResource | The category to update

eval { 
    my $result = $api_instance->update_category(id => $id, category => $category);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->update_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the category | 
 **category** | [**CategoryResource**](CategoryResource.md)| The category to update | [optional] 

### Return type

[**CategoryResource**](CategoryResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_category_template**
> TemplateResource update_category_template(id => $id, template => $template)

Update a category template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::CategoriesApi;
my $api_instance = KnetikCloud::CategoriesApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The updated template information

eval { 
    my $result = $api_instance->update_category_template(id => $id, template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CategoriesApi->update_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated template information | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


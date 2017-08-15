# KnetikCloud::BRERuleEngineCategoriesApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineCategoriesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_category_template**](BRERuleEngineCategoriesApi.md#create_bre_category_template) | **POST** /bre/categories/templates | Create a BRE category template
[**delete_bre_category_template**](BRERuleEngineCategoriesApi.md#delete_bre_category_template) | **DELETE** /bre/categories/templates/{id} | Delete a BRE category template
[**get_bre_categories**](BRERuleEngineCategoriesApi.md#get_bre_categories) | **GET** /bre/categories | List categories
[**get_bre_category**](BRERuleEngineCategoriesApi.md#get_bre_category) | **GET** /bre/categories/{name} | Get a single category
[**get_bre_category_template**](BRERuleEngineCategoriesApi.md#get_bre_category_template) | **GET** /bre/categories/templates/{id} | Get a single BRE category template
[**get_bre_category_templates**](BRERuleEngineCategoriesApi.md#get_bre_category_templates) | **GET** /bre/categories/templates | List and search BRE category templates
[**update_bre_category**](BRERuleEngineCategoriesApi.md#update_bre_category) | **PUT** /bre/categories/{name} | Update a category
[**update_bre_category_template**](BRERuleEngineCategoriesApi.md#update_bre_category_template) | **PUT** /bre/categories/templates/{id} | Update a BRE category template


# **create_bre_category_template**
> TemplateResource create_bre_category_template(template => $template)

Create a BRE category template

Templates define a type of BRE category and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The category template to create

eval { 
    my $result = $api_instance->create_bre_category_template(template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->create_bre_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**TemplateResource**](TemplateResource.md)| The category template to create | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bre_category_template**
> delete_bre_category_template(id => $id, cascade => $cascade)

Delete a BRE category template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_bre_category_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->delete_bre_category_template: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_categories**
> PageResourceBreCategoryResource get_bre_categories(size => $size, page => $page)

List categories

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_bre_categories(size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_bre_categories: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_category**
> BreCategoryResource get_bre_category(name => $name)

Get a single category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $name = 'name_example'; # string | The category name

eval { 
    my $result = $api_instance->get_bre_category(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_bre_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The category name | 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_category_template**
> TemplateResource get_bre_category_template(id => $id)

Get a single BRE category template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_bre_category_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_bre_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_category_templates**
> PageResourceTemplateResource get_bre_category_templates(size => $size, page => $page, order => $order)

List and search BRE category templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_bre_category_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->get_bre_category_templates: $@\n";
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bre_category**
> BreCategoryResource update_bre_category(name => $name, category => $category)

Update a category

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $name = 'name_example'; # string | The category name
my $category = KnetikCloud::Object::BreCategoryResource->new(); # BreCategoryResource | The updated BRE category information

eval { 
    my $result = $api_instance->update_bre_category(name => $name, category => $category);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->update_bre_category: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The category name | 
 **category** | [**BreCategoryResource**](BreCategoryResource.md)| The updated BRE category information | [optional] 

### Return type

[**BreCategoryResource**](BreCategoryResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bre_category_template**
> TemplateResource update_bre_category_template(id => $id, template => $template)

Update a BRE category template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineCategoriesApi;
my $api_instance = KnetikCloud::BRERuleEngineCategoriesApi->new(
);

my $id = 'id_example'; # string | The id of the template
my $template = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The updated category template definition

eval { 
    my $result = $api_instance->update_bre_category_template(id => $id, template => $template);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineCategoriesApi->update_bre_category_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **template** | [**TemplateResource**](TemplateResource.md)| The updated category template definition | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


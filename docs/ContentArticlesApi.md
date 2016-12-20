# WWW::SwaggerClient::ContentArticlesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ContentArticlesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_article_template_using_post**](ContentArticlesApi.md#create_article_template_using_post) | **POST** /content/articles/templates | Create an article template
[**create_article_using_post**](ContentArticlesApi.md#create_article_using_post) | **POST** /content/articles | Create a new article
[**delete_article_template_using_delete**](ContentArticlesApi.md#delete_article_template_using_delete) | **DELETE** /content/articles/templates/{id} | Delete an article template
[**delete_article_using_delete**](ContentArticlesApi.md#delete_article_using_delete) | **DELETE** /content/articles/{id} | Delete an existing article
[**get_article_template_using_get**](ContentArticlesApi.md#get_article_template_using_get) | **GET** /content/articles/templates/{id} | Get a single article template
[**get_article_templates_using_get**](ContentArticlesApi.md#get_article_templates_using_get) | **GET** /content/articles/templates | List and search article templates
[**get_article_using_get**](ContentArticlesApi.md#get_article_using_get) | **GET** /content/articles/{id} | Get a single article
[**get_articles_using_get**](ContentArticlesApi.md#get_articles_using_get) | **GET** /content/articles | List and search articles
[**update_article_template_using_put**](ContentArticlesApi.md#update_article_template_using_put) | **PUT** /content/articles/templates/{id} | Update an article template
[**update_article_using_put**](ContentArticlesApi.md#update_article_using_put) | **PUT** /content/articles/{id} | Update an existing article


# **create_article_template_using_post**
> TemplateResource create_article_template_using_post(article_template_resource => $article_template_resource)

Create an article template

Article Templates define a type of article and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $article_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The article template resource object

eval { 
    my $result = $api_instance->create_article_template_using_post(article_template_resource => $article_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->create_article_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_template_resource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_article_using_post**
> ArticleResource create_article_using_post(article_resource => $article_resource)

Create a new article

Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $article_resource = WWW::SwaggerClient::Object::ArticleResource->new(); # ArticleResource | The new article

eval { 
    my $result = $api_instance->create_article_using_post(article_resource => $article_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->create_article_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_resource** | [**ArticleResource**](ArticleResource.md)| The new article | [optional] 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_article_template_using_delete**
> delete_article_template_using_delete(id => $id, cascade => $cascade)

Delete an article template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_article_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->delete_article_template_using_delete: $@\n";
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

# **delete_article_using_delete**
> delete_article_using_delete(id => $id)

Delete an existing article

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The article id

eval { 
    $api_instance->delete_article_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->delete_article_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The article id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_article_template_using_get**
> TemplateResource get_article_template_using_get(id => $id)

Get a single article template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_article_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->get_article_template_using_get: $@\n";
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

# **get_article_templates_using_get**
> PageTemplateResource get_article_templates_using_get(size => $size, page => $page, order => $order)

List and search article templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_article_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->get_article_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_article_using_get**
> ArticleResource get_article_using_get(id => $id)

Get a single article

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The article id

eval { 
    my $result = $api_instance->get_article_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->get_article_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The article id | 

### Return type

[**ArticleResource**](ArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_articles_using_get**
> PageArticleResource get_articles_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_title => $filter_title, size => $size, page => $page, order => $order)

List and search articles

Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $filter_category = 'filter_category_example'; # string | Filter for articles from a specific category by id
my $filter_tagset = 'filter_tagset_example'; # string | Filter for articles with specified tags (separated by comma)
my $filter_title = 'filter_title_example'; # string | Filter for articles whose title contains a string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_articles_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_title => $filter_title, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->get_articles_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **string**| Filter for articles from a specific category by id | [optional] 
 **filter_tagset** | **string**| Filter for articles with specified tags (separated by comma) | [optional] 
 **filter_title** | **string**| Filter for articles whose title contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageArticleResource**](PageArticleResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_article_template_using_put**
> update_article_template_using_put(id => $id, article_template_resource => $article_template_resource)

Update an article template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The id of the template
my $article_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The article template resource object

eval { 
    $api_instance->update_article_template_using_put(id => $id, article_template_resource => $article_template_resource);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->update_article_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **article_template_resource** | [**TemplateResource**](TemplateResource.md)| The article template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_article_using_put**
> update_article_using_put(id => $id, article_resource => $article_resource)

Update an existing article

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentArticlesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentArticlesApi->new();
my $id = 'id_example'; # string | The article id
my $article_resource = WWW::SwaggerClient::Object::ArticleResource->new(); # ArticleResource | The article object

eval { 
    $api_instance->update_article_using_put(id => $id, article_resource => $article_resource);
};
if ($@) {
    warn "Exception when calling ContentArticlesApi->update_article_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The article id | 
 **article_resource** | [**ArticleResource**](ArticleResource.md)| The article object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


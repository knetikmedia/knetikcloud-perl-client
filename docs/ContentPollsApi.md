# WWW::SwaggerClient::ContentPollsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ContentPollsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answer_poll_using_post**](ContentPollsApi.md#answer_poll_using_post) | **POST** /media/polls/{id}/response | Add your vote to a poll
[**create_poll_template_using_post**](ContentPollsApi.md#create_poll_template_using_post) | **POST** /media/polls/templates | Create a poll template
[**create_poll_using_post**](ContentPollsApi.md#create_poll_using_post) | **POST** /media/polls | Create a new poll
[**delete_poll_template_using_delete**](ContentPollsApi.md#delete_poll_template_using_delete) | **DELETE** /media/polls/templates/{id} | Delete a poll template
[**delete_poll_using_delete**](ContentPollsApi.md#delete_poll_using_delete) | **DELETE** /media/polls/{id} | Delete an existing poll
[**get_poll_answer_using_get**](ContentPollsApi.md#get_poll_answer_using_get) | **GET** /media/polls/{id}/response | Get poll answer
[**get_poll_template_using_get**](ContentPollsApi.md#get_poll_template_using_get) | **GET** /media/polls/templates/{id} | Get a single poll template
[**get_poll_templates_using_get**](ContentPollsApi.md#get_poll_templates_using_get) | **GET** /media/polls/templates | List and search poll templates
[**get_poll_using_get**](ContentPollsApi.md#get_poll_using_get) | **GET** /media/polls/{id} | Get a single poll
[**get_polls_using_get**](ContentPollsApi.md#get_polls_using_get) | **GET** /media/polls | List and search polls
[**update_poll_template_using_put**](ContentPollsApi.md#update_poll_template_using_put) | **PUT** /media/polls/templates/{id} | Update a poll template
[**update_poll_using_put**](ContentPollsApi.md#update_poll_using_put) | **PUT** /media/polls/{id} | Update an existing poll


# **answer_poll_using_post**
> PollResponseResource answer_poll_using_post(id => $id, answer_key => $answer_key)

Add your vote to a poll

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The poll id
my $answer_key = WWW::SwaggerClient::Object::string->new(); # string | The answer key

eval { 
    my $result = $api_instance->answer_poll_using_post(id => $id, answer_key => $answer_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->answer_poll_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The poll id | 
 **answer_key** | **string**| The answer key | [optional] 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_poll_template_using_post**
> TemplateResource create_poll_template_using_post(poll_template_resource => $poll_template_resource)

Create a poll template

Poll templates define a type of poll and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $poll_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The poll template resource object

eval { 
    my $result = $api_instance->create_poll_template_using_post(poll_template_resource => $poll_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->create_poll_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poll_template_resource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_poll_using_post**
> PollResource create_poll_using_post(poll_resource => $poll_resource)

Create a new poll

Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $poll_resource = WWW::SwaggerClient::Object::PollResource->new(); # PollResource | The poll object

eval { 
    my $result = $api_instance->create_poll_using_post(poll_resource => $poll_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->create_poll_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poll_resource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

[**PollResource**](PollResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_poll_template_using_delete**
> delete_poll_template_using_delete(id => $id, cascade => $cascade)

Delete a poll template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_poll_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->delete_poll_template_using_delete: $@\n";
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

# **delete_poll_using_delete**
> delete_poll_using_delete(id => $id)

Delete an existing poll

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The poll id

eval { 
    $api_instance->delete_poll_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->delete_poll_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The poll id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poll_answer_using_get**
> PollResponseResource get_poll_answer_using_get(id => $id)

Get poll answer

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The poll id

eval { 
    my $result = $api_instance->get_poll_answer_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->get_poll_answer_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The poll id | 

### Return type

[**PollResponseResource**](PollResponseResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_poll_template_using_get**
> TemplateResource get_poll_template_using_get(id => $id)

Get a single poll template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_poll_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->get_poll_template_using_get: $@\n";
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

# **get_poll_templates_using_get**
> PageResourceTemplateResource get_poll_templates_using_get(size => $size, page => $page, order => $order)

List and search poll templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_poll_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->get_poll_templates_using_get: $@\n";
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

# **get_poll_using_get**
> PollResource get_poll_using_get(id => $id)

Get a single poll

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The poll id

eval { 
    my $result = $api_instance->get_poll_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->get_poll_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The poll id | 

### Return type

[**PollResource**](PollResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_polls_using_get**
> PageResourcePollResource get_polls_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_text => $filter_text, size => $size, page => $page, order => $order)

List and search polls

Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $filter_category = 'filter_category_example'; # string | Filter for polls from a specific category by id
my $filter_tagset = 'filter_tagset_example'; # string | Filter for polls with specified tags (separated by comma)
my $filter_text = 'filter_text_example'; # string | Filter for polls whose text contains a string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_polls_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_text => $filter_text, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->get_polls_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_category** | **string**| Filter for polls from a specific category by id | [optional] 
 **filter_tagset** | **string**| Filter for polls with specified tags (separated by comma) | [optional] 
 **filter_text** | **string**| Filter for polls whose text contains a string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourcePollResource**](PageResourcePollResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_poll_template_using_put**
> update_poll_template_using_put(id => $id, poll_template_resource => $poll_template_resource)

Update a poll template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The id of the template
my $poll_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The poll template resource object

eval { 
    $api_instance->update_poll_template_using_put(id => $id, poll_template_resource => $poll_template_resource);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->update_poll_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **poll_template_resource** | [**TemplateResource**](TemplateResource.md)| The poll template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_poll_using_put**
> update_poll_using_put(id => $id, poll_resource => $poll_resource)

Update an existing poll

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentPollsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentPollsApi->new();
my $id = 'id_example'; # string | The poll id
my $poll_resource = WWW::SwaggerClient::Object::PollResource->new(); # PollResource | The poll object

eval { 
    $api_instance->update_poll_using_put(id => $id, poll_resource => $poll_resource);
};
if ($@) {
    warn "Exception when calling ContentPollsApi->update_poll_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The poll id | 
 **poll_resource** | [**PollResource**](PollResource.md)| The poll object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

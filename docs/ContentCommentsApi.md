# WWW::SwaggerClient::ContentCommentsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ContentCommentsApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](ContentCommentsApi.md#add_comment) | **POST** /comments | Add a new comment
[**delete_comment**](ContentCommentsApi.md#delete_comment) | **DELETE** /comments/{id} | Delete a comment
[**get_comment**](ContentCommentsApi.md#get_comment) | **GET** /comments/{id} | Return a comment
[**get_comments**](ContentCommentsApi.md#get_comments) | **GET** /comments | Returns a page of comments
[**search_comments**](ContentCommentsApi.md#search_comments) | **POST** /comments/search | Search the comment index
[**update_comment**](ContentCommentsApi.md#update_comment) | **PUT** /comments/{id}/content | Update a comment


# **add_comment**
> CommentResource add_comment(comment_resource => $comment_resource)

Add a new comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $comment_resource = WWW::SwaggerClient::Object::CommentResource->new(); # CommentResource | The comment to be added

eval { 
    my $result = $api_instance->add_comment(comment_resource => $comment_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->add_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_resource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_comment**
> delete_comment(id => $id)

Delete a comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id

eval { 
    $api_instance->delete_comment(id => $id);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->delete_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comment**
> CommentResource get_comment(id => $id)

Return a comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id

eval { 
    my $result = $api_instance->get_comment(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->get_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comments**
> PageResourceCommentResource get_comments(context => $context, context_id => $context_id, size => $size, page => $page)

Returns a page of comments

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $context = 'context_example'; # string | Get comments by context type
my $context_id = 56; # int | Get comments by context id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_comments(context => $context, context_id => $context_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->get_comments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **string**| Get comments by context type | 
 **context_id** | **int**| Get comments by context id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceCommentResource**](PageResourceCommentResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_comments**
> CommentSearch search_comments(query => $query, size => $size, page => $page)

Search the comment index

The body is an ElasticSearch query json. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html'>documentation</a> for details on the format and search options

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $query = WWW::SwaggerClient::Object::object->new(); # object | The search query
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->search_comments(query => $query, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->search_comments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **object**| The search query | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**CommentSearch**](CommentSearch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_comment**
> update_comment(id => $id, content => $content)

Update a comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id
my $content = WWW::SwaggerClient::Object::string->new(); # string | The comment content

eval { 
    $api_instance->update_comment(id => $id, content => $content);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->update_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 
 **content** | **string**| The comment content | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# WWW::SwaggerClient::ContentCommentsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ContentCommentsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment_using_post**](ContentCommentsApi.md#add_comment_using_post) | **POST** /comments | Add a new comment
[**delete_comment_using_delete**](ContentCommentsApi.md#delete_comment_using_delete) | **DELETE** /comments/{id} | Delete a comment
[**get_comment_using_get**](ContentCommentsApi.md#get_comment_using_get) | **GET** /comments/{id} | Returns a comment by comment id
[**get_comments_using_get**](ContentCommentsApi.md#get_comments_using_get) | **GET** /comments | Returns a page of comments
[**search_comments_using_post**](ContentCommentsApi.md#search_comments_using_post) | **POST** /comments/search | Search the comment index
[**update_comment_using_put**](ContentCommentsApi.md#update_comment_using_put) | **PUT** /comments/{id}/content | Update comment content


# **add_comment_using_post**
> CommentResource add_comment_using_post(comment_resource => $comment_resource)

Add a new comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $comment_resource = WWW::SwaggerClient::Object::CommentResource->new(); # CommentResource | The comment to be added

eval { 
    my $result = $api_instance->add_comment_using_post(comment_resource => $comment_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->add_comment_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment_resource** | [**CommentResource**](CommentResource.md)| The comment to be added | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_comment_using_delete**
> delete_comment_using_delete(id => $id)

Delete a comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id

eval { 
    $api_instance->delete_comment_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->delete_comment_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comment_using_get**
> CommentResource get_comment_using_get(id => $id)

Returns a comment by comment id

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id

eval { 
    my $result = $api_instance->get_comment_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->get_comment_using_get: $@\n";
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

# **get_comments_using_get**
> PageResourceCommentResource get_comments_using_get(context => $context, context_id => $context_id, size => $size, page => $page)

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
    my $result = $api_instance->get_comments_using_get(context => $context, context_id => $context_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->get_comments_using_get: $@\n";
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

# **search_comments_using_post**
> CommentSearch search_comments_using_post(query => $query, size => $size, page => $page)

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
    my $result = $api_instance->search_comments_using_post(query => $query, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->search_comments_using_post: $@\n";
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

# **update_comment_using_put**
> update_comment_using_put(id => $id, content => $content)

Update comment content

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::ContentCommentsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::ContentCommentsApi->new();
my $id = 789; # int | The comment id
my $content = WWW::SwaggerClient::Object::string->new(); # string | The comment content

eval { 
    $api_instance->update_comment_using_put(id => $id, content => $content);
};
if ($@) {
    warn "Exception when calling ContentCommentsApi->update_comment_using_put: $@\n";
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

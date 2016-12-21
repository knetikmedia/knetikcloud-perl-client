# WWW::SwaggerClient::MediaVideosApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::MediaVideosApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment_using_post1**](MediaVideosApi.md#add_comment_using_post1) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**add_contributor_using_post**](MediaVideosApi.md#add_contributor_using_post) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**add_disposition_using_post1**](MediaVideosApi.md#add_disposition_using_post1) | **POST** /media/videos/{video_id}/dispositions | Add a new Video disposition
[**add_flag_using_post**](MediaVideosApi.md#add_flag_using_post) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**add_related_using_post**](MediaVideosApi.md#add_related_using_post) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**add_video_using_post**](MediaVideosApi.md#add_video_using_post) | **POST** /media/videos | Adds a new video in the system
[**add_whitelist_using_post**](MediaVideosApi.md#add_whitelist_using_post) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**delete_comment_using_delete1**](MediaVideosApi.md#delete_comment_using_delete1) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**delete_disposition_using_delete1**](MediaVideosApi.md#delete_disposition_using_delete1) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video comment
[**delete_flag_using_delete**](MediaVideosApi.md#delete_flag_using_delete) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**delete_relationship_using_delete1**](MediaVideosApi.md#delete_relationship_using_delete1) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**delete_video_using_delete**](MediaVideosApi.md#delete_video_using_delete) | **DELETE** /media/videos/{id} | Removes a video from the system if no resources are attached to it
[**get_comments_using_get1**](MediaVideosApi.md#get_comments_using_get1) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**get_dispositions_using_get1**](MediaVideosApi.md#get_dispositions_using_get1) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**get_related_using_get**](MediaVideosApi.md#get_related_using_get) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**get_user_videos_using_get**](MediaVideosApi.md#get_user_videos_using_get) | **GET** /users/{user_id}/videos | Get user videos
[**get_video_using_get**](MediaVideosApi.md#get_video_using_get) | **GET** /media/videos/{id} | Loads a specific video details
[**remove_contributor_using_delete**](MediaVideosApi.md#remove_contributor_using_delete) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**remove_whitelist_using_delete**](MediaVideosApi.md#remove_whitelist_using_delete) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**search_videos_using_get**](MediaVideosApi.md#search_videos_using_get) | **GET** /media/videos | Search videos using the documented filters
[**update_comment_using_put1**](MediaVideosApi.md#update_comment_using_put1) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update video comment content 
[**update_relationship_using_put1**](MediaVideosApi.md#update_relationship_using_put1) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**update_video_using_put**](MediaVideosApi.md#update_video_using_put) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**view_video_using_post**](MediaVideosApi.md#view_video_using_post) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **add_comment_using_post1**
> CommentResource add_comment_using_post1(video_id => $video_id, comment_resource => $comment_resource)

Add a new video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id 
my $comment_resource = WWW::SwaggerClient::Object::CommentResource->new(); # CommentResource | The comment object

eval { 
    my $result = $api_instance->add_comment_using_post1(video_id => $video_id, comment_resource => $comment_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_comment_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id  | 
 **comment_resource** | [**CommentResource**](CommentResource.md)| The comment object | [optional] 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_contributor_using_post**
> add_contributor_using_post(video_id => $video_id, contribution_resource => $contribution_resource)

Adds a contributor to a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $contribution_resource = WWW::SwaggerClient::Object::ContributionResource->new(); # ContributionResource | The contribution object

eval { 
    $api_instance->add_contributor_using_post(video_id => $video_id, contribution_resource => $contribution_resource);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_contributor_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **contribution_resource** | [**ContributionResource**](ContributionResource.md)| The contribution object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_disposition_using_post1**
> DispositionResource add_disposition_using_post1(video_id => $video_id, disposition_resource => $disposition_resource)

Add a new Video disposition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id
my $disposition_resource = WWW::SwaggerClient::Object::DispositionResource->new(); # DispositionResource | The disposition object

eval { 
    my $result = $api_instance->add_disposition_using_post1(video_id => $video_id, disposition_resource => $disposition_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_disposition_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **disposition_resource** | [**DispositionResource**](DispositionResource.md)| The disposition object | [optional] 

### Return type

[**DispositionResource**](DispositionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_flag_using_post**
> add_flag_using_post(video_id => $video_id, reason => $reason)

Add a new flag

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $reason = WWW::SwaggerClient::Object::string->new(); # string | The flag reason

eval { 
    $api_instance->add_flag_using_post(video_id => $video_id, reason => $reason);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_flag_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **reason** | **string**| The flag reason | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_related_using_post**
> VideoRelationshipResource add_related_using_post(video_id => $video_id, video_relationship_resource => $video_relationship_resource)

Adds one or more existing videos as related to this one

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $video_relationship_resource = WWW::SwaggerClient::Object::VideoRelationshipResource->new(); # VideoRelationshipResource | The video relationship object 

eval { 
    my $result = $api_instance->add_related_using_post(video_id => $video_id, video_relationship_resource => $video_relationship_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_related_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **video_relationship_resource** | [**VideoRelationshipResource**](VideoRelationshipResource.md)| The video relationship object  | [optional] 

### Return type

[**VideoRelationshipResource**](VideoRelationshipResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video_using_post**
> VideoResource add_video_using_post(video_resource => $video_resource)

Adds a new video in the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_resource = WWW::SwaggerClient::Object::VideoResource->new(); # VideoResource | The video object

eval { 
    my $result = $api_instance->add_video_using_post(video_resource => $video_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_whitelist_using_post**
> add_whitelist_using_post(id => $id, user_id => $user_id)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id
my $user_id = WWW::SwaggerClient::Object::int->new(); # int | The user id

eval { 
    $api_instance->add_whitelist_using_post(id => $id, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_whitelist_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 
 **user_id** | **int**| The user id | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_comment_using_delete1**
> delete_comment_using_delete1(video_id => $video_id, id => $id)

Delete a video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The comment id

eval { 
    $api_instance->delete_comment_using_delete1(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_comment_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **id** | **int**| The comment id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_disposition_using_delete1**
> delete_disposition_using_delete1(disposition_id => $disposition_id)

Delete a video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $disposition_id = 789; # int | The disposition id

eval { 
    $api_instance->delete_disposition_using_delete1(disposition_id => $disposition_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_disposition_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition_id** | **int**| The disposition id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_flag_using_delete**
> delete_flag_using_delete(video_id => $video_id)

Delete a flag

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id

eval { 
    $api_instance->delete_flag_using_delete(video_id => $video_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_flag_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_relationship_using_delete1**
> delete_relationship_using_delete1(video_id => $video_id, id => $id)

Delete a video's relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The relationship id

eval { 
    $api_instance->delete_relationship_using_delete1(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_relationship_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **id** | **int**| The relationship id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video_using_delete**
> delete_video_using_delete(id => $id)

Removes a video from the system if no resources are attached to it

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    $api_instance->delete_video_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comments_using_get1**
> PageResourceCommentResource get_comments_using_get1(video_id => $video_id, size => $size, page => $page)

Returns a page of comments for a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_comments_using_get1(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_comments_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
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

# **get_dispositions_using_get1**
> PageResourceDispositionResource get_dispositions_using_get1(video_id => $video_id, size => $size, page => $page)

Returns a page of dispositions for a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_dispositions_using_get1(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_dispositions_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceDispositionResource**](PageResourceDispositionResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_related_using_get**
> PageResourceVideoRelationshipResource get_related_using_get(video_id => $video_id, size => $size, page => $page)

Returns a page of video relationships

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_related_using_get(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_related_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceVideoRelationshipResource**](PageResourceVideoRelationshipResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_videos_using_get**
> PageResourceVideoResource get_user_videos_using_get(user_id => $user_id, exclude_flagged => $exclude_flagged, size => $size, page => $page)

Get user videos

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $user_id = 56; # int | The user id
my $exclude_flagged = 1; # boolean | Skip videos that have been flagged by the current user
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_videos_using_get(user_id => $user_id, exclude_flagged => $exclude_flagged, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_user_videos_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The user id | 
 **exclude_flagged** | **boolean**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceVideoResource**](PageResourceVideoResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_video_using_get**
> VideoResource get_video_using_get(id => $id)

Loads a specific video details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    my $result = $api_instance->get_video_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_video_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_contributor_using_delete**
> remove_contributor_using_delete(video_id => $video_id, id => $id)

Removes a contributor from a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 56; # int | The contributor id

eval { 
    $api_instance->remove_contributor_using_delete(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->remove_contributor_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **id** | **int**| The contributor id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_whitelist_using_delete**
> remove_whitelist_using_delete(video_id => $video_id, id => $id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 56; # int | The user id

eval { 
    $api_instance->remove_whitelist_using_delete(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->remove_whitelist_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **id** | **int**| The user id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_videos_using_get**
> PageResourceVideoResource search_videos_using_get(exclude_flagged => $exclude_flagged, filter_videos_by_uploader => $filter_videos_by_uploader, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_videos_by_name => $filter_videos_by_name, filter_videos_by_contributor => $filter_videos_by_contributor, filter_videos_by_author => $filter_videos_by_author, filter_has_author => $filter_has_author, filter_has_uploader => $filter_has_uploader, filter_related_to => $filter_related_to, filter_friends => $filter_friends, filter_disposition => $filter_disposition, size => $size, page => $page, order => $order)

Search videos using the documented filters

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $exclude_flagged = 1; # boolean | Skip videos that have been flagged by the current user
my $filter_videos_by_uploader = 'filter_videos_by_uploader_example'; # string | Filter for videos by uploader id
my $filter_category = 'filter_category_example'; # string | Filter for videos from a specific category by id
my $filter_tagset = 'filter_tagset_example'; # string | Filter for videos with specified tags (separated by comma)
my $filter_videos_by_name = 'filter_videos_by_name_example'; # string | Filter for videos which name *STARTS* with the given string
my $filter_videos_by_contributor = 'filter_videos_by_contributor_example'; # string | Filter for videos with contribution from the artist specified by ID
my $filter_videos_by_author = 'filter_videos_by_author_example'; # string | Filter for videos with an artist as author specified by ID
my $filter_has_author = 1; # boolean | Filter for videos that have an author set if true, or that have no author if false
my $filter_has_uploader = 1; # boolean | Filter for videos that have an uploader set if true, or that have no uploader if false
my $filter_related_to = 'filter_related_to_example'; # string | Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well
my $filter_friends = 1; # boolean | Filter for videos uploaded by friends. 'true' for friends of the caller (requires user token) or a user id for a specific user's friends (requires VIDEOS_ADMIN permission)
my $filter_disposition = 'filter_disposition_example'; # string | Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or 'me' for the caller (requires user token for 'me') and DISPOSITION is the name of the disposition. E.G. filter_disposition=123:like or filter_disposition=me:favorite
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->search_videos_using_get(exclude_flagged => $exclude_flagged, filter_videos_by_uploader => $filter_videos_by_uploader, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_videos_by_name => $filter_videos_by_name, filter_videos_by_contributor => $filter_videos_by_contributor, filter_videos_by_author => $filter_videos_by_author, filter_has_author => $filter_has_author, filter_has_uploader => $filter_has_uploader, filter_related_to => $filter_related_to, filter_friends => $filter_friends, filter_disposition => $filter_disposition, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->search_videos_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_flagged** | **boolean**| Skip videos that have been flagged by the current user | [optional] [default to true]
 **filter_videos_by_uploader** | **string**| Filter for videos by uploader id | [optional] 
 **filter_category** | **string**| Filter for videos from a specific category by id | [optional] 
 **filter_tagset** | **string**| Filter for videos with specified tags (separated by comma) | [optional] 
 **filter_videos_by_name** | **string**| Filter for videos which name *STARTS* with the given string | [optional] 
 **filter_videos_by_contributor** | **string**| Filter for videos with contribution from the artist specified by ID | [optional] 
 **filter_videos_by_author** | **string**| Filter for videos with an artist as author specified by ID | [optional] 
 **filter_has_author** | **boolean**| Filter for videos that have an author set if true, or that have no author if false | [optional] 
 **filter_has_uploader** | **boolean**| Filter for videos that have an uploader set if true, or that have no uploader if false | [optional] 
 **filter_related_to** | **string**| Filter for videos that have designated a particular video as the TO of a relationship. Pattern should match VIDEO_ID or VIDEO_ID:DETAILS to match with a specific details string as well | [optional] 
 **filter_friends** | **boolean**| Filter for videos uploaded by friends. &#39;true&#39; for friends of the caller (requires user token) or a user id for a specific user&#39;s friends (requires VIDEOS_ADMIN permission) | [optional] 
 **filter_disposition** | **string**| Filter for videos a given user has a given disposition towards. USER_ID:DISPOSITION where USER_ID is the id of the user who has this disposition or &#39;me&#39; for the caller (requires user token for &#39;me&#39;) and DISPOSITION is the name of the disposition. E.G. filter_disposition&#x3D;123:like or filter_disposition&#x3D;me:favorite | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to author:ASC]

### Return type

[**PageResourceVideoResource**](PageResourceVideoResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_comment_using_put1**
> update_comment_using_put1(video_id => $video_id, id => $id, content => $content)

Update video comment content 

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The comment id
my $content = WWW::SwaggerClient::Object::string->new(); # string | The comment content

eval { 
    $api_instance->update_comment_using_put1(video_id => $video_id, id => $id, content => $content);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_comment_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
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

# **update_relationship_using_put1**
> update_relationship_using_put1(video_id => $video_id, relationship_id => $relationship_id, details => $details)

Update a video's relationship details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $relationship_id = 789; # int | The relationship id
my $details = WWW::SwaggerClient::Object::string->new(); # string | The video relationship details

eval { 
    $api_instance->update_relationship_using_put1(video_id => $video_id, relationship_id => $relationship_id, details => $details);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_relationship_using_put1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **relationship_id** | **int**| The relationship id | 
 **details** | **string**| The video relationship details | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_video_using_put**
> update_video_using_put(id => $id, video_resource => $video_resource)

Modifies a video's details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id
my $video_resource = WWW::SwaggerClient::Object::VideoResource->new(); # VideoResource | The video object

eval { 
    $api_instance->update_video_using_put(id => $id, video_resource => $video_resource);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_video_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **view_video_using_post**
> view_video_using_post(id => $id)

Increment a video's view count

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    $api_instance->view_video_using_post(id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->view_video_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


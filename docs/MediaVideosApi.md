# WWW::SwaggerClient::MediaVideosApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::MediaVideosApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_to_video_whitelist**](MediaVideosApi.md#add_user_to_video_whitelist) | **POST** /media/videos/{id}/whitelist | Adds a user to a video&#39;s whitelist
[**add_video**](MediaVideosApi.md#add_video) | **POST** /media/videos | Adds a new video in the system
[**add_video_comment**](MediaVideosApi.md#add_video_comment) | **POST** /media/videos/{video_id}/comments | Add a new video comment
[**add_video_contributor**](MediaVideosApi.md#add_video_contributor) | **POST** /media/videos/{video_id}/contributors | Adds a contributor to a video
[**add_video_flag**](MediaVideosApi.md#add_video_flag) | **POST** /media/videos/{video_id}/moderation | Add a new flag
[**add_video_relationships**](MediaVideosApi.md#add_video_relationships) | **POST** /media/videos/{video_id}/related | Adds one or more existing videos as related to this one
[**create_video_disposition**](MediaVideosApi.md#create_video_disposition) | **POST** /media/videos/{video_id}/dispositions | Create a video disposition
[**delete_video**](MediaVideosApi.md#delete_video) | **DELETE** /media/videos/{id} | Deletes a video from the system if no resources are attached to it
[**delete_video_comment**](MediaVideosApi.md#delete_video_comment) | **DELETE** /media/videos/{video_id}/comments/{id} | Delete a video comment
[**delete_video_disposition**](MediaVideosApi.md#delete_video_disposition) | **DELETE** /media/videos/{video_id}/dispositions/{disposition_id} | Delete a video disposition
[**delete_video_flag**](MediaVideosApi.md#delete_video_flag) | **DELETE** /media/videos/{video_id}/moderation | Delete a flag
[**delete_video_relationship**](MediaVideosApi.md#delete_video_relationship) | **DELETE** /media/videos/{video_id}/related/{id} | Delete a video&#39;s relationship
[**get_user_videos**](MediaVideosApi.md#get_user_videos) | **GET** /users/{user_id}/videos | Get user videos
[**get_video**](MediaVideosApi.md#get_video) | **GET** /media/videos/{id} | Loads a specific video details
[**get_video_comments**](MediaVideosApi.md#get_video_comments) | **GET** /media/videos/{video_id}/comments | Returns a page of comments for a video
[**get_video_dispositions**](MediaVideosApi.md#get_video_dispositions) | **GET** /media/videos/{video_id}/dispositions | Returns a page of dispositions for a video
[**get_video_relationships**](MediaVideosApi.md#get_video_relationships) | **GET** /media/videos/{video_id}/related | Returns a page of video relationships
[**get_videos**](MediaVideosApi.md#get_videos) | **GET** /media/videos | Search videos using the documented filters
[**remove_user_from_video_whitelist**](MediaVideosApi.md#remove_user_from_video_whitelist) | **DELETE** /media/videos/{video_id}/whitelist/{id} | Removes a user from a video&#39;s whitelist
[**remove_video_contributor**](MediaVideosApi.md#remove_video_contributor) | **DELETE** /media/videos/{video_id}/contributors/{id} | Removes a contributor from a video
[**update_video**](MediaVideosApi.md#update_video) | **PUT** /media/videos/{id} | Modifies a video&#39;s details
[**update_video_comment**](MediaVideosApi.md#update_video_comment) | **PUT** /media/videos/{video_id}/comments/{id}/content | Update a video comment
[**update_video_relationship**](MediaVideosApi.md#update_video_relationship) | **PUT** /media/videos/{video_id}/related/{id}/relationship_details | Update a video&#39;s relationship details
[**view_video**](MediaVideosApi.md#view_video) | **POST** /media/videos/{id}/views | Increment a video&#39;s view count


# **add_user_to_video_whitelist**
> add_user_to_video_whitelist(id => $id, user_id => $user_id)

Adds a user to a video's whitelist

Whitelisted users can view video regardless of privacy setting.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id
my $user_id = WWW::SwaggerClient::Object::int->new(); # int | The user id

eval { 
    $api_instance->add_user_to_video_whitelist(id => $id, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_user_to_video_whitelist: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video**
> VideoResource add_video(video_resource => $video_resource)

Adds a new video in the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_resource = WWW::SwaggerClient::Object::VideoResource->new(); # VideoResource | The video object

eval { 
    my $result = $api_instance->add_video(video_resource => $video_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_resource** | [**VideoResource**](VideoResource.md)| The video object | [optional] 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video_comment**
> CommentResource add_video_comment(video_id => $video_id, comment_resource => $comment_resource)

Add a new video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id 
my $comment_resource = WWW::SwaggerClient::Object::CommentResource->new(); # CommentResource | The comment object

eval { 
    my $result = $api_instance->add_video_comment(video_id => $video_id, comment_resource => $comment_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video_comment: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video_contributor**
> add_video_contributor(video_id => $video_id, contribution_resource => $contribution_resource)

Adds a contributor to a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $contribution_resource = WWW::SwaggerClient::Object::ContributionResource->new(); # ContributionResource | The contribution object

eval { 
    $api_instance->add_video_contributor(video_id => $video_id, contribution_resource => $contribution_resource);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video_contributor: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video_flag**
> FlagResource add_video_flag(video_id => $video_id, reason => $reason)

Add a new flag

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $reason = WWW::SwaggerClient::Object::string->new(); # string | The flag reason

eval { 
    my $result = $api_instance->add_video_flag(video_id => $video_id, reason => $reason);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video_flag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 
 **reason** | **string**| The flag reason | [optional] 

### Return type

[**FlagResource**](FlagResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_video_relationships**
> VideoRelationshipResource add_video_relationships(video_id => $video_id, video_relationship_resource => $video_relationship_resource)

Adds one or more existing videos as related to this one

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $video_relationship_resource = WWW::SwaggerClient::Object::VideoRelationshipResource->new(); # VideoRelationshipResource | The video relationship object 

eval { 
    my $result = $api_instance->add_video_relationships(video_id => $video_id, video_relationship_resource => $video_relationship_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->add_video_relationships: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_video_disposition**
> DispositionResource create_video_disposition(video_id => $video_id, disposition_resource => $disposition_resource)

Create a video disposition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 56; # int | The video id
my $disposition_resource = WWW::SwaggerClient::Object::DispositionResource->new(); # DispositionResource | The disposition object

eval { 
    my $result = $api_instance->create_video_disposition(video_id => $video_id, disposition_resource => $disposition_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->create_video_disposition: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video**
> delete_video(id => $id)

Deletes a video from the system if no resources are attached to it

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    $api_instance->delete_video(id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video_comment**
> delete_video_comment(video_id => $video_id, id => $id)

Delete a video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The comment id

eval { 
    $api_instance->delete_video_comment(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video_comment: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video_disposition**
> delete_video_disposition(disposition_id => $disposition_id)

Delete a video disposition

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $disposition_id = 789; # int | The disposition id

eval { 
    $api_instance->delete_video_disposition(disposition_id => $disposition_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video_disposition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disposition_id** | **int**| The disposition id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video_flag**
> delete_video_flag(video_id => $video_id)

Delete a flag

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id

eval { 
    $api_instance->delete_video_flag(video_id => $video_id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video_flag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **int**| The video id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_video_relationship**
> delete_video_relationship(video_id => $video_id, id => $id)

Delete a video's relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The relationship id

eval { 
    $api_instance->delete_video_relationship(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->delete_video_relationship: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_videos**
> PageResourceVideoResource get_user_videos(user_id => $user_id, exclude_flagged => $exclude_flagged, size => $size, page => $page)

Get user videos

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $user_id = 56; # int | The user id
my $exclude_flagged = 1; # boolean | Skip videos that have been flagged by the current user
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_user_videos(user_id => $user_id, exclude_flagged => $exclude_flagged, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_user_videos: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_video**
> VideoResource get_video(id => $id)

Loads a specific video details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    my $result = $api_instance->get_video(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_video: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The video id | 

### Return type

[**VideoResource**](VideoResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_video_comments**
> PageResourceCommentResource get_video_comments(video_id => $video_id, size => $size, page => $page)

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
    my $result = $api_instance->get_video_comments(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_video_comments: $@\n";
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

# **get_video_dispositions**
> PageResourceDispositionResource get_video_dispositions(video_id => $video_id, size => $size, page => $page)

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
    my $result = $api_instance->get_video_dispositions(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_video_dispositions: $@\n";
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

# **get_video_relationships**
> PageResourceVideoRelationshipResource get_video_relationships(video_id => $video_id, size => $size, page => $page)

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
    my $result = $api_instance->get_video_relationships(video_id => $video_id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_video_relationships: $@\n";
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

# **get_videos**
> PageResourceVideoResource get_videos(exclude_flagged => $exclude_flagged, filter_videos_by_uploader => $filter_videos_by_uploader, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_videos_by_name => $filter_videos_by_name, filter_videos_by_contributor => $filter_videos_by_contributor, filter_videos_by_author => $filter_videos_by_author, filter_has_author => $filter_has_author, filter_has_uploader => $filter_has_uploader, filter_related_to => $filter_related_to, filter_friends => $filter_friends, filter_disposition => $filter_disposition, size => $size, page => $page, order => $order)

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
    my $result = $api_instance->get_videos(exclude_flagged => $exclude_flagged, filter_videos_by_uploader => $filter_videos_by_uploader, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_videos_by_name => $filter_videos_by_name, filter_videos_by_contributor => $filter_videos_by_contributor, filter_videos_by_author => $filter_videos_by_author, filter_has_author => $filter_has_author, filter_has_uploader => $filter_has_uploader, filter_related_to => $filter_related_to, filter_friends => $filter_friends, filter_disposition => $filter_disposition, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->get_videos: $@\n";
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

# **remove_user_from_video_whitelist**
> remove_user_from_video_whitelist(video_id => $video_id, id => $id)

Removes a user from a video's whitelist

Remove the user with the id given in the path from the whitelist of users that can view this video regardless of privacy setting.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 56; # int | The user id

eval { 
    $api_instance->remove_user_from_video_whitelist(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->remove_user_from_video_whitelist: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_video_contributor**
> remove_video_contributor(video_id => $video_id, id => $id)

Removes a contributor from a video

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 56; # int | The contributor id

eval { 
    $api_instance->remove_video_contributor(video_id => $video_id, id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->remove_video_contributor: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_video**
> update_video(id => $id, video_resource => $video_resource)

Modifies a video's details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id
my $video_resource = WWW::SwaggerClient::Object::VideoResource->new(); # VideoResource | The video object

eval { 
    $api_instance->update_video(id => $id, video_resource => $video_resource);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_video: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_video_comment**
> update_video_comment(video_id => $video_id, id => $id, content => $content)

Update a video comment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $id = 789; # int | The comment id
my $content = WWW::SwaggerClient::Object::string->new(); # string | The comment content

eval { 
    $api_instance->update_video_comment(video_id => $video_id, id => $id, content => $content);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_video_comment: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_video_relationship**
> update_video_relationship(video_id => $video_id, relationship_id => $relationship_id, details => $details)

Update a video's relationship details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $video_id = 789; # int | The video id
my $relationship_id = 789; # int | The relationship id
my $details = WWW::SwaggerClient::Object::string->new(); # string | The video relationship details

eval { 
    $api_instance->update_video_relationship(video_id => $video_id, relationship_id => $relationship_id, details => $details);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->update_video_relationship: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **view_video**
> view_video(id => $id)

Increment a video's view count

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MediaVideosApi;

my $api_instance = WWW::SwaggerClient::MediaVideosApi->new();
my $id = 789; # int | The video id

eval { 
    $api_instance->view_video(id => $id);
};
if ($@) {
    warn "Exception when calling MediaVideosApi->view_video: $@\n";
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


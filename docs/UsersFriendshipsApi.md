# WWW::SwaggerClient::UsersFriendshipsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersFriendshipsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_friend_using_post**](UsersFriendshipsApi.md#add_friend_using_post) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**connect_using_token_using_post**](UsersFriendshipsApi.md#connect_using_token_using_post) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**get_friends_using_get**](UsersFriendshipsApi.md#get_friends_using_get) | **GET** /users/{user_id}/friends | Get friends list
[**get_invite_token_using_get**](UsersFriendshipsApi.md#get_invite_token_using_get) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**get_invites_using_get**](UsersFriendshipsApi.md#get_invites_using_get) | **GET** /users/{user_id}/invites | Get pending invites
[**remove_friend_using_delete**](UsersFriendshipsApi.md#remove_friend_using_delete) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **add_friend_using_post**
> add_friend_using_post(user_id => $user_id, id => $id)

Add a friend

As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me' if logged in
my $id = 56; # int | The id of the user to befriend

eval { 
    $api_instance->add_friend_using_post(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->add_friend_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **int**| The id of the user to befriend | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect_using_token_using_post**
> connect_using_token_using_post(user_id => $user_id, token => $token)

Redeem friendship token

Immediately connects the requested user with the user mapped by the provided invite token

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me' if logged in
my $token = WWW::SwaggerClient::Object::string->new(); # string | The invite token

eval { 
    $api_instance->connect_using_token_using_post(user_id => $user_id, token => $token);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->connect_using_token_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; if logged in | 
 **token** | **string**| The invite token | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_friends_using_get**
> PageSimpleUserResource get_friends_using_get(user_id => $user_id, size => $size, page => $page, order => $order)

Get friends list

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me'
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_friends_using_get(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_friends_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageSimpleUserResource**](PageSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invite_token_using_get**
> string get_invite_token_using_get(user_id => $user_id)

Returns the invite token

This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me' if logged in

eval { 
    my $result = $api_instance->get_invite_token_using_get(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_invite_token_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; if logged in | 

### Return type

**string**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invites_using_get**
> PageSimpleUserResource get_invites_using_get(user_id => $user_id, size => $size, page => $page, order => $order)

Get pending invites

Invites that the specified user received

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me'
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_invites_using_get(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_invites_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageSimpleUserResource**](PageSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_friend_using_delete**
> remove_friend_using_delete(user_id => $user_id, id => $id)

Remove or decline a friend

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersFriendshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersFriendshipsApi->new();
my $user_id = 'user_id_example'; # string | The id of the user or 'me' if logged in
my $id = 56; # int | The id of the user to befriend

eval { 
    $api_instance->remove_friend_using_delete(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->remove_friend_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **int**| The id of the user to befriend | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


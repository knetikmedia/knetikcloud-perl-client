# WWW::SwaggerClient::UsersFriendshipsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersFriendshipsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_friend**](UsersFriendshipsApi.md#add_friend) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**get_friends**](UsersFriendshipsApi.md#get_friends) | **GET** /users/{user_id}/friends | Get friends list
[**get_invite_token**](UsersFriendshipsApi.md#get_invite_token) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**get_invites**](UsersFriendshipsApi.md#get_invites) | **GET** /users/{user_id}/invites | Get pending invites
[**redeem_friendship_token**](UsersFriendshipsApi.md#redeem_friendship_token) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**remove_or_decline_friend**](UsersFriendshipsApi.md#remove_or_decline_friend) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **add_friend**
> add_friend(user_id => $user_id, id => $id)

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
    $api_instance->add_friend(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->add_friend: $@\n";
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

# **get_friends**
> PageResourceSimpleUserResource get_friends(user_id => $user_id, size => $size, page => $page, order => $order)

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
    my $result = $api_instance->get_friends(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_friends: $@\n";
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

[**PageResourceSimpleUserResource**](PageResourceSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invite_token**
> string get_invite_token(user_id => $user_id)

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
    my $result = $api_instance->get_invite_token(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_invite_token: $@\n";
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

# **get_invites**
> PageResourceSimpleUserResource get_invites(user_id => $user_id, size => $size, page => $page, order => $order)

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
    my $result = $api_instance->get_invites(user_id => $user_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->get_invites: $@\n";
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

[**PageResourceSimpleUserResource**](PageResourceSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeem_friendship_token**
> redeem_friendship_token(user_id => $user_id, token => $token)

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
    $api_instance->redeem_friendship_token(user_id => $user_id, token => $token);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->redeem_friendship_token: $@\n";
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

# **remove_or_decline_friend**
> remove_or_decline_friend(user_id => $user_id, id => $id)

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
    $api_instance->remove_or_decline_friend(user_id => $user_id, id => $id);
};
if ($@) {
    warn "Exception when calling UsersFriendshipsApi->remove_or_decline_friend: $@\n";
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


# WWW::SwaggerClient::UsersRelationshipsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersRelationshipsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_relationship**](UsersRelationshipsApi.md#create_user_relationship) | **POST** /users/relationships | Create a user relationship
[**delete_user_relationship**](UsersRelationshipsApi.md#delete_user_relationship) | **DELETE** /users/relationships/{id} | Delete a user relationship
[**get_user_relationship**](UsersRelationshipsApi.md#get_user_relationship) | **GET** /users/relationships/{id} | Get a user relationship
[**get_user_relationships**](UsersRelationshipsApi.md#get_user_relationships) | **GET** /users/relationships | Get a list of user relationships
[**update_user_relationship**](UsersRelationshipsApi.md#update_user_relationship) | **PUT** /users/relationships/{id} | Update a user relationship


# **create_user_relationship**
> UserRelationshipResource create_user_relationship(relationship => $relationship)

Create a user relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersRelationshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersRelationshipsApi->new();
my $relationship = WWW::SwaggerClient::Object::UserRelationshipResource->new(); # UserRelationshipResource | The new relationship

eval { 
    my $result = $api_instance->create_user_relationship(relationship => $relationship);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->create_user_relationship: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user_relationship**
> delete_user_relationship(id => $id)

Delete a user relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersRelationshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersRelationshipsApi->new();
my $id = 789; # int | The id of the relationship

eval { 
    $api_instance->delete_user_relationship(id => $id);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->delete_user_relationship: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_relationship**
> UserRelationshipResource get_user_relationship(id => $id)

Get a user relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersRelationshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersRelationshipsApi->new();
my $id = 789; # int | The id of the relationship

eval { 
    my $result = $api_instance->get_user_relationship(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->get_user_relationship: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_relationships**
> PageResourceUserRelationshipResource get_user_relationships()

Get a list of user relationships

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersRelationshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersRelationshipsApi->new();

eval { 
    my $result = $api_instance->get_user_relationships();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->get_user_relationships: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResourceUserRelationshipResource**](PageResourceUserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_relationship**
> UserRelationshipResource update_user_relationship(id => $id, relationship => $relationship)

Update a user relationship

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersRelationshipsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersRelationshipsApi->new();
my $id = 789; # int | The id of the relationship
my $relationship = WWW::SwaggerClient::Object::UserRelationshipResource->new(); # UserRelationshipResource | The new relationship

eval { 
    my $result = $api_instance->update_user_relationship(id => $id, relationship => $relationship);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->update_user_relationship: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the relationship | 
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


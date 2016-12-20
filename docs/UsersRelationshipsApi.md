# WWW::SwaggerClient::UsersRelationshipsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersRelationshipsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_relationship_using_post**](UsersRelationshipsApi.md#add_relationship_using_post) | **POST** /users/relationships | Create a user relationship
[**delete_relationship_using_delete**](UsersRelationshipsApi.md#delete_relationship_using_delete) | **DELETE** /users/relationships/{id} | Delete a user relationship
[**get_relationship_using_get**](UsersRelationshipsApi.md#get_relationship_using_get) | **GET** /users/relationships/{id} | Get a user relationship
[**get_relationships_using_get**](UsersRelationshipsApi.md#get_relationships_using_get) | **GET** /users/relationships | Get a list of user relationships
[**update_relationship_using_put**](UsersRelationshipsApi.md#update_relationship_using_put) | **PUT** /users/relationships/{id} | Update a user relationship


# **add_relationship_using_post**
> UserRelationshipResource add_relationship_using_post(relationship => $relationship)

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
    my $result = $api_instance->add_relationship_using_post(relationship => $relationship);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->add_relationship_using_post: $@\n";
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

# **delete_relationship_using_delete**
> delete_relationship_using_delete(id => $id)

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
    $api_instance->delete_relationship_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->delete_relationship_using_delete: $@\n";
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

# **get_relationship_using_get**
> UserRelationshipResource get_relationship_using_get(id => $id)

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
    my $result = $api_instance->get_relationship_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->get_relationship_using_get: $@\n";
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

# **get_relationships_using_get**
> PageResourceUserRelationshipResource get_relationships_using_get()

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
    my $result = $api_instance->get_relationships_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->get_relationships_using_get: $@\n";
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

# **update_relationship_using_put**
> UserRelationshipResource update_relationship_using_put(id => $id, relationship => $relationship)

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
    my $result = $api_instance->update_relationship_using_put(id => $id, relationship => $relationship);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersRelationshipsApi->update_relationship_using_put: $@\n";
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


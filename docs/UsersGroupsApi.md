# WWW::SwaggerClient::UsersGroupsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersGroupsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group_using_post**](UsersGroupsApi.md#add_group_using_post) | **POST** /users/groups | Adds a new group in the system
[**add_member_using_post**](UsersGroupsApi.md#add_member_using_post) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**create_group_template_using_post**](UsersGroupsApi.md#create_group_template_using_post) | **POST** /users/groups/templates | Create a group template
[**delete_group_template_using_delete**](UsersGroupsApi.md#delete_group_template_using_delete) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**delete_group_using_delete**](UsersGroupsApi.md#delete_group_using_delete) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**delete_group_using_delete1**](UsersGroupsApi.md#delete_group_using_delete1) | **DELETE** /users/groups/{unique_name} | Removes a group from the system IF no resources are attached to it
[**get_group_template_using_get**](UsersGroupsApi.md#get_group_template_using_get) | **GET** /users/groups/templates/{id} | Get a single group template
[**get_group_templates_using_get**](UsersGroupsApi.md#get_group_templates_using_get) | **GET** /users/groups/templates | List and search group templates
[**get_group_using_get**](UsersGroupsApi.md#get_group_using_get) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**search_groups_using_get**](UsersGroupsApi.md#search_groups_using_get) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**search_groups_using_get1**](UsersGroupsApi.md#search_groups_using_get1) | **GET** /users/groups | List and search groups
[**update_group_template_using_put**](UsersGroupsApi.md#update_group_template_using_put) | **PUT** /users/groups/templates/{id} | Update a group template
[**update_group_using_put**](UsersGroupsApi.md#update_group_using_put) | **PUT** /users/groups/{unique_name} | Modifies a group&#39;s details
[**update_member_status_using_put**](UsersGroupsApi.md#update_member_status_using_put) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status


# **add_group_using_post**
> GroupResource add_group_using_post(group_resource => $group_resource)

Adds a new group in the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $group_resource = WWW::SwaggerClient::Object::GroupResource->new(); # GroupResource | The new group

eval { 
    my $result = $api_instance->add_group_using_post(group_resource => $group_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->add_group_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_resource** | [**GroupResource**](GroupResource.md)| The new group | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_member_using_post**
> GroupMemberResource add_member_using_post(unique_name => $unique_name, username => $username)

Adds a new member to the group

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $username = WWW::SwaggerClient::Object::GroupMemberResource->new(); # GroupMemberResource | The username of a user to add to the group

eval { 
    my $result = $api_instance->add_member_using_post(unique_name => $unique_name, username => $username);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->add_member_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **username** | [**GroupMemberResource**](GroupMemberResource.md)| The username of a user to add to the group | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group_template_using_post**
> TemplateResource create_group_template_using_post(group_template_resource => $group_template_resource)

Create a group template

Group Templates define a type of group and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $group_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The group template resource object

eval { 
    my $result = $api_instance->create_group_template_using_post(group_template_resource => $group_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->create_group_template_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_template_using_delete**
> delete_group_template_using_delete(id => $id, cascade => $cascade)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_group_template_using_delete(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->delete_group_template_using_delete: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_using_delete**
> delete_group_using_delete(unique_name => $unique_name, user_id => $user_id)

Removes a user from a group

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $user_id = 56; # int | The id of the user to remove

eval { 
    $api_instance->delete_group_using_delete(unique_name => $unique_name, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->delete_group_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **user_id** | **int**| The id of the user to remove | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_using_delete1**
> delete_group_using_delete1(unique_name => $unique_name)

Removes a group from the system IF no resources are attached to it

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name

eval { 
    $api_instance->delete_group_using_delete1(unique_name => $unique_name);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->delete_group_using_delete1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_template_using_get**
> TemplateResource get_group_template_using_get(id => $id)

Get a single group template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_group_template_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_template_using_get: $@\n";
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_templates_using_get**
> PageTemplateResource get_group_templates_using_get(size => $size, page => $page, order => $order)

List and search group templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_group_templates_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_templates_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageTemplateResource**](PageTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_using_get**
> GroupResource get_group_using_get(unique_name => $unique_name)

Loads a specific group's details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name

eval { 
    my $result = $api_instance->get_group_using_get(unique_name => $unique_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_groups_using_get**
> PageGroupMemberResource search_groups_using_get(unique_name => $unique_name, size => $size, page => $page, order => $order)

Lists members of the group

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->search_groups_using_get(unique_name => $unique_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->search_groups_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageGroupMemberResource**](PageGroupMemberResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_groups_using_get1**
> PageGroupResource search_groups_using_get1(size => $size, page => $page, order => $order)

List and search groups

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->search_groups_using_get1(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->search_groups_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageGroupResource**](PageGroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_template_using_put**
> update_group_template_using_put(id => $id, group_template_resource => $group_template_resource)

Update a group template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template
my $group_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The group template resource object

eval { 
    $api_instance->update_group_template_using_put(id => $id, group_template_resource => $group_template_resource);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_group_template_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_using_put**
> update_group_using_put(unique_name => $unique_name, group_resource => $group_resource)

Modifies a group's details

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $group_resource = WWW::SwaggerClient::Object::GroupResource->new(); # GroupResource | The updated group

eval { 
    $api_instance->update_group_using_put(unique_name => $unique_name, group_resource => $group_resource);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_group_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **group_resource** | [**GroupResource**](GroupResource.md)| The updated group | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_member_status_using_put**
> update_member_status_using_put(unique_name => $unique_name, user_id => $user_id, status => $status)

Change a user's status

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $user_id = 56; # int | The user id of the member to modify
my $status = WWW::SwaggerClient::Object::string->new(); # string | The new status for the user

eval { 
    $api_instance->update_member_status_using_put(unique_name => $unique_name, user_id => $user_id, status => $status);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_member_status_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **user_id** | **int**| The user id of the member to modify | 
 **status** | **string**| The new status for the user | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


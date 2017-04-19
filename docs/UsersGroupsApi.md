# KnetikCloud::UsersGroupsApi

## Load the API package
```perl
use KnetikCloud::Object::UsersGroupsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_member_to_group**](UsersGroupsApi.md#add_member_to_group) | **POST** /users/groups/{unique_name}/members | Adds a new member to the group
[**create_group**](UsersGroupsApi.md#create_group) | **POST** /users/groups | Create a group
[**create_group_template**](UsersGroupsApi.md#create_group_template) | **POST** /users/groups/templates | Create a group template
[**delete_group**](UsersGroupsApi.md#delete_group) | **DELETE** /users/groups/{unique_name} | Removes a group from the system IF no resources are attached to it
[**delete_group_template**](UsersGroupsApi.md#delete_group_template) | **DELETE** /users/groups/templates/{id} | Delete a group template
[**get_group**](UsersGroupsApi.md#get_group) | **GET** /users/groups/{unique_name} | Loads a specific group&#39;s details
[**get_group_member**](UsersGroupsApi.md#get_group_member) | **GET** /users/groups/{unique_name}/members/{user_id} | Get a user from a group
[**get_group_members**](UsersGroupsApi.md#get_group_members) | **GET** /users/groups/{unique_name}/members | Lists members of the group
[**get_group_template**](UsersGroupsApi.md#get_group_template) | **GET** /users/groups/templates/{id} | Get a single group template
[**get_group_templates**](UsersGroupsApi.md#get_group_templates) | **GET** /users/groups/templates | List and search group templates
[**get_groups_for_user**](UsersGroupsApi.md#get_groups_for_user) | **GET** /users/{user_id}/groups | List groups a user is in
[**remove_group_member**](UsersGroupsApi.md#remove_group_member) | **DELETE** /users/groups/{unique_name}/members/{user_id} | Removes a user from a group
[**update_group**](UsersGroupsApi.md#update_group) | **PUT** /users/groups/{unique_name} | Update a group
[**update_group_member_status**](UsersGroupsApi.md#update_group_member_status) | **PUT** /users/groups/{unique_name}/members/{user_id}/status | Change a user&#39;s status
[**update_group_template**](UsersGroupsApi.md#update_group_template) | **PUT** /users/groups/templates/{id} | Update a group template
[**update_groups**](UsersGroupsApi.md#update_groups) | **GET** /users/groups | List and search groups


# **add_member_to_group**
> GroupMemberResource add_member_to_group(unique_name => $unique_name, username => $username)

Adds a new member to the group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $username = KnetikCloud::Object::GroupMemberResource->new(); # GroupMemberResource | The username of a user to add to the group

eval { 
    my $result = $api_instance->add_member_to_group(unique_name => $unique_name, username => $username);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->add_member_to_group: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group**
> GroupResource create_group(group_resource => $group_resource)

Create a group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $group_resource = KnetikCloud::Object::GroupResource->new(); # GroupResource | The new group

eval { 
    my $result = $api_instance->create_group(group_resource => $group_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->create_group: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group_template**
> TemplateResource create_group_template(group_template_resource => $group_template_resource)

Create a group template

Group Templates define a type of group and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $group_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The group template resource object

eval { 
    my $result = $api_instance->create_group_template(group_template_resource => $group_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->create_group_template: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**
> delete_group(unique_name => $unique_name)

Removes a group from the system IF no resources are attached to it

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name

eval { 
    $api_instance->delete_group(unique_name => $unique_name);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->delete_group: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group_template**
> delete_group_template(id => $id, cascade => $cascade)

Delete a group template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_group_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->delete_group_template: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group**
> GroupResource get_group(unique_name => $unique_name)

Loads a specific group's details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name

eval { 
    my $result = $api_instance->get_group(unique_name => $unique_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_member**
> GroupMemberResource get_group_member(unique_name => $unique_name, user_id => $user_id)

Get a user from a group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_group_member(unique_name => $unique_name, user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_member: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unique_name** | **string**| The group unique name | 
 **user_id** | **int**| The id of the user | 

### Return type

[**GroupMemberResource**](GroupMemberResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_members**
> PageResourceGroupMemberResource get_group_members(unique_name => $unique_name, size => $size, page => $page, order => $order)

Lists members of the group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_group_members(unique_name => $unique_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_members: $@\n";
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

[**PageResourceGroupMemberResource**](PageResourceGroupMemberResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_template**
> TemplateResource get_group_template(id => $id)

Get a single group template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_group_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_template: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_templates**
> PageResourceTemplateResource get_group_templates(size => $size, page => $page, order => $order)

List and search group templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_group_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_group_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_groups_for_user**
> ARRAY[string] get_groups_for_user(user_id => $user_id)

List groups a user is in

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_groups_for_user(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->get_groups_for_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_group_member**
> remove_group_member(unique_name => $unique_name, user_id => $user_id)

Removes a user from a group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $user_id = 56; # int | The id of the user to remove

eval { 
    $api_instance->remove_group_member(unique_name => $unique_name, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->remove_group_member: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> update_group(unique_name => $unique_name, group_resource => $group_resource)

Update a group

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $group_resource = KnetikCloud::Object::GroupResource->new(); # GroupResource | The updated group

eval { 
    $api_instance->update_group(unique_name => $unique_name, group_resource => $group_resource);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_group: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_member_status**
> update_group_member_status(unique_name => $unique_name, user_id => $user_id, status => $status)

Change a user's status

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $unique_name = 'unique_name_example'; # string | The group unique name
my $user_id = 56; # int | The user id of the member to modify
my $status = KnetikCloud::Object::string->new(); # string | The new status for the user

eval { 
    $api_instance->update_group_member_status(unique_name => $unique_name, user_id => $user_id, status => $status);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_group_member_status: $@\n";
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_template**
> TemplateResource update_group_template(id => $id, group_template_resource => $group_template_resource)

Update a group template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $id = 'id_example'; # string | The id of the template
my $group_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The group template resource object

eval { 
    my $result = $api_instance->update_group_template(id => $id, group_template_resource => $group_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_group_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **group_template_resource** | [**TemplateResource**](TemplateResource.md)| The group template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_groups**
> PageResourceGroupResource update_groups(filter_template => $filter_template, filter_member_count => $filter_member_count, filter_name => $filter_name, filter_unique_name => $filter_unique_name, filter_parent => $filter_parent, filter_status => $filter_status, size => $size, page => $page, order => $order)

List and search groups

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::UsersGroupsApi;

my $api_instance = KnetikCloud::UsersGroupsApi->new();
my $filter_template = 'filter_template_example'; # string | Filter for groups using a specific template, by id
my $filter_member_count = 'filter_member_count_example'; # string | Filters groups by member count. Multiple values possible for range search. Format: filter_member_count=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count=GT,14,LT,17
my $filter_name = 'filter_name_example'; # string | Filter for groups with names starting with the given string
my $filter_unique_name = 'filter_unique_name_example'; # string | Filter for groups whose unique_name starts with provided string
my $filter_parent = 'filter_parent_example'; # string | Filter for groups with a specific parent, by unique name
my $filter_status = 'filter_status_example'; # string | Filter for groups with a certain status
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->update_groups(filter_template => $filter_template, filter_member_count => $filter_member_count, filter_name => $filter_name, filter_unique_name => $filter_unique_name, filter_parent => $filter_parent, filter_status => $filter_status, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersGroupsApi->update_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_template** | **string**| Filter for groups using a specific template, by id | [optional] 
 **filter_member_count** | **string**| Filters groups by member count. Multiple values possible for range search. Format: filter_member_count&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_member_count&#x3D;GT,14,LT,17 | [optional] 
 **filter_name** | **string**| Filter for groups with names starting with the given string | [optional] 
 **filter_unique_name** | **string**| Filter for groups whose unique_name starts with provided string | [optional] 
 **filter_parent** | **string**| Filter for groups with a specific parent, by unique name | [optional] 
 **filter_status** | **string**| Filter for groups with a certain status | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceGroupResource**](PageResourceGroupResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


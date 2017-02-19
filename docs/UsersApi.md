# WWW::SwaggerClient::UsersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_tag**](UsersApi.md#add_user_tag) | **POST** /users/{user_id}/tags | Add a tag to a user
[**create_user_template**](UsersApi.md#create_user_template) | **POST** /users/templates | Create a user template
[**delete_user_template**](UsersApi.md#delete_user_template) | **DELETE** /users/templates/{id} | Delete a user template
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get a single user
[**get_user_tags**](UsersApi.md#get_user_tags) | **GET** /users/{user_id}/tags | List tags for a user
[**get_user_template**](UsersApi.md#get_user_template) | **GET** /users/templates/{id} | Get a single user template
[**get_user_templates**](UsersApi.md#get_user_templates) | **GET** /users/templates | List and search user templates
[**get_users**](UsersApi.md#get_users) | **GET** /users | List and search users
[**password_reset**](UsersApi.md#password_reset) | **PUT** /users/{id}/password-reset | Choose a new password after a reset
[**register_user**](UsersApi.md#register_user) | **POST** /users | Register a new user
[**remove_user_tag**](UsersApi.md#remove_user_tag) | **DELETE** /users/{user_id}/tags/{tag} | Remove a tag from a user
[**set_password**](UsersApi.md#set_password) | **PUT** /users/{id}/password | Set a user&#39;s password
[**start_password_reset**](UsersApi.md#start_password_reset) | **POST** /users/{id}/password-reset | Reset a user&#39;s password
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update a user
[**update_user_template**](UsersApi.md#update_user_template) | **PUT** /users/templates/{id} | Update a user template


# **add_user_tag**
> add_user_tag(user_id => $user_id, tag => $tag)

Add a tag to a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $user_id = 56; # int | The id of the user
my $tag = WWW::SwaggerClient::Object::string->new(); # string | tag

eval { 
    $api_instance->add_user_tag(user_id => $user_id, tag => $tag);
};
if ($@) {
    warn "Exception when calling UsersApi->add_user_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **tag** | **string**| tag | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_user_template**
> TemplateResource create_user_template(user_template_resource => $user_template_resource)

Create a user template

User Templates define a type of user and the properties they have

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $user_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The user template resource object

eval { 
    my $result = $api_instance->create_user_template(user_template_resource => $user_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->create_user_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_template_resource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user_template**
> delete_user_template(id => $id, cascade => $cascade)

Delete a user template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_user_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling UsersApi->delete_user_template: $@\n";
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

# **get_user**
> UserResource get_user(id => $id)

Get a single user

Additional private info is included as USERS_ADMIN

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 'id_example'; # string | The id of the user or 'me'

eval { 
    my $result = $api_instance->get_user(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the user or &#39;me&#39; | 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_tags**
> ARRAY[string] get_user_tags(user_id => $user_id)

List tags for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $user_id = 56; # int | The id of the user

eval { 
    my $result = $api_instance->get_user_tags(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_tags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 

### Return type

**ARRAY[string]**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_template**
> TemplateResource get_user_template(id => $id)

Get a single user template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_user_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_template: $@\n";
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

# **get_user_templates**
> PageResourceTemplateResource get_user_templates(size => $size, page => $page, order => $order)

List and search user templates

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_user_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTemplateResource**](PageResourceTemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> PageResourceUserBaseResource get_users(filter_displayname => $filter_displayname, filter_email => $filter_email, filter_firstname => $filter_firstname, filter_fullname => $filter_fullname, filter_lastname => $filter_lastname, filter_username => $filter_username, filter_tag => $filter_tag, filter_group => $filter_group, filter_role => $filter_role, filter_search => $filter_search, size => $size, page => $page, order => $order)

List and search users

Additional private info is included as USERS_ADMIN

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $filter_displayname = 'filter_displayname_example'; # string | Filter for users whose display name starts with provided string.
my $filter_email = 'filter_email_example'; # string | Filter for users whose email starts with provided string. Requires USERS_ADMIN permission
my $filter_firstname = 'filter_firstname_example'; # string | Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission
my $filter_fullname = 'filter_fullname_example'; # string | Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission
my $filter_lastname = 'filter_lastname_example'; # string | Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission
my $filter_username = 'filter_username_example'; # string | Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission
my $filter_tag = 'filter_tag_example'; # string | Filter for users who have a given tag
my $filter_group = 'filter_group_example'; # string | Filter for users in a given group, by unique name
my $filter_role = 'filter_role_example'; # string | Filter for users with a given role
my $filter_search = 'filter_search_example'; # string | Filter for users whose display_name starts with the provided string, or username if display_name is null
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_users(filter_displayname => $filter_displayname, filter_email => $filter_email, filter_firstname => $filter_firstname, filter_fullname => $filter_fullname, filter_lastname => $filter_lastname, filter_username => $filter_username, filter_tag => $filter_tag, filter_group => $filter_group, filter_role => $filter_role, filter_search => $filter_search, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_displayname** | **string**| Filter for users whose display name starts with provided string. | [optional] 
 **filter_email** | **string**| Filter for users whose email starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_firstname** | **string**| Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_fullname** | **string**| Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_lastname** | **string**| Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_username** | **string**| Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission | [optional] 
 **filter_tag** | **string**| Filter for users who have a given tag | [optional] 
 **filter_group** | **string**| Filter for users in a given group, by unique name | [optional] 
 **filter_role** | **string**| Filter for users with a given role | [optional] 
 **filter_search** | **string**| Filter for users whose display_name starts with the provided string, or username if display_name is null | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceUserBaseResource**](PageResourceUserBaseResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **password_reset**
> password_reset(id => $id, new_password_request => $new_password_request)

Choose a new password after a reset

Finish resetting a user's password using the secret provided from the password-reset endpoint.  Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 56; # int | The id of the user
my $new_password_request = WWW::SwaggerClient::Object::NewPasswordRequest->new(); # NewPasswordRequest | The new password request object

eval { 
    $api_instance->password_reset(id => $id, new_password_request => $new_password_request);
};
if ($@) {
    warn "Exception when calling UsersApi->password_reset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **new_password_request** | [**NewPasswordRequest**](NewPasswordRequest.md)| The new password request object | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_user**
> UserResource register_user(user_resource => $user_resource)

Register a new user

Password should be in plain text and will be encrypted on receipt. Use SSL for security

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $user_resource = WWW::SwaggerClient::Object::UserResource->new(); # UserResource | The user resource object

eval { 
    my $result = $api_instance->register_user(user_resource => $user_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->register_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_resource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_user_tag**
> remove_user_tag(user_id => $user_id, tag => $tag)

Remove a tag from a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $user_id = 56; # int | The id of the user
my $tag = 'tag_example'; # string | The tag to remove

eval { 
    $api_instance->remove_user_tag(user_id => $user_id, tag => $tag);
};
if ($@) {
    warn "Exception when calling UsersApi->remove_user_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The id of the user | 
 **tag** | **string**| The tag to remove | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_password**
> set_password(id => $id, password => $password)

Set a user's password

Password should be in plain text and will be encrypted on receipt. Use SSL for security.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 56; # int | The id of the user
my $password = WWW::SwaggerClient::Object::string->new(); # string | The new plain text password

eval { 
    $api_instance->set_password(id => $id, password => $password);
};
if ($@) {
    warn "Exception when calling UsersApi->set_password: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 
 **password** | **string**| The new plain text password | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_password_reset**
> start_password_reset(id => $id)

Reset a user's password

A reset code will be generated and a 'forgot_password' BRE event will be fired with that code; this can be routed to the user as needed and submitted to the 'choose a new password' endpoint.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 56; # int | The id of the user

eval { 
    $api_instance->start_password_reset(id => $id);
};
if ($@) {
    warn "Exception when calling UsersApi->start_password_reset: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the user | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> update_user(id => $id, user_resource => $user_resource)

Update a user

Password will not be edited on this endpoint, use password specific endpoints.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 'id_example'; # string | The id of the user or 'me'
my $user_resource = WWW::SwaggerClient::Object::UserResource->new(); # UserResource | The user resource object

eval { 
    $api_instance->update_user(id => $id, user_resource => $user_resource);
};
if ($@) {
    warn "Exception when calling UsersApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the user or &#39;me&#39; | 
 **user_resource** | [**UserResource**](UserResource.md)| The user resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_template**
> TemplateResource update_user_template(id => $id, user_template_resource => $user_template_resource)

Update a user template

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::UsersApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::UsersApi->new();
my $id = 'id_example'; # string | The id of the template
my $user_template_resource = WWW::SwaggerClient::Object::TemplateResource->new(); # TemplateResource | The user template resource object

eval { 
    my $result = $api_instance->update_user_template(id => $id, user_template_resource => $user_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->update_user_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **user_template_resource** | [**TemplateResource**](TemplateResource.md)| The user template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


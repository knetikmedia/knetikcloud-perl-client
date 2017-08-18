# KnetikCloud::MediaArtistsApi

## Load the API package
```perl
use KnetikCloud::Object::MediaArtistsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_artist**](MediaArtistsApi.md#add_artist) | **POST** /media/artists | Adds a new artist in the system
[**create_artist_template**](MediaArtistsApi.md#create_artist_template) | **POST** /media/artists/templates | Create an artist template
[**delete_artist**](MediaArtistsApi.md#delete_artist) | **DELETE** /media/artists/{id} | Removes an artist from the system IF no resources are attached to it
[**delete_artist_template**](MediaArtistsApi.md#delete_artist_template) | **DELETE** /media/artists/templates/{id} | Delete an artist template
[**get_artist**](MediaArtistsApi.md#get_artist) | **GET** /media/artists/{id} | Loads a specific artist details
[**get_artist_template**](MediaArtistsApi.md#get_artist_template) | **GET** /media/artists/templates/{id} | Get a single artist template
[**get_artist_templates**](MediaArtistsApi.md#get_artist_templates) | **GET** /media/artists/templates | List and search artist templates
[**get_artists**](MediaArtistsApi.md#get_artists) | **GET** /media/artists | Search for artists
[**update_artist**](MediaArtistsApi.md#update_artist) | **PUT** /media/artists/{id} | Modifies an artist details
[**update_artist_template**](MediaArtistsApi.md#update_artist_template) | **PUT** /media/artists/templates/{id} | Update an artist template


# **add_artist**
> ArtistResource add_artist(artist_resource => $artist_resource)

Adds a new artist in the system

Adds a new artist in the system. Use specific media contributions endpoint to add contributions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $artist_resource = KnetikCloud::Object::ArtistResource->new(); # ArtistResource | The new artist

eval { 
    my $result = $api_instance->add_artist(artist_resource => $artist_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->add_artist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_resource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_artist_template**
> TemplateResource create_artist_template(artist_template_resource => $artist_template_resource)

Create an artist template

Artist Templates define a type of artist and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $artist_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The artist template resource object

eval { 
    my $result = $api_instance->create_artist_template(artist_template_resource => $artist_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->create_artist_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_artist**
> delete_artist(id => $id)

Removes an artist from the system IF no resources are attached to it

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The artist id

eval { 
    $api_instance->delete_artist(id => $id);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->delete_artist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_artist_template**
> delete_artist_template(id => $id, cascade => $cascade)

Delete an artist template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_artist_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->delete_artist_template: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artist**
> ArtistResource get_artist(id => $id, show_contributions => $show_contributions)

Loads a specific artist details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(
);

my $id = 789; # int | The artist id
my $show_contributions = 56; # int | The number of contributions to show fetch

eval { 
    my $result = $api_instance->get_artist(id => $id, show_contributions => $show_contributions);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->get_artist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 
 **show_contributions** | **int**| The number of contributions to show fetch | [optional] 

### Return type

[**ArtistResource**](ArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artist_template**
> TemplateResource get_artist_template(id => $id)

Get a single artist template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_artist_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->get_artist_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artist_templates**
> PageResourceTemplateResource get_artist_templates(size => $size, page => $page, order => $order)

List and search artist templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_artist_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->get_artist_templates: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artists**
> PageResourceArtistResource get_artists(filter_artists_by_name => $filter_artists_by_name, size => $size, page => $page, order => $order)

Search for artists

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(
);

my $filter_artists_by_name = 'filter_artists_by_name_example'; # string | Filter for artists which name *STARTS* with the given string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_artists(filter_artists_by_name => $filter_artists_by_name, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->get_artists: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_artists_by_name** | **string**| Filter for artists which name *STARTS* with the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceArtistResource**](PageResourceArtistResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_artist**
> update_artist(id => $id, artist_resource => $artist_resource)

Modifies an artist details

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 789; # int | The artist id
my $artist_resource = KnetikCloud::Object::ArtistResource->new(); # ArtistResource | The new artist

eval { 
    $api_instance->update_artist(id => $id, artist_resource => $artist_resource);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->update_artist: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The artist id | 
 **artist_resource** | [**ArtistResource**](ArtistResource.md)| The new artist | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_artist_template**
> TemplateResource update_artist_template(id => $id, artist_template_resource => $artist_template_resource)

Update an artist template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::MediaArtistsApi;
my $api_instance = KnetikCloud::MediaArtistsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 'id_example'; # string | The id of the template
my $artist_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The artist template resource object

eval { 
    my $result = $api_instance->update_artist_template(id => $id, artist_template_resource => $artist_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaArtistsApi->update_artist_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **artist_template_resource** | [**TemplateResource**](TemplateResource.md)| The artist template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


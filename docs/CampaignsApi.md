# KnetikCloud::CampaignsApi

## Load the API package
```perl
use KnetikCloud::Object::CampaignsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_challenge_to_campaign**](CampaignsApi.md#add_challenge_to_campaign) | **POST** /campaigns/{id}/challenges | Add a challenge to a campaign
[**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a campaign
[**create_campaign_template**](CampaignsApi.md#create_campaign_template) | **POST** /campaigns/templates | Create a campaign template
[**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**delete_campaign_template**](CampaignsApi.md#delete_campaign_template) | **DELETE** /campaigns/templates/{id} | Delete a campaign template
[**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /campaigns/{id} | Returns a single campaign
[**get_campaign_challenges**](CampaignsApi.md#get_campaign_challenges) | **GET** /campaigns/{id}/challenges | List the challenges associated with a campaign
[**get_campaign_template**](CampaignsApi.md#get_campaign_template) | **GET** /campaigns/templates/{id} | Get a single campaign template
[**get_campaign_templates**](CampaignsApi.md#get_campaign_templates) | **GET** /campaigns/templates | List and search campaign templates
[**get_campaigns**](CampaignsApi.md#get_campaigns) | **GET** /campaigns | List and search campaigns
[**remove_challenge_from_campaign**](CampaignsApi.md#remove_challenge_from_campaign) | **DELETE** /campaigns/{campaign_id}/challenges/{id} | Remove a challenge from a campaign
[**update_campaign**](CampaignsApi.md#update_campaign) | **PUT** /campaigns/{id} | Update a campaign
[**update_campaign_template**](CampaignsApi.md#update_campaign_template) | **PUT** /campaigns/templates/{id} | Update an campaign template


# **add_challenge_to_campaign**
> add_challenge_to_campaign(id => $id, challenge_id => $challenge_id)

Add a challenge to a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 789; # int | The id of the campaign
my $challenge_id = KnetikCloud::Object::int->new(); # int | The id of the challenge

eval { 
    $api_instance->add_challenge_to_campaign(id => $id, challenge_id => $challenge_id);
};
if ($@) {
    warn "Exception when calling CampaignsApi->add_challenge_to_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the campaign | 
 **challenge_id** | **int**| The id of the challenge | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_campaign**
> CampaignResource create_campaign(campaign_resource => $campaign_resource)

Create a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $campaign_resource = KnetikCloud::Object::CampaignResource->new(); # CampaignResource | The campaign resource object

eval { 
    my $result = $api_instance->create_campaign(campaign_resource => $campaign_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->create_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_campaign_template**
> TemplateResource create_campaign_template(campaign_template_resource => $campaign_template_resource)

Create a campaign template

Campaign Templates define a type of campaign and the properties they have

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $campaign_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The campaign template resource object

eval { 
    my $result = $api_instance->create_campaign_template(campaign_template_resource => $campaign_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->create_campaign_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_campaign**
> delete_campaign(id => $id)

Delete a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 789; # int | The campaign id

eval { 
    $api_instance->delete_campaign(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsApi->delete_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_campaign_template**
> delete_campaign_template(id => $id, cascade => $cascade)

Delete a campaign template

If cascade = 'detach', it will force delete the template even if it's attached to other objects

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 'id_example'; # string | The id of the template
my $cascade = 'cascade_example'; # string | The value needed to delete used templates

eval { 
    $api_instance->delete_campaign_template(id => $id, cascade => $cascade);
};
if ($@) {
    warn "Exception when calling CampaignsApi->delete_campaign_template: $@\n";
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

# **get_campaign**
> CampaignResource get_campaign(id => $id)

Returns a single campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 789; # int | The campaign id

eval { 
    my $result = $api_instance->get_campaign(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->get_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_campaign_challenges**
> PageResourceChallengeResource get_campaign_challenges(id => $id)

List the challenges associated with a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 789; # int | The campaign id

eval { 
    my $result = $api_instance->get_campaign_challenges(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->get_campaign_challenges: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 

### Return type

[**PageResourceChallengeResource**](PageResourceChallengeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_campaign_template**
> TemplateResource get_campaign_template(id => $id)

Get a single campaign template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 'id_example'; # string | The id of the template

eval { 
    my $result = $api_instance->get_campaign_template(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->get_campaign_template: $@\n";
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

# **get_campaign_templates**
> PageResourceTemplateResource get_campaign_templates(size => $size, page => $page, order => $order)

List and search campaign templates

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_campaign_templates(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->get_campaign_templates: $@\n";
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

# **get_campaigns**
> PageResourceCampaignResource get_campaigns(filter_active => $filter_active, size => $size, page => $page, order => $order)

List and search campaigns

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

my $api_instance = KnetikCloud::CampaignsApi->new();
my $filter_active = 1; # boolean | Filter for campaigns that are active
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_campaigns(filter_active => $filter_active, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->get_campaigns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_active** | **boolean**| Filter for campaigns that are active | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCampaignResource**](PageResourceCampaignResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_challenge_from_campaign**
> remove_challenge_from_campaign(campaign_id => $campaign_id, id => $id)

Remove a challenge from a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $campaign_id = 789; # int | The campaign id
my $id = 789; # int | The challenge id

eval { 
    $api_instance->remove_challenge_from_campaign(campaign_id => $campaign_id, id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsApi->remove_challenge_from_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **int**| The campaign id | 
 **id** | **int**| The challenge id | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_campaign**
> CampaignResource update_campaign(id => $id, campaign_resource => $campaign_resource)

Update a campaign

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 789; # int | The campaign id
my $campaign_resource = KnetikCloud::Object::CampaignResource->new(); # CampaignResource | The campaign resource object

eval { 
    my $result = $api_instance->update_campaign(id => $id, campaign_resource => $campaign_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->update_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The campaign id | 
 **campaign_resource** | [**CampaignResource**](CampaignResource.md)| The campaign resource object | [optional] 

### Return type

[**CampaignResource**](CampaignResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_campaign_template**
> TemplateResource update_campaign_template(id => $id, campaign_template_resource => $campaign_template_resource)

Update an campaign template

### Example 
```perl
use Data::Dumper;
use KnetikCloud::Configuration;
use KnetikCloud::CampaignsApi;

# Configure OAuth2 access token for authorization: OAuth2
$KnetikCloud::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = KnetikCloud::CampaignsApi->new();
my $id = 'id_example'; # string | The id of the template
my $campaign_template_resource = KnetikCloud::Object::TemplateResource->new(); # TemplateResource | The campaign template resource object

eval { 
    my $result = $api_instance->update_campaign_template(id => $id, campaign_template_resource => $campaign_template_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsApi->update_campaign_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the template | 
 **campaign_template_resource** | [**TemplateResource**](TemplateResource.md)| The campaign template resource object | [optional] 

### Return type

[**TemplateResource**](TemplateResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


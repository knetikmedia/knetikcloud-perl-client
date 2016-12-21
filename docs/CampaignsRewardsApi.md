# WWW::SwaggerClient::CampaignsRewardsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::CampaignsRewardsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_reward_set_using_post**](CampaignsRewardsApi.md#create_reward_set_using_post) | **POST** /rewards | Create a reward set
[**delete_reward_set_using_delete**](CampaignsRewardsApi.md#delete_reward_set_using_delete) | **DELETE** /rewards/{id} | Delete a reward set
[**get_reward_set_using_get**](CampaignsRewardsApi.md#get_reward_set_using_get) | **GET** /rewards/{id} | Get a single reward set
[**get_reward_sets_using_get**](CampaignsRewardsApi.md#get_reward_sets_using_get) | **GET** /rewards | List and search reward sets
[**update_reward_set_using_put**](CampaignsRewardsApi.md#update_reward_set_using_put) | **PUT** /rewards/{id} | Update a reward set


# **create_reward_set_using_post**
> RewardSetResource create_reward_set_using_post(reward_set_resource => $reward_set_resource)

Create a reward set

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsRewardsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsRewardsApi->new();
my $reward_set_resource = WWW::SwaggerClient::Object::RewardSetResource->new(); # RewardSetResource | The reward set resource object

eval { 
    my $result = $api_instance->create_reward_set_using_post(reward_set_resource => $reward_set_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsRewardsApi->create_reward_set_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_reward_set_using_delete**
> delete_reward_set_using_delete(id => $id)

Delete a reward set

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsRewardsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsRewardsApi->new();
my $id = 56; # int | The reward id

eval { 
    $api_instance->delete_reward_set_using_delete(id => $id);
};
if ($@) {
    warn "Exception when calling CampaignsRewardsApi->delete_reward_set_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reward_set_using_get**
> RewardSetResource get_reward_set_using_get(id => $id)

Get a single reward set

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsRewardsApi;

my $api_instance = WWW::SwaggerClient::CampaignsRewardsApi->new();
my $id = 56; # int | The reward id

eval { 
    my $result = $api_instance->get_reward_set_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsRewardsApi->get_reward_set_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 

### Return type

[**RewardSetResource**](RewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reward_sets_using_get**
> PageResourceRewardSetResource get_reward_sets_using_get(size => $size, page => $page, order => $order)

List and search reward sets

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsRewardsApi;

my $api_instance = WWW::SwaggerClient::CampaignsRewardsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_reward_sets_using_get(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignsRewardsApi->get_reward_sets_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceRewardSetResource**](PageResourceRewardSetResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_reward_set_using_put**
> update_reward_set_using_put(id => $id, reward_set_resource => $reward_set_resource)

Update a reward set

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::CampaignsRewardsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::CampaignsRewardsApi->new();
my $id = 56; # int | The reward id
my $reward_set_resource = WWW::SwaggerClient::Object::RewardSetResource->new(); # RewardSetResource | The reward set resource object

eval { 
    $api_instance->update_reward_set_using_put(id => $id, reward_set_resource => $reward_set_resource);
};
if ($@) {
    warn "Exception when calling CampaignsRewardsApi->update_reward_set_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The reward id | 
 **reward_set_resource** | [**RewardSetResource**](RewardSetResource.md)| The reward set resource object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

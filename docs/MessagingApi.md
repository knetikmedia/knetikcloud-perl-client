# WWW::SwaggerClient::MessagingApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::MessagingApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_raw_email_using_post**](MessagingApi.md#send_raw_email_using_post) | **POST** /messaging/raw-email | Send a raw email to one or more users
[**send_raw_sms_using_post**](MessagingApi.md#send_raw_sms_using_post) | **POST** /messaging/raw-sms | Send a raw SMS
[**send_raw_sms_using_post1**](MessagingApi.md#send_raw_sms_using_post1) | **POST** /messaging/templated-sms | Send a new templated SMS
[**send_template_email_using_post**](MessagingApi.md#send_template_email_using_post) | **POST** /messaging/templated-email | Send a templated email to one or more users


# **send_raw_email_using_post**
> send_raw_email_using_post(raw_email_resource => $raw_email_resource)

Send a raw email to one or more users

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MessagingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MessagingApi->new();
my $raw_email_resource = WWW::SwaggerClient::Object::RawEmailResource->new(); # RawEmailResource | The new raw email to be sent

eval { 
    $api_instance->send_raw_email_using_post(raw_email_resource => $raw_email_resource);
};
if ($@) {
    warn "Exception when calling MessagingApi->send_raw_email_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_email_resource** | [**RawEmailResource**](RawEmailResource.md)| The new raw email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_raw_sms_using_post**
> send_raw_sms_using_post(raw_sms_resource => $raw_sms_resource)

Send a raw SMS

Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MessagingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MessagingApi->new();
my $raw_sms_resource = WWW::SwaggerClient::Object::RawSMSResource->new(); # RawSMSResource | The new raw SMS to be sent

eval { 
    $api_instance->send_raw_sms_using_post(raw_sms_resource => $raw_sms_resource);
};
if ($@) {
    warn "Exception when calling MessagingApi->send_raw_sms_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **raw_sms_resource** | [**RawSMSResource**](RawSMSResource.md)| The new raw SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_raw_sms_using_post1**
> send_raw_sms_using_post1(template_sms_resource => $template_sms_resource)

Send a new templated SMS

Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MessagingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MessagingApi->new();
my $template_sms_resource = WWW::SwaggerClient::Object::TemplateSMSResource->new(); # TemplateSMSResource | The new template SMS to be sent

eval { 
    $api_instance->send_raw_sms_using_post1(template_sms_resource => $template_sms_resource);
};
if ($@) {
    warn "Exception when calling MessagingApi->send_raw_sms_using_post1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_sms_resource** | [**TemplateSMSResource**](TemplateSMSResource.md)| The new template SMS to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_template_email_using_post**
> send_template_email_using_post(message_resource => $message_resource)

Send a templated email to one or more users

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::MessagingApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::MessagingApi->new();
my $message_resource = WWW::SwaggerClient::Object::TemplateEmailResource->new(); # TemplateEmailResource | The new template email to be sent

eval { 
    $api_instance->send_template_email_using_post(message_resource => $message_resource);
};
if ($@) {
    warn "Exception when calling MessagingApi->send_template_email_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_resource** | [**TemplateEmailResource**](TemplateEmailResource.md)| The new template email to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


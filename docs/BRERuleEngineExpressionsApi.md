# KnetikCloud::BRERuleEngineExpressionsApi

## Load the API package
```perl
use KnetikCloud::Object::BRERuleEngineExpressionsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bre_expressions**](BRERuleEngineExpressionsApi.md#get_bre_expressions) | **GET** /bre/expressions/lookup | Get a list of &#39;lookup&#39; type expressions


# **get_bre_expressions**
> ARRAY[LookupTypeResource] get_bre_expressions()

Get a list of 'lookup' type expressions

These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).

### Example 
```perl
use Data::Dumper;
use KnetikCloud::BRERuleEngineExpressionsApi;
my $api_instance = KnetikCloud::BRERuleEngineExpressionsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);


eval { 
    my $result = $api_instance->get_bre_expressions();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineExpressionsApi->get_bre_expressions: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[LookupTypeResource]**](LookupTypeResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


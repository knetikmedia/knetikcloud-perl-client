# WWW::SwaggerClient::BRERuleEngineRulesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::BRERuleEngineRulesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_rule**](BRERuleEngineRulesApi.md#create_bre_rule) | **POST** /bre/rules | Create a rule
[**delete_bre_rule**](BRERuleEngineRulesApi.md#delete_bre_rule) | **DELETE** /bre/rules/{id} | Delete a rule
[**get_bre_expression_as_string**](BRERuleEngineRulesApi.md#get_bre_expression_as_string) | **POST** /bre/rules/expression-as-string | Returns a string representation of the provided expression
[**get_bre_rule**](BRERuleEngineRulesApi.md#get_bre_rule) | **GET** /bre/rules/{id} | Get a single rule
[**get_bre_rules**](BRERuleEngineRulesApi.md#get_bre_rules) | **GET** /bre/rules | List rules
[**set_bre_rule**](BRERuleEngineRulesApi.md#set_bre_rule) | **PUT** /bre/rules/{id}/enabled | Enable or disable a rule
[**update_bre_rule**](BRERuleEngineRulesApi.md#update_bre_rule) | **PUT** /bre/rules/{id} | Update a rule


# **create_bre_rule**
> BreRule create_bre_rule(bre_rule => $bre_rule)

Create a rule

Rules define which actions to run when a given event verifies the specified conditions. Conditions and actions are defined by binding event or context parameters to arguments. Conditions also known as Predicates are logical expressions that result in a boolean. Operators are used to describe rules between arguments to form that condition. There are 3 families of operators: Boolean, Math and String. Math and String operators are functions that transform arguments into numbers or strings...<h1>Boolean Operators</h1><br /><br />1 arg:<br />======<br /><br /><ul> <li>IS_NULL</li> <li>IS_NOT_NULL</li> <li>STRING_IS_EMPTY</li> <li>NOT </li> <li>MAP_IS_EMPTY</li></ul><br />2 args:<br />=======<br /><br /><ul> <li>EQ</li> <li>NE (Not Equals)</li> <li>GT (Greater Than)</li> <li>GOE (Greater Or Equals)</li> <li>LT (Lesser Than)</li> <li>LOE (Lesser Or Equals)</li> <li>OR</li> <li>AND</li> <li>XNOR</li> <li>XOR</li> <li>CONTAINS_KEY (for maps only)</li> <li>CONTAINS_VALUE (for maps only)</li> <li>MATCHES (regex)</li> <li>MATCHES_IC (regex ignore case)</li> <li>STARTS_WITH</li> <li>STARTS_WITH_IC</li> <li>EQ_IGNORE_CASE</li> <li>ENDS_WITH</li> <li>ENDS_WITH_IC</li> <li>STRING_CONTAINS</li> <li>STRING_CONTAINS_IC</li> <li>LIKE (SQL like)</li></ul><br />3 args exceptions:<br />=================<br /><br /><ul> <li>BETWEEN</li></ul><br />n args:<br />=======<br /><br /><ul> <li>IN</li> <li>NOT_INT</li></ul><h1>Math Operators</h1>1 arg:<br />=====<br /><br /><ul> <li>NEGATE</li> <li>MAP_SIZE</li> <li>STRING_LENGTH</li> <li>CEIL</li> <li>ABS</li> <li>FLOOR</li> <li>ROUND</li> <li>RANDOM (no arg)</li> <li>RANDOM2 (seed arg)</li> <li>NUMCAST</li> <li>HOUR</li> <li>MINUTE</li> <li>SECOND</li> <li>MILLISECOND</li> <li>YEAR</li> <li>WEEK</li> <li>YEAR_MONTH</li> <li>YEAR_WEEK</li> <li>DAY_OF_WEEK</li> <li>DAY_OF_MONTH</li> <li>DAY_OF_YEAR</li> <li>WEEK</li> <li>WEEK</li> <li>WEEK</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>ADD</li> <li>DIV</li> <li>MULT</li> <li>SUB</li> <li>POWER</li> <li>MOD</li> <li>LOCATE (index of (string, char))</li> <li>DIFF_YEARS</li> <li>DIFF_MONTHS</li> <li>DIFF_WEEKS</li> <li>DIFF_DAYS</li> <li>DIFF_HOURS</li> <li>DIFF_MINUTES</li> <li>DIFF_SECONDS</li></ul><br /><br />2 args:<br />======<br /><br /><ul> <li>MIN</li> <li>MAX</li></ul><h1>String Operators</h1>0 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li></ul><br /><br />1 arg:<br />=====<br /><br /><ul> <li>CURRENT_TIME</li> <li>LOWER</li> <li>UPPER</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />2 args:<br />=====<br /><br /><ul> <li>CHAR_AT</li> <li>SUBSTR_1ARG (substr(string, start))</li> <li>CONCAT</li> <li>TRIM</li> <li>STRING_CAST</li></ul><br /><br />3 args:<br />=====<br /><br /><ul> <li>SUBSTR_2ARGS (substr(string, start, length))</li></ul>

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $bre_rule = WWW::SwaggerClient::Object::BreRule->new(); # BreRule | The BRE rule object

eval { 
    my $result = $api_instance->create_bre_rule(bre_rule => $bre_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->create_bre_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bre_rule**
> delete_bre_rule(id => $id)

Delete a rule

May fail if there are existing rules against it. Cannot delete core rules

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $id = 'id_example'; # string | The id of the rule

eval { 
    $api_instance->delete_bre_rule(id => $id);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->delete_bre_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the rule | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_expression_as_string**
> string get_bre_expression_as_string(expression => $expression)

Returns a string representation of the provided expression

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $expression = WWW::SwaggerClient::Object::Expressionobject->new(); # Expressionobject | The expression

eval { 
    my $result = $api_instance->get_bre_expression_as_string(expression => $expression);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->get_bre_expression_as_string: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | [**Expressionobject**](Expressionobject.md)| The expression | [optional] 

### Return type

**string**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_rule**
> BreRule get_bre_rule(id => $id)

Get a single rule

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $id = 'id_example'; # string | The id of the rule

eval { 
    my $result = $api_instance->get_bre_rule(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->get_bre_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the rule | 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bre_rules**
> PageResourceBreRule get_bre_rules(filter_name => $filter_name, filter_enabled => $filter_enabled, filter_system => $filter_system, filter_trigger => $filter_trigger, filter_action => $filter_action, filter_condition => $filter_condition, size => $size, page => $page)

List rules

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $filter_name = 'filter_name_example'; # string | Filter for rules containing the given name
my $filter_enabled = 1; # boolean | Filter for rules by active status, null for both
my $filter_system = 1; # boolean | Filter for rules that are system rules when true, or not when false. Leave off for both mixed
my $filter_trigger = 'filter_trigger_example'; # string | Filter for rules that are for the trigger with the given name
my $filter_action = 'filter_action_example'; # string | Filter for rules that use the action with the given name
my $filter_condition = 'filter_condition_example'; # string | Filter for rules that have a condition containing the given string
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_bre_rules(filter_name => $filter_name, filter_enabled => $filter_enabled, filter_system => $filter_system, filter_trigger => $filter_trigger, filter_action => $filter_action, filter_condition => $filter_condition, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->get_bre_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_name** | **string**| Filter for rules containing the given name | [optional] 
 **filter_enabled** | **boolean**| Filter for rules by active status, null for both | [optional] [default to null]
 **filter_system** | **boolean**| Filter for rules that are system rules when true, or not when false. Leave off for both mixed | [optional] 
 **filter_trigger** | **string**| Filter for rules that are for the trigger with the given name | [optional] 
 **filter_action** | **string**| Filter for rules that use the action with the given name | [optional] 
 **filter_condition** | **string**| Filter for rules that have a condition containing the given string | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreRule**](PageResourceBreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_bre_rule**
> set_bre_rule(id => $id, enabled => $enabled)

Enable or disable a rule

This is helpful for turning off systems rules which cannot be deleted or modified otherwise

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $id = 'id_example'; # string | The id of the rule
my $enabled = WWW::SwaggerClient::Object::BooleanResource->new(); # BooleanResource | The boolean value

eval { 
    $api_instance->set_bre_rule(id => $id, enabled => $enabled);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->set_bre_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the rule | 
 **enabled** | [**BooleanResource**](BooleanResource.md)| The boolean value | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_bre_rule**
> BreRule update_bre_rule(id => $id, bre_rule => $bre_rule)

Update a rule

Cannot update system rules

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::BRERuleEngineRulesApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
my $id = 'id_example'; # string | The id of the rule
my $bre_rule = WWW::SwaggerClient::Object::BreRule->new(); # BreRule | The BRE rule object

eval { 
    my $result = $api_instance->update_bre_rule(id => $id, bre_rule => $bre_rule);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BRERuleEngineRulesApi->update_bre_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the rule | 
 **bre_rule** | [**BreRule**](BreRule.md)| The BRE rule object | [optional] 

### Return type

[**BreRule**](BreRule.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


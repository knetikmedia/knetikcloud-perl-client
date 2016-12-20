# WWW::SwaggerClient::PaymentsWalletsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsWalletsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_wallet_totals_using_get**](PaymentsWalletsApi.md#get_wallet_totals_using_get) | **GET** /wallets/totals | Retrieves a summation of wallet balances by currency code
[**get_wallet_using_get**](PaymentsWalletsApi.md#get_wallet_using_get) | **GET** /users/{user_id}/wallets/{currency_code} | Returns the user&#39;s wallet for the given currency code
[**get_wallets_using_get**](PaymentsWalletsApi.md#get_wallets_using_get) | **GET** /users/{user_id}/wallets | List all of a user&#39;s wallets
[**get_wallets_using_get1**](PaymentsWalletsApi.md#get_wallets_using_get1) | **GET** /wallets | Retrieve a list of wallets across the system
[**transaction_history_using_get**](PaymentsWalletsApi.md#transaction_history_using_get) | **GET** /wallets/transactions | Retrieve wallet transactions across the system
[**update_balance_using_put**](PaymentsWalletsApi.md#update_balance_using_put) | **PUT** /users/{user_id}/wallets/{currency_code}/balance | Updates the balance for a user&#39;s wallet
[**user_transaction_history_using_get**](PaymentsWalletsApi.md#user_transaction_history_using_get) | **GET** /users/{user_id}/wallets/{currency_code}/transactions | Retrieve a user&#39;s wallet transactions


# **get_wallet_totals_using_get**
> PageWalletTotalResponse get_wallet_totals_using_get()

Retrieves a summation of wallet balances by currency code

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();

eval { 
    my $result = $api_instance->get_wallet_totals_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallet_totals_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageWalletTotalResponse**](PageWalletTotalResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallet_using_get**
> SimpleWallet get_wallet_using_get(user_id => $user_id, currency_code => $currency_code)

Returns the user's wallet for the given currency code

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $user_id = 56; # int | The ID of the user for whom wallet is being retrieved
my $currency_code = 'currency_code_example'; # string | Currency code of the user's wallet

eval { 
    my $result = $api_instance->get_wallet_using_get(user_id => $user_id, currency_code => $currency_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallet_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The ID of the user for whom wallet is being retrieved | 
 **currency_code** | **string**| Currency code of the user&#39;s wallet | 

### Return type

[**SimpleWallet**](SimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallets_using_get**
> ARRAY[SimpleWallet] get_wallets_using_get(user_id => $user_id)

List all of a user's wallets

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $user_id = 56; # int | The ID of the user for whom wallets are being retrieved

eval { 
    my $result = $api_instance->get_wallets_using_get(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallets_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The ID of the user for whom wallets are being retrieved | 

### Return type

[**ARRAY[SimpleWallet]**](SimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallets_using_get1**
> PageSimpleWallet get_wallets_using_get1(size => $size, page => $page, order => $order)

Retrieve a list of wallets across the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_wallets_using_get1(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallets_using_get1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageSimpleWallet**](PageSimpleWallet.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transaction_history_using_get**
> PageWalletTransactionResource transaction_history_using_get(filter_invoice => $filter_invoice, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, filter_user_id => $filter_user_id, filter_username => $filter_username, filter_details => $filter_details, filter_currency_code => $filter_currency_code, size => $size, page => $page, order => $order)

Retrieve wallet transactions across the system

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $filter_invoice = 56; # int | Filter for transactions from a specific invoice
my $filter_type = 'filter_type_example'; # string | Filter for transactions with specified type
my $filter_max_date = 789; # int | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
my $filter_min_date = 789; # int | Filter for transactions from no later than the specified date as a unix timestamp in seconds
my $filter_sign = 'filter_sign_example'; # string | Filter for transactions with amount with the given sign
my $filter_user_id = 56; # int | Filter for transactions for specific userId
my $filter_username = 'filter_username_example'; # string | Filter for transactions for specific username that start with the given string
my $filter_details = 'filter_details_example'; # string | Filter for transactions for specific details that start with the given string
my $filter_currency_code = 'filter_currency_code_example'; # string | Filter for transactions for specific currency code
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->transaction_history_using_get(filter_invoice => $filter_invoice, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, filter_user_id => $filter_user_id, filter_username => $filter_username, filter_details => $filter_details, filter_currency_code => $filter_currency_code, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->transaction_history_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **int**| Filter for transactions from a specific invoice | [optional] 
 **filter_type** | **string**| Filter for transactions with specified type | [optional] 
 **filter_max_date** | **int**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filter_min_date** | **int**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filter_sign** | **string**| Filter for transactions with amount with the given sign | [optional] 
 **filter_user_id** | **int**| Filter for transactions for specific userId | [optional] 
 **filter_username** | **string**| Filter for transactions for specific username that start with the given string | [optional] 
 **filter_details** | **string**| Filter for transactions for specific details that start with the given string | [optional] 
 **filter_currency_code** | **string**| Filter for transactions for specific currency code | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageWalletTransactionResource**](PageWalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_balance_using_put**
> WalletTransactionResource update_balance_using_put(user_id => $user_id, currency_code => $currency_code, request => $request)

Updates the balance for a user's wallet

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $user_id = 56; # int | The ID of the user for whom wallet is being modified
my $currency_code = 'currency_code_example'; # string | Currency code of the user's wallet
my $request = WWW::SwaggerClient::Object::WalletAlterRequest->new(); # WalletAlterRequest | The requested balance modification to be made to the user's wallet

eval { 
    my $result = $api_instance->update_balance_using_put(user_id => $user_id, currency_code => $currency_code, request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->update_balance_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The ID of the user for whom wallet is being modified | 
 **currency_code** | **string**| Currency code of the user&#39;s wallet | 
 **request** | [**WalletAlterRequest**](WalletAlterRequest.md)| The requested balance modification to be made to the user&#39;s wallet | [optional] 

### Return type

[**WalletTransactionResource**](WalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_transaction_history_using_get**
> PageWalletTransactionResource user_transaction_history_using_get(user_id => $user_id, currency_code => $currency_code, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, size => $size, page => $page, order => $order)

Retrieve a user's wallet transactions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsWalletsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsWalletsApi->new();
my $user_id = 56; # int | The ID of the user for whom wallet transactions are being retrieved
my $currency_code = 'currency_code_example'; # string | Currency code of the user's wallet
my $filter_type = 'filter_type_example'; # string | Filter for transactions with specified type
my $filter_max_date = 789; # int | Filter for transactions from no earlier than the specified date as a unix timestamp in seconds
my $filter_min_date = 789; # int | Filter for transactions from no later than the specified date as a unix timestamp in seconds
my $filter_sign = 'filter_sign_example'; # string | Filter for transactions with amount with the given sign.  Allowable values: ('positive', 'negative')
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->user_transaction_history_using_get(user_id => $user_id, currency_code => $currency_code, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->user_transaction_history_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The ID of the user for whom wallet transactions are being retrieved | 
 **currency_code** | **string**| Currency code of the user&#39;s wallet | 
 **filter_type** | **string**| Filter for transactions with specified type | [optional] 
 **filter_max_date** | **int**| Filter for transactions from no earlier than the specified date as a unix timestamp in seconds | [optional] 
 **filter_min_date** | **int**| Filter for transactions from no later than the specified date as a unix timestamp in seconds | [optional] 
 **filter_sign** | **string**| Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;) | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageWalletTransactionResource**](PageWalletTransactionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


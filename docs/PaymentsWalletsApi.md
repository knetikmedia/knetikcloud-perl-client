# KnetikCloud::PaymentsWalletsApi

## Load the API package
```perl
use KnetikCloud::Object::PaymentsWalletsApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_wallet**](PaymentsWalletsApi.md#get_user_wallet) | **GET** /users/{user_id}/wallets/{currency_code} | Returns the user&#39;s wallet for the given currency code
[**get_user_wallet_transactions**](PaymentsWalletsApi.md#get_user_wallet_transactions) | **GET** /users/{user_id}/wallets/{currency_code}/transactions | Retrieve a user&#39;s wallet transactions
[**get_user_wallets**](PaymentsWalletsApi.md#get_user_wallets) | **GET** /users/{user_id}/wallets | List all of a user&#39;s wallets
[**get_wallet_balances**](PaymentsWalletsApi.md#get_wallet_balances) | **GET** /wallets/totals | Retrieves a summation of wallet balances by currency code
[**get_wallet_transactions**](PaymentsWalletsApi.md#get_wallet_transactions) | **GET** /wallets/transactions | Retrieve wallet transactions across the system
[**get_wallets**](PaymentsWalletsApi.md#get_wallets) | **GET** /wallets | Retrieve a list of wallets across the system
[**update_wallet_balance**](PaymentsWalletsApi.md#update_wallet_balance) | **PUT** /users/{user_id}/wallets/{currency_code}/balance | Updates the balance for a user&#39;s wallet


# **get_user_wallet**
> SimpleWallet get_user_wallet(user_id => $user_id, currency_code => $currency_code)

Returns the user's wallet for the given currency code

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The ID of the user for whom wallet is being retrieved
my $currency_code = 'currency_code_example'; # string | Currency code of the user's wallet

eval { 
    my $result = $api_instance->get_user_wallet(user_id => $user_id, currency_code => $currency_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_user_wallet: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_wallet_transactions**
> PageResourceWalletTransactionResource get_user_wallet_transactions(user_id => $user_id, currency_code => $currency_code, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, size => $size, page => $page, order => $order)

Retrieve a user's wallet transactions

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

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
    my $result = $api_instance->get_user_wallet_transactions(user_id => $user_id, currency_code => $currency_code, filter_type => $filter_type, filter_max_date => $filter_max_date, filter_min_date => $filter_min_date, filter_sign => $filter_sign, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_user_wallet_transactions: $@\n";
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

[**PageResourceWalletTransactionResource**](PageResourceWalletTransactionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_wallets**
> ARRAY[SimpleWallet] get_user_wallets(user_id => $user_id)

List all of a user's wallets

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The ID of the user for whom wallets are being retrieved

eval { 
    my $result = $api_instance->get_user_wallets(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_user_wallets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| The ID of the user for whom wallets are being retrieved | 

### Return type

[**ARRAY[SimpleWallet]**](SimpleWallet.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallet_balances**
> PageResourceWalletTotalResponse get_wallet_balances()

Retrieves a summation of wallet balances by currency code

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);


eval { 
    my $result = $api_instance->get_wallet_balances();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallet_balances: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResourceWalletTotalResponse**](PageResourceWalletTotalResponse.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallet_transactions**
> PageResourceWalletTransactionResource get_wallet_transactions(filter_invoice => $filter_invoice, filter_type => $filter_type, filter_date => $filter_date, filter_sign => $filter_sign, filter_user_id => $filter_user_id, filter_username => $filter_username, filter_details => $filter_details, filter_currency_code => $filter_currency_code, size => $size, page => $page, order => $order)

Retrieve wallet transactions across the system

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_invoice = 56; # int | Filter for transactions from a specific invoice
my $filter_type = 'filter_type_example'; # string | Filter for transactions with specified type
my $filter_date = 'filter_date_example'; # string | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE).
my $filter_sign = 'filter_sign_example'; # string | Filter for transactions with amount with the given sign
my $filter_user_id = 56; # int | Filter for transactions for specific userId
my $filter_username = 'filter_username_example'; # string | Filter for transactions for specific username that start with the given string
my $filter_details = 'filter_details_example'; # string | Filter for transactions for specific details that start with the given string
my $filter_currency_code = 'filter_currency_code_example'; # string | Filter for transactions for specific currency code
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_wallet_transactions(filter_invoice => $filter_invoice, filter_type => $filter_type, filter_date => $filter_date, filter_sign => $filter_sign, filter_user_id => $filter_user_id, filter_username => $filter_username, filter_details => $filter_details, filter_currency_code => $filter_currency_code, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallet_transactions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **int**| Filter for transactions from a specific invoice | [optional] 
 **filter_type** | **string**| Filter for transactions with specified type | [optional] 
 **filter_date** | **string**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds. Can be repeated for a range, eg: GT,123,LT,456  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_sign** | **string**| Filter for transactions with amount with the given sign | [optional] 
 **filter_user_id** | **int**| Filter for transactions for specific userId | [optional] 
 **filter_username** | **string**| Filter for transactions for specific username that start with the given string | [optional] 
 **filter_details** | **string**| Filter for transactions for specific details that start with the given string | [optional] 
 **filter_currency_code** | **string**| Filter for transactions for specific currency code | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceWalletTransactionResource**](PageResourceWalletTransactionResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallets**
> PageResourceSimpleWallet get_wallets(size => $size, page => $page, order => $order)

Retrieve a list of wallets across the system

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_wallets(size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->get_wallets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSimpleWallet**](PageResourceSimpleWallet.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_wallet_balance**
> WalletTransactionResource update_wallet_balance(user_id => $user_id, currency_code => $currency_code, request => $request)

Updates the balance for a user's wallet

### Example 
```perl
use Data::Dumper;
use KnetikCloud::PaymentsWalletsApi;
my $api_instance = KnetikCloud::PaymentsWalletsApi->new(

    # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
    access_token => 'YOUR_ACCESS_TOKEN',
    # Configure OAuth2 access token for authorization: oauth2_password_grant
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $user_id = 56; # int | The ID of the user for whom wallet is being modified
my $currency_code = 'currency_code_example'; # string | Currency code of the user's wallet
my $request = KnetikCloud::Object::WalletAlterRequest->new(); # WalletAlterRequest | The requested balance modification to be made to the user's wallet

eval { 
    my $result = $api_instance->update_wallet_balance(user_id => $user_id, currency_code => $currency_code, request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsWalletsApi->update_wallet_balance: $@\n";
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# WWW::SwaggerClient::PaymentsTransactionsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::PaymentsTransactionsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction_using_get**](PaymentsTransactionsApi.md#get_transaction_using_get) | **GET** /transactions/{id} | Get the details for a single transaction
[**get_transactions_using_get**](PaymentsTransactionsApi.md#get_transactions_using_get) | **GET** /transactions | List and search transactions
[**refund_transaction_using_post**](PaymentsTransactionsApi.md#refund_transaction_using_post) | **POST** /transactions/{id}/refunds | Refund a payment transaction, in full or in part


# **get_transaction_using_get**
> TransactionResource get_transaction_using_get(id => $id)

Get the details for a single transaction

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsTransactionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsTransactionsApi->new();
my $id = 56; # int | id

eval { 
    my $result = $api_instance->get_transaction_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsTransactionsApi->get_transaction_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | 

### Return type

[**TransactionResource**](TransactionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_transactions_using_get**
> PageResourceTransactionResource get_transactions_using_get(filter_invoice => $filter_invoice, size => $size, page => $page, order => $order)

List and search transactions

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsTransactionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsTransactionsApi->new();
my $filter_invoice = 56; # int | Filter for transactions from a specific invoice
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_transactions_using_get(filter_invoice => $filter_invoice, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsTransactionsApi->get_transactions_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_invoice** | **int**| Filter for transactions from a specific invoice | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceTransactionResource**](PageResourceTransactionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refund_transaction_using_post**
> RefundResource refund_transaction_using_post(id => $id, request => $request)

Refund a payment transaction, in full or in part

Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::PaymentsTransactionsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::PaymentsTransactionsApi->new();
my $id = 56; # int | The id of the transaction to refund
my $request = WWW::SwaggerClient::Object::RefundRequest->new(); # RefundRequest | Request containing refund details

eval { 
    my $result = $api_instance->refund_transaction_using_post(id => $id, request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PaymentsTransactionsApi->refund_transaction_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the transaction to refund | 
 **request** | [**RefundRequest**](RefundRequest.md)| Request containing refund details | [optional] 

### Return type

[**RefundResource**](RefundResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


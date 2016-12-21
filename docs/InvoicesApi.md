# WWW::SwaggerClient::InvoicesApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::InvoicesApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invoice_using_post**](InvoicesApi.md#create_invoice_using_post) | **POST** /invoices | Create an invoice
[**get_invoice_history_using_get**](InvoicesApi.md#get_invoice_history_using_get) | **GET** /invoices | Retrieve invoices
[**get_invoice_using_get**](InvoicesApi.md#get_invoice_using_get) | **GET** /invoices/{id} | Retrieve an invoice
[**get_logs_using_get**](InvoicesApi.md#get_logs_using_get) | **GET** /invoices/{id}/logs | List invoice logs
[**list_ful_fillment_statuses_using_get**](InvoicesApi.md#list_ful_fillment_statuses_using_get) | **GET** /invoices/fulfillment-statuses | Lists available fulfillment statuses
[**list_payment_statuses_using_get**](InvoicesApi.md#list_payment_statuses_using_get) | **GET** /invoices/payment-statuses | Lists available payment statuses
[**pay_invoice_using_post**](InvoicesApi.md#pay_invoice_using_post) | **POST** /invoices/{id}/payments | Trigger payment of an invoice
[**set_item_fulfillment_status_using_put**](InvoicesApi.md#set_item_fulfillment_status_using_put) | **PUT** /invoices/{id}/items/{sku}/fulfillment-status | Set the fulfillment status of an invoice item
[**set_order_notes_using_put**](InvoicesApi.md#set_order_notes_using_put) | **PUT** /invoices/{id}/order-notes | Set the order notes of an invoice
[**set_payment_status_using_put**](InvoicesApi.md#set_payment_status_using_put) | **PUT** /invoices/{id}/payment-status | Set the payment status of an invoice
[**update_billing_info_using_put**](InvoicesApi.md#update_billing_info_using_put) | **PUT** /invoices/{id}/billing-address | Set or update billing info


# **create_invoice_using_post**
> ARRAY[InvoiceResource] create_invoice_using_post(req => $req)

Create an invoice

Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $req = WWW::SwaggerClient::Object::InvoiceCreateRequest->new(); # InvoiceCreateRequest | Invoice to be created

eval { 
    my $result = $api_instance->create_invoice_using_post(req => $req);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->create_invoice_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**InvoiceCreateRequest**](InvoiceCreateRequest.md)| Invoice to be created | [optional] 

### Return type

[**ARRAY[InvoiceResource]**](InvoiceResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoice_history_using_get**
> PageResourceInvoiceResource get_invoice_history_using_get(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_created_date => $filter_created_date, size => $size, page => $page, order => $order)

Retrieve invoices

Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $filter_user = 56; # int | The id of a user to get invoices for. Automtically added if not being called with admin permissions.
my $filter_email = 'filter_email_example'; # string | Filters invoices by customer's email. Admins only.
my $filter_fulfillment_status = 'filter_fulfillment_status_example'; # string | Filters invoices by fulfillment status type. Can be a comma separated list of statuses
my $filter_payment_status = 'filter_payment_status_example'; # string | Filters invoices by payment status type. Can be a comma separated list of statuses
my $filter_item_name = 'filter_item_name_example'; # string | Filters invoices by item name containing the given string
my $filter_created_date = 'filter_created_date_example'; # string | Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date=GT,1452154258,LT,1554254874
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_invoice_history_using_get(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_created_date => $filter_created_date, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_invoice_history_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_user** | **int**| The id of a user to get invoices for. Automtically added if not being called with admin permissions. | [optional] 
 **filter_email** | **string**| Filters invoices by customer&#39;s email. Admins only. | [optional] 
 **filter_fulfillment_status** | **string**| Filters invoices by fulfillment status type. Can be a comma separated list of statuses | [optional] 
 **filter_payment_status** | **string**| Filters invoices by payment status type. Can be a comma separated list of statuses | [optional] 
 **filter_item_name** | **string**| Filters invoices by item name containing the given string | [optional] 
 **filter_created_date** | **string**| Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceInvoiceResource**](PageResourceInvoiceResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoice_using_get**
> InvoiceResource get_invoice_using_get(id => $id, postal_code => $postal_code)

Retrieve an invoice

The postal code associated with the invoice may be required for security purposes if the invoice has one set and the config postal_code_required is set to true. Send 'none' if the invoice has no postal code.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $postal_code = 'postal_code_example'; # string | The postal code of the invoice or 'none'.

eval { 
    my $result = $api_instance->get_invoice_using_get(id => $id, postal_code => $postal_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_invoice_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **postal_code** | **string**| The postal code of the invoice or &#39;none&#39;. | [optional] 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_logs_using_get**
> PageResourceInvoiceLogEntry get_logs_using_get(id => $id, size => $size, page => $page)

List invoice logs

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_logs_using_get(id => $id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_logs_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceInvoiceLogEntry**](PageResourceInvoiceLogEntry.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_ful_fillment_statuses_using_get**
> ARRAY[string] list_ful_fillment_statuses_using_get()

Lists available fulfillment statuses

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();

eval { 
    my $result = $api_instance->list_ful_fillment_statuses_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->list_ful_fillment_statuses_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_payment_statuses_using_get**
> ARRAY[string] list_payment_statuses_using_get()

Lists available payment statuses

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();

eval { 
    my $result = $api_instance->list_payment_statuses_using_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->list_payment_statuses_using_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pay_invoice_using_post**
> pay_invoice_using_post(id => $id, request => $request)

Trigger payment of an invoice

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $request = WWW::SwaggerClient::Object::PayBySavedMethodRequest->new(); # PayBySavedMethodRequest | Payment info

eval { 
    $api_instance->pay_invoice_using_post(id => $id, request => $request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->pay_invoice_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **request** | [**PayBySavedMethodRequest**](PayBySavedMethodRequest.md)| Payment info | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_item_fulfillment_status_using_put**
> set_item_fulfillment_status_using_put(id => $id, sku => $sku, status => $status)

Set the fulfillment status of an invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $sku = 'sku_example'; # string | The sku of an item in the invoice
my $status = WWW::SwaggerClient::Object::string->new(); # string | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'

eval { 
    $api_instance->set_item_fulfillment_status_using_put(id => $id, sku => $sku, status => $status);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_item_fulfillment_status_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **sku** | **string**| The sku of an item in the invoice | 
 **status** | **string**| The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_order_notes_using_put**
> set_order_notes_using_put(id => $id, order_notes => $order_notes)

Set the order notes of an invoice

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $order_notes = WWW::SwaggerClient::Object::string->new(); # string | Payment status info

eval { 
    $api_instance->set_order_notes_using_put(id => $id, order_notes => $order_notes);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_order_notes_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **order_notes** | **string**| Payment status info | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_payment_status_using_put**
> set_payment_status_using_put(id => $id, request => $request)

Set the payment status of an invoice

This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $request = WWW::SwaggerClient::Object::InvoicePaymentStatusRequest->new(); # InvoicePaymentStatusRequest | Payment status info

eval { 
    $api_instance->set_payment_status_using_put(id => $id, request => $request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_payment_status_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **request** | [**InvoicePaymentStatusRequest**](InvoicePaymentStatusRequest.md)| Payment status info | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_billing_info_using_put**
> update_billing_info_using_put(id => $id, billing_info_request => $billing_info_request)

Set or update billing info

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::InvoicesApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::InvoicesApi->new();
my $id = 56; # int | The id of the invoice
my $billing_info_request = WWW::SwaggerClient::Object::AddressResource->new(); # AddressResource | Address info

eval { 
    $api_instance->update_billing_info_using_put(id => $id, billing_info_request => $billing_info_request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->update_billing_info_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **billing_info_request** | [**AddressResource**](AddressResource.md)| Address info | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# KnetikCloud::InvoicesApi

## Load the API package
```perl
use KnetikCloud::Object::InvoicesApi;
```

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_invoice**](InvoicesApi.md#create_invoice) | **POST** /invoices | Create an invoice
[**get_ful_fillment_statuses**](InvoicesApi.md#get_ful_fillment_statuses) | **GET** /invoices/fulfillment-statuses | Lists available fulfillment statuses
[**get_invoice**](InvoicesApi.md#get_invoice) | **GET** /invoices/{id} | Retrieve an invoice
[**get_invoice_logs**](InvoicesApi.md#get_invoice_logs) | **GET** /invoices/{id}/logs | List invoice logs
[**get_invoices**](InvoicesApi.md#get_invoices) | **GET** /invoices | Retrieve invoices
[**get_payment_statuses**](InvoicesApi.md#get_payment_statuses) | **GET** /invoices/payment-statuses | Lists available payment statuses
[**pay_invoice**](InvoicesApi.md#pay_invoice) | **POST** /invoices/{id}/payments | Pay an invoice using a saved payment method
[**set_bundled_invoice_item_fulfillment_status**](InvoicesApi.md#set_bundled_invoice_item_fulfillment_status) | **PUT** /invoices/{id}/items/{bundleSku}/bundled-skus/{sku}/fulfillment-status | Set the fulfillment status of a bundled invoice item
[**set_external_ref**](InvoicesApi.md#set_external_ref) | **PUT** /invoices/{id}/external-ref | Set the external reference of an invoice
[**set_invoice_item_fulfillment_status**](InvoicesApi.md#set_invoice_item_fulfillment_status) | **PUT** /invoices/{id}/items/{sku}/fulfillment-status | Set the fulfillment status of an invoice item
[**set_order_notes**](InvoicesApi.md#set_order_notes) | **PUT** /invoices/{id}/order-notes | Set the order notes of an invoice
[**set_payment_status**](InvoicesApi.md#set_payment_status) | **PUT** /invoices/{id}/payment-status | Set the payment status of an invoice
[**update_billing_info**](InvoicesApi.md#update_billing_info) | **PUT** /invoices/{id}/billing-address | Set or update billing info


# **create_invoice**
> ARRAY[InvoiceResource] create_invoice(req => $req)

Create an invoice

Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $req = KnetikCloud::Object::InvoiceCreateRequest->new(); # InvoiceCreateRequest | Invoice to be created

eval { 
    my $result = $api_instance->create_invoice(req => $req);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->create_invoice: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | [**InvoiceCreateRequest**](InvoiceCreateRequest.md)| Invoice to be created | [optional] 

### Return type

[**ARRAY[InvoiceResource]**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ful_fillment_statuses**
> ARRAY[string] get_ful_fillment_statuses()

Lists available fulfillment statuses

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(
);


eval { 
    my $result = $api_instance->get_ful_fillment_statuses();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_ful_fillment_statuses: $@\n";
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

# **get_invoice**
> InvoiceResource get_invoice(id => $id)

Retrieve an invoice

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice

eval { 
    my $result = $api_instance->get_invoice(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_invoice: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 

### Return type

[**InvoiceResource**](InvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoice_logs**
> PageResourceInvoiceLogEntry get_invoice_logs(id => $id, size => $size, page => $page)

List invoice logs

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1

eval { 
    my $result = $api_instance->get_invoice_logs(id => $id, size => $size, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_invoice_logs: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoices**
> PageResourceInvoiceResource get_invoices(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_external_ref => $filter_external_ref, filter_created_date => $filter_created_date, filter_vendor_ids => $filter_vendor_ids, filter_currency => $filter_currency, filter_shipping_state_name => $filter_shipping_state_name, filter_shipping_country_name => $filter_shipping_country_name, filter_shipping => $filter_shipping, filter_vendor_name => $filter_vendor_name, filter_sku => $filter_sku, size => $size, page => $page, order => $order)

Retrieve invoices

Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $filter_user = 56; # int | The id of a user to get invoices for. Automtically added if not being called with admin permissions.
my $filter_email = 'filter_email_example'; # string | Filters invoices by customer's email. Admins only.
my $filter_fulfillment_status = 'filter_fulfillment_status_example'; # string | Filters invoices by fulfillment status type. Can be a comma separated list of statuses
my $filter_payment_status = 'filter_payment_status_example'; # string | Filters invoices by payment status type. Can be a comma separated list of statuses
my $filter_item_name = 'filter_item_name_example'; # string | Filters invoices by item name containing the given string
my $filter_external_ref = 'filter_external_ref_example'; # string | Filters invoices by external reference.
my $filter_created_date = 'filter_created_date_example'; # string | Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date=GT,1452154258,LT,1554254874
my $filter_vendor_ids = 'filter_vendor_ids_example'; # string | Filters invoices for ones from one of the vendors whose id is in the given comma separated list
my $filter_currency = 'filter_currency_example'; # string | Filters invoices by currency. ISO3 currency code
my $filter_shipping_state_name = 'filter_shipping_state_name_example'; # string | Filters invoices by shipping address: Exact match state name
my $filter_shipping_country_name = 'filter_shipping_country_name_example'; # string | Filters invoices by shipping address: Exact match country name
my $filter_shipping = 'filter_shipping_example'; # string | Filters invoices by shipping price. Multiple values possible for range search. Format: filter_shipping=OP,ts&... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_shipping=GT,14.58,LT,15.54
my $filter_vendor_name = 'filter_vendor_name_example'; # string | Filters invoices by vendor name starting with given string
my $filter_sku = 'filter_sku_example'; # string | Filters invoices by item sku
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_invoices(filter_user => $filter_user, filter_email => $filter_email, filter_fulfillment_status => $filter_fulfillment_status, filter_payment_status => $filter_payment_status, filter_item_name => $filter_item_name, filter_external_ref => $filter_external_ref, filter_created_date => $filter_created_date, filter_vendor_ids => $filter_vendor_ids, filter_currency => $filter_currency, filter_shipping_state_name => $filter_shipping_state_name, filter_shipping_country_name => $filter_shipping_country_name, filter_shipping => $filter_shipping, filter_vendor_name => $filter_vendor_name, filter_sku => $filter_sku, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_invoices: $@\n";
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
 **filter_external_ref** | **string**| Filters invoices by external reference. | [optional] 
 **filter_created_date** | **string**| Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 | [optional] 
 **filter_vendor_ids** | **string**| Filters invoices for ones from one of the vendors whose id is in the given comma separated list | [optional] 
 **filter_currency** | **string**| Filters invoices by currency. ISO3 currency code | [optional] 
 **filter_shipping_state_name** | **string**| Filters invoices by shipping address: Exact match state name | [optional] 
 **filter_shipping_country_name** | **string**| Filters invoices by shipping address: Exact match country name | [optional] 
 **filter_shipping** | **string**| Filters invoices by shipping price. Multiple values possible for range search. Format: filter_shipping&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ). Ex: filter_shipping&#x3D;GT,14.58,LT,15.54 | [optional] 
 **filter_vendor_name** | **string**| Filters invoices by vendor name starting with given string | [optional] 
 **filter_sku** | **string**| Filters invoices by item sku | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceInvoiceResource**](PageResourceInvoiceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_payment_statuses**
> ARRAY[string] get_payment_statuses()

Lists available payment statuses

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(
);


eval { 
    my $result = $api_instance->get_payment_statuses();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InvoicesApi->get_payment_statuses: $@\n";
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

# **pay_invoice**
> pay_invoice(id => $id, request => $request)

Pay an invoice using a saved payment method

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $request = KnetikCloud::Object::PayBySavedMethodRequest->new(); # PayBySavedMethodRequest | The payment method details. Will default to the appropriate user's wallet in the invoice currency if ommited.

eval { 
    $api_instance->pay_invoice(id => $id, request => $request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->pay_invoice: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **request** | [**PayBySavedMethodRequest**](PayBySavedMethodRequest.md)| The payment method details. Will default to the appropriate user&#39;s wallet in the invoice currency if ommited. | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_bundled_invoice_item_fulfillment_status**
> set_bundled_invoice_item_fulfillment_status(id => $id, bundle_sku => $bundle_sku, sku => $sku, status => $status)

Set the fulfillment status of a bundled invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $bundle_sku = 'bundle_sku_example'; # string | The sku of the bundle in the invoice that contains the given target
my $sku = 'sku_example'; # string | The sku of an item in the bundle in the invoice
my $status = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'

eval { 
    $api_instance->set_bundled_invoice_item_fulfillment_status(id => $id, bundle_sku => $bundle_sku, sku => $sku, status => $status);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_bundled_invoice_item_fulfillment_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **bundle_sku** | **string**| The sku of the bundle in the invoice that contains the given target | 
 **sku** | **string**| The sku of an item in the bundle in the invoice | 
 **status** | [**StringWrapper**](StringWrapper.md)| The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_external_ref**
> set_external_ref(id => $id, external_ref => $external_ref)

Set the external reference of an invoice

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $external_ref = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | External reference info

eval { 
    $api_instance->set_external_ref(id => $id, external_ref => $external_ref);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_external_ref: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **external_ref** | [**StringWrapper**](StringWrapper.md)| External reference info | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_invoice_item_fulfillment_status**
> set_invoice_item_fulfillment_status(id => $id, sku => $sku, status => $status)

Set the fulfillment status of an invoice item

This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $sku = 'sku_example'; # string | The sku of an item in the invoice
my $status = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  'unfulfilled', 'fulfilled', 'not fulfillable', 'failed', 'processing', 'failed_permanent', 'delayed'

eval { 
    $api_instance->set_invoice_item_fulfillment_status(id => $id, sku => $sku, status => $status);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_invoice_item_fulfillment_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **sku** | **string**| The sku of an item in the invoice | 
 **status** | [**StringWrapper**](StringWrapper.md)| The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_order_notes**
> set_order_notes(id => $id, order_notes => $order_notes)

Set the order notes of an invoice

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $order_notes = KnetikCloud::Object::StringWrapper->new(); # StringWrapper | Payment status info

eval { 
    $api_instance->set_order_notes(id => $id, order_notes => $order_notes);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_order_notes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice | 
 **order_notes** | [**StringWrapper**](StringWrapper.md)| Payment status info | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_payment_status**
> set_payment_status(id => $id, request => $request)

Set the payment status of an invoice

This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $request = KnetikCloud::Object::InvoicePaymentStatusRequest->new(); # InvoicePaymentStatusRequest | Payment status info

eval { 
    $api_instance->set_payment_status(id => $id, request => $request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->set_payment_status: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_billing_info**
> update_billing_info(id => $id, billing_info_request => $billing_info_request)

Set or update billing info

### Example 
```perl
use Data::Dumper;
use KnetikCloud::InvoicesApi;
my $api_instance = KnetikCloud::InvoicesApi->new(

    # Configure OAuth2 access token for authorization: OAuth2
    access_token => 'YOUR_ACCESS_TOKEN',
);

my $id = 56; # int | The id of the invoice
my $billing_info_request = KnetikCloud::Object::AddressResource->new(); # AddressResource | Address info

eval { 
    $api_instance->update_billing_info(id => $id, billing_info_request => $billing_info_request);
};
if ($@) {
    warn "Exception when calling InvoicesApi->update_billing_info: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


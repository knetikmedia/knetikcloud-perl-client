# WWW::SwaggerClient::StoreShoppingCartsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreShoppingCartsApi;
```

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_discount_using_post**](StoreShoppingCartsApi.md#add_discount_using_post) | **POST** /carts/{id}/discounts | Adds a coupon to the cart
[**add_item_using_post**](StoreShoppingCartsApi.md#add_item_using_post) | **POST** /carts/{id}/items | Add an item to the cart
[**assign_cart_using_put**](StoreShoppingCartsApi.md#assign_cart_using_put) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**check_shippable_using_get**](StoreShoppingCartsApi.md#check_shippable_using_get) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**create_cart_using_post**](StoreShoppingCartsApi.md#create_cart_using_post) | **POST** /carts | Creates a new cart from scratch
[**get_cart_using_get**](StoreShoppingCartsApi.md#get_cart_using_get) | **GET** /carts/{id} | Returns the cart with the given GUID
[**get_countries_using_get**](StoreShoppingCartsApi.md#get_countries_using_get) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**modify_shipping_address_using_put**](StoreShoppingCartsApi.md#modify_shipping_address_using_put) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address
[**remove_discount_using_delete**](StoreShoppingCartsApi.md#remove_discount_using_delete) | **DELETE** /carts/{id}/discounts/{code} | Removes a coupon from the cart
[**search_carts_using_get**](StoreShoppingCartsApi.md#search_carts_using_get) | **GET** /carts | Get a list of carts
[**set_cart_currency_using_put**](StoreShoppingCartsApi.md#set_cart_currency_using_put) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**update_item_using_put**](StoreShoppingCartsApi.md#update_item_using_put) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart


# **add_discount_using_post**
> add_discount_using_post(id => $id, sku_request => $sku_request)

Adds a coupon to the cart

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $sku_request = WWW::SwaggerClient::Object::SkuRequest->new(); # SkuRequest | The request of the sku

eval { 
    $api_instance->add_discount_using_post(id => $id, sku_request => $sku_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->add_discount_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **sku_request** | [**SkuRequest**](SkuRequest.md)| The request of the sku | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_item_using_post**
> add_item_using_post(id => $id, cart_item_request => $cart_item_request)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_item_request = WWW::SwaggerClient::Object::CartItemRequest->new(); # CartItemRequest | The cart item request object

eval { 
    $api_instance->add_item_using_post(id => $id, cart_item_request => $cart_item_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->add_item_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **cart_item_request** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assign_cart_using_put**
> assign_cart_using_put(id => $id, user_id => $user_id)

Sets the owner of a cart if none is set already

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $user_id = WWW::SwaggerClient::Object::int->new(); # int | The id of the user

eval { 
    $api_instance->assign_cart_using_put(id => $id, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->assign_cart_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **user_id** | **int**| The id of the user | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_shippable_using_get**
> CartShippableResponse check_shippable_using_get(id => $id)

Returns whether a cart requires shipping

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->check_shippable_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->check_shippable_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_cart_using_post**
> string create_cart_using_post(owner => $owner, currency_code => $currency_code)

Creates a new cart from scratch

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $owner = 56; # int | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
my $currency_code = 'currency_code_example'; # string | Set the currency for the cart, by currency code. May be disallowed by site settings.

eval { 
    my $result = $api_instance->create_cart_using_post(owner => $owner, currency_code => $currency_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->create_cart_using_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **int**| Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required | [optional] 
 **currency_code** | **string**| Set the currency for the cart, by currency code. May be disallowed by site settings. | [optional] 

### Return type

**string**

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cart_using_get**
> Cart get_cart_using_get(id => $id)

Returns the cart with the given GUID

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->get_cart_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_cart_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_countries_using_get**
> SampleCountriesResponse get_countries_using_get(id => $id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->get_countries_using_get(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_countries_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modify_shipping_address_using_put**
> modify_shipping_address_using_put(id => $id, cart_shipping_address_request => $cart_shipping_address_request)

Modifies or sets the order shipping address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_shipping_address_request = WWW::SwaggerClient::Object::CartShippingAddressRequest->new(); # CartShippingAddressRequest | The cart shipping address request object

eval { 
    $api_instance->modify_shipping_address_using_put(id => $id, cart_shipping_address_request => $cart_shipping_address_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->modify_shipping_address_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **cart_shipping_address_request** | [**CartShippingAddressRequest**](CartShippingAddressRequest.md)| The cart shipping address request object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_discount_using_delete**
> remove_discount_using_delete(id => $id, code => $code)

Removes a coupon from the cart

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $code = 'code_example'; # string | The SKU code of the coupon to remove

eval { 
    $api_instance->remove_discount_using_delete(id => $id, code => $code);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->remove_discount_using_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **code** | **string**| The SKU code of the coupon to remove | 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_carts_using_get**
> PageResourceCartSummary search_carts_using_get(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order)

Get a list of carts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $filter_owner_id = 56; # int | Filter by the id of the owner
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->search_carts_using_get(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->search_carts_using_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_owner_id** | **int**| Filter by the id of the owner | [optional] 
 **size** | **int**| The number of objects returned per page | [optional] [default to 25]
 **page** | **int**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **string**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceCartSummary**](PageResourceCartSummary.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_cart_currency_using_put**
> set_cart_currency_using_put(id => $id, currency_code => $currency_code)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $currency_code = WWW::SwaggerClient::Object::string->new(); # string | The code of the currency

eval { 
    $api_instance->set_cart_currency_using_put(id => $id, currency_code => $currency_code);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->set_cart_currency_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **currency_code** | **string**| The code of the currency | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_using_put**
> update_item_using_put(id => $id, cart_item_request => $cart_item_request)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: knetik_oauth
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_item_request = WWW::SwaggerClient::Object::CartItemRequest->new(); # CartItemRequest | The cart item request object

eval { 
    $api_instance->update_item_using_put(id => $id, cart_item_request => $cart_item_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->update_item_using_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **cart_item_request** | [**CartItemRequest**](CartItemRequest.md)| The cart item request object | [optional] 

### Return type

void (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


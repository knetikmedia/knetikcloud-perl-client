# WWW::SwaggerClient::StoreShoppingCartsApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::StoreShoppingCartsApi;
```

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_custom_discount**](StoreShoppingCartsApi.md#add_custom_discount) | **POST** /carts/{id}/custom-discounts | Adds a custom discount to the cart
[**add_discount_to_cart**](StoreShoppingCartsApi.md#add_discount_to_cart) | **POST** /carts/{id}/discounts | Adds a discount coupon to the cart
[**add_item_to_cart**](StoreShoppingCartsApi.md#add_item_to_cart) | **POST** /carts/{id}/items | Add an item to the cart
[**create_cart**](StoreShoppingCartsApi.md#create_cart) | **POST** /carts | Create a cart
[**get_cart**](StoreShoppingCartsApi.md#get_cart) | **GET** /carts/{id} | Returns the cart with the given GUID
[**get_carts**](StoreShoppingCartsApi.md#get_carts) | **GET** /carts | Get a list of carts
[**get_shippable**](StoreShoppingCartsApi.md#get_shippable) | **GET** /carts/{id}/shippable | Returns whether a cart requires shipping
[**get_shipping_countries**](StoreShoppingCartsApi.md#get_shipping_countries) | **GET** /carts/{id}/countries | Get the list of available shipping countries per vendor
[**remove_discount_from_cart**](StoreShoppingCartsApi.md#remove_discount_from_cart) | **DELETE** /carts/{id}/discounts/{code} | Removes a discount coupon from the cart
[**set_cart_currency**](StoreShoppingCartsApi.md#set_cart_currency) | **PUT** /carts/{id}/currency | Sets the currency to use for the cart
[**set_cart_owner**](StoreShoppingCartsApi.md#set_cart_owner) | **PUT** /carts/{id}/owner | Sets the owner of a cart if none is set already
[**update_item_in_cart**](StoreShoppingCartsApi.md#update_item_in_cart) | **PUT** /carts/{id}/items | Changes the quantity of an item already in the cart
[**update_shipping_address**](StoreShoppingCartsApi.md#update_shipping_address) | **PUT** /carts/{id}/shipping-address | Modifies or sets the order shipping address


# **add_custom_discount**
> add_custom_discount(id => $id, custom_discount => $custom_discount)

Adds a custom discount to the cart

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $custom_discount = WWW::SwaggerClient::Object::CouponDefinition->new(); # CouponDefinition | The details of the discount to add

eval { 
    $api_instance->add_custom_discount(id => $id, custom_discount => $custom_discount);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->add_custom_discount: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 
 **custom_discount** | [**CouponDefinition**](CouponDefinition.md)| The details of the discount to add | [optional] 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_discount_to_cart**
> add_discount_to_cart(id => $id, sku_request => $sku_request)

Adds a discount coupon to the cart

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $sku_request = WWW::SwaggerClient::Object::SkuRequest->new(); # SkuRequest | The request of the sku

eval { 
    $api_instance->add_discount_to_cart(id => $id, sku_request => $sku_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->add_discount_to_cart: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_item_to_cart**
> add_item_to_cart(id => $id, cart_item_request => $cart_item_request)

Add an item to the cart

Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_item_request = WWW::SwaggerClient::Object::CartItemRequest->new(); # CartItemRequest | The cart item request object

eval { 
    $api_instance->add_item_to_cart(id => $id, cart_item_request => $cart_item_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->add_item_to_cart: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_cart**
> string create_cart(owner => $owner, currency_code => $currency_code)

Create a cart

You don't have to have a user to create a cart but the API requires authentication to checkout

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $owner = 56; # int | Set the owner of a cart. If not specified, defaults to the calling user's id. If specified and is not the calling user's id, SHOPPING_CARTS_ADMIN permission is required
my $currency_code = 'currency_code_example'; # string | Set the currency for the cart, by currency code. May be disallowed by site settings.

eval { 
    my $result = $api_instance->create_cart(owner => $owner, currency_code => $currency_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->create_cart: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cart**
> Cart get_cart(id => $id)

Returns the cart with the given GUID

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->get_cart(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_cart: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**Cart**](Cart.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_carts**
> PageResourceCartSummary get_carts(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order)

Get a list of carts

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $filter_owner_id = 56; # int | Filter by the id of the owner
my $size = 56; # int | The number of objects returned per page
my $page = 56; # int | The number of the page returned, starting with 1
my $order = 'order_example'; # string | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]

eval { 
    my $result = $api_instance->get_carts(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_carts: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shippable**
> CartShippableResponse get_shippable(id => $id)

Returns whether a cart requires shipping

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->get_shippable(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_shippable: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**CartShippableResponse**](CartShippableResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shipping_countries**
> SampleCountriesResponse get_shipping_countries(id => $id)

Get the list of available shipping countries per vendor

Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart

eval { 
    my $result = $api_instance->get_shipping_countries(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->get_shipping_countries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| The id of the cart | 

### Return type

[**SampleCountriesResponse**](SampleCountriesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_discount_from_cart**
> remove_discount_from_cart(id => $id, code => $code)

Removes a discount coupon from the cart

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $code = 'code_example'; # string | The SKU code of the coupon to remove

eval { 
    $api_instance->remove_discount_from_cart(id => $id, code => $code);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->remove_discount_from_cart: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_cart_currency**
> set_cart_currency(id => $id, currency_code => $currency_code)

Sets the currency to use for the cart

May be disallowed by site settings.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $currency_code = WWW::SwaggerClient::Object::string->new(); # string | The code of the currency

eval { 
    $api_instance->set_cart_currency(id => $id, currency_code => $currency_code);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->set_cart_currency: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_cart_owner**
> set_cart_owner(id => $id, user_id => $user_id)

Sets the owner of a cart if none is set already

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $user_id = WWW::SwaggerClient::Object::int->new(); # int | The id of the user

eval { 
    $api_instance->set_cart_owner(id => $id, user_id => $user_id);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->set_cart_owner: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_in_cart**
> update_item_in_cart(id => $id, cart_item_request => $cart_item_request)

Changes the quantity of an item already in the cart

A quantity of zero will remove the item from the cart altogether.

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_item_request = WWW::SwaggerClient::Object::CartItemRequest->new(); # CartItemRequest | The cart item request object

eval { 
    $api_instance->update_item_in_cart(id => $id, cart_item_request => $cart_item_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->update_item_in_cart: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_shipping_address**
> update_shipping_address(id => $id, cart_shipping_address_request => $cart_shipping_address_request)

Modifies or sets the order shipping address

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::Configuration;
use WWW::SwaggerClient::StoreShoppingCartsApi;

# Configure OAuth2 access token for authorization: OAuth2
$WWW::SwaggerClient::Configuration::access_token = 'YOUR_ACCESS_TOKEN';

my $api_instance = WWW::SwaggerClient::StoreShoppingCartsApi->new();
my $id = 'id_example'; # string | The id of the cart
my $cart_shipping_address_request = WWW::SwaggerClient::Object::CartShippingAddressRequest->new(); # CartShippingAddressRequest | The cart shipping address request object

eval { 
    $api_instance->update_shipping_address(id => $id, cart_shipping_address_request => $cart_shipping_address_request);
};
if ($@) {
    warn "Exception when calling StoreShoppingCartsApi->update_shipping_address: $@\n";
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


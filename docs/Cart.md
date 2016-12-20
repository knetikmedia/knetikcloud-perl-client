# WWW::SwaggerClient::Object::Cart

## Load the model package
```perl
use WWW::SwaggerClient::Object::Cart;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_tax** | **double** |  | [optional] 
**coupons** | [**ARRAY[CouponDefinition]**](CouponDefinition.md) |  | [optional] 
**created** | **int** |  | [optional] 
**currency_code** | **string** |  | [optional] 
**discount_total** | **double** |  | [optional] 
**error_code** | **int** |  | [optional] 
**error_message** | **string** |  | [optional] 
**grand_total** | **double** |  | [optional] 
**id** | **string** |  | [optional] 
**invoice_id** | **double** |  | [optional] 
**items** | [**ARRAY[CartLineItem]**](CartLineItem.md) |  | [optional] 
**owner** | **int** |  | [optional] 
**selected_shipping_options** | [**ARRAY[CartShippingOption]**](CartShippingOption.md) |  | [optional] 
**shippable** | **boolean** |  | [optional] 
**shipping_address** | [**CartShippingAddressRequest**](CartShippingAddressRequest.md) |  | [optional] 
**shipping_cost** | **double** |  | [optional] 
**shipping_options** | [**HASH[string,Set]**](Set.md) |  | [optional] 
**state_tax** | **double** |  | [optional] 
**status** | **string** |  | [optional] 
**subtotal** | **double** |  | [optional] 
**updated** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



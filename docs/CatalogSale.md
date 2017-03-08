# KnetikCloud::Object::CatalogSale

## Load the model package
```perl
use KnetikCloud::Object::CatalogSale;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_code** | **string** | The iso3 code for the currency for this discountValue.  The sku purchased will have to match for it this sale to apply | 
**discount_type** | **string** | The way in which the price is reduced. &#39;value&#39; means subtracting directly, &#39;percentage&#39; means subtracting by the price times the discountValue (1.0 &#x3D;&#x3D; 100%) | 
**discount_value** | **double** | The amount deducted from the price, in the same currencyCode as the item | [optional] 
**id** | **int** | The id of the sale | [optional] 
**item** | **int** | The id of the item this sale applies to.  Leave null to use other filters | [optional] 
**long_description** | **string** | The long description of the sale | [optional] 
**name** | **string** | The name of the sale.  Max 40 characters | 
**sale_end_date** | **int** | The date the sale ends, null for never.  Unix timestamp in seconds | [optional] 
**sale_start_date** | **int** | The date the sale begins.  Unix timestamp in seconds | 
**short_description** | **string** | The short description of the sale.  Max 140 characters | [optional] 
**tag** | **string** | The tag this sale applies to.  Leave null to skip this filter (applies to all tags) | [optional] 
**vendor** | **int** | The id of the vendor this sale applies to.  Leave null to skip this filter (applies to all vendors) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



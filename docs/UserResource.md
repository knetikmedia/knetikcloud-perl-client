# KnetikCloud::Object::UserResource

## Load the model package
```perl
use KnetikCloud::Object::UserResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_properties** | [**HASH[string,Property]**](Property.md) | A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template | [optional] 
**address** | **string** | The first line of the user&#39;s address (private) | [optional] 
**address2** | **string** | The second line of user&#39;s address (private) | [optional] 
**avatar_url** | **string** | The url of the user&#39;s avatar image | [optional] 
**children** | [**ARRAY[UserRelationshipReferenceResource]**](UserRelationshipReferenceResource.md) | Relationships where this user is the parent. Read-Only, manage through separate endpoints | [optional] 
**city** | **string** | The user&#39;s city (private) | [optional] 
**country_code** | **string** | The ISO3 code for the country from the user&#39;s address (private). Will be filled in based on GeoIP country at registration if not provided. | [optional] 
**currency_code** | **string** | The code for the user&#39;s real money currency (private) | [optional] 
**date_of_birth** | **int** | The user&#39;s date of birth (private) as a unix timestamp | [optional] 
**description** | **string** | The user&#39;s self description (private) | [optional] 
**display_name** | **string** | The chosen display name of the user, defaults to username if not present | [optional] 
**email** | **string** | The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) | 
**first_name** | **string** | The user&#39;s first name (private) | [optional] 
**fullname** | **string** | The user&#39;s full name (private) | [optional] 
**gender** | **string** | The user&#39;s gender (private) | [optional] 
**id** | **int** | The id of the user | [optional] 
**language_code** | **string** | The ISO3 code for the user&#39;s currency (private) | [optional] 
**last_activity** | **int** | The date the user last interacted with the API (private) | [optional] 
**last_name** | **string** | The user&#39;s last name (private) | [optional] 
**last_updated** | **int** | The date the user&#39;s info was last updated as a unix timestamp | [optional] 
**member_since** | **int** | The user&#39;s date of registration as a unix timestamp | [optional] 
**mobile_number** | **string** | The user&#39;s mobile phone number (private) | [optional] 
**parents** | [**ARRAY[UserRelationshipReferenceResource]**](UserRelationshipReferenceResource.md) | Relationships where this user is the child. Read-Only, manage through separate endpoints | [optional] 
**password** | **string** | The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing | [optional] 
**postal_code** | **string** | The user&#39;s postal code (private) | [optional] 
**state** | **string** | The user&#39;s state (private) | [optional] 
**tags** | **ARRAY[string]** | Tags on the user. Can only be set by admin. Max length per tag is 64 characters | [optional] 
**template** | **string** | A user template this user is validated against (private). May be null and no validation of properties will be done | [optional] 
**timezone_code** | **string** | The code for the user&#39;s timezone (private) | [optional] 
**username** | **string** | The login username for the user (private). May be set to match email if system does not require usernames separately. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# KnetikCloud::Object::DeviceResource

## Load the model package
```perl
use KnetikCloud::Object::DeviceResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorization** | **string** | The authorization code for the device | [optional] 
**condition** | **string** | The current condition of the device (New, Defective, Reconditioned) | [optional] 
**created_date** | **int** | The date the device log was created | [optional] 
**data** | **HASH[string,string]** | The key/value pairs for extended data | [optional] 
**description** | **string** | The description of the device | [optional] 
**device_type** | **string** | The type of the device | [optional] 
**id** | **int** | The unique ID for this device. Cannot be changed once created | 
**location** | **string** | The location of the device | [optional] 
**mac_address** | **string** | The MAC (media access control) address of the device | [optional] 
**make** | **string** | The make of the device | [optional] 
**model** | **string** | The model of the device | [optional] 
**name** | **string** | The name of the device | [optional] 
**os** | **string** | The OS (operating system) on the device | [optional] 
**serial** | **string** | The serial number of the device | [optional] 
**status** | **string** | The current status the device (Active, Pending Active, Inactive, Repair | [optional] 
**updated_date** | **int** | The date the device log was updated | [optional] 
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The user that owns the device | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



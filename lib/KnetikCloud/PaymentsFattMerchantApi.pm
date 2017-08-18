=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package KnetikCloud::PaymentsFattMerchantApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'KnetikCloud::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = KnetikCloud::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_or_update_fatt_merchant_payment_method
#
# Create or update a FattMerchant payment method for a user
# 
# @param FattMerchantPaymentMethodRequest $request Request containing payment method information for user (optional)
{
    my $params = {
    'request' => {
        data_type => 'FattMerchantPaymentMethodRequest',
        description => 'Request containing payment method information for user',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_or_update_fatt_merchant_payment_method' } = { 
    	summary => 'Create or update a FattMerchant payment method for a user',
        params => $params,
        returns => 'PaymentMethodResource',
        };
}
# @return PaymentMethodResource
#
sub create_or_update_fatt_merchant_payment_method {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/fattmerchant/payment-methods';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'request'}) {
        $_body_data = $args{'request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PaymentMethodResource', $response);
    return $_response_object;
}

1;
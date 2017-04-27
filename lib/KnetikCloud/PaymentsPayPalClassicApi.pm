=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

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
package KnetikCloud::PaymentsPayPalClassicApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;
use KnetikCloud::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => KnetikCloud::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_pay_pal_billing_agreement_url
#
# Create a PayPal Classic billing agreement for the user
# 
# @param CreateBillingAgreementRequest $request The request to create a PayPal billing agreement (optional)
{
    my $params = {
    'request' => {
        data_type => 'CreateBillingAgreementRequest',
        description => 'The request to create a PayPal billing agreement',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_pay_pal_billing_agreement_url' } = { 
    	summary => 'Create a PayPal Classic billing agreement for the user',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub create_pay_pal_billing_agreement_url {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/agreements/start';

    my $_method = 'POST';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# create_pay_pal_express_checkout
#
# Create a payment token for PayPal express checkout
# 
# @param CreatePayPalPaymentRequest $request The request to create a PayPal payment token (optional)
{
    my $params = {
    'request' => {
        data_type => 'CreatePayPalPaymentRequest',
        description => 'The request to create a PayPal payment token',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_pay_pal_express_checkout' } = { 
    	summary => 'Create a payment token for PayPal express checkout',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub create_pay_pal_express_checkout {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/checkout/start';

    my $_method = 'POST';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# finalize_pay_pal_billing_agreement
#
# Finalizes a billing agreement after the user has accepted through PayPal
# 
# @param FinalizeBillingAgreementRequest $request The request to finalize a PayPal billing agreement (optional)
{
    my $params = {
    'request' => {
        data_type => 'FinalizeBillingAgreementRequest',
        description => 'The request to finalize a PayPal billing agreement',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'finalize_pay_pal_billing_agreement' } = { 
    	summary => 'Finalizes a billing agreement after the user has accepted through PayPal',
        params => $params,
        returns => 'int',
        };
}
# @return int
#
sub finalize_pay_pal_billing_agreement {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/agreements/finish';

    my $_method = 'POST';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('int', $response);
    return $_response_object;
}

#
# finalize_pay_pal_checkout
#
# Finalizes a payment after the user has completed checkout with PayPal
# 
# @param FinalizePayPalPaymentRequest $request The request to finalize the payment (optional)
{
    my $params = {
    'request' => {
        data_type => 'FinalizePayPalPaymentRequest',
        description => 'The request to finalize the payment',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'finalize_pay_pal_checkout' } = { 
    	summary => 'Finalizes a payment after the user has completed checkout with PayPal',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub finalize_pay_pal_checkout {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/checkout/finish';

    my $_method = 'POST';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
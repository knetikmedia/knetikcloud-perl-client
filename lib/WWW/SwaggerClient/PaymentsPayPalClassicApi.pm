=begin comment

Knetik Platform API Documentation Latest

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::PaymentsPayPalClassicApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_billing_agreement_url_using_post
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
    __PACKAGE__->method_documentation->{ 'create_billing_agreement_url_using_post' } = { 
    	summary => 'Create a PayPal Classic billing agreement for the user',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub create_billing_agreement_url_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/agreements/start';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# express_checkout_using_post
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
    __PACKAGE__->method_documentation->{ 'express_checkout_using_post' } = { 
    	summary => 'Create a payment token for PayPal express checkout',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub express_checkout_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/checkout/start';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# finalize_billing_agreement_using_post
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
    __PACKAGE__->method_documentation->{ 'finalize_billing_agreement_using_post' } = { 
    	summary => 'Finalizes a billing agreement after the user has accepted through PayPal',
        params => $params,
        returns => 'int',
        };
}
# @return int
#
sub finalize_billing_agreement_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/agreements/finish';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# finalize_checkout_using_post
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
    __PACKAGE__->method_documentation->{ 'finalize_checkout_using_post' } = { 
    	summary => 'Finalizes a payment after the user has completed checkout with PayPal',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub finalize_checkout_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/payment/provider/paypal/classic/checkout/finish';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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

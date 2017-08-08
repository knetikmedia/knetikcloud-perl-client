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
package KnetikCloud::StoreCouponsApi;

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
# create_coupon_item
#
# Create a coupon item
# 
# @param boolean $cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
# @param CouponItem $coupon_item The coupon item object (optional)
{
    my $params = {
    'cascade' => {
        data_type => 'boolean',
        description => 'Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.',
        required => '0',
    },
    'coupon_item' => {
        data_type => 'CouponItem',
        description => 'The coupon item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_coupon_item' } = { 
    	summary => 'Create a coupon item',
        params => $params,
        returns => 'CouponItem',
        };
}
# @return CouponItem
#
sub create_coupon_item {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/coupons';

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

    # query params
    if ( exists $args{'cascade'}) {
        $query_params->{'cascade'} = $self->{api_client}->to_query_value($args{'cascade'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'coupon_item'}) {
        $_body_data = $args{'coupon_item'};
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
    my $_response_object = $self->{api_client}->deserialize('CouponItem', $response);
    return $_response_object;
}

#
# create_coupon_template
#
# Create a coupon template
# 
# @param ItemTemplateResource $coupon_template_resource The new coupon template (optional)
{
    my $params = {
    'coupon_template_resource' => {
        data_type => 'ItemTemplateResource',
        description => 'The new coupon template',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_coupon_template' } = { 
    	summary => 'Create a coupon template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub create_coupon_template {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/coupons/templates';

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
    if ( exists $args{'coupon_template_resource'}) {
        $_body_data = $args{'coupon_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('ItemTemplateResource', $response);
    return $_response_object;
}

#
# delete_coupon_item
#
# Delete a coupon item
# 
# @param int $id The id of the coupon (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the coupon',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_coupon_item' } = { 
    	summary => 'Delete a coupon item',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_coupon_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_coupon_item");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_coupon_template
#
# Delete a coupon template
# 
# @param string $id The id of the template (required)
# @param string $cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'cascade' => {
        data_type => 'string',
        description => 'force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_coupon_template' } = { 
    	summary => 'Delete a coupon template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_coupon_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_coupon_template");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/templates/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'cascade'}) {
        $query_params->{'cascade'} = $self->{api_client}->to_query_value($args{'cascade'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_coupon_item
#
# Get a single coupon item
# 
# @param int $id The id of the coupon (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the coupon',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_coupon_item' } = { 
    	summary => 'Get a single coupon item',
        params => $params,
        returns => 'CouponItem',
        };
}
# @return CouponItem
#
sub get_coupon_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_coupon_item");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('CouponItem', $response);
    return $_response_object;
}

#
# get_coupon_template
#
# Get a single coupon template
# 
# @param string $id The id of the template (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_coupon_template' } = { 
    	summary => 'Get a single coupon template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub get_coupon_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_coupon_template");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/templates/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ItemTemplateResource', $response);
    return $_response_object;
}

#
# get_coupon_templates
#
# List and search coupon templates
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned, starting with 1',
        required => '0',
    },
    'order' => {
        data_type => 'string',
        description => 'A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_coupon_templates' } = { 
    	summary => 'List and search coupon templates',
        params => $params,
        returns => 'PageResourceItemTemplateResource',
        };
}
# @return PageResourceItemTemplateResource
#
sub get_coupon_templates {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/coupons/templates';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceItemTemplateResource', $response);
    return $_response_object;
}

#
# update_coupon_item
#
# Update a coupon item
# 
# @param int $id The id of the coupon (required)
# @param boolean $cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
# @param CouponItem $coupon_item The coupon item object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the coupon',
        required => '1',
    },
    'cascade' => {
        data_type => 'boolean',
        description => 'Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.',
        required => '0',
    },
    'coupon_item' => {
        data_type => 'CouponItem',
        description => 'The coupon item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_coupon_item' } = { 
    	summary => 'Update a coupon item',
        params => $params,
        returns => 'CouponItem',
        };
}
# @return CouponItem
#
sub update_coupon_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_coupon_item");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/{id}';

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

    # query params
    if ( exists $args{'cascade'}) {
        $query_params->{'cascade'} = $self->{api_client}->to_query_value($args{'cascade'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'coupon_item'}) {
        $_body_data = $args{'coupon_item'};
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
    my $_response_object = $self->{api_client}->deserialize('CouponItem', $response);
    return $_response_object;
}

#
# update_coupon_template
#
# Update a coupon template
# 
# @param string $id The id of the template (required)
# @param ItemTemplateResource $coupon_template_resource The coupon template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'coupon_template_resource' => {
        data_type => 'ItemTemplateResource',
        description => 'The coupon template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_coupon_template' } = { 
    	summary => 'Update a coupon template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub update_coupon_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_coupon_template");
    }

    # parse inputs
    my $_resource_path = '/store/coupons/templates/{id}';

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

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'coupon_template_resource'}) {
        $_body_data = $args{'coupon_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('ItemTemplateResource', $response);
    return $_response_object;
}

1;

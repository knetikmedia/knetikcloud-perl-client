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
package KnetikCloud::StoreBundlesApi;

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
# create_bundle_item
#
# Create a bundle item
# 
# @param boolean $cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
# @param BundleItem $bundle_item The bundle item object (optional)
{
    my $params = {
    'cascade' => {
        data_type => 'boolean',
        description => 'Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.',
        required => '0',
    },
    'bundle_item' => {
        data_type => 'BundleItem',
        description => 'The bundle item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_bundle_item' } = { 
    	summary => 'Create a bundle item',
        params => $params,
        returns => 'BundleItem',
        };
}
# @return BundleItem
#
sub create_bundle_item {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/bundles';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'bundle_item'}) {
        $_body_data = $args{'bundle_item'};
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
    my $_response_object = $self->{api_client}->deserialize('BundleItem', $response);
    return $_response_object;
}

#
# create_bundle_template
#
# Create a bundle template
# 
# @param ItemTemplateResource $bundle_template_resource The new bundle template (optional)
{
    my $params = {
    'bundle_template_resource' => {
        data_type => 'ItemTemplateResource',
        description => 'The new bundle template',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_bundle_template' } = { 
    	summary => 'Create a bundle template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub create_bundle_template {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/bundles/templates';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'bundle_template_resource'}) {
        $_body_data = $args{'bundle_template_resource'};
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
# delete_bundle_item
#
# Delete a bundle item
# 
# @param int $id The id of the bundle (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the bundle',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_bundle_item' } = { 
    	summary => 'Delete a bundle item',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_bundle_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_bundle_item");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
# delete_bundle_template
#
# Delete a bundle template
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
    __PACKAGE__->method_documentation->{ 'delete_bundle_template' } = { 
    	summary => 'Delete a bundle template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_bundle_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_bundle_template");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/templates/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
# get_bundle_item
#
# Get a single bundle item
# 
# @param int $id The id of the bundle (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the bundle',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_bundle_item' } = { 
    	summary => 'Get a single bundle item',
        params => $params,
        returns => 'BundleItem',
        };
}
# @return BundleItem
#
sub get_bundle_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bundle_item");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BundleItem', $response);
    return $_response_object;
}

#
# get_bundle_template
#
# Get a single bundle template
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
    __PACKAGE__->method_documentation->{ 'get_bundle_template' } = { 
    	summary => 'Get a single bundle template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub get_bundle_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bundle_template");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/templates/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    my $auth_settings = [qw()];

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
# get_bundle_templates
#
# List and search bundle templates
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
    __PACKAGE__->method_documentation->{ 'get_bundle_templates' } = { 
    	summary => 'List and search bundle templates',
        params => $params,
        returns => 'PageResourceItemTemplateResource',
        };
}
# @return PageResourceItemTemplateResource
#
sub get_bundle_templates {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/bundles/templates';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    my $auth_settings = [qw()];

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
# update_bundle_item
#
# Update a bundle item
# 
# @param int $id The id of the bundle (required)
# @param boolean $cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (optional, default to false)
# @param BundleItem $bundle_item The bundle item object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the bundle',
        required => '1',
    },
    'cascade' => {
        data_type => 'boolean',
        description => 'Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.',
        required => '0',
    },
    'bundle_item' => {
        data_type => 'BundleItem',
        description => 'The bundle item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_bundle_item' } = { 
    	summary => 'Update a bundle item',
        params => $params,
        returns => 'BundleItem',
        };
}
# @return BundleItem
#
sub update_bundle_item {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_bundle_item");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'bundle_item'}) {
        $_body_data = $args{'bundle_item'};
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
    my $_response_object = $self->{api_client}->deserialize('BundleItem', $response);
    return $_response_object;
}

#
# update_bundle_template
#
# Update a bundle template
# 
# @param string $id The id of the template (required)
# @param ItemTemplateResource $bundle_template_resource The bundle template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'bundle_template_resource' => {
        data_type => 'ItemTemplateResource',
        description => 'The bundle template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_bundle_template' } = { 
    	summary => 'Update a bundle template',
        params => $params,
        returns => 'ItemTemplateResource',
        };
}
# @return ItemTemplateResource
#
sub update_bundle_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_bundle_template");
    }

    # parse inputs
    my $_resource_path = '/store/bundles/templates/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'bundle_template_resource'}) {
        $_body_data = $args{'bundle_template_resource'};
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
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
package KnetikCloud::BRERuleEngineCategoriesApi;

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
# create_bre_category_template
#
# Create a BRE category template
# 
# @param TemplateResource $template The category template to create (optional)
{
    my $params = {
    'template' => {
        data_type => 'TemplateResource',
        description => 'The category template to create',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_bre_category_template' } = { 
    	summary => 'Create a BRE category template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub create_bre_category_template {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/categories/templates';

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
    if ( exists $args{'template'}) {
        $_body_data = $args{'template'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# delete_bre_category_template
#
# Delete a BRE category template
# 
# @param string $id The id of the template (required)
# @param string $cascade The value needed to delete used templates (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'cascade' => {
        data_type => 'string',
        description => 'The value needed to delete used templates',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_bre_category_template' } = { 
    	summary => 'Delete a BRE category template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_bre_category_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_bre_category_template");
    }

    # parse inputs
    my $_resource_path = '/bre/categories/templates/{id}';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_bre_categories
#
# List categories
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
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
    };
    __PACKAGE__->method_documentation->{ 'get_bre_categories' } = { 
    	summary => 'List categories',
        params => $params,
        returns => 'PageResourceBreCategoryResource',
        };
}
# @return PageResourceBreCategoryResource
#
sub get_bre_categories {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/categories';

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

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceBreCategoryResource', $response);
    return $_response_object;
}

#
# get_bre_category
#
# Get a single category
# 
# @param string $name The category name (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The category name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_bre_category' } = { 
    	summary => 'Get a single category',
        params => $params,
        returns => 'BreCategoryResource',
        };
}
# @return BreCategoryResource
#
sub get_bre_category {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling get_bre_category");
    }

    # parse inputs
    my $_resource_path = '/bre/categories/{name}';

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
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreCategoryResource', $response);
    return $_response_object;
}

#
# get_bre_category_template
#
# Get a single BRE category template
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
    __PACKAGE__->method_documentation->{ 'get_bre_category_template' } = { 
    	summary => 'Get a single BRE category template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub get_bre_category_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bre_category_template");
    }

    # parse inputs
    my $_resource_path = '/bre/categories/templates/{id}';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# get_bre_category_templates
#
# List and search BRE category templates
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
    __PACKAGE__->method_documentation->{ 'get_bre_category_templates' } = { 
    	summary => 'List and search BRE category templates',
        params => $params,
        returns => 'PageResourceTemplateResource',
        };
}
# @return PageResourceTemplateResource
#
sub get_bre_category_templates {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/categories/templates';

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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceTemplateResource', $response);
    return $_response_object;
}

#
# update_bre_category
#
# Update a category
# 
# @param string $name The category name (required)
# @param BreCategoryResource $category The updated BRE category information (optional)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The category name',
        required => '1',
    },
    'category' => {
        data_type => 'BreCategoryResource',
        description => 'The updated BRE category information',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_bre_category' } = { 
    	summary => 'Update a category',
        params => $params,
        returns => 'BreCategoryResource',
        };
}
# @return BreCategoryResource
#
sub update_bre_category {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling update_bre_category");
    }

    # parse inputs
    my $_resource_path = '/bre/categories/{name}';

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
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'category'}) {
        $_body_data = $args{'category'};
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
    my $_response_object = $self->{api_client}->deserialize('BreCategoryResource', $response);
    return $_response_object;
}

#
# update_bre_category_template
#
# Update a BRE category template
# 
# @param string $id The id of the template (required)
# @param TemplateResource $template The updated category template definition (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'template' => {
        data_type => 'TemplateResource',
        description => 'The updated category template definition',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_bre_category_template' } = { 
    	summary => 'Update a BRE category template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub update_bre_category_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_bre_category_template");
    }

    # parse inputs
    my $_resource_path = '/bre/categories/templates/{id}';

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
    if ( exists $args{'template'}) {
        $_body_data = $args{'template'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

1;

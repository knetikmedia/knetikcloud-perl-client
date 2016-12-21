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
package WWW::SwaggerClient::StoreApi;

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
# create_item_template_using_post
#
# Create an item template
# 
# @param StoreItemTemplateResource $item_template_resource The new item template (optional)
{
    my $params = {
    'item_template_resource' => {
        data_type => 'StoreItemTemplateResource',
        description => 'The new item template',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_item_template_using_post' } = { 
    	summary => 'Create an item template',
        params => $params,
        returns => 'StoreItemTemplateResource',
        };
}
# @return StoreItemTemplateResource
#
sub create_item_template_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/items/templates';
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
    if ( exists $args{'item_template_resource'}) {
        $_body_data = $args{'item_template_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('StoreItemTemplateResource', $response);
    return $_response_object;
}

#
# create_store_item_external_using_post
#
# Create a store item
# 
# @param StoreItem $store_item The store item object (optional)
{
    my $params = {
    'store_item' => {
        data_type => 'StoreItem',
        description => 'The store item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_store_item_external_using_post' } = { 
    	summary => 'Create a store item',
        params => $params,
        returns => 'StoreItem',
        };
}
# @return StoreItem
#
sub create_store_item_external_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/items';
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
    if ( exists $args{'store_item'}) {
        $_body_data = $args{'store_item'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('StoreItem', $response);
    return $_response_object;
}

#
# delete_item_template_using_delete
#
# Delete an item template
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
    __PACKAGE__->method_documentation->{ 'delete_item_template_using_delete' } = { 
    	summary => 'Delete an item template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_item_template_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_item_template_using_delete");
    }

    # parse inputs
    my $_resource_path = '/store/items/templates/{id}';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_store_item_using_delete1
#
# Delete a store item
# 
# @param int $id The id of the item (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the item',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_store_item_using_delete1' } = { 
    	summary => 'Delete a store item',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_store_item_using_delete1 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_store_item_using_delete1");
    }

    # parse inputs
    my $_resource_path = '/store/items/{id}';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_item_template_using_get
#
# Get a single item template
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
    __PACKAGE__->method_documentation->{ 'get_item_template_using_get' } = { 
    	summary => 'Get a single item template',
        params => $params,
        returns => 'StoreItemTemplateResource',
        };
}
# @return StoreItemTemplateResource
#
sub get_item_template_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_item_template_using_get");
    }

    # parse inputs
    my $_resource_path = '/store/items/templates/{id}';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('StoreItemTemplateResource', $response);
    return $_response_object;
}

#
# get_item_templates_using_get
#
# List and search item templates
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
    __PACKAGE__->method_documentation->{ 'get_item_templates_using_get' } = { 
    	summary => 'List and search item templates',
        params => $params,
        returns => 'PageResourceStoreItemTemplateResource',
        };
}
# @return PageResourceStoreItemTemplateResource
#
sub get_item_templates_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/items/templates';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceStoreItemTemplateResource', $response);
    return $_response_object;
}

#
# get_store_item_using_get1
#
# Get a single store item
# 
# @param int $id The id of the item (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the item',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_store_item_using_get1' } = { 
    	summary => 'Get a single store item',
        params => $params,
        returns => 'StoreItem',
        };
}
# @return StoreItem
#
sub get_store_item_using_get1 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_store_item_using_get1");
    }

    # parse inputs
    my $_resource_path = '/store/items/{id}';
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
    my $_response_object = $self->{api_client}->deserialize('StoreItem', $response);
    return $_response_object;
}

#
# get_store_items_using_get
#
# List and search store items
# 
# @param string $filter_name_search Filter for items whose name starts with a given string. (optional)
# @param string $filter_unique_key Filter for items whose unique_key is a given string. (optional)
# @param boolean $filter_published Filter for skus that have been published. (optional)
# @param boolean $filter_displayable Filter for items that are displayable. (optional)
# @param string $filter_start A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
# @param string $filter_end A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
# @param string $filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
# @param string $filter_stop_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
# @param string $filter_sku Filter for skus whose name starts with a given string. (optional)
# @param string $filter_price A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ). (optional)
# @param string $filter_tag A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags. (optional)
# @param string $filter_items_by_type Filter for item type based on its type hint. (optional)
# @param string $filter_bundled_skus Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39; (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_name_search' => {
        data_type => 'string',
        description => 'Filter for items whose name starts with a given string.',
        required => '0',
    },
    'filter_unique_key' => {
        data_type => 'string',
        description => 'Filter for items whose unique_key is a given string.',
        required => '0',
    },
    'filter_published' => {
        data_type => 'boolean',
        description => 'Filter for skus that have been published.',
        required => '0',
    },
    'filter_displayable' => {
        data_type => 'boolean',
        description => 'Filter for items that are displayable.',
        required => '0',
    },
    'filter_start' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).',
        required => '0',
    },
    'filter_end' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).',
        required => '0',
    },
    'filter_start_date' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).',
        required => '0',
    },
    'filter_stop_date' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).',
        required => '0',
    },
    'filter_sku' => {
        data_type => 'string',
        description => 'Filter for skus whose name starts with a given string.',
        required => '0',
    },
    'filter_price' => {
        data_type => 'string',
        description => 'A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).',
        required => '0',
    },
    'filter_tag' => {
        data_type => 'string',
        description => 'A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.',
        required => '0',
    },
    'filter_items_by_type' => {
        data_type => 'string',
        description => 'Filter for item type based on its type hint.',
        required => '0',
    },
    'filter_bundled_skus' => {
        data_type => 'string',
        description => 'Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39;',
        required => '0',
    },
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
    __PACKAGE__->method_documentation->{ 'get_store_items_using_get' } = { 
    	summary => 'List and search store items',
        params => $params,
        returns => 'PageResourceStoreItem',
        };
}
# @return PageResourceStoreItem
#
sub get_store_items_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store/items';
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
    if ( exists $args{'filter_name_search'}) {
        $query_params->{'filter_name_search'} = $self->{api_client}->to_query_value($args{'filter_name_search'});
    }

    # query params
    if ( exists $args{'filter_unique_key'}) {
        $query_params->{'filter_unique_key'} = $self->{api_client}->to_query_value($args{'filter_unique_key'});
    }

    # query params
    if ( exists $args{'filter_published'}) {
        $query_params->{'filter_published'} = $self->{api_client}->to_query_value($args{'filter_published'});
    }

    # query params
    if ( exists $args{'filter_displayable'}) {
        $query_params->{'filter_displayable'} = $self->{api_client}->to_query_value($args{'filter_displayable'});
    }

    # query params
    if ( exists $args{'filter_start'}) {
        $query_params->{'filter_start'} = $self->{api_client}->to_query_value($args{'filter_start'});
    }

    # query params
    if ( exists $args{'filter_end'}) {
        $query_params->{'filter_end'} = $self->{api_client}->to_query_value($args{'filter_end'});
    }

    # query params
    if ( exists $args{'filter_start_date'}) {
        $query_params->{'filter_start_date'} = $self->{api_client}->to_query_value($args{'filter_start_date'});
    }

    # query params
    if ( exists $args{'filter_stop_date'}) {
        $query_params->{'filter_stop_date'} = $self->{api_client}->to_query_value($args{'filter_stop_date'});
    }

    # query params
    if ( exists $args{'filter_sku'}) {
        $query_params->{'filter_sku'} = $self->{api_client}->to_query_value($args{'filter_sku'});
    }

    # query params
    if ( exists $args{'filter_price'}) {
        $query_params->{'filter_price'} = $self->{api_client}->to_query_value($args{'filter_price'});
    }

    # query params
    if ( exists $args{'filter_tag'}) {
        $query_params->{'filter_tag'} = $self->{api_client}->to_query_value($args{'filter_tag'});
    }

    # query params
    if ( exists $args{'filter_items_by_type'}) {
        $query_params->{'filter_items_by_type'} = $self->{api_client}->to_query_value($args{'filter_items_by_type'});
    }

    # query params
    if ( exists $args{'filter_bundled_skus'}) {
        $query_params->{'filter_bundled_skus'} = $self->{api_client}->to_query_value($args{'filter_bundled_skus'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('PageResourceStoreItem', $response);
    return $_response_object;
}

#
# get_using_get2
#
# Get a listing of store items
# 
# @param StoreListRequest $store_list_request The store list request object (optional)
{
    my $params = {
    'store_list_request' => {
        data_type => 'StoreListRequest',
        description => 'The store list request object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_using_get2' } = { 
    	summary => 'Get a listing of store items',
        params => $params,
        returns => 'PageResourceStoreItem',
        };
}
# @return PageResourceStoreItem
#
sub get_using_get2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/store';
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

    my $_body_data;
    # body params
    if ( exists $args{'store_list_request'}) {
        $_body_data = $args{'store_list_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceStoreItem', $response);
    return $_response_object;
}

#
# update_item_template_using_put
#
# Update an item template
# 
# @param string $id The id of the template (required)
# @param StoreItemTemplateResource $item_template_resource The item template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'item_template_resource' => {
        data_type => 'StoreItemTemplateResource',
        description => 'The item template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_item_template_using_put' } = { 
    	summary => 'Update an item template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_item_template_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_item_template_using_put");
    }

    # parse inputs
    my $_resource_path = '/store/items/templates/{id}';
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
    if ( exists $args{'item_template_resource'}) {
        $_body_data = $args{'item_template_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_store_item_external_using_put
#
# Update a store item
# 
# @param int $id The id of the item (required)
# @param StoreItem $store_item The store item object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the item',
        required => '1',
    },
    'store_item' => {
        data_type => 'StoreItem',
        description => 'The store item object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_store_item_external_using_put' } = { 
    	summary => 'Update a store item',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_store_item_external_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_store_item_external_using_put");
    }

    # parse inputs
    my $_resource_path = '/store/items/{id}';
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
    if ( exists $args{'store_item'}) {
        $_body_data = $args{'store_item'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;

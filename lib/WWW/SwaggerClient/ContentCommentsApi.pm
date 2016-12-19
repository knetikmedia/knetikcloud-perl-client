=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
package WWW::SwaggerClient::ContentCommentsApi;

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
# add_comment_using_post
#
# Add a new comment
# 
# @param CommentResource $comment_resource The comment to be added (optional)
{
    my $params = {
    'comment_resource' => {
        data_type => 'CommentResource',
        description => 'The comment to be added',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_comment_using_post' } = { 
    	summary => 'Add a new comment',
        params => $params,
        returns => 'CommentResource',
        };
}
# @return CommentResource
#
sub add_comment_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/comments';
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
    if ( exists $args{'comment_resource'}) {
        $_body_data = $args{'comment_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('CommentResource', $response);
    return $_response_object;
}

#
# delete_comment_using_delete
#
# Delete a comment
# 
# @param int $id The comment id (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The comment id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_comment_using_delete' } = { 
    	summary => 'Delete a comment',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_comment_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_comment_using_delete");
    }

    # parse inputs
    my $_resource_path = '/comments/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# get_comment_using_get
#
# Returns a comment by comment id
# 
# @param int $id The comment id (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The comment id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_comment_using_get' } = { 
    	summary => 'Returns a comment by comment id',
        params => $params,
        returns => 'CommentResource',
        };
}
# @return CommentResource
#
sub get_comment_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_comment_using_get");
    }

    # parse inputs
    my $_resource_path = '/comments/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('CommentResource', $response);
    return $_response_object;
}

#
# get_comments_using_get
#
# Returns a page of comments
# 
# @param string $context Get comments by context type (required)
# @param int $context_id Get comments by context id (required)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'context' => {
        data_type => 'string',
        description => 'Get comments by context type',
        required => '1',
    },
    'context_id' => {
        data_type => 'int',
        description => 'Get comments by context id',
        required => '1',
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
    };
    __PACKAGE__->method_documentation->{ 'get_comments_using_get' } = { 
    	summary => 'Returns a page of comments',
        params => $params,
        returns => 'PageCommentResource',
        };
}
# @return PageCommentResource
#
sub get_comments_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'context' is set
    unless (exists $args{'context'}) {
      croak("Missing the required parameter 'context' when calling get_comments_using_get");
    }

    # verify the required parameter 'context_id' is set
    unless (exists $args{'context_id'}) {
      croak("Missing the required parameter 'context_id' when calling get_comments_using_get");
    }

    # parse inputs
    my $_resource_path = '/comments';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'context'}) {
        $query_params->{'context'} = $self->{api_client}->to_query_value($args{'context'});
    }

    # query params
    if ( exists $args{'context_id'}) {
        $query_params->{'context_id'} = $self->{api_client}->to_query_value($args{'context_id'});
    }

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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageCommentResource', $response);
    return $_response_object;
}

#
# search_comments_using_post
#
# Search the comment index
# 
# @param object $query The search query (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'query' => {
        data_type => 'object',
        description => 'The search query',
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
    };
    __PACKAGE__->method_documentation->{ 'search_comments_using_post' } = { 
    	summary => 'Search the comment index',
        params => $params,
        returns => 'CommentSearch',
        };
}
# @return CommentSearch
#
sub search_comments_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/comments/search';
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

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'query'}) {
        $_body_data = $args{'query'};
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
    my $_response_object = $self->{api_client}->deserialize('CommentSearch', $response);
    return $_response_object;
}

#
# update_comment_using_put
#
# Update comment content
# 
# @param int $id The comment id (required)
# @param string $content The comment content (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The comment id',
        required => '1',
    },
    'content' => {
        data_type => 'string',
        description => 'The comment content',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_comment_using_put' } = { 
    	summary => 'Update comment content',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_comment_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_comment_using_put");
    }

    # parse inputs
    my $_resource_path = '/comments/{id}/content';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    if ( exists $args{'content'}) {
        $_body_data = $args{'content'};
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

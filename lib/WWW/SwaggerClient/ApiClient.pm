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
package WWW::SwaggerClient::ApiClient;

use strict;
use warnings;
use utf8;

use MIME::Base64;
use LWP::UserAgent;
use HTTP::Headers;
use HTTP::Response;
use HTTP::Request::Common qw(DELETE POST GET HEAD PUT);
use HTTP::Status;
use URI::Query;
use JSON;
use URI::Escape;
use Scalar::Util;
use Log::Any qw($log);
use Carp;
use Module::Runtime qw(use_module);

use WWW::SwaggerClient::Configuration;

use base 'Class::Singleton';

sub _new_instance
{
    my $class = shift;
    my (%args) = (
        'ua' => LWP::UserAgent->new,
        'base_url' => 'https://integration.knetikcloud.com/',
        @_
    );
  
    return bless \%args, $class;
}

sub _cfg {'WWW::SwaggerClient::Configuration'}

# Set the user agent of the API client
#
# @param string $user_agent The user agent of the API client
#
sub set_user_agent {
    my ($self, $user_agent) = @_;
    $self->{http_user_agent}= $user_agent;
}

# Set timeout
#
# @param integer $seconds Number of seconds before timing out [set to 0 for no timeout]
# 
sub set_timeout {
    my ($self, $seconds) = @_;
    if (!looks_like_number($seconds)) {
        croak('Timeout variable must be numeric.');
    }
    $self->{http_timeout} = $seconds;
}

# make the HTTP request
# @param string $resourcePath path to method endpoint
# @param string $method method to call
# @param array $queryParams parameters to be place in query URL
# @param array $postData parameters to be placed in POST body
# @param array $headerParams parameters to be place in request header
# @return mixed
sub call_api {
    my $self = shift;
    my ($resource_path, $method, $query_params, $post_params, $header_params, $body_data, $auth_settings) = @_;
  
    # update parameters based on authentication settings
    $self->update_params_for_auth($header_params, $query_params, $auth_settings); 
  
  
    my $_url = $self->{base_url} . $resource_path;
  
    # build query 
    if (%$query_params) {
        $_url = ($_url . '?' . eval { URI::Query->new($query_params)->stringify });
    }
  
  
    # body data
    $body_data = to_json($body_data->to_hash) if defined $body_data && $body_data->can('to_hash'); # model to json string
    my $_body_data = %$post_params ? $post_params : $body_data;
  
    # Make the HTTP request
    my $_request;
    if ($method eq 'POST') {
        # multipart
        $header_params->{'Content-Type'} = lc $header_params->{'Content-Type'} eq 'multipart/form' ? 
            'form-data' : $header_params->{'Content-Type'};
        
        $_request = POST($_url, %$header_params, Content => $_body_data);
  
    }
    elsif ($method eq 'PUT') {
        # multipart
        $header_params->{'Content-Type'}  = lc $header_params->{'Content-Type'} eq 'multipart/form' ? 
            'form-data' : $header_params->{'Content-Type'};
  
        $_request = PUT($_url, %$header_params, Content => $_body_data);
  
    }
    elsif ($method eq 'GET') {
        my $headers = HTTP::Headers->new(%$header_params);
        $_request = GET($_url, %$header_params);
    }
    elsif ($method eq 'HEAD') {
        my $headers = HTTP::Headers->new(%$header_params);
        $_request = HEAD($_url,%$header_params); 
    }
    elsif ($method eq 'DELETE') { #TODO support form data
        my $headers = HTTP::Headers->new(%$header_params);
        $_request = DELETE($_url, %$headers);
    }
    elsif ($method eq 'PATCH') { #TODO
    }
    else {
    }
   
    $self->{ua}->timeout($self->{http_timeout} || $WWW::SwaggerClient::Configuration::http_timeout); 
    $self->{ua}->agent($self->{http_user_agent} || $WWW::SwaggerClient::Configuration::http_user_agent);
    
    $log->debugf("REQUEST: %s", $_request->as_string);
    my $_response = $self->{ua}->request($_request);
    $log->debugf("RESPONSE: %s", $_response->as_string);
  
    unless ($_response->is_success) {
        croak(sprintf "API Exception(%s): %s\n%s", $_response->code, $_response->message, $_response->content);
    }
       
    return $_response->content;
  
}

#  Take value and turn it into a string suitable for inclusion in
#  the path, by url-encoding.
#  @param string $value a string which will be part of the path
#  @return string the serialized object
sub to_path_value {
    my ($self, $value) = @_;
    return uri_escape($self->to_string($value));
}


# Take value and turn it into a string suitable for inclusion in
# the query, by imploding comma-separated if it's an object.
# If it's a string, pass through unchanged. It will be url-encoded
# later.
# @param object $object an object to be serialized to a string
# @return string the serialized object
sub to_query_value {
      my ($self, $object) = @_;
      if (ref($object) eq 'ARRAY') {
          return join(',', @$object);
      } else {
          return $self->to_string($object);
      }
}


# Take value and turn it into a string suitable for inclusion in
# the header. If it's a string, pass through unchanged
# If it's a datetime object, format it in ISO8601
# @param string $value a string which will be part of the header
# @return string the header string
sub to_header_value {
    my ($self, $value) = @_;
    return $self->to_string($value);
}

# Take value and turn it into a string suitable for inclusion in
# the http body (form parameter). If it's a string, pass through unchanged
# If it's a datetime object, format it in ISO8601
# @param string $value the value of the form parameter
# @return string the form string
sub to_form_value {
    my ($self, $value) = @_;
    return $self->to_string($value);
}

# Take value and turn it into a string suitable for inclusion in
# the parameter. If it's a string, pass through unchanged
# If it's a datetime object, format it in ISO8601
# @param string $value the value of the parameter
# @return string the header string
sub to_string {
    my ($self, $value) = @_;
    if (ref($value) eq "DateTime") { # datetime in ISO8601 format
        return $value->datetime();
    }
    else {
        return $value;
    }
}

# Deserialize a JSON string into an object
#  
# @param string $class class name is passed as a string
# @param string $data data of the body
# @return object an instance of $class
sub deserialize
{
    my ($self, $class, $data) = @_;
    $log->debugf("deserializing %s for %s", $data, $class);
  
    if (not defined $data) {
        return undef;
    } elsif ( (substr($class, 0, 5)) eq 'HASH[') { #hash
        if ($class =~ /^HASH\[(.*),(.*)\]$/) {
            my ($key_type, $type) = ($1, $2);
            my %hash;
            my $decoded_data = decode_json $data;
            foreach my $key (keys %$decoded_data) {
                if (ref $decoded_data->{$key} eq 'HASH') {
                    $hash{$key} = $self->deserialize($type, encode_json $decoded_data->{$key});
                } else {
                    $hash{$key} = $self->deserialize($type, $decoded_data->{$key});
                }
            }
            return \%hash;
        } else {
          #TODO log error
        }
    
    } elsif ( (substr($class, 0, 6)) eq 'ARRAY[' ) { # array of data
        return $data if $data eq '[]'; # return if empty array
    
        my $_sub_class = substr($class, 6, -1);
        my $_json_data = decode_json $data;
        my @_values = ();
        foreach my $_value (@$_json_data) {
            if (ref $_value eq 'ARRAY') {
                push @_values, $self->deserialize($_sub_class, encode_json $_value);
            } else {
                push @_values, $self->deserialize($_sub_class, $_value);
            }
        }
        return \@_values;
    } elsif ($class eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif (grep /^$class$/, ('string', 'int', 'float', 'bool', 'object')) {
        return $data;
    } else { # model
        my $_instance = use_module("WWW::SwaggerClient::Object::$class")->new;
        if (ref $data eq "HASH") {
            return $_instance->from_hash($data);
        } else { # string, need to json decode first
            return $_instance->from_hash(decode_json $data);
        }
    }
  
}

# return 'Accept' based on an array of accept provided
# @param [Array] header_accept_array Array fo 'Accept'
# @return String Accept (e.g. application/json)
sub select_header_accept
{
    my ($self, @header) = @_;
  
    if (@header == 0 || (@header == 1 && $header[0] eq '')) {
        return undef;
    } elsif (grep(/^application\/json$/i, @header)) {
        return 'application/json';
    } else {
        return join(',', @header);
    }
  
}

# return the content type based on an array of content-type provided
# @param [Array] content_type_array Array fo content-type
# @return String Content-Type (e.g. application/json)
sub select_header_content_type
{
    my ($self, @header) = @_;
  
    if (@header == 0 || (@header == 1 && $header[0] eq '')) {
        return 'application/json'; # default to application/json
    } elsif (grep(/^application\/json$/i, @header)) {
        return 'application/json';
    } else {
        return join(',', @header);
    }
  
}

# Get API key (with prefix if set)
# @param string key name
# @return string API key with the prefix
sub get_api_key_with_prefix
{
	my ($self, $key_name) = @_;

	my $api_key = $WWW::SwaggerClient::Configuration::api_key->{$key_name};
	
	return unless $api_key;
	
	my $prefix = $WWW::SwaggerClient::Configuration::api_key_prefix->{$key_name};
	return $prefix ? "$prefix $api_key" : $api_key;
}	

# update header and query param based on authentication setting
#  
# @param array $headerParams header parameters (by ref)
# @param array $queryParams query parameters (by ref)
# @param array $authSettings array of authentication scheme (e.g ['api_key'])
sub update_params_for_auth {
    my ($self, $header_params, $query_params, $auth_settings) = @_;
    
    return $self->_global_auth_setup($header_params, $query_params) 
    	unless $auth_settings && @$auth_settings;
  
    # one endpoint can have more than 1 auth settings
    foreach my $auth (@$auth_settings) {
        # determine which one to use
        if (!defined($auth)) {
            # TODO show warning about auth setting not defined
        }
        elsif ($auth eq 'OAuth2') {
            
            if ($WWW::SwaggerClient::Configuration::access_token) {
                $header_params->{'Authorization'} = 'Bearer ' . $WWW::SwaggerClient::Configuration::access_token;
            }
        }
        else {
       	    # TODO show warning about security definition not found
        }
    }
}

# The endpoint API class has not found any settings for auth. This may be deliberate, 
# in which case update_params_for_auth() will be a no-op. But it may also be that the 
# OpenAPI Spec does not describe the intended authorization. So we check in the config for any 
# auth tokens and if we find any, we use them for all endpoints; 
sub _global_auth_setup {
	my ($self, $header_params, $query_params) = @_; 
	
	my $tokens = $self->_cfg->get_tokens;
	return unless keys %$tokens;
	
	# basic
	if (my $uname = delete $tokens->{username}) {
		my $pword = delete $tokens->{password};
		$header_params->{'Authorization'} = 'Basic '.encode_base64($uname.":".$pword);
	}
	
	# oauth
	if (my $access_token = delete $tokens->{access_token}) {
		$header_params->{'Authorization'} = 'Bearer ' . $access_token;
	}
	
	# other keys
	foreach my $token_name (keys %$tokens) {
		my $in = $tokens->{$token_name}->{in};
		my $token = $self->get_api_key_with_prefix($token_name);
		if ($in eq 'head') {
			$header_params->{$token_name} = $token;
		}
		elsif ($in eq 'query') {
			$query_params->{$token_name} = $token;
		}
		else {
			die "Don't know where to put token '$token_name' ('$in' is not 'head' or 'query')";
		}
	}
}


1;

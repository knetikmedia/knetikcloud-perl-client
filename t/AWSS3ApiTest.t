=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::AWSS3Api');

my $api = WWW::SwaggerClient::AWSS3Api->new();
isa_ok($api, 'WWW::SwaggerClient::AWSS3Api');

#
# pre_sign_url_using_get test
#
{
    my $filename = undef; # replace NULL with a proper value
    my $content_type = undef; # replace NULL with a proper value
    my $result = $api->pre_sign_url_using_get(filename => $filename, content_type => $content_type);
}


1;

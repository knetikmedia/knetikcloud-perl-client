=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
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

use_ok('KnetikCloud::ContentCommentsApi');

my $api = KnetikCloud::ContentCommentsApi->new();
isa_ok($api, 'KnetikCloud::ContentCommentsApi');

#
# add_comment test
#
{
    my $comment_resource = undef; # replace NULL with a proper value
    my $result = $api->add_comment(comment_resource => $comment_resource);
}

#
# delete_comment test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_comment(id => $id);
}

#
# get_comment test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_comment(id => $id);
}

#
# get_comments test
#
{
    my $context = undef; # replace NULL with a proper value
    my $context_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_comments(context => $context, context_id => $context_id, size => $size, page => $page);
}

#
# search_comments test
#
{
    my $query = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->search_comments(query => $query, size => $size, page => $page);
}

#
# update_comment test
#
{
    my $id = undef; # replace NULL with a proper value
    my $content = undef; # replace NULL with a proper value
    my $result = $api->update_comment(id => $id, content => $content);
}


1;

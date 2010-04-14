#!/usr/bin/perl
use warnings;
use strict;
use WWW::Mechanize;

my $username = '00xxx';
my $password = 'xxxx';
my $url = 'https://login.my-wire.de/index.php';
my $mech = WWW::Mechanize->new(autocheck => 1);

$mech->get( $url );
$mech->form_name("login");
$mech->field("user", $username);
$mech->field("pass", $password);
$mech->click("Submit");

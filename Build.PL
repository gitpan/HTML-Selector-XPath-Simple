use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTML::Selector::XPath::Simple',
    license             => 'perl',
    dist_author         => 'Takeru INOUE <takeru.inoue@gmail.com>',
    dist_version_from   => 'lib/HTML/Selector/XPath/Simple.pm',
    requires => {
        'Test::More'               => 0,
        'version'                  => 0,
	'HTML::Selector::XPath'    => 0,
	'HTML::TreeBuilder::XPath' => 0,
        'Test::NoWarnings'         => 0,
        'Test::Perl::Critic'       => 0,
    },
    add_to_cleanup      => [ 'HTML-Selector-XPath-Simple-*' ],
);

$builder->create_build_script();

#!/usr/bin/perl -w

# This is a Module::Build script for BioPerl-Run installation.
# See http://search.cpan.org/~kwilliams/Module-Build/lib/Module/Build.pm

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    dist_name           => 'Bio-Microarray-Tools',
    dist_version        => '0.01',
    module_name         => 'Bio::Microarray::Tools',
    dist_author         => 'Marian Thieme',
    dist_abstract       => 'Bio-Microarray-Tools - generic microarray tools',
    license             => 'perl',
    requires            => {
                            'Bio::Root::Version'        => '1.006',
                            'Spreadsheet::ParseExcel'   => '0',
                            'Spreadsheet::WriteExcel'   => '0',
                            'Statistics::Frequency'     => '0'
                           },
    dynamic_config      => 1,
    create_makefile_pl  => 'passthrough'
);

$build->create_build_script;

exit;

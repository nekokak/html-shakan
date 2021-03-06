use inc::Module::Install;
name 'HTML-Shakan';
all_from 'lib/HTML/Shakan.pm';

requires 'FormValidator::Lite' => 0.03;
requires 'Any::Moose'          => 0.11;
requires 'Mouse'               => 0.47;
requires 'List::MoreUtils'     => 0.22;
requires 'Email::Valid::Loose' => 0.05;

recommends 'Lingua::JA::Regular::Unicode';

test_requires 'Test::Requires';

tests 't/*.t t/*/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;

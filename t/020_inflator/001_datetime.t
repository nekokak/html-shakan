use t::Util;
use Test::More;
use HTML::Shakan::Inflator::DateTime;

plan skip_all => 'this test requires DT' unless eval 'use DateTime;1;';
plan tests => 4;

{
    my $dt = HTML::Shakan::Inflator::DateTime->inflate(
        {}, '2009-03-03',
    );
    isa_ok $dt, 'DateTime';
    is $dt->ymd, '2009-03-03';
    is $dt->time_zone->name, 'floating', 'default time zone is "floating"';
}

{
    my $dt = HTML::Shakan::Inflator::DateTime->inflate(
        {time_zone => 'Asia/Tokyo'}, '2009-03-03',
    );
    is $dt->time_zone->name, 'Asia/Tokyo', 'use my own tz';
}

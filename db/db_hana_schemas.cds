namespace cap.ext.strategy.bookshop;

using
{
    Currency,
    managed,
    sap,
    cuid
}
from '@sap/cds/common';

entity Books : managed
{
    key ID : Integer;
    title : localized String(111);
    descr : localized String(1111);
    stock : Integer;
    price : Decimal(9,2);
    currency : Currency;
    author : Association to one Authors;
}

@cds.autoexpose
entity Authors : managed
{
    key ID : Integer;
    name : String(111);
}
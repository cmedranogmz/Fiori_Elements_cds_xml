namespace com.logaligroup;

using {
    cuid,
    sap.common.CodeList
} from '@sap/cds/common';

entity Products : cuid {
    product     : String(8)                     @title: 'Product'       @mandatory;
    productName : String(120)                   @title: 'Product Name'  @mandatory;
    description : String                        @title: 'Description'   @UI.MultiLineText;
    price       : Decimal(10, 8)                @title: 'Price'         @mandatory  @Measures.Unit: currency_code;
    currency    : Association to VH_Currencies  @title: 'Currency'      @Common.IsUnit;
}

entity VH_Currencies : CodeList {
    key code : String enum {
            usd = 'USD';
            eur = 'EUR';
            cop = 'COP';
            mxn = 'MXN';
        }
}

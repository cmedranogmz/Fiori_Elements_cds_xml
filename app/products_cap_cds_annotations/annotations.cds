using LogaliGroup as service from '../../srv/service';

annotate service.ProductsSet with @(
    Capabilities.FilterRestrictions: {
        $Type                       : 'Capabilities.FilterRestrictionsType',
        FilterExpressionRestrictions: [
            {
                $Type             : 'Capabilities.FilterExpressionRestrictionType',
                Property          : product,
                AllowedExpressions: 'SearchExpression'
            },
            {
                $Type             : 'Capabilities.FilterExpressionRestrictionType',
                Property          : productName,
                AllowedExpressions: 'SearchExpression'
            },
        ],
    },
    UI.SelectionFields             : [currency_code],
    UI.HeaderInfo                  : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Product',
        TypeNamePlural: 'Products',
        Title : {
            $Type : 'UI.DataField',
            Value : productName,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : product,
        },
    },
    UI.LineItem                    : [
        {
            $Type: 'UI.DataField',
            Value: product,
        },
        {
            $Type: 'UI.DataField',
            Value: productName,
        },
        {
            $Type: 'UI.DataField',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Value: price,
        }
    ],
    UI.FieldGroup #ProductInformation  : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : product,
            },
            {
                $Type : 'UI.DataField',
                Value : productName,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#ProductInformation',
            Label : 'Product Information',
        },
    ]

);

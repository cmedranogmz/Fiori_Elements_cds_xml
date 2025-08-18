sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'productscapcdsannotations/test/integration/FirstJourney',
		'productscapcdsannotations/test/integration/pages/ProductsSetList',
		'productscapcdsannotations/test/integration/pages/ProductsSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsSetList, ProductsSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('productscapcdsannotations') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsSetList: ProductsSetList,
					onTheProductsSetObjectPage: ProductsSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);
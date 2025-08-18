sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'productsxmlannotations/test/integration/FirstJourney',
		'productsxmlannotations/test/integration/pages/ProductsSetList',
		'productsxmlannotations/test/integration/pages/ProductsSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsSetList, ProductsSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('productsxmlannotations') + '/index.html'
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
sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'productsfpm/test/integration/FirstJourney',
		'productsfpm/test/integration/pages/ProductsSetMain'
    ],
    function(JourneyRunner, opaJourney, ProductsSetMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('productsfpm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsSetMain: ProductsSetMain
                }
            },
            opaJourney.run
        );
    }
);
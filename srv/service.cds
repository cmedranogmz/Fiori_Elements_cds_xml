using {com.logaligroup as entities} from '../db/schema';

service LogaliGroup {

    entity ProductsSet   as projection on entities.Products;
    entity VH_Currencies as projection on entities.VH_Currencies;

}

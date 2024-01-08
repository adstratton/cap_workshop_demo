namespace sap.ui.SalesOrderA2X;

using {  API_SALES_ORDER_SRV as SOa2x } from '../srv/external/API_SALES_ORDER_SRV';
@cds.persistence.skip
entity SalesOrders as projection on SOa2x.A_SalesOrder {
        key SalesOrder as ID,
        DistributionChannel as DistributionChannel,
        SalesOrderType as OrderType, 
        SalesOrganization as SalesOrg, 
        SoldToParty as SoldTo
}
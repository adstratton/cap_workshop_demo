using { sap.ui.SalesOrderA2X as my } from '../db/db_schema';

service SalesOrderA2X {
   entity SalesOrders as projection on my.SalesOrders;
}

// this will use the debug functionality, which we can use because we included the debug package in our dependencies 
const debug = require('debug')('srv:SalesOrderA2X');
const log = require('cf-nodejs-logging-support');
const req = require('express/lib/request');
log.setLoggingLevel('verbose');
module.exports = cds.service.impl(async function() {

    const a2x = await cds.connect.to('API_SALES_ORDER_SRV');
  //both work so long as you have the logging level set correctly (i.e. use verbose if set to verbose)
   // log.verbose("exception")

    this.on('READ', 'SalesOrders', async req => {
           // log.verbose("verbose logging working: %s ", req)
            return a2x.run(req.query);
       
        
    });  

  
    
});
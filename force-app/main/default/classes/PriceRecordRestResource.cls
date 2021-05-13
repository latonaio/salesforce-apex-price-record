/**
 * 価格レコードオブジェクトのREST
 *
 */
@RestResource(urlMapping='/PriceRecord/*')
global with sharing class PriceRecordRestResource {


    @HttpGet
    global static List<PriceRecord__c> doGetPriceRecord() {
        RestRequest req = RestContext.request;
        PriceRecordDao pmd = new PriceRecordDao();

        //クエリパラメータがnullでない場合
        String d = req.params.get('date');
        PriceRecordDao dao = PriceRecordDao.getInstance();
    }
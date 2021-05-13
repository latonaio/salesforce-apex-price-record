/**
  * PriceオブジェクトへのDAOクラス
  */
public with sharing class PriceRecordDao {

    //Singleton
    private static PriceRecordDao dao;

    public static PriceRecordDao getInstance() {
        if (dao == null) {
            dao = new PriceRecordDao();
        }
        return dao;
    }






    /**
      * 価格オブジェクト一覧を取得します。
      *
      * @return List<PriceRecord__c>
      */

    public List<PriceRecord__c> getPriceRecordList() {
        List<PriceRecord__c> prList = [SELECT
                Name,
                CreatedById,
                district_id__c,
                OwnerId,
                LastModifiedById,
                end_date__c,
                start_date__c,
        FROM PriceRecord__c];

        if (prList == null || prList.isEmpty()) {
            return null;
        }

        return prList;
    }

}
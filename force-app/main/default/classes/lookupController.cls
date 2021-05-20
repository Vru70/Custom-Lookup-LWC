/**
 * @author            : Vrushabh Uprikar
 * @last modified on  : 05-20-2021
 * @last modified by  : Vrushabh Uprikar
 * Modifications Log 
 * Ver   Date         Author             Modification
 * 1.0   05-20-2021   Vrushabh Uprikar   Initial Version
**/
public with sharing class lookupController
{
    @AuraEnabled
    public static List<sObject> search(String objectName, List<String> fields, String searchKey)
    {
        String searchKeyword = searchKey + '*';
        String returnQuery = '';
        returnQuery = objectName + ' ( Id, '+String.join(fields,',')+')';
        String query = 'FIND :searchKeyword IN ALL FIELDS RETURNING '+returningQuery+' LIMIT 20';
        System.debug(' query ->'+query);
        List<List<sObject>> searchRecords = Search.Query(Query);
        return searchRecords.get(0);
    }
}
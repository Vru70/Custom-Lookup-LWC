/**
 * @author            : Vrushabh Uprikar
 * @last modified on  : 05-20-2021
 * @last modified by  : Vrushabh Uprikar
 * Modifications Log 
 * Ver   Date         Author             Modification
 * 1.0   05-20-2021   Vrushabh Uprikar   Initial Version
**/
import { LightningElement } from 'lwc';

export default class TestDemo extends LightningElement 
{
    fields = ["Name", "Email", "Phone"];

    displayFields = 'Name, Email, Phone';

    handleLookup(event)
    {
        console.log('inside clid '+JSON.stringify(event.detail));
    }
}
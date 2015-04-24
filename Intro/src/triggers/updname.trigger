trigger updname on jun1__c (before insert) {

jun1__c[] j = Trigger.new;
ValidateJunction val= new ValidateJunction();
val.afterinsert(j);
}
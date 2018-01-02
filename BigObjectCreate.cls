public class BigObjectCreate {
	
    @future
    public static void createBigObject(Integer mph, String contactID){

	//For this exercise, generate a random string as a unique ID of a BigObject 
	//Could be whatever you wish for uniqueness (if it's of value) - example: DeviceId + Timestamp (or other factors)
        final String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
        String randStr = '';
        while (randStr.length() < 35) {
           Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), chars.length());
           randStr += chars.substring(idx, idx+1);
        }

        //Persist the BigObject
        Speed_Info__b speed = new Speed_Info__b(Id__c = randStr, mph__c = mph, Contact__c = contactID);
        Database.insertImmediate(speed);
        
    }
}

public class contactTriggerHelper {
    public void insertContact(List<Contact>contactList){
        Set<String>emailSet = new Set<String>();
        List<Contact>emails = [select Email from Contact];
        for(Contact c: emails){
            emailSet.add(c.Email);
        }
        for(Contact c: contactList){
            if(emailSet.contains(c.Email)){
                continue;
            }else{
                emailSet.add(c.Email);
            }
        }
    }
}
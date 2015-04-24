public class UpdateAcct {

public void afterupdate(Account[] account){
	for(Account a: account){
		a.Website='www.com';
	}
	
}

}
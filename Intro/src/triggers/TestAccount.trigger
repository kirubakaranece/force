trigger TestAccount on Account (before insert) {
  Account[] account = Trigger.new;

   AccountValidation.validateName(account);
    
}
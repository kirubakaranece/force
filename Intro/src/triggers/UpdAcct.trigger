trigger UpdAcct on Account (after update) {

Account[] a = Trigger.new;
UpdateAcct upd = new UpdateAcct();
upd.afterupdate(a);

}
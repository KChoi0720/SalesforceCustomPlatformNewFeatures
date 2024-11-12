/**
 * An apex page contorller that exposes the site forgot password functionality
 */

 public with sharing class ForgotPasswordController {
   
    public String username {get; set;}

    public ForgotPasswordController() {}

    public PageReference ForgotPassword() {
        boolean success = Site.ForgotPassword(username);
        PageReference vfPage = Page.ForgotPasswordConfirm;
        vfPage.setRedirect(true);

        if (success) {
            System.debug('this worked!!');
            return vfPage;
        }
        return null;
    }
 }
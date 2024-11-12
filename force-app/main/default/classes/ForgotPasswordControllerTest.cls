/**
 * An apex page controller that exposes the site forgot passwor functionality
 */

 @IsTest public with sharing class ForgotPasswordControllerTest {

    @IsTest(SeeAllData=true) public static void testForgotPasswordController() {
        // Instantiate a new controller with all parameters in the page
        ForgotPasswordController controller = new ForgotPasswordController();
        controller.username = 'jipingcui0908@gmail.com';

        System.assertEquals(controller.ForgotPassword(),null);
    }
}

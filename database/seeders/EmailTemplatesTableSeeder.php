<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EmailTemplatesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('email_templates')->insert(
            [
                [
                    'id' => 1,
                    'tenant_id' => 1,
                    'category' => 'Email Verification',
                    'slug' => 'email-verification',
                    'subject' => 'Verify Your Account',
                    'body' => '
                    Hello, {{username}}
                    Thank you for creating an account with us. We\'re excited to have you as a part of our community! Before you can start using your account, we need to verify your email address. Please click on the link below to complete the verification process:
                    Your Otp is: {{otp}}
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 2,
                    'tenant_id' => 1,
                    'category' => 'Password Reset',
                    'slug' => 'password-reset',
                    'subject' => 'Reset your password',
                    'body' => '
                        We\'re sending you this email because you requested a password reset. Please use the OTP code below to create a new password:
                    OTP Code: {{otp}}
                    If you didn\'t request a password reset, you can safely ignore this email. Your password will not be changed.
                    Thank you!
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 3,
                    'tenant_id' => 1,
                    'category' => 'Account Approval',
                    'slug' => 'account-approval',
                    'subject' => 'Your Account Approved',
                    'body' => 'We are pleased to inform you that your account application has been approved and your account is now active.
                    Thank you!
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 4,
                    'tenant_id' => 1,
                    'category' => 'Account Reject',
                    'slug' => 'account-rejection',
                    'subject' => 'Your Account Rejected',
                    'body' => '
                    We are pleased to inform you that your account application has been rejected and your account is now inactive. Please contact with admin
                    Thank you!
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 5,
                    'tenant_id' => 1,
                    'category' => 'Ticket Reservation',
                    'slug' => 'ticket-confirmation',
                    'subject' => 'Ticket Reservation',
                    'body' => '
                        Hi {{username}},
                        Thank you for reserving your tickets with us. Your booking has been confirmed with the following details:
                        Ticket No: {{ticket_number}}
                        Please keep this confirmation email for your records.
                        If you have any questions or need assistance, please feel free to contact us at:
                        Phone: {{app_contact_number}}
                        Email: {{app_email}}
                        We look forward to welcoming you to the event!
                        Regards,
                        {{app_name}}
                        Click here to more view your Ticket Reservation details.
                        {{link}}
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 6,
                    'tenant_id' => 1,
                    'category' => 'Membership Apply Application',
                    'slug' => 'membership-apply-application',
                    'subject' => 'Membership Apply Application',
                    'body' => '
                    Hi {{username}},
                    Thank you for applying for membership with us.
                    We have received your membership application and will review it shortly. We will notify you once your application has been processed.
                    If you have any questions or need further assistance, please feel free to contact us at:
                    Phone: {{app_contact_number}}
                    Email: {{app_email}}
                    Regards,
                    {{app_name}}
                    Click here to more view your Membership Apply Application details.
                        {{link}}
                        ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 7,
                    'tenant_id' => 1,
                    'category' => 'Event Purchase',
                    'slug' => 'event-purchase',
                    'subject' => 'Event Purchase',
                    'body' => '
                    Hi {{username}},
                    Thank you for your purchase. Your order with the following details has been confirmed:
                    Order No: {{transaction_no}}
                    If you have any questions or need assistance, please feel free to contact us at:
                    Phone: {{app_contact_number}}
                    Email: {{app_email}}
                    We look forward to seeing you at the event!
                    Regards,
                    {{app_name}}
                        Click here to more view your Event Purchase details.
                        {{link}}
                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 8,
                    'tenant_id' => 1,
                    'category' => 'Payment Success',
                    'slug' => 'payment-success',
                    'subject' => 'Payment Successful',
                    'body' => '
                        Hi {{username}},
                        We are writing to inform you that your payment has been successfully processed for the following order:
                        Order No: {{transaction_no}}
                        If you have any questions or need assistance, please feel free to contact us at:
                        Phone: {{app_contact_number}}
                        Email: {{app_email}}
                        Thank you for your payment. We appreciate your business and look forward to serving you again in the future.
                        Regards,
                        {{app_name}}
                        ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 9,
                    'tenant_id' => 1,
                    'category' => 'Payment Cancel',
                    'slug' => 'payment-cancel',
                    'subject' => 'Payment Cancel',
                    'body' => '
                        Hi {{username}},
                        We are writing to inform you that your payment has been canceled for the following order:
                        Order No: {{transaction_no}}
                        If you have any questions or need assistance, please feel free to contact us at:
                        Phone: {{app_contact_number}}
                        Email: {{app_email}}
                        Thank you for your payment. We appreciate your business and look forward to serving you again in the future.
                        Regards,
                        {{app_name}}
                        ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ],
                [
                    'id' => 10,
                    'tenant_id' => 1,
                    'category' => 'Membership Approval',
                    'slug' => 'membership-approval',
                    'subject' => 'Membership Application Approved',
                    'body' => '
                        Hi {{username}},
                        We are pleased to inform you that your membership application with us has been approved!
                        You are now an official member of our community. We look forward to your active participation.
                        If you have any questions or need assistance, please feel free to contact us at:
                        Phone: {{app_contact_number}}
                        Email: {{app_email}}
                        Welcome aboard!
                        Regards,
                        {{app_name}}
                        Click here to more view your Membership Approval details.
                        {{link}}

                    ',
                    'default' => 1,
                    'status' => 1,
                    'deleted_at' => null,
                    'created_at' => '2023-09-24 02:01:03',
                    'updated_at' => '2023-11-16 07:37:55'
                ]
            ]);
    }
}

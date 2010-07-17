#!/usr/bin/env ruby
# sms.rb

require 'twiliolib'

API_VERSION = '2008-08-01'

ACCOUNT_SID = 'ACdcc8afb976c25b0c062fd85d8bf4478f'
ACCOUNT_TOKEN = 'e199e7b85cb310348b5f52ec525aec44'

CALLER_ID = '';

account = Twilio::RestAccount.new(ACCOUNT_SID, ACCOUNT_TOKEN)

d = {
    'From' => '415-599-2671',
    'To' => '217-408-0040',
    'Body' => 'Ohai',
}

resp = account.request("/#{API_VERSION}/Accounts/#{ACCOUNT_SID}/SMS/Messages", 
    'POST', d)
    
puts resp
    

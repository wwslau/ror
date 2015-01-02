module UsersHelper
end

module AwsSQS

def self.sqsSend (user_name, user_email)

        require 'rubygems'
        require 'bundler/setup'
        require 'aws-sdk'

        AWS.config({
                :region => 'us-west-2',
        })

        sqs = AWS::SQS.new
        queue = sqs.queues.create("wl_queue")

        queue.send_message("simple_app:#{Time.now.to_s} #{user_name}, #{user_email}")
        puts ("Called sqsSend")
end

end

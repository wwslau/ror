module ApplicationHelper

def sqsSend

	require 'rubygems'
	require 'bundler/setup'
	require 'aws-sdk'
	require 'uuid'

	AWS.config({
  		:region => 'us-west-2',
	})

	queue.send_message("#{name}:#{Time.now.to_s}")
	puts ("Called sqsSend")
end

end

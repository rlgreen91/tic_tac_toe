require 'logger'

module Logging

	def self.logger
		@logger ||= Logger.new('../../logs/production_log.log')
	end

	def logger
		Logging.logger
	end
end
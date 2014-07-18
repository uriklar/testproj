module SafeDestroy
	module ActiveRecord
		module Base
			def destroy
				self.update_attribute(:visible,false)
			end
		end
	end
end

ActiveRecord::Base.class_eval do
	include SafeDestroy::ActiveRecord::Base
end

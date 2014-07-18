class User < ActiveRecord::Base
	include SafeDestroy
	default_scope where(:visible => true)
  attr_accessible :visible
  attr_accessor :first_name, :middle_name, :last_name

  def full_name
		[first_name, middle_name, last_name].compact.join(' ')
  end
end

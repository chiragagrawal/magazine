class Article < ActiveRecord::Base
	belongs_to	:magazin
	has_many	:comments
end

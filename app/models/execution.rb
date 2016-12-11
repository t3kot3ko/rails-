class Execution < ApplicationRecord
  belongs_to :executor
	has_many :test_results
end

class TestResult < ApplicationRecord
  belongs_to :test_result_type
  belongs_to :execution
end

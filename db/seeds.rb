# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Project -- Section -- Testcase
#
p = Project.create(name: "TV_BasicTest", description: "Basic test for Trinity")
s = Section.create(name: "Section", project: p)
t1 = Testcase.create(title: "test1", step: "step", precondition: "step", postcondition: "postcondition", expected_result: "expected_result", section: s)
t2 = Testcase.create(title: "test2", step: "step", precondition: "step", postcondition: "postcondition", expected_result: "expected_result", section: s)

executor = Executor.create(name: "executor")
execution = Execution.create(executed_at: Time.now, executor: executor)

# result_pass = TestResultType.create(title: "PASS", identifier: "pass", color: "green")
# result_fail = TestResultType.create(title: "FAIL", identifier: "fail", color: "red")
# 
# TestResult.create(test_result_type: result_pass, execution: execution)
# TestResult.create(test_result_type: result_fail, execution: execution)

#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include "greeter.h"

using ::testing::internal::CaptureStdout;
using ::testing::internal::GetCapturedStdout;

class GreeterTest : public ::testing::Test {
  public:
  	void test_greet() {
  	  const char * greeting = "Hello, test!\n";
  	  const char * whom   = "test";
      CaptureStdout();
      this->greeter.greet(whom);
      std::string stdout_ = GetCapturedStdout();
      ASSERT_STREQ(stdout_.c_str(), greeting);
  	}
  private:
  	Greeter greeter;
};

TEST_F(GreeterTest, greet) {
  test_greet();
}
require File.expand_path('../test_helper', __FILE__)

class StylusTest < UnitTest
  test "build" do
    Stylus.expects <<"HERE"
body
  background red
  color blue
HERE
    Stylus.expects(:compile).returns("body{background:#f00;color:#00f;}")
    get '/css/stylus.css'
    assert body.gsub(/[ \t\r\n]/, '') == "body{background:#f00;color:#00f;}"
  end
end

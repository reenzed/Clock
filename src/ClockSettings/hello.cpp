#include <boost/json.hpp>
#include <iostream>
#include "hello.h"

void hello()
 {
    boost::json::value jv = { {"name", "Boost.JSON"}, {"version", 1.0} };
    
    std::cout << boost::json::serialize(jv) << std::endl;
}
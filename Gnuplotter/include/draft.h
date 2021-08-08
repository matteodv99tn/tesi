#ifndef _MY_DRAFT_H_
#define _MY_DRAFT_H_

#include <string>

class Draft{

public:

    // Static variables
    static const std::string sim_path;
    static const std::string img_path;
    static const std::string stp_path;

    std::string title;

    void to_file(const std::string name) const;

};

#endif
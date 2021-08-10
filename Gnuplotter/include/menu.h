
#ifndef _DRAFT_MENU_H_
#define _DRAFT_MENU_H_

#include "draft.h"

#include <string>

class UI : protected Draft{

private:
    std::string information();

public:

    void display();
    void create();

};


#endif
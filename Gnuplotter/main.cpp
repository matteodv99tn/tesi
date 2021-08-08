#include <iostream>

#include "draft.h"

int main() {

    Draft fig;
    fig.title = "Ciao";
    fig.to_file("test");

    return 0;
}

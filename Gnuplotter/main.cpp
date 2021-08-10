#include <iostream>
#include <climits>
#include <string>
#include <stdlib.h>

#include "draft.h"
#include "menu.h"

int main() {

    //UI ui;
    //ui.display();
    
    int temp, ycount;
    std::string str;

    Draft fig;
    
    fig.title = "";

    fig.x_label = "$V_{ds}$ $[V]$";
    fig.y_label = "$I$ $[\\\\mu A]$";

    fig.y_mult = 1000000;

    fig.multi_var(7);

    //fig.add_y(4);

    //fig.graph_labels[0] = "Col 3";
    //fig.graph_labels[1] = "Col 4";

    fig.plot_file_name = "n_moss_caratt";
    fig.data_file_name = "n_moss_caratt";

    fig.setup_plot();
    fig.draw();
    fig.save();

    Draft other;
    other.load("n_moss_caratt");
    other.plot_file_name = "test";
    other.save();
    
    return 0;
}

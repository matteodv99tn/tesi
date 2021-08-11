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

    fig.x_label = "Tempo $[\\\\mu s]$";
    fig.y_label = "Tens $V_{out}$ $[V]$";

    fig.x_mult = 1e6;
    fig.y_mult = 1;

    // fig.multi_var(7);

    fig.set_x(0);
    fig.add_y(1);

    //fig.graph_labels[0] = "Col 3";
    //fig.graph_labels[1] = "Col 4";

    fig.plot_file_name = "vel_trans_s";
    fig.data_file_name = "vel_trans_s";

    fig.setup_plot();
    fig.draw();
    fig.save();
    
    return 0;
}

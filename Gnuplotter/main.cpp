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

    fig.dim_y = 10;
    fig.dim_x = 12;

    fig.multiplot = false;

    fig.title = "";

    fig.x_label = "$V_{ds}$ $[ns]$";
    fig.y_label = "$I_n$ $[\\\\mu A]$";

    fig.x_mult = 1;
    fig.y_mult = 1e6;

    //fig.set_x(0);
    //fig.add_y(1);
    fig.multi_var(7);

    //fig.other_cmds.push_back("set xtics 0.3");
    //fig.other_cmds.push_back("set ytics 0.3");


    fig.graph_labels[0] = "$V_{out}$ $[V]$";

    fig.plot_file_name = "caratt_statica";
    fig.data_file_name = "caratt_statica";

    fig.setup_plot();
    fig.draw();
    fig.save();
    
    return 0;
}

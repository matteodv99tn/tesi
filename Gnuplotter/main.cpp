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

    fig.multiplot = true;
    fig.dim_y = 7;
    fig.title = "";

    fig.x_label = "tempo $[ns]$";
    fig.y_label = "$V_{out}$ $[V]$";

    fig.x_mult = 1e9;
    fig.y_mult = 1;

    fig.other_cmds.push_back("set xtics 1.5");

    fig.set_x(0);
    fig.add_y(5);
    fig.add_y(1);
    fig.add_y(3);

    fig.graph_labels[0] = "$V_{out}$ $[V]$";
    fig.graph_labels[1] = "$V_{in,1}$ $[V]$";
    fig.graph_labels[2] = "$V_{in,2}$ $[V]$";

    fig.plot_file_name = "nand-dinamica";
    fig.data_file_name = "nand-dinamica";

    fig.setup_plot();
    fig.draw();
    fig.save();
    
    return 0;
}

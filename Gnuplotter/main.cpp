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
    fig.dim_y = 12;
    fig.dim_x = 12;

    fig.multiplot = true;
    fig.title = "";

    fig.x_label = "tempo $[ns]$";
    fig.y_label = "$V_{out}$ $[V]$";

    fig.x_mult = 1e9;
    fig.y_mult = 1;


    fig.set_x(0);
    fig.add_y(13);
    fig.add_y(11);
    fig.add_y(9);
    fig.add_y(7);
    fig.add_y(5);
    fig.add_y(3);
    fig.add_y(1);

    fig.graph_labels[0] = "$R_7$";
    fig.graph_labels[1] = "$R_6$";
    fig.graph_labels[2] = "$R_5$";
    fig.graph_labels[3] = "$R_4$";
    fig.graph_labels[4] = "$R_3$";
    fig.graph_labels[5] = "$R_2$";
    fig.graph_labels[6] = "$R_1$";
    fig.plot_file_name = "mult-sim";
    fig.data_file_name = "mult-sim";

    fig.setup_plot();
    fig.draw();
    fig.save();
    
    return 0;
}

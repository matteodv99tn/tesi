#ifndef _MY_DRAFT_H_
#define _MY_DRAFT_H_

#include <istream>
#include <ostream>
#include <string>
#include <vector>

class Data{

public:

    // Static variables
    static const std::string out_path;
    static const std::string sim_path;

    // Member variables
    std::vector<float> datas;
    std::string label;
    std::string file_name;
    float multiplier = 1;

    // Constructors
    Data(const int& col, const std::string& out_name, const int& mult = 1);


    // Member functions
    void save_data() const;
    void save_data(const std::string& name);
    void load_data(const std::string& file, const int& col);

};

class Draft{

public:

    // Static variables
    static const std::string sim_path;
    static const std::string img_path;
    static const std::string stp_path;
    static const std::string dat_path;
    static const std::string bkp_path;

    // Member variables

    std::string data_file_name;
    std::string plot_file_name;

    std::string title;

    float dim_x = 10;
    float dim_y = 6.5;

    float x_mult = 1;
    float y_mult = 1;

    std::vector<float> x_values;
    std::vector< std::vector<float> > y_values;
    std::vector<std::string> graph_labels;

    std::string x_label;
    std::string y_label;

    // Constructor
    Draft();

    // Member functions
    void set_x(const int& col);
    void add_y(const int& col);
    void multi_var(const int& molt);

    void save_data(const std::string& file_name);

    void setup_plot();
    void draw();
    void save();
    void load(const std::string& src);

    friend std::ostream& operator<<(std::ostream& stream, Draft& d);
    friend std::istream& operator>>(std::istream& stream, Draft& d);
};

#endif
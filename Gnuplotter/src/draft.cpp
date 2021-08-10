#include "draft.h"

#include <iostream>
#include <istream>
#include <fstream>
#include <ostream>
#include <sstream>
#include <string>
#include <vector>

const std::string Draft::sim_path = "/home/matteo/.xschem/simulations/";
const std::string Draft::img_path = "/home/matteo/Documenti/tesi/Relazione/Immagini/";
const std::string Draft::stp_path = "/home/matteo/Documenti/tesi/Circuiti/graph_info/";
const std::string Draft::dat_path = "/home/matteo/Documenti/tesi/Circuiti/dat_files/";

std::vector<float> get_column(const int& col, const std::string& file_name){
    std::vector <float> tbr;

    std::ifstream in_file(Draft::sim_path + file_name + ".txt");
    float temp;
    std::string line;
    
    while( std::getline(in_file, line) ){

        std::istringstream in(line);

        for(int i = 0; i <= col; i++)
            in >> temp;

        tbr.push_back(temp);
    }

    return tbr;
}

Draft::Draft(){
    
}

void Draft::set_x(const int& col){
    x_values.clear();
    x_values = get_column(col, "output");
}

void Draft::add_y(const int& col){
    y_values.push_back( get_column(col, "output") );
    graph_labels.push_back(std::string());
}

void Draft::multi_var(const int& molt){

    std::vector<float> first = get_column(1, "output");
    std::vector<float> second = get_column(0, "output");

    if( ( (first.size()) % molt) != 0) {

        std::cout << "Errore: non posso dividere le righe per " << molt << std::endl;
        return;

    }

    int dim = second.size()/ molt;


    for(int i = 0; i < first.size() / molt; i++) 
        x_values.push_back(first[i]);

    
    int i = 0;
    for(int j = 0; j < molt; j++){
        
        graph_labels.push_back( std::string() );

        std::vector<float> temp;
        for(int k=0; k < dim; k++){
            temp.push_back(second[i]);
            i++;
        }

        y_values.push_back(temp);
    }

}

void Draft::save_data(const std::string& file_name) {

    data_file_name = file_name;
    std::ofstream out(Draft::dat_path + file_name + ".dat");

    for(int i = 0; i < x_values.size(); i++) {
        out << x_mult * x_values[i] << " \t";
        for(int j = 0; j < y_values.size(); j++)
            out << y_mult * y_values[j][i] << " \t";

        out << std::endl;
    }

    out.close();

}

void Draft::setup_plot(){

    save_data(plot_file_name);

    std::ofstream out( Draft::stp_path + plot_file_name + ".gp" );

    out << "set terminal qt" << std::endl << std::endl;

    out << "set style line 1 lc rgb \"#004C99\" lw 5 " << std::endl;
    out << "set style line 10 lc rgb \"#004C99\" lw 3 " << std::endl;
    out << "set style line 11 lc rgb \"#FF8000\" lw 3 " << std::endl;
    out << "set style line 12 lc rgb \"#009900\" lw 3 " << std::endl;
    out << "set style line 13 lc rgb \"#004C99\" lw 3 " << std::endl;
    out << "set style line 14 lc rgb \"#004C99\" lw 3 " << std::endl;
    out << "set style line 15 lc rgb \"#004C99\" lw 3 " << std::endl;
    out << std::endl;

    out << "set title \"" << title << "\"" << std::endl;
    out << "set xlabel \"" << x_label << "\"" << std::endl;
    out << "set ylabel \"" << y_label << "\"" << std::endl;
    out << "set grid lc rgb \"#C0C0C0\" lt 2 dt 2 lw 1" << std::endl;
    out << std::endl;

    if(y_values.size() == 1){

        out << "plot '" << Draft::dat_path << data_file_name << ".dat' notitle with lines ls 1" << std::endl;

    } else {
        
        out << "plot '" << Draft::dat_path << data_file_name << ".dat' using 1:2 with lines ls 10 title \'" << graph_labels[0] << "\'";

        for(int i = 1; i < graph_labels.size(); i++)
            out << ", '" << Draft::dat_path << data_file_name << ".dat' using 1:" << i + 2 << " with lines ls " << 10+i << " title \'" << graph_labels[i] << "\'";
        
        out << std::endl;
    }

    out << std::endl << "pause mouse" << std::endl << std::endl;
    out << "set terminal epslatex size " << dim_x << "cm," << dim_y << "cm " << std::endl;
    out << "set output '" << plot_file_name << ".tex'" << std::endl;
    out << "replot" << std::endl;
    out << "set output" << std::endl;

    out.close();
}

void Draft::draw(){

    setup_plot();

    std::string line;
    std::vector<std::string> code_lines;
    std::ifstream in_file(Draft::stp_path + plot_file_name + ".gp");
    std::ofstream out_file(Draft::img_path + "current.gp");

    while( !in_file.eof() ){
        std::getline(in_file, line);
        out_file << line << std::endl;
    }

    out_file.close();
    in_file.close();

    std::string test = " \\\" ";
    std::cout << "TEST: " << test << std::endl;
    
    std::system("gnuplot -e 'cd \"/home/matteo/Documenti/tesi/Relazione/Immagini\"' -e \"load 'current.gp'\"");


    // std::cout << "Terminale aperto !" << std::endl;
    // std::cin.get();
}

void Draft::save(){

    std::ofstream out(Draft::stp_path + plot_file_name + ".txt");

    out << *(this);
    out.close();

}

void Draft::load(const std::string& src){

    std::ifstream input(Draft::stp_path + src + ".txt");
    input >> *(this);
    input.close();

}

std::ostream& operator<<(std::ostream& stream, Draft& d){

    stream << d.title << std::endl;
    stream << d.dim_x << " " << d.dim_y << std::endl;

    stream << d.x_mult << " " << d.y_mult << std::endl;
    stream << d.x_label << std::endl;
    stream << d.y_label << std::endl;

    stream << d.graph_labels.size() << std::endl;
    for(int i = 0; i < d.graph_labels.size(); i++)
        stream << d.graph_labels[i] << std::endl;

    stream << d.data_file_name << std::endl;
    stream << d.plot_file_name << std::endl;

    return stream;

}

std::istream& operator>>(std::istream& stream, Draft& d){

    std::string temp;

    std::getline(stream, d.title);
    std:getline(stream, temp);
    std::istringstream iss(temp);
    iss >> d.dim_x >> d.dim_y;
    std::getline(stream, temp);
    std::istringstream iss2(temp);
    iss2 >> d.x_mult >> d.y_mult;

    std::getline(stream, d.x_label);
    std::getline(stream, d.y_label);

    
    int dim;
    std::getline(stream, temp);
    std::istringstream iss3(temp);
    iss3 >> dim;
    d.graph_labels.clear();
    for(int i = 0; i < dim; i++){
        std::string line;
        std::getline(stream, line);
        d.graph_labels.push_back(line);
    }

    std::getline(stream, d.data_file_name);
    std::getline(stream, d.plot_file_name);

    return stream;
}




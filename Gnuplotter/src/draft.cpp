#include "draft.h"

#include <fstream>
#include <string>

const std::string Draft::sim_path = "/home/matteo/.xschem/simulations/";
const std::string Draft::img_path = "../Relazione/Immagini/";
const std::string Draft::stp_path = "";


void Draft::to_file(const std::string name) const{
    
    std::ofstream out( Draft::stp_path + name + ".gp" );

    out << "set title \"" << title << "\"" << std::endl;

    out.close();
}
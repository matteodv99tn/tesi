#include "draft.h"
#include "logger.h"
#include "menu.h"

#include <iomanip>
#include <iostream>
#include <vector>
#include <string>
#include <sstream>

std::string read_line(){
    std::string str;
    std::getline(std::cin, str);
    return str;
}

std::string UI::information(){

    std::ostringstream out;

    std::cout << std::right << std::setw(20) << "Titolo: " << title << std::endl;

    std::cout << std::right << std::setw(20) << "Dimensioni: " << dim_x << "x" << dim_y << "cm" << std::endl;
    out.str();
}

void UI::create(){
    std::cout << std::endl << "Menu di creazione:" << std::endl << std::endl;

    std::cout << "Titolo: ";
    title = read_line();
    
    std::cout << "Etichetta asse x: ";
    x_label = read_line();
    std::cout << "Etichetta asse y: ";
    y_label = read_line();

    std::cout << "Colonna asse x: ";
    int col;
    std::cin >> col;
    set_x(col);

    std::cout << "Numero di colonne da ricavare: ";
    std::cin >> col;
    std::cout << "Specificare le colonne: ";
    for(int i = 0; i < col; i++){
        int t;
        std::cin >> t;
        add_y(t);
    }

    std::cout << "Etichette dei valori: ";
    for(int i = 0; i < y_values.size(); i++)
        graph_labels[i] = read_line();

    std::cout << "Nome del disegno: ";
    plot_file_name = read_line();
    std::cout << "Nome file dati: ";
    data_file_name = read_line();
}

void UI::display(){
    
    information();
    std::cout << "Opzioni: " << std::endl;
    std::cout << " 1. visualizzare le informazioni correnti" << std::endl;
    std::cout << " 2. creare un nuovo disegno" << std::endl;
    std::cout << " 3. salvare il disegno attuale" << std::endl;

}
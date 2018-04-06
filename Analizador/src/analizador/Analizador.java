/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizador;
import java.io.*;

/**
 *
 * @author Usuario
 */
public class Analizador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String path = "C:/Users/Usuario/Documents/NetBeansProjects/Analizador/src/analizador/Lex.flex";
        GeneradorLex(path);
    }
    
    public static void GeneradorLex(String path)
    {
        File file = new File(path);
        jflex.Main.generate(file);
    }
}

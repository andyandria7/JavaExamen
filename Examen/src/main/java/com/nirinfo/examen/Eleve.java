/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nirinfo.examen;

/**
 *
 * @author ANDI
 */
public class Eleve {
    private int id;
    private String nom;
    private String prenom;
    private String date;
    private String classe;
    
    public Eleve(){
        this.id = 0;
        this.nom = "";
        this.prenom = "";
        this.date = "";
        this.classe = "";
    }
    
    public Eleve(int id, String nom, String prenom, String date, String classe){
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.date = date;
        this.classe = classe;
    }
    
    //set
    public void setId(int id){
       this.id = id; 
    }
    public void setNom(String nom){
        this.nom = nom;
    }
    public void setPrenom(String prenom){
        this.prenom = prenom;
    }
    public void setDate(String date){
        this.date = date;
    }
    public void setClasse(String classe){
        this.classe = classe;
    }
    
    //get
    public int getId(){
        return id;
    } 
    public String getNom(){
        return nom;
    }
    public String getPrenom(){
        return prenom;
    }
    public String getDate(){
        return date;
    }
    public String getClasse(){
        return classe;
    }
}

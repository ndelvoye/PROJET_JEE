package fr.gestconge.classes.beans;

import java.util.Date;

public class Demande {
   private int id;
   private String type;
   private int status;
   private String dtDebut;
   private String dtFin;
   private String dtCreation;
   private String nomDemandeur;
   private String prenomDemandeur;


   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

   public int getStatus() {
      return status;
   }

   public void setStatus(int status) {
      this.status = status;
   }

   public String getDtDebut() {
      return dtDebut;
   }

   public void setDtDebut(String dtDebut) {
      this.dtDebut = dtDebut;
   }

   public String getDtFin() {
      return dtFin;
   }

   public void setDtFin(String dtFin) {
      this.dtFin = dtFin;
   }

   public String getDtCreation() {
      return dtCreation;
   }

   public void setDtCreation(String dtCreation) {
      this.dtCreation = dtCreation;
   }

   public String getNomDemandeur() {
      return nomDemandeur;
   }

   public void setNomDemandeur(String nomDemandeur) {
      this.nomDemandeur = nomDemandeur;
   }

   public String getPrenomDemandeur() {
      return prenomDemandeur;
   }

   public void setPrenomDemandeur(String prenomDemandeur) {
      this.prenomDemandeur = prenomDemandeur;
   }
}

package fr.gestconge.classes;

import java.util.Date;

public class Demande {
   private int id;
   private String type;
   private int status;
   private Date dtDebut;
   private Date dtFin;
   private Date dtCreation;

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

   public Date getDtDebut() {
      return dtDebut;
   }

   public void setDtDebut(Date dtDebut) {
      this.dtDebut = dtDebut;
   }

   public Date getDtFin() {
      return dtFin;
   }

   public void setDtFin(Date dtFin) {
      this.dtFin = dtFin;
   }

   public Date getDtCreation() {
      return dtCreation;
   }

   public void setDtCreation(Date dtCreation) {
      this.dtCreation = dtCreation;
   }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationGestionStagiaires.Operations.StagiairesOperations
{
    public class StagiairesOperations 
    {
        static List<Stagiaire> ListeStagiaires = new List<Stagiaire>();
        static int NombreStagiaire = 0;

        static StagiairesOperations () {
            ListeStagiaires.Add(new Stagiaire(1, "Ali","Madani",1,DateTime.Now));
            ListeStagiaires.Add(new Stagiaire(2, "Karim", "Madani", 2, DateTime.Now));
            ListeStagiaires.Add(new Stagiaire(3, "Moad", "Chami", 3, DateTime.Now));
            NombreStagiaire = 3;
        }
        /// <summary>
        /// Enregistrer un Stagiaire
        /// </summary>
        /// <param name="g">l'objet Stagiaire à enregistrer</param>
        public static void Enregistrer(Stagiaire s){
            s.Id = ++NombreStagiaire;
            s.DateCréation = DateTime.Now;
            ListeStagiaires.Add(s);
        }
        /// <summary>
        /// Supprimer par Id
        /// </summary>
        /// <param name="Id">l'id du stagiaires à supprimer</param>
        public static void Supprimer(int id) {
            for (int i = 0; i < ListeStagiaires.Count; i++)
            {
                Stagiaire g = ListeStagiaires[i] as Stagiaire;
                if (g.Id == id)
                    ListeStagiaires.Remove(g);

            }
        }
        public static void Modifier(Stagiaire s) {
            foreach (Stagiaire item in ListeStagiaires)
            {
                if (item.Id == s.Id)
                {
                    item.Nom = s.Nom;
                    item.Prenom = s.Prenom;
                    item.IdGroupe = s.IdGroupe;
                    item.DateModification = DateTime.Now;
                }
            }
        }
        public static List<Stagiaire> Afficher() {
            return ListeStagiaires;
        }

        public static Stagiaire Debut()
        {
            return ListeStagiaires[0];
        }

        public static Stagiaire Precedent(int id,out Boolean debut)
        {
            debut = false;
            for (int i = 1; i < ListeStagiaires.Count; i++)
            {
                Stagiaire g = ListeStagiaires[i] as Stagiaire;
                if (g.Id == id){
                    i--;
                    if (i == 0)  debut = true;
                    return (Stagiaire)ListeStagiaires[i];
                   
                }

            }
            
            return null;
        }

        public static Stagiaire Suivant(int id,out Boolean fin)
        {
            fin = false;
            for (int i = 0; i < ListeStagiaires.Count-1; i++)
            {
                Stagiaire g = ListeStagiaires[i] as Stagiaire;
                if (g.Id == id)
                {
                    i++;
                    if (i == (ListeStagiaires.Count -1)) fin = true;
                    return (Stagiaire)ListeStagiaires[i];
                }

            }
            return null;
        }

        public static Stagiaire Fin()
        {
            return ListeStagiaires[ListeStagiaires.Count - 1];
        }

        public static List<Stagiaire> Recherche(int idGroupe,string nom)
        {

          


            List<Stagiaire> ls = new List<Stagiaire>();
            foreach (Stagiaire item in ListeStagiaires)
            {
                if (idGroupe > 0 && nom != "")
                    if (item.IdGroupe == idGroupe && item.Nom == nom ) ls.Add(item);
                if (idGroupe > 0 && nom == "")
                    if (item.IdGroupe == idGroupe) ls.Add(item);
                if (idGroupe < 0 && nom != "")
                    if (item.Nom == nom) ls.Add(item);
                if (idGroupe < 0 && nom == "")
                    return ListeStagiaires;
            }
            return ls;
        }

        public static Stagiaire getStagiaire(int id)
        {
          
            foreach (Stagiaire item in ListeStagiaires)
            {
                if (item.Id == id)
                {
                    return item;
                }
            }
            return null;
        }

        public static List<Stagiaire> AfficheDernierManipule()
        {

            return ListeStagiaires.OrderByDescending(o => o.DateModification).Take(2).ToList<Stagiaire>();
        }
    }
}
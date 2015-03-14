using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationGestionStagiaires.Operations.GroupesOperations
{
    public class GroupesOperations
    {
        private static List<Groupe> ListeGroupes = new List<Groupe>();
        private static int NombreGroupe = 0;

        /// <summary>
        /// Construcreur, Statique : il s'exécute une seul fois avant la première
        /// utilisation de la classe GroupesOperation
        /// il initialise la liste des groupes
        /// </summary>
        static GroupesOperations() { 
        ListeGroupes.Add(new Groupe(1,"Groupe 1",DateTime.Now));
        ListeGroupes.Add(new Groupe(2, "Groupe 2", DateTime.Now));
        ListeGroupes.Add(new Groupe(3, "Groupe 3", DateTime.Now));
        NombreGroupe = 3;
        
        }

        public static void Enregistrer(Groupe g)
        {
            g.DateCréation = DateTime.Now;
            g.Id = ++NombreGroupe;
            ListeGroupes.Add(g);
        }
        public static void Supprimer(int id) {

            for (int i = 0; i < ListeGroupes.Count; i++)
            {
                Groupe g = (Groupe)ListeGroupes[i];
                if (g.Id == id)
                    ListeGroupes.Remove(g);
            }
        }
        public static void Modifier(Groupe groupe){

        for (int i = 0; i < ListeGroupes.Count; i++)
            {
                Groupe g = (Groupe)ListeGroupes[i];
                if (g.Id == groupe.Id){
                 g.Nom = groupe.Nom;
                 g.DateModification = DateTime.Now;
                
                }
                    
            }
        
        
        }
        public static List<Groupe> Afficher() {

            return ListeGroupes;
        
        }

        public static Groupe Debut()
        {
            if (ListeGroupes.Count > 0)
                return ListeGroupes[0];
            else
                return null;
        }

        public static Groupe Suivant(int id)
        {

            for (int i = 0; i < ListeGroupes.Count - 1; i++)
            {
                Groupe g = (Groupe)ListeGroupes[i];
                if (g.Id == id)
                    return ListeGroupes[i + 1];
            }
            return null;
        }

        public static Groupe Precedent(int id)
        {
            for (int i = 1; i < ListeGroupes.Count; i++)
            {
                Groupe g = (Groupe)ListeGroupes[i];
                if (g.Id == id)
                    return ListeGroupes[i- 1];
            }
            return null;
        }

        public static Groupe Fin()
        {
            return ListeGroupes[ListeGroupes.Count - 1];
        }

        public static List<Groupe> AfficheDernierManipule()
        {
            return ListeGroupes.OrderByDescending(o => o.DateModification).Take(2).ToList<Groupe>();
        }

        public static Groupe RechercheParId(int id)
        {
            for (int i = 0; i < ListeGroupes.Count; i++)
            {
                Groupe g = (Groupe)ListeGroupes[i];
                if (g.Id == id)
                    return g;
            }
            return null;
        }
    }
}
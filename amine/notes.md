# Journal de bord - Amine

## 1. Bilan global du poste
- **Score de départ** : 83 %
- **Score final** : 100 / 100 (Niveau Forteresse)


---
   ......lundi......

## 2. Détail des actions réalisées

### Étape 1 : Activation du Pare-feu Windows Defender
- Pourquoi : Bloquer les attaques et les connexions réseau non autorisées.
- Action réalisée
  1. Ouverture de la recherche Windows et saisie de `Pare-feu Windows Defender`.
  2. Sélection de *Activer ou désactiver le Pare-feu Windows Defender*.
  3. Cocher **Activer le pare-feu** pour les réseaux privés et publics.
  4. Validation en cliquant sur **OK**.
- Résultat : Pare-feu actif et opérationnel 

     ......Mardi.....

### Étape 2 : Chiffrement du disque principal avec BitLocker 
- Pourquoi : Empêcher la lecture des données du disque dur en cas de vol du PC.
- Action réalisée :
  1. Ouverture de la recherche Windows et saisie de `Gérer BitLocker`.
  2. Sélection du disque principal (`C:`).
  3. Clic sur **Activer BitLocker**.
  4. Sauvegarde de la clé de secours puis lancement du chiffrement.
- Résultat : Disque chiffré et sécurisé
 
   .....Mercredi.....

### Étape 3 : Installation de Git et Visual Studio Code
- Pourquoi : Disposer des outils de versionning et de l'éditeur pour travailler.
- Action réalisée :
  1. Téléchargement et installation de Git depuis `git-scm.com`.
  2. Téléchargement et installation de VS Code depuis `code.visualstudio.com`.
- Résultat : Outils de développement opérationnels

---

## 3. Commandes retenues
- `.\scripts\bilan-poste.ps1` : Lance l'analyse de sécurité du poste
- `git --version` : Vérifie que Git est bien installé. 

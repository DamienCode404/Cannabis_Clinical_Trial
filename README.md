# Test Exact Fisher

→Analyse statistique de petits échantillons

Les patients drépanocytaires sont atteints de douleurs qui nécessitent une forte dose d'opioïdes sur des durées prolongées pour les soulager. Nous savons que le cannabis est efficace sur des modèles murins. Il est aussi beaucoup plus confortable pour les patients. La question est de savoir si le pouvoir antalgique du cannabis est vraiment notable.Cette étude va donc déterminer si le cannabis inhalé est plus efficace que le placebo inhalé pour soulager la douleur chronique chez les adultes atteints de SCD.

Données inventées :
![Aspose Words d1ece0cb-6613-43b7-bd19-68a3d76dd335 004](https://user-images.githubusercontent.com/116463750/227732984-4b65e6ec-9dc5-4796-a79d-e93648e6fc82.png)

Nous avons 16 patients drépanocytaires.

Sur ses 16 patients, 8 personnes qui ont inhalé un placebo et 8 personnes qui ont inhalé du cannabis.
Comme nous pouvons voir sur le graphique en mosaïque, nous avons obtenu un tableau de contingence comme ci-dessous :

![Aspose Words d1ece0cb-6613-43b7-bd19-68a3d76dd335 005](https://user-images.githubusercontent.com/116463750/227733010-759b5711-a0e0-4b52-a4d9-7860faeefb7b.jpeg)

|                 | Cannabis | Placebo |
| --------------- | -------- | ------- |
| Antalgique_non  |     1    |    6    |
| Antalgique_oui  |     7    |    2    |

Nous allons donc estimer la proportion de réponses positives sur l’effet antalgique par rapport au total de la catégorie (placebo ou cannabis).

- Pour la proportion de oui sur les patients avec cannabis : 7/8 = 0.875 soit 87.5%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 2/8 = 0.25 soit 25%. (Pb)

Écart observé : 87.5% - 25% = 62.5%

Les hypothèses du test de Fisher exact :

H0 :𝜋A=𝜋B
-> Les variables sont indépendantes, il n'y a pas de relation entre les patients qui ont inhalé du cannabis et l'effet antalgique.
H1 :𝜋A≠𝜋B
-> Les variables sont dépendantes, il existe une relation entre l'inhalation du cannabis et l'effet antalgique.

Définition du risque : Risque alpha => 0.05

Nous allons réaliser le calcul théorique pour chaque configuration :

#1

Antalgique\_non Antalgique\_oui Cannabis 0 8 Placebo 8 0

- Pour la proportion de oui sur les patients avec cannabis : 8/8 = 1 soit 100%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 0/8 = 0 soit 0%. (Pb) Écart observé : 100% - 0% = 100% > 62.5%

#2

Antalgique\_non Antalgique\_oui Cannabis 1 7 Placebo 7 1

- Pour la proportion de oui sur les patients avec cannabis : 7/8 = 0.875 soit 87.5%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 1/8 = 0.125 soit 12.5%. (Pb) Écart observé : 87.5% - 12.5% = 75% > 62.5%

#3

Antalgique\_non Antalgique\_oui Cannabis 2 6 Placebo 6 2

- Pour la proportion de oui sur les patients avec cannabis : 6/8 = 0.75 soit 75%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 2/8 = 0.25 soit 25%. (Pb) Écart observé : 75% - 25% = 50% < 62.5%

#4

Antalgique\_non Antalgique\_oui Cannabis 3 5 Placebo 5 3

- Pour la proportion de oui sur les patients avec cannabis : 5/8 = 0.625 soit 62.5%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 3/8 = 0.375 soit 37.5%. (Pb) Écart observé : 62.5% - 37.5% = 25% < 62.5%

#5

Antalgique\_non Antalgique\_oui Cannabis 4 4 Placebo 4 4

- Pour la proportion de oui sur les patients avec cannabis : 4/8 = 0.5 soit 50%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 4/8 = 0.5 soit 50%. (Pb) Écart observé : 50% - 50% = 0% < 62.5%

#6

Antalgique\_non Antalgique\_oui Cannabis 5 3 Placebo 3 5

- Pour la proportion de oui sur les patients avec cannabis : 3/8 = 0.375 soit 37.5%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 5/8 = 0.625 soit 62.5%. (Pb) Écart observé : 62.5% - 37.5% = 25% < 62.5%

#7

Antalgique\_non Antalgique\_oui Cannabis 6 2 Placebo 2 6

- Pour la proportion de oui sur les patients avec cannabis : 2/8 = 2/8 = 0.25 soit 25%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 6/8 = 0.75 soit 75%. (Pb) Écart observé : 75% - 25% = 50% < 62.5%

#8

Antalgique\_non Antalgique\_oui Cannabis 7 1 Placebo 1 7

- Pour la proportion de oui sur les patients avec cannabis : 1/8 = 0.125 soit 12.5%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 7/8 = 0.875 soit 87.5%. (Pb) Écart observé : 87.5% - 12.5% = 75% > 62.5%

#9

Antalgique\_non Antalgique\_oui Cannabis 8 0 Placebo 0 8

- Pour la proportion de oui sur les patients avec cannabis : 0/8 = 0 soit 0%. (Pa)
- Pour la proportion de oui sur les patients avec placebo : 8/8 = 1 soit 100%. (Pb) Écart observé : 100% - 0% = 100% > 62.5%

Nous sélectionnons donc les configurations 1, 2, 8 et 9.

## Calcul :

<img width="350px" src="https://user-images.githubusercontent.com/116463750/227733700-ac601b4c-cc4e-4a36-bc22-1d21bf8c9f0b.png">

#1 (0+8)!(8+0)!(0+8)!(8+0)!/0!8!8!0!16! = 1/12870 <br>
#2 (1+7)!(7+1)!(1+7)!(7+1)!/1!7!7!1!16! = 32/6435 <br>
#8 (7+1)!(1+7)!(7+1)!(1+7)!/7!1!1!7!16! = 32/6435 <br>
#9 (8+0)!(0+8)!(8+0)!(0+8)!/8!0!0!8!16! = 1/12870 <br>

Somme des valeurs trouvées : 1/12870 + 32/6435 + 32/6435 + 1/12870 = 1/99 = 0.01

Si la somme des p-observées < p-value : rejet de 𝐻0 au seuil 𝛼(souvent 𝛼=5%) Les deux proportions comparées diffèrent significativement

Si 𝐻0 est vraie (𝜋𝐴=𝜋𝐵) , il y a 1% de chance d’observer un écart entre 𝑝𝐴et 𝑝𝐵 supérieur ou égal à 62.5%.

## Conclusion de l'étude (à la main) :

Les patients ont émis un avis significativement favorable à l’effet antalgique du cannabis. L’étude montre bien que le cannabis peut être un moyen de pallier les opioïdes pour calmer les crises de douleurs des patients drépanocytaires.

Après vérification sur R nous trouvons le résultat suivant :

La P-value trouvé sur R est aussi inférieur au risque alpha de 0.05 (0.041<0.05). Nous pouvons donc confirmer le rejet de H0 et conclure.

## Conclusion globale de l'étude :

Les patients ont émis un avis significativement favorable à l’effet antalgique du cannabis. L’étude montre bien que le cannabis peut être un moyen de pallier aux opioïdes pour calmer les crises de douleurs des patients drépanocytaires.


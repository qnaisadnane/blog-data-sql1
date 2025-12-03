--
-- Table structure for table article
--

CREATE TABLE Article (
    id_article INT  PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    date_creation timestamp DEFAULT CURRENT_TIMESTAMP,
    date_modification timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status VARCHAR(30) DEFAULT 'draft',
    view_count INT DEFAULT 0,
    username VARCHAR(50),
    id_categorie INT NOT NULL,
    CHECK (status IN ('draft', 'published', 'archived')),
    FOREIGN KEY (username) REFERENCES Utilisateur(username) ON DELETE SET NULL,
    FOREIGN KEY (id_categorie) REFERENCES Categorie(id_categorie)
);

--
-- Table structure for table categorie
--

CREATE TABLE categorie (
  id_categorie int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom_categorie varchar(30) NOT NULL,
  description_c text NOT null
) ;

--
-- Table structure for table commentaire
--

CREATE TABLE commentaire (
  id_commentaire int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  contenu text NOT NULL,
  author_name varchar(40) NOT NULL,
   date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,
  id_article int NOT NULL,
  foreign KEY (id_article) references article(id_article), 
  foreign KEY (author_name) references utilisateur(username)
) ;

--
-- Table structure for table utilisateur
--

CREATE TABLE utilisateur (
  username varchar(30) PRIMARY KEY,
  name varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  password varchar(60) NOT NULL,
  datecreation timestamp,
  role varchar(30) NOT NULL
) ;


--INSERT TABLE article

INSERT INTO Article 
(id_article, title, content, date_creation, status, view_count, username, id_categorie) 
VALUES
(1, 'Les Nouvelles Tensions Technologiques', 'Explorez les technologies émergentes qui vont transformer notre quotidien cette année...', '2024-02-20 10:00:00', 'published', 1245, 'admin_123', 1),
(2, 'Comment Maintenir une Bonne Santé au Travail', 'Des conseils pratiques pour préserver votre santé physique et mentale...', '2024-02-25 14:30:00', 'published', 876, 'marie_47', 2),
(3, 'Les 10 Destinations à Visiter Absolument en 2024', 'Découvrez les destinations qui vont marquer l''année 2024...', '2024-03-05 09:15:00', 'draft', 0, 'pierre_49', 3),
(4, 'Recette du Gâteau au Chocolat Fondant', 'Une recette simple et rapide pour un gâteau au chocolat irrésistible...', '2024-03-10 16:45:00', 'published', 2345, 'sophie_9', 4),
(5, 'Préparation Marathon : Guide Complet du Débutant', 'Tout ce qu''il faut savoir pour préparer son premier marathon...', '2024-03-15 08:00:00', 'published', 1567, 'jean_1', 5),
(6, 'Apprendre à Coder en 6 Mois : Mon Parcours', 'Comment j''ai appris la programmation web en moins de 6 mois...', '2024-03-20 10:30:00', 'published', 3210, 'admin_123', 6),
(7, 'Investir dans la Cryptomonnaie en 2024', 'Guide pour débutants sur les opportunités et risques...', '2024-04-01 12:00:00', 'published', 1890, 'lucie_30', 7),
(8, 'Les Tendances Mode Printemps-Été 2024', 'Découvrez les must-have de la saison prochaine...', '2024-04-05 15:45:00', 'published', 943, 'caroline_sf', 8),
(9, 'Les Avantages du Télétravail pour la Productivité', 'Comment le travail à distance peut booster vos performances...', '2024-04-10 18:20:00', 'published', 1123, 'admin_123', 1),
(10, 'Les Superaliments pour Renforcer l''Immunité', '10 aliments à intégrer dans votre alimentation pour être en forme...', '2024-04-15 09:30:00', 'published', 765, 'marie_47', 2),
(11, 'Voyager en Solo : Mes Conseils Sécurité', 'Guide pratique pour voyager seul en toute sécurité...', '2024-04-20 11:45:00', 'published', 890, 'pierre_49', 3),
(12, 'Les Bases de la Pâtisserie Française', 'Apprenez les techniques fondamentales de la pâtisserie...', '2024-05-02 14:10:00', 'draft', 0, 'sophie_9', 4),
(13, 'Yoga pour Débutants : Programme sur 30 Jours', 'Un programme progressif pour découvrir le yoga...', '2024-05-10 11:45:00', 'published', 654, 'jean_1', 5),
(14, 'Les Méthodes d''Apprentissage des Langues Efficaces', 'Comparatif des différentes approches pour apprendre une langue...', '2024-05-20 16:30:00', 'published', 432, 'david_98', 6),
(15, 'Économiser pour Son Premier Achat Immobilier', 'Stratégies pour constituer son apport personnel...', '2024-06-01 08:15:00', 'published', 987, 'lucie_30', 7),
(16, 'Le Style Minimaliste : Less is More', 'Comment adopter une garde-robe minimaliste et élégante...', '2024-06-10 10:40:00', 'published', 543, 'caroline_sf', 8),
(17, 'Introduction à l''Intelligence Artificielle', 'Comprendre les bases de l''IA et ses applications...', '2024-06-15 13:25:00', 'published', 1876, 'admin_123', 1),
(18, 'La Méditation pour Réduire le Stress', 'Techniques de méditation accessibles à tous...', '2024-07-03 17:50:00', 'draft', 0, 'marie_47', 2),
(19, 'Voyager avec un Petit Budget', 'Astuces pour voyager sans se ruiner...', '2024-07-12 12:05:00', 'published', 765, 'vincent_69', 3),
(20, 'Les Plats Typiques de la Cuisine Marocaine', 'Découverte des saveurs et traditions culinaires du Maroc...', '2024-07-20 15:20:00', 'published', 1098, 'sophie_9', 4),
(21, 'Préparation Physique pour le Ski', 'Conseils pour se préparer avant la saison de ski...', '2024-08-01 09:30:00', 'draft', 0, 'jean_1', 5),
(22, 'Les Outils Numériques pour l''Éducation', 'Les meilleures applications pour apprendre et enseigner...', '2024-08-10 14:45:00', 'published', 876, 'clara_57', 6),
(23, 'Comprendre les Marchés Boursiers', 'Guide pour débutants en bourse...', '2024-08-20 11:20:00', 'published', 654, 'lucie_30', 7),
(24, 'Le Style Casual Chic au Bureau', 'Comment être élégant tout en restant confortable...', '2024-09-01 16:30:00', 'published', 432, 'caroline_sf', 8),
(25, 'La Sécurité Informatique pour les Particuliers', 'Protégez vos données et votre vie privée en ligne...', '2024-09-10 08:15:00', 'published', 1567, 'admin_123', 1),
(26, 'L''Importance du Sommeil pour la Santé', 'Comment améliorer la qualité de son sommeil...', '2024-09-20 10:25:00', 'published', 765, 'marie_47', 2),
(27, 'Les Plus Beaux Villages de France', 'Découverte des villages classés parmi les plus beaux de France...', '2024-10-01 14:35:00', 'published', 987, 'vincent_69', 3),
(28, 'Les Techniques de Cuisson Santé', 'Cuire ses aliments tout en préservant les nutriments...', '2024-10-10 16:45:00', 'published', 543, 'sophie_9', 4),
(29, 'Le CrossFit : Avantages et Risques', 'Analyse complète de cette discipline sportive...', '2024-10-20 12:55:00', 'published', 876, 'jean_1', 5),
(30, 'Apprendre par le Jeu : La Ludopédagogie', 'Utiliser le jeu comme outil d''apprentissage...', '2024-11-01 09:05:00', 'published', 654, 'clara_57', 6);


--INSERT TABLE categorie

INSERT INTO categorie (id_categorie, nom_categorie, description_c) VALUES
(1, 'Technologie', 'Actualités, tutoriels et analyses sur les nouvelles technologies'),
(2, 'Santé', 'Conseils santé, bien-être et médecine préventive'),
(3, 'Voyage', 'Récits de voyage, guides pratiques et conseils touristiques'),
(4, 'Cuisine', 'Recettes, techniques culinaires et astuces de cuisine'),
(5, 'Sport', 'Actualités sportives, conseils d''entraînement et nutrition'),
(6, 'Éducation', 'Pédagogie, conseils d''apprentissage et innovations éducatives'),
(7, 'Finance', 'Gestion budgétaire, investissements et actualités économiques'),
(8, 'Mode', 'Tendances, conseils style et actualités de la mode');

--INSERT TABLE utilisateur

INSERT INTO utilisateur (username, name, email, password, datecreation, role) VALUES
('admin_123', 'admin_blog', 'admin@blogcms.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-01-15 10:00:00', 'admin'),
('marie_47', 'marie_dubois', 'marie.dubois@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-02-10 11:30:00', 'editor'),
('pierre_49', 'pierre_leroy', 'pierre.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-02-15 09:15:00', 'author'),
('sophie_9', 'sophie_martin', 'sophie.martin@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-01 14:20:00', 'author'),
('jean_1', 'jean_dupont', 'jean.dupont@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-10 16:45:00', 'author'),
('lucie_30', 'lucie_bernard', 'lucie.bernard@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-15 08:00:00', 'author'),
('thomas_6', 'thomas_petit', 'thomas.petit@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-03-20 10:30:00', 'subscriber'),
('julie_45', 'julie_roux', 'julie.roux@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-01 12:00:00', 'subscriber'),
('marc_78', 'marc_vincent', 'marc.vincent@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-05 15:45:00', 'author'),
('isabelle_15', 'isabelle_leroy', 'isabelle.leroy@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-10 18:20:00', 'subscriber'),
('david_98', 'david_morel', 'david.morel@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-04-15 09:30:00', 'author'),
('caroline_sf', 'caroline_duval', 'caroline.duval@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-02 14:10:00', 'editor'),
('nicolas_qn', 'nicolas_lambert', 'nicolas.lambert@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-10 11:45:00', 'author'),
('elodie_654', 'elodie_garnier', 'elodie.garnier@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-05-20 16:30:00', 'subscriber'),
('antoine_c59', 'antoine_chevalier', 'antoine.chevalier@yahoo.fr', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-01 08:15:00', 'author'),
('clara_57', 'clara_royer', 'clara.royer@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-10 10:40:00', 'author'),
('quentin_m27', 'quentin_menard', 'quentin.menard@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-06-15 13:25:00', 'subscriber'),
('amelie_68', 'amelie_colin', 'amelie.colin@email.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-03 17:50:00', 'author'),
('vincent_69', 'vincent_gauthier', 'vincent.gauthier@protonmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-12 12:05:00', 'editor'),
('marine_45', 'marine_lebrun', 'marine.lebrun@gmail.com', '$2y$10$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', '2024-07-20 15:20:00', 'subscriber');


--INSERT TABLE commentaire

INSERT INTO commentaire 
(id_commentaire, contenu, author_name, date_creation, id_article) 
VALUES
(1, 'Excellent article, très bien documenté !', 'admin_123', '2024-02-21 12:30:00', 1),
(2, 'Je ne suis pas tout à fait d''accord sur certains points.', 'marie_47', '2024-02-22 15:45:00', 1),
(3, 'Cela m''a beaucoup aidé, merci pour ces conseils.', 'pierre_49', '2024-02-25 16:00:00', 2),
(4, 'Très bel article, les photos sont magnifiques !', 'sophie_9', '2024-02-26 10:15:00', 3),
(5, 'Je trouve que certains conseils sont dangereux.', 'jean_1', '2024-02-27 14:20:00', 4),
(6, 'Parfait pour les débutants comme moi, merci !', 'lucie_30', '2024-02-28 11:30:00', 5),
(7, 'Très détaillé, j''ai appris beaucoup de choses.', 'caroline_sf', '2024-02-29 09:45:00', 6),
(8, 'C''est exactement ce que je cherchais, merci !', 'david_98', '2024-03-01 13:00:00', 7),
(9, 'Je ne comprends pas la partie sur les investissements.', 'vincent_69', '2024-03-02 16:15:00', 8),
(10, 'Super article, j''ai hâte de lire la suite !', 'clara_57', '2024-03-03 10:30:00', 9),
(11, 'Les tendances présentées sont déjà dépassées.', 'admin_123', '2024-03-04 14:45:00', 10),
(12, 'Je vais essayer la recette ce week-end !', 'sophie_9', '2024-03-05 09:00:00', 11),
(13, 'Bonnes astuces pour économiser, merci.', 'lucie_30', '2024-03-06 12:15:00', 12),
(14, 'Le style minimaliste n''est pas pour tout le monde.', 'caroline_sf', '2024-03-07 15:30:00', 13),
(15, 'Très bon tutoriel sur l''IA pour débutants.', 'admin_123', '2024-03-08 11:45:00', 14),
(16, 'La méditation a changé ma vie, merci pour l''article.', 'marie_47', '2024-03-09 09:00:00', 15),
(17, 'Voyager avec un petit budget c''est possible !', 'pierre_49', '2024-03-10 13:15:00', 16),
(18, 'Les plats marocains sont délicieux, merci.', 'sophie_9', '2024-03-11 16:30:00', 17),
(19, 'Je me prépare pour le ski, merci pour les conseils.', 'jean_1', '2024-03-12 10:45:00', 18),
(20, 'Quelles applications recommandez-vous pour les enfants ?', 'clara_57', '2024-03-13 14:00:00', 19),
(21, 'La bourse me fait peur, merci pour les explications.', 'lucie_30', '2024-03-14 09:15:00', 20),
(22, 'Je cherche justement un style casual chic, merci !', 'caroline_sf', '2024-03-15 12:30:00', 21),
(23, 'Important de parler de sécurité informatique.', 'admin_123', '2024-03-16 15:45:00', 22),
(24, 'Je dors mal, merci pour ces conseils.', 'marie_47', '2024-03-17 11:00:00', 23),
(25, 'J''ai visité certains villages, ils sont magnifiques !', 'vincent_69', '2024-03-18 09:15:00', 24);

-- INSERT 

INSERT into utilisateur values ("jdupont","mark_jdupont" , "jean.dupont@email.com", "$2y$10$" , '2024-07-20 15:20:00' ,"éditeur" );

-- SELECT

SELECT title, date_creation, status FROM `article`;

-- UPDATE

UPDATE article SET status = 'archivé' WHERE status = 'draft' AND date_creation < '2024-1-1';

-- DELETE

DELETE FROM commentaire WHERE status = 'spam' AND date_creation < '2024-12-3';

-- WHERE

SELECT * FROM article WHERE date_creation > '2024-12-1';

-- ORDER BY

SELECT * from utilisateur order by datecreation desc;


# HEIG-VD ProgServ3 Course PHP Template

Ce modèle de projet est conçu pour les étudiant.es du cours
[_"Programmation Serveur 3 (ProgServ3)"_](https://github.com/heig-vd-progserv-course/heig-vd-progserv3-course)
à la [HEIG-VD](https://heig-vd.ch).

Il fournit une structure de base pour les projets PHP avec les éléments suivants
:

- Un interpréteur PHP 8.5 avec les extensions nécessaires pour le développement
  web et la connexion à une base de données SQLite.
- Des configurations recommandées pour l'éditeur de code
  [Visual Studio Code](https://code.visualstudio.com/), y compris des extensions
  utiles pour le développement PHP avec Laravel
  ([PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client),
  [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode),
  [SQLite Viewer](https://marketplace.visualstudio.com/items?itemName=qwtel.sqlite-viewer),
  [Laravel](https://marketplace.visualstudio.com/items?itemName=laravel.vscode-laravel)
  et
  [vscode-blade-formatter](https://marketplace.visualstudio.com/items?itemName=shufo.vscode-blade-formatter)).

Tous ses éléments sont configurés pour fonctionner avec
[Docker Compose](https://docs.docker.com/compose/), ce qui permet de créer un
environnement de développement isolé et reproductible.

N'hésitez pas à personnaliser ce modèle et ce document pour ajouter des
instructions spécifiques à votre projet ou des détails supplémentaires sur la
configuration et l'utilisation du projet.

## Utiliser ce modèle pour votre projet

1. Cliquez sur le bouton "Use this template" (Utiliser ce modèle) sur la page
   GitHub de ce dépôt.
2. Donnez un nom à votre nouveau dépôt et configurez les options selon vos
   préférences.
3. Invitez les membres de votre équipe à collaborer sur le projet en leur
   donnant accès au dépôt (si applicable).
4. Chaque membre de l'équipe doit cloner le nouveau dépôt sur sa machine locale
   pour commencer à travailler sur le projet (si applicable).
5. Utilisez le workflow GitHub étudié en cours pour gérer les branches, les
   commits et les pull requests afin de travailler efficacement sur le projet.

## Structure du projet

- `.devcontainer/`: Contient la configuration pour le développement dans un
  conteneur Debian (Trixie) avec Visual Studio Code.
- `.vscode/`: Contient les paramètres recommandés pour Visual Studio Code.
- `.gitignore`: Fichier de configuration pour Git, spécifiant les fichiers et
  dossiers à ignorer.
- `README.md`: Ce fichier de documentation.

## Ouvrir le projet localement

> [!NOTE]
>
> Il est important d'ouvrir le dossier du projet directement et non un dossier
> parent.
>
> Pensez à bien ouvrir le dossier du projet lui-même (celui qui contient ce
> fichier README.md) et non un dossier parent. Ouvrir un dossier parent peut
> entraîner des problèmes de configuration et de fonctionnement de Visual Studio
> Code.

1. Clonez ce dépôt sur votre machine locale.
2. Ouvrez ce dossier dans Visual Studio Code.

## Ouvrir le projet dans un conteneur de développement

Vous devez avoir l'extension
[Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
installée dans Visual Studio Code pour pouvoir ouvrir le projet dans un
conteneur Docker.

Une fois le projet ouvert dans Visual Studio Code, vous devriez voir une
notification vous proposant d'ouvrir le projet dans un conteneur de
développement. Cette notification peut apparaître sous forme de bannière en bas
à droite de l'éditeur ou dans la barre d'état en bas à gauche de la fenêtre.

Acceptez cette proposition pour bénéficier d'un environnement de développement
préconfiguré.

Si aucune notification n'apparaît, vous pouvez ouvrir manuellement le conteneur
en utilisant la commande _"Dev Containers: Reopen in Container"_ dans la palette
de commandes (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> sur Windows/Linux ou
<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> sur macOS).

## Visualiser les e-mails envoyés par votre application PHP

Le serveur SMTP Mailpit est inclus dans la configuration Docker Compose pour
vous permettre de tester l'envoi d'e-mails depuis votre application PHP.

Pour accéder à l'interface web de Mailpit, lancez le conteneur Docker à l'aide
de la commande `docker compose up`, ouvrez votre navigateur et rendez-vous à
l'adresse suivante : <http://localhost:8025>.

Vous y verrez la liste des e-mails envoyés par votre application PHP, ainsi que
leur contenu et les détails de l'envoi.

Si vous fermez/redémarrez Mailpit, les e-mails précédemment envoyés seront
perdus, car ils ne sont pas stockés de manière persistante.

Pour arrêter le serveur Mailpit, vous pouvez utiliser le raccourci clavier
<kbd>Ctrl</kbd>+<kbd>C</kbd> dans le terminal où la commande `docker compose up`
a été exécutée, ou exécuter la commande `docker compose down` dans un terminal
intégré de Visual Studio Code.

Lorsque vous fermez Visual Studio Code, les conteneurs Docker seront
automatiquement arrêtés. Dès que vous rouvrez Visual Studio Code et que vous
exécutez à nouveau la commande `docker compose up`, les services Docker seront
redémarrés.

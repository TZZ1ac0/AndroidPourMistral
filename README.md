# AndroidPourMistral 🚀

[![Android CI](https://github.com/TZZ1ac0/AndroidPourMistral/actions/workflows/android-ci.yml/badge.svg)](https://github.com/TZZ1ac0/AndroidPourMistral/actions/workflows/android-ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Kotlin](https://img.shields.io/badge/Kotlin-1.9.20-blue.svg)](https://kotlinlang.org/)
[![Android](https://img.shields.io/badge/Android-34-green.svg)](https://developer.android.com/)

Une application Android **évolutive** développée avec **Kotlin** et **Jetpack Compose**, suivant les meilleures pratiques de développement : CI/CD, tests unitaires, SemVer, et Conventional Commits.

---

## 📌 **Fonctionnalités**
- ✅ **Hello World** en Jetpack Compose
- ✅ Tests unitaires pour la logique métier
- ✅ Intégration continue avec **GitHub Actions**
- ✅ Respect des conventions **Conventional Commits**
- ✅ Gestion de version **SemVer**

---

## 🛠 **Technologies**
| Outil | Version | Description |
|-------|---------|-------------|
| **Kotlin** | 1.9.20 | Langage principal |
| **Jetpack Compose** | 1.5.3 | Framework UI |
| **Android Gradle Plugin** | 8.3.0 | Build system |
| **JUnit** | 4.13.2 | Tests unitaires |

---

## 📂 **Structure du projet**
```
AndroidPourMistral/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/androidpourmistral/
│   │   │   │   ├── MainActivity.kt
│   │   │   │   └── ui/theme/
│   │   │   │       ├── Color.kt
│   │   │   │       ├── Theme.kt
│   │   │   │       └── Type.kt
│   │   │   └── res/
│   │   │       ├── drawable/
│   │   │       ├── mipmap-*/
│   │   │       └── values/
│   │   │           ├── colors.xml
│   │   │           └── themes.xml
│   │   └── test/
│   │       └── java/com/example/androidpourmistral/
│   │           └── GreetingTest.kt
│   └── build.gradle.kts
├── .github/
│   └── workflows/
│       └── android-ci.yml
├── build.gradle.kts
├── settings.gradle.kts
├── gradle.properties
├── README.md
└── CHANGELOG.md
```

---

## 🚀 **Prérequis**
- **Android Studio** (version 2023.2 ou +)
- **SDK Android** (API 34)
- **Java 17**

---

## 📥 **Installation**
1. Cloner le dépôt :
   ```bash
   git clone https://github.com/TZZ1ac0/AndroidPourMistral.git
   ```
2. Ouvrir le projet dans **Android Studio**
3. Synchroniser les dépendances Gradle
4. Exécuter l'application sur un émulateur ou un appareil physique

---

## 🧪 **Tests**
Pour lancer les tests unitaires :
```bash
./gradlew test
```

---

## 📜 **Conventions**
### Commits
Utilisez **Conventional Commits** pour les messages de commit :
- `feat:` pour une nouvelle fonctionnalité
- `fix:` pour une correction de bug
- `chore:` pour une tâche de maintenance
- `docs:` pour la documentation

Exemple :
```bash
git commit -m "feat: add hello world screen"
```

### Versioning
Le projet suit **Semantic Versioning (SemVer)** :
- `MAJOR` : Changements incompatibles
- `MINOR` : Ajout de fonctionnalités rétrocompatibles
- `PATCH` : Corrections de bugs rétrocompatibles

---

## 📄 **License**
Ce projet est sous licence **MIT** – voir [LICENSE](LICENSE) pour plus de détails.

---

## 📬 **Contact**
Pour toute question ou suggestion, ouvrez une **Issue** ou contactez le mainteneur.

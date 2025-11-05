# QA Karate Project

Este proyecto implementa pruebas automatizadas de API utilizando **Karate DSL** y **JUnit5**.

## 🔧 Tecnologías
- Java 21
- Maven
- Karate 1.4.1
- JUnit5

## 📂 Estructura
- `karate-config.js`: Configuración global (base URL, variables)
- `get-users.feature`: Escenario BDD de prueba
- `KarateRunner.java`: Ejecuta las features

## ▶️ Ejecución
Desde IntelliJ:
1. Abrir `KarateRunner.java`
2. Clic derecho → **Run 'KarateRunner'**

Desde consola:
```bash
mvn clean test
```

## 🧠 Defensa técnica
> “El proyecto QA-KARATE usa Karate DSL sobre JUnit5 para pruebas de API REST, aplicando metodología BDD.  
> Se define la URL base en `karate-config.js` y los escenarios en formato Given–When–Then, validando respuestas HTTP y contenido JSON.”

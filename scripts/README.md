# Scripts del Proyecto Angular

Este directorio contiene archivos útiles para automatizar la generación de componentes, servicios y modelos dentro del proyecto Angular, así como un esquema lógico de su estructura.

## 📁 Archivos

### ✅ estructura.bat
Script en Windows Batch (`.bat`) que automatiza la creación de:

- Componentes: `auth`, `home`, `register`
- Servicio: `auth` dentro de `helpers/services`
- Carpeta y modelos en: `src/app/helpers/models`
- Entorno de Angular (`ng generate environments`)

#### 🔹 Uso:

Abre una terminal en la raíz del proyecto y ejecuta:

```bash

mkdir scripts

New-Item scripts/README.md -ItemType "file"
New-Item scripts/estructura-generacion-angular.txt -ItemType "file"


scripts\estructura.bat

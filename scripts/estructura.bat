@echo off

REM Componentes
call ng g c auth --skip-tests
call ng g c home --skip-tests
call ng g c register --skip-tests

REM Servicios
call ng g s helpers/services/auth --skip-tests

REM Modelos
mkdir src\app\helpers\models

echo export interface Role ^{ id: number; name: string; ^} > src\app\helpers\models\role.ts
echo import ^{ Role ^} from './role'; > src\app\helpers\models\user.ts
echo export interface User ^{ id: string; userName: string; password: string; role: Role; ^} >> src\app\helpers\models\user.ts
echo export interface LoginUser ^{ userName: string; password: string; ^} > src\app\helpers\models\login-user.ts
echo export interface NewUser ^{ userName: string; password: string; ^} > src\app\helpers\models\new-user.ts

REM Environment
call ng generate environments
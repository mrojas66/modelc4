workspace "Mi Mercado"{

    model {
        admin = person "Administrador" "Usuario de tipo administrador"
        provider = person "Proveedor" "Usuario de tipo proveedor"

        system = softwareSystem "Mi Mercado - 2023" "Software para la administración ofertas empresariales"{
            group "Single Page Applications - Front-end"{
                spaAdmin = container "SPA - Administrador" "Aplicación web para perfil administrador" "JavaScript - Angular" "Web Browser"
                spaProvider = container "SPA - Proveedor" "Aplicación web para perfil proveedor" "JavaScript - Angular" "Web Browser"
            }
            
            group "Microservicios - Back-end"{
                msAuth = container "API ms_auth" "Contiene la logica de usuarios y autenticación." "Java - SpringBoot API"{
                    group "auth" {
                        authController = component "AuthController" "Permite a los usuarios iniciar sesion" "Spring MVC - Rest Controller"
                        authService = component "AuthService" "Contiene la logica de inicio de sesión" "Spring MVC - Service"
                        securityComponent = component "Security Component" "Administra autenticación de usuarios y protege los recursos y servicios web" "Spring security"
                    }

                    group "user" {
                        authUserController = component "AuthUserController" "Permite a los usuarios la gestion de la cuenta" "Spring MVC - Rest Controller"
                        authUserService = component "AuthUserService" "Contiene la logica de la cuenta de usuario." "Spring MVC - Service"
                        authUserRepository = component "AuthUserRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                    group "restorepass" {
                        restorePassController = component "RestorePassController" "Permite a los usuarios la recuperación de contraseña" "Spring MVC - Rest Controller"
                        restorePassService = component "RestorePassService" "Contiene la logica de recuperación de contraseña" "Spring MVC - Service"
                        restorePassRepository = component "RestorePassRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                    group "sendotp" {
                        authCodeController = component "AuthCodeController" "Permite a los usuarios la generacion de OTP para registro." "Spring MVC - Rest Controller"
                        authCodeService = component "AuthCodeService" "Contiene la logica generacion y envio de OTP" "Spring MVC - Service"
                        authCodeRepository = component "AuthCodeRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                    emailService = component "EmailService" "Contiene la logica del envio de correos electronicos" "Spring MVC - Service"

                }
            
                msProvider = container "API ms_proveedor" "Contiene la lógica de proveedores" "Java - SpringBoot API"{
                    group "provider" {
                            providerController = component "ProviderController" "Permite a los usuarios la gestion de datos de proveedor." "Spring MVC - Rest Controller"
                            providerService = component "ProviderService" "Contiene la logica para la administracion de proveedor" "Spring MVC - Service"
                            providerRepository = component "ProviderRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                            providerUserRepository = component "ProviderUserRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                     group "providertype" {
                            providerTypeController = component "ProviderTypeController" "Permite a los usuarios la gestion de tipo de proveedor." "Spring MVC - Rest Controller"
                            providerTypeService = component "ProviderTypeService" "Contiene la logica para la administracion de tipo de proveedor" "Spring MVC - Service"
                            providerTypeRepository = component "ProviderTypeRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                            providerTypeFilesRepository = component "ProviderTypeFilesRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                            
                    }

                }

                msData = container "API ms_data" "Contiene la lógica de datos" "Java - SpringBoot API"{
                     group "azurefile" {
                            azureFileController = component "AzureFileController" "Permite a los usuarios la gestion de archivos" "Spring MVC - Rest Controller"
                            azureFileService = component "AzureFileService" "Contiene la logica para la gestion de archivos" "Spring MVC - Service"
                            azureFileRepository = component "AzureFileRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                     group "city" {
                            cityController = component "CityController" "Permite a los usuarios la gestion ciudad" "Spring MVC - Rest Controller"
                            cityService = component "CityService" "Contiene la logica para la administracion de ciudad" "Spring MVC - Service"
                            cityRepository = component "CityRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                     group "department" {
                            departmentController = component "DepartmentController" "Permite a los usuarios la gestion de departamentos" "Spring MVC - Rest Controller"
                            departmentService = component "DepartmentService" "Contiene la logica para la administracion de departamentos" "Spring MVC - Service"
                            departmentRepository = component "DepartmentRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                     group "paramsfiles" {
                            paramFilesController = component "ParamFilesController" "Permite a los usuarios la gestion de parametros de archivo" "Spring MVC - Rest Controller"
                            paramFilesService = component "ParamFilesService" "Contiene la logica para la administracion de parametros de archivo" "Spring MVC - Service"
                            paramFilesRepository = component "ParamFilesRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                     group "productcategory" {
                            productCategoryController = component "ProductCategoryController" "Permite a los usuarios la gestion de categorias de producto" "Spring MVC - Rest Controller"
                            productCategoryService = component "ProductCategoryService" "Contiene la logica para la administracion de categorias de producto" "Spring MVC - Service"
                            productCategoryRepository = component "ProductCategoryRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                     group "unit" {
                            unitController = component "ProviderController" "Permite a los usuarios la gestion de unidades" "Spring MVC - Rest Controller"
                            unitService = component "ProviderService" "Contiene la logica para la administracion de unidades" "Spring MVC - Service"
                            unitRepository = component "ProviderRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }

                }
                msMarket = container "API ms_market" "Contiene la lógica de mercado" "Java - SpringBoot API"{
                     group "catalog" {
                            catalogController = component "CatalogController" "Permite a los usuarios la gestion del catalogo" "Spring MVC - Rest Controller"
                            catalogService = component "CatalogService" "Contiene la logica para la administracion de catalogo" "Spring MVC - Service"
                            catalogRepository = component "CatalogRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                            productRepository = component "ProductRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                     group "paramstate" {
                            paramStateController = component "ParamStateController" "Permite a los usuarios la gestion de parametros de estado" "Spring MVC - Rest Controller"
                            paramStateService = component "ParamStateService" "Contiene la logica para la administracion de parametros de estado" "Spring MVC - Service"
                            paramStateRepository = component "ParamStateRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                     group "providerregister" {
                            providerRegisterController = component "ProviderRegisterController" "Permite a los usuarios el registro de informacion de proveedor" "Spring MVC - Rest Controller"
                            providerRegisterService = component "ProviderRegisterService" "Contiene la logica del registro de informacion de proveedor" "Spring MVC - Service"
                            providerRegisterRepository = component "ProviderRegisterRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                            providerFileStatusRepository = component "ProviderFileStatusRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                     providerClient = component "Cliente proveedor API" "Cliente del API de proveedor ms_provider" "Java WebClient"
                }

                msAuthDB = container "BD mm_auth" "Almacena datos de usuarios y credenciales." "SQL Server" "Database"
                msProviderDB = container "BD mm_provider" "Almacena datos de proveedores" "SQL Server" "Database"
                msDataDB = container "BD mm_data" "Almacena registros relacionados con archivos." "SQL Server" "Database"
                msMarketDB = container "BD mm_market" "Almacena datos de mercado." "SQL Server" "Database"
            }
           
            
        }
        emailSystem = softwareSystem "Email - SMTP" "Envio de correos a traves de servidor SMTP" "Existing System"
        
        #Relationships
        system -> emailSystem "Envía correo electrónico usando" 
        admin -> spaAdmin "Utiliza"
        provider -> spaProvider "Utiliza"

        #Relationships microservices------------------------------------------------
        msAuth -> msAuthDB "Realiza lectura y escritura" "Spring Data/JPA"
        msProvider -> msProviderDB "Realiza  lectura y escritura" "Spring Data/JPA"
        msData -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"
        msMarket -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"
        spaAdmin -> msAuth "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msAuth "Realiza llamadas API a" "JSON/HTTP"
        spaAdmin -> msMarket "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msMarket "Realiza llamadas API a" "JSON/HTTP"
        spaAdmin -> msData "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msData "Realiza llamadas API a" "JSON/HTTP"
        msMarket -> msProvider "Realiza llamadas API a" "JSON/HTTP"
        
        #Relationships ms_auth-----------------------------------------------------
        #--auth
        spaAdmin -> authController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> authController "Realiza llamadas API a" "JSON/HTTP"
        authController -> authService "Utiliza"
        authService -> securityComponent "Utiliza"
        authService -> authUserRepository "Utiliza"

        #--user
        spaAdmin -> authUserController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> authUserController "Realiza llamadas API a" "JSON/HTTP"
        authUserController -> authUserService "Utiliza"
        authUserService -> authUserRepository "Utiliza"
        authUserRepository -> msAuthDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--restorepass
        spaAdmin -> restorePassController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> restorePassController "Realiza llamadas API a" "JSON/HTTP"
        restorePassController -> restorePassService "Utiliza"
        restorePassService -> restorePassRepository "Utiliza"
        restorePassRepository -> msAuthDB "Realiza lectura y escritura" "Spring Data/JPA"

         #--restorepass
        spaAdmin ->  authCodeController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> authCodeController "Realiza llamadas API a" "JSON/HTTP"
        authCodeController -> authCodeService "Utiliza"
        authCodeService -> authCodeRepository "Utiliza"
        authCodeRepository -> msAuthDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--emais
        restorePassService -> emailService "Utiliza"
        authCodeService -> emailService "Utiliza"
        emailService -> emailSystem "Envía correo electrónico usando" 


        #Relationships ms_provider-----------------------------------------------------
        #--provider
        msMarket -> providerController "Realiza llamadas API a" "JSON/HTTP"
        providerController -> providerService "Utiliza"
        providerService -> providerRepository "Utiliza"
        providerService -> providerUserRepository "Utiliza"
        providerService -> providerTypeFilesRepository "Utiliza"
        providerRepository -> msProviderDB "Realiza lectura y escritura" "Spring Data/JPA"
        providerTypeFilesRepository -> msProviderDB "Realiza lectura y escritura" "Spring Data/JPA"
        providerUserRepository -> msProviderDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--provider type
        msMarket -> providerTypeController "Realiza llamadas API a" "JSON/HTTP"
        providerTypeController -> providerTypeService "Utiliza"
        providerTypeService -> providerTypeRepository "Utiliza"
        providerTypeService -> providerTypeFilesRepository "Utiliza"
        providerTypeRepository -> msProviderDB "Realiza lectura y escritura" "Spring Data/JPA"

        #Relationships ms_data---------------------------------------------------------
        #--azurefile
        spaAdmin ->  azureFileController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> azureFileController "Realiza llamadas API a" "JSON/HTTP"
        azureFileController -> azureFileService "Utiliza"
        azureFileService -> azureFileRepository "Utiliza"
        azureFileRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--city
        spaAdmin ->  cityController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> cityController "Realiza llamadas API a" "JSON/HTTP"
        cityController -> cityService "Utiliza"
        cityService -> cityRepository "Utiliza"
        cityRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--department
        spaAdmin ->  departmentController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> departmentController "Realiza llamadas API a" "JSON/HTTP"
        departmentController -> departmentService "Utiliza"
        departmentService -> departmentRepository "Utiliza"
        departmentRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--paramsfiles
        spaAdmin ->  paramFilesController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> paramFilesController "Realiza llamadas API a" "JSON/HTTP"
        paramFilesController -> paramFilesService "Utiliza"
        paramFilesService -> paramFilesRepository "Utiliza"
        paramFilesRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--product Category
        spaAdmin ->  productCategoryController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> productCategoryController "Realiza llamadas API a" "JSON/HTTP"
        productCategoryController -> productCategoryService "Utiliza"
        productCategoryService -> productCategoryRepository "Utiliza"
        productCategoryRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--unit
        spaAdmin ->  unitController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> unitController "Realiza llamadas API a" "JSON/HTTP"
        unitController -> unitService "Utiliza"
        unitService -> unitRepository "Utiliza"
        unitRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #Relationships ms_market---------------------------------------------------------
        #--catalog
        spaAdmin ->  catalogController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> catalogController "Realiza llamadas API a" "JSON/HTTP"
        catalogController -> catalogService "Utiliza"
        catalogService -> catalogRepository "Utiliza"
        catalogService -> productRepository "Utiliza"
        catalogRepository -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--paramstate
        spaAdmin ->  paramStateController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> paramStateController "Realiza llamadas API a" "JSON/HTTP"
        paramStateController -> paramStateService "Utiliza"
        paramStateService -> paramStateRepository "Utiliza"
        paramStateRepository -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--providerregister
        spaAdmin -> providerRegisterController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> providerRegisterController "Realiza llamadas API a" "JSON/HTTP"
        providerRegisterController -> providerRegisterService "Utiliza"
        providerRegisterService -> providerRegisterRepository "Utiliza"
        providerRegisterService -> providerFileStatusRepository "Utiliza"
        providerRegisterService -> paramStateRepository "Utiliza"
        providerRegisterService -> providerClient "Utiliza"
        providerClient -> msProvider "Realiza llamadas API a" "JSON/HTTP"
        providerRegisterRepository -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"
        providerFileStatusRepository -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"

    }

    views {
        systemContext system {
            include *
            autolayout lr
        }

        container system {
            include *
            autolayout tb
        }

        component msAuth "Components"{
            include *
            autolayout tb
            description "El diagrama de componentes msAuth de la aplicación API."
        }

        component msProvider {
            include *
            autolayout tb
            description "El diagrama de componentes msProvider de la aplicación API."
        }

         component msData {
            include *
            autolayout tb
            description "El diagrama de componentes msData de la aplicación API."
        }

         component msMarket {
            include *
            autolayout tb
            description "El diagrama de componentes msMarket de la aplicación API."
        }
        theme default

        styles {
            element "Group"{
                color #009B10
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Existing System" {
                background #999999
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Database" {
                shape Cylinder
            }
        }
    }
}
workspace "Mi Mercado"{

    model {
        admin = person "Administrador" "Usuario de tipo administrador"
        provider = person "Proveedor" "Usuario de tipo proveedor"
        entity = person "Entidad" "Usuario de tipo entidad"


        system = softwareSystem "Mi Mercado - 2023" "Software para la administración ofertas empresariales"{
            group "Single Page Applications - Front-end"{
                spaAdmin = container "SPA - Administrador" "Aplicación web para perfil administrador" "JavaScript - Angular" "Web Browser"{
                    group "adm-app-module" {
                        AdmAppComponent = component "AdmAppComponent" "Componente de entrada" "Angular"
                    }
                    group "adm-public-module" {
                        AdmLoginComponent = component "AdmLoginComponent" "Layout del login administrador" "Angular"
                        AdmRememberVerifyComponent = component "AdmRememberVerifyComponent" "Permite restablecer la contraseña" "Angular"
                        AdmSendEmailComponent = component "AdmSendEmailComponent" "Permite enviar email para restablecer contraseña" "Angular"
                    }
                    group "adm-private-module" {
                        AdmPrivateComponent = component "AdmPrivateComponent" "Contiene la logica para el sidebar y la información del usuario" "Angular"
                        AdmPurchaseOrderComponent = component "AdmPurchaseOrderComponent" "Obtiene la información de todas las ordenes, permite navegar a componentes para administrar ordenes" "Angular"
                        AdmOrderDetailComponent = component "AdmOrderDetailComponent" "Permite administrar una orden especifica" "Angular"
                        AdmProvidersComponent = component "AdmProvidersComponent" "Permite gestionar el estado de los proveedores" "Angular"
                        AdmProviderDetailsComponent = component "AdmProviderDetailsComponent" "Permite gestionar la información de un proveedor especifico" "Angular"
                        AdmEntitiesComponent = component "AdmEntitiesComponent" "Permite gestionar las entidades" "Angular"
                        AdmCatalogsComponent = component "AdmCatalogsComponent" "Permite visualizar los catalogos" "Angular"
                        AdmLogsComponent = component "AdmLogsComponent" "" "Angular"
                        AdmParametersComponent = component "AdmParametersComponent" "" "Angular"
                        AdmPlatformComponent = component "AdmPlatformComponent" "Permite gestionar la información de la plataforma" "Angular'
                    }
                    group "adm-core" {
                        AdmAuthService = component "AdmAuthService" "Contiene la logica para manejar token y hacer llamdos HTTP" "Angular"
                        AdmCatalogServiceTS = component "AdmCatalogServiceTS" "Contiene la logica para obtener la información de los catalogos" "Angular"
                        AdmDataPrivateServiceTS = component "AdmDataPrivateServiceTS" "Contiene la logica obtener informacion de productos descarga archivos" "Angular"
                        AdmEntityServiceTS = component "AdmEntityServiceTS" "Permite obtener la información de entidad" "Angular"
                        AdmMyMarketServiceTS = component "AdmMyMarketServiceTS" "Permite obtener y enviar información relacionada con mi mercado" "Angular"
                        AdmOriginServiceTS = component "AdmOriginServiceTS" "Permite obtener y enviar información de origen" "Angular"
                        AdmProviderServiceTS = component "AdmProviderServiceTS" "Permite obtener y enviar información de proveedor" "Angular"
                        AdmUserServiceTS = component "EntUserServiceTS" "Permite obtener y enviar información de los usuarios" "Angular"
                    }
                }
                spaProvider = container "SPA - Proveedor" "Aplicación web para perfil proveedor" "JavaScript - Angular" "Web Browser" {
                    group "prov-app-module" {
                        ProvAppComponent = component "ProvAppComponent" "Componente de entrada" "Angular"
                    }
                    group "prov-public-module" {
                        ProvLoginComponent = component "ProvLoginComponent" "Layout del login administrador" "Angular"
                        ProvRememberVerifyComponent = component "ProvRememberVerifyComponent" "Permite restablecer la contraseña" "Angular"
                        ProvSendEmailComponent = component "ProvSendEmailComponent" "Permite enviar email para restablecer contraseña" "Angular"
                        ProvRegisterComponent = component "ProvRegisterComponent" "Permite a los proveedores registrarse" "Angular"
                        ProvRegisterFinalComponent = component "ProvRegisterFinalComponent" "Permite completar el registro a los proveedores" "Angular"
                    }
                    group "prov-private-module" {
                        ProvPrivateComponent = component "ProvPrivateComponent" "Contiene la logica para el sidebar y la información del usuario" "Angular"
                        ProvHomeComponent = component "ProvHomeComponent" "Permite visualizar los catalogos disponibles y catalogo actual" "Angular"
                        ProvProfileComponent = component "ProvProfileComponent" "Permite visualizar la información del proveedor" "Angular"
                        ProvMyDocumentsComponent = component "ProvMyDocumentsComponent" "Permite gestionar los documentos del proveedor" "Angular"
                        ProvCatalogComponent = component "ProvCatalogComponent" "Premtie visualizar la información de los catalogos" "Angular"
                        ProvQuotesPageComponent = component "ProvQuotesPageComponent" "Contiene los componentes para administrar mis cotizaciones" "Angular"
                        ProvMyQuotesComponent = component "ProvMyQuotesComponent" "Permite visualizar las información de las cotizaciones" "Angular"
                        ProvQuotesToAnswerComponent = component "ProvQuotesToAnswerComponent" "Permite vizualizar las cotizaciones por responder y gestionar cotizacion especifica" "Angular"
                        ProvQuotesAnsweredComponent = component "ProvQuotesAnsweredComponent" "Permite visualizar las cotizaciones respondidas y gestionar cotizacion especifica" "Angular"
                        ProvPurchaseOrderComponent = component "PurchaseOrderComponent" "Permite visualizar todas las ordenes" "Angular"
                        ProvPurchaseOrderDetailComponent = component "ProvPurchaseOrderDetailComponent" "Permite gestionar una orden en especifico" "Angular"
                    }
                    group "prov-core" {
                        ProvAuthService = component "ProvAuthService" "Contiene la logica para manejar token y hacer llamdos HTTP" "Angular"
                        ProvCatalogServiceTS = component "ProvCatalogServiceTS" "Contiene la logica para obtener la información de los catalogos" "Angular"
                        ProvMyDocumentService = component "ProvMyDocumentService" "Permite gestionar los documentos de proveedor" "Angular"
                        ProvMyMarketServiceTS = component "ProvMyMarketServiceTS" "Permite obtener y enviar información relacionada con mi mercado" "Angular"
                        ProvOriginServiceTS = component "ProvOriginServiceTS" "Permite obtener y enviar información de origen" "Angular"
                        ProvProviderServiceTS = component "ProvProviderServiceTS" "Permite obtener y enviar información de proveedor" "Angular"
                    }
                }
                spaEntity = container "SPA - Entidad" "Aplicación web para perfil entidad" "JavaScript - Angular" "Web Browser"{
                    group "ent-app-module" {
                        EntAppComponent = component "EntAppComponent" "Componente de entrada" "Angular"
                    }
                    group "ent-public-module" {
                        EntLoginComponent = component "EntLoginComponent" "Layout del Login de Entidad" "Angular"
                    }
                    group "ent-private-module" {
                        EntPrivateComponent = component "EntPrivateComponent" "Contiene la logica para el sidebar y la información del usuario" "Angular"
                        EntProductsComponent = component "ProductsComponent" "Obtiene la lista de catalogos" "Angular"
                        EntBasketComponent = component "EntBasketComponent" "Permite administrar la canasta" "Angular"
                        EntEventsComponent = component "EntEventsComponent" "Permite manejar los eventos de cotización" "Angular"
                        EntQuotationsPageComponent = component "EntQuotationsPageComponent" "Contiene los componentes para administrar mis cotizaciones" "Angular"
                        EntMyQuotationsComponent = component "EntMyQuotationsComponent" "Componente principal información mis cotizaciones" "Angular"
                        EntOffersComponent = component "EntOffersComponent" "Permite manejar las ofertas de la cotización" "Angular"
                        EntPurchaseOrderComponent = component "EntPurchaseOrderComponent" "Obtiene la información de todas las ordenes, permite navegar a componentes para administrar ordenes" "Angular"
                        EntOrderDetailComponent = component "EntOrderDetailComponent" "Permite administrar una orden especifica" "Angular"
                        EntUsersComponent = component "EntUsersComponent" "Permite administrar los usuarios" "Angular"
                    }
                    group "ent-core" {
                        EntAuthServiceTS = component "EntAuthServiceTS" "Contiene la logica para manejar token y hacer llamados HTTP" "Angular"
                        EntCatalogServiceTS = component "EntCatalogServiceTS" "Contiene la logica para obtener la información de los catalogos" "Angular"
                        EntBasketServiceTS = component "EntBasketServiceTS" "Contiene la logica para gestionar la canasta en localStorage" "Angular"
                        EntDataPrivateServiceTS = component "EntDataPrivateServiceTS" "Contiene la logica obtener informacion de productos descarga archivos" "Angular"
                        EntEventsServiceTS = component "EntEventsServiceTS" "Contiene la logica para obtener y enviar la información de cotización" "Angular"
                        EntEntityServiceTS = component "EntEntityServiceTS" "Permite obtener la información de entidad" "Angular"
                        EntMyMarketServiceTS = component "EntMyMarketServiceTS" "Permite obtener y enviar información relacionada con mi mercado" "Angular"
                        EntOriginServiceTS = component "EntOriginServiceTS" "Permite obtener y enviar información de origen" "Angular"
                        EntProviderServiceTS = component "EntProviderServiceTS" "Permite obtener y enviar información de proveedor" "Angular"
                        EntUserServiceTS = component "EntUserServiceTS" "Permite obtener y enviar información de los usuarios" "Angular"
                    } 
                }
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

                    group "notification" {
                        authNotificationController = component "authNotificationController" "Permite la consulta de Notificaciones" "Spring MVC - Rest Controller"
                        authNotificationService = component "authNotificationService" "Contiene la logica del almacenamiento de notificaciones" "Spring MVC - Service"
                        authNotificationRepository = component "authNotificationRepository" " Interfaz operacion de acceso a base datos" "Spring MVC - Repository"
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
                     providerClient = component "Cliente proveedor API" "Cliente del API de proveedor ms_provider" "Java WebClient"
                }

                msEntity = container "API ms_entity" "Contiene la lógica de Entidad" "Java - SpringBoot API"{
                    group "paramchain" {
                            paramChainController = component "paramChainController" "Permite a los usuarios la gestion de la cadena de la entidad." "Spring MVC - Rest Controller"
                            paramChainService = component "paramChainService" "Contiene la logica para la gestion de cadena de la entidad" "Spring MVC - Service"
                    }

                    group "publicorganization" {
                            publicOrganizationController = component "publicOrganizationController" "Permite a los usuarios la gestion de la entidad." "Spring MVC - Rest Controller"
                            publicOrganizationService = component "publicOrganizationService" "Contiene la logica para la gestion usuarios de la entidad" "Spring MVC - Service"
                    }
                    group "schedulerCoupa" {
                            schedulerCoupaScheduler = component "schedulerCoupaScheduler" "Contiene la logica de sincronizacion con Coupa." "Spring MVC - Rest Controller"
                    }
                }

                msOrder = container "API ms_order" "Contiene la lógica de Ordenes" "Java - SpringBoot API"{
                    group "order" {
                            orderController = component "orderController" "Permite a los usuarios la gestion de orden de compra." "Spring MVC - Rest Controller"
                            orderService = component "orderService" "Contiene la logica para la gestion de orden de compra" "Spring MVC - Service"
                            orderRepository = component "orderRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                }

                msQuotation = container "API ms_quotation" "Contiene la lógica de Eventos de Cotizacion" "Java - SpringBoot API"{
                    group "offer" {
                            offerController = component "OfferController" "Permite a los usuarios la gestion de datos de oferta de proveedores." "Spring MVC - Rest Controller"
                            offerService = component "OfferService" "Contiene la logica para la administracion de oferta de proveedores" "Spring MVC - Service"
                            offerRepository = component "OfferRepository" " Interfaz operaciones de acceso a datos" "Spring MVC - Repository"
                    }
                }

                msAuthDB = container "BD mm_auth" "Almacena datos de usuarios y credenciales." "SQL Server" "Database"
                msProviderDB = container "BD mm_provider" "Almacena datos de proveedores" "SQL Server" "Database"
                msDataDB = container "BD mm_data" "Almacena registros relacionados con archivos." "SQL Server" "Database"
                msMarketDB = container "BD mm_market" "Almacena datos de mercado." "SQL Server" "Database"
                msEntityDB = container "BD mm_public_entity" "Almacena datos relacionados con entidades y COUPA." "SQL Server" "Database"
                msQuotationDB = container "BD mm_quotation" "Almacena datos relacionados con los eventos de cotizacion " "SQL Server" "Database"
                msOrderDB = container "BD mm_order" "Almacena datos relacionados con las ordenes de compra" "SQL Server" "Database"

            }
           
            
        }
        emailSystem = softwareSystem "Email - SMTP" "Envio de correos a traves de servidor SMTP" "Existing System"
        COUPASystem = softwareSystem "COUPA - API REST" "Entidad repositorio de usuarios y info entidad" "Existing System"
        SIIFSystem = softwareSystem "SIIF - API REST" "Validacion de CDP" "Existing System"
        
        #Relationships
        system -> emailSystem "Envía correo electrónico usando" 
        system -> COUPASystem "COUPA Sincronizaciond de usuarios entidad" 
        system -> SIIFSystem "SIIF Validacion de CDP Ministerio de Hacienda" 
        
        admin -> spaAdmin "Utiliza"
        provider -> spaProvider "Utiliza"
        entity -> spaEntity "Utiliza"



        #Relationships microservices and DATABASES------------------------------------------------
        msAuth -> msAuthDB "Realiza lectura y escritura" "Spring Data/JPA"
        msProvider -> msProviderDB "Realiza  lectura y escritura" "Spring Data/JPA"
        msData -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"
        msMarket -> msMarketDB "Realiza lectura y escritura" "Spring Data/JPA"
        msEntity -> msEntityDB "Realiza lectura y escritura" "Spring Data/JPA"
        msQuotation -> msQuotationDB "Realiza lectura y escritura" "Spring Data/JPA"
        msOrder -> msOrderDB "Realiza lectura y escritura" "Spring Data/JPA"


        #Relationships SPA and MS------------------------------------------------
        spaAdmin -> msAuth "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msAuth "Realiza llamadas API a" "JSON/HTTP"
        spaEntity -> msAuth "Realiza llamadas API a" "JSON/HTTP"
        
        spaAdmin -> msMarket "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msMarket "Realiza llamadas API a" "JSON/HTTP"
        spaEntity -> msMarket "Realiza llamadas API a" "JSON/HTTP"
        
        spaAdmin -> msData "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> msData "Realiza llamadas API a" "JSON/HTTP"
        spaEntity -> msData "Realiza llamadas API a" "JSON/HTTP"

        msMarket -> msProvider "Realiza llamadas API a" "JSON/HTTP"
        msMarket -> msOrder "Realiza llamadas API a" "JSON/HTTP"
        msMarket -> msQuotation "Realiza llamadas API a" "JSON/HTTP"
        msMarket -> msEntity "Realiza llamadas API a" "JSON/HTTP"
        
        #Relationships ms_auth-----------------------------------------------------
        #--auth
        spaAdmin -> authController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> authController "Realiza llamadas API a" "JSON/HTTP"
        spaEntity -> authController "Realiza llamadas API a" "JSON/HTTP"

        authController -> authService "Utiliza"
        authService -> securityComponent "Utiliza"
        authService -> authUserRepository "Utiliza"

        #--user
        spaAdmin -> authUserController "Realiza llamadas API a" "JSON/HTTP"
        spaProvider -> authUserController "Realiza llamadas API a" "JSON/HTTP"
        spaEntity -> authUserController "Realiza llamadas API a" "JSON/HTTP"
        
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

        #--emais
        authNotificationController -> authNotificationService "Utiliza"
        authNotificationService -> authNotificationRepository "Utiliza"
        authNotificationRepository -> msAuthDB "Realiza lectura y escritura"
        authNotificationService -> emailSystem "Envía correo electrónico usando SMTP" 


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
        spaEntity -> azureFileController "Realiza llamadas API a" "JSON/HTTP"

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
        

        #--product Category
        spaAdmin ->  productCategoryController "Realiza llamadas API a" "JSON/HTTP"
        productCategoryController -> productCategoryService "Utiliza"
        productCategoryService -> productCategoryRepository "Utiliza"
        productCategoryRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #--unit
        spaAdmin ->  unitController "Realiza llamadas API a" "JSON/HTTP"
        unitController -> unitService "Utiliza"
        unitService -> unitRepository "Utiliza"
        unitRepository -> msDataDB "Realiza lectura y escritura" "Spring Data/JPA"

        #Relationships spaEntity-----------------------------------------------------
        #--spaEntity
        EntAppComponent -> EntLoginComponent "Inicializa a"
        EntLoginComponent -> EntAuthServiceTS "utiliza para iniciar sesion"
        EntAuthServiceTS -> EntPrivateComponent "Si usuario es valido"
        EntAuthServiceTS -> msAuth "Realiza peticiones a" "JSON/HTTP"
        EntAuthServiceTS -> msEntity "Realiza peticiones a" "JSON/HTTP"
        EntPrivateComponent -> EntProductsComponent "Permite navegar a" 
        EntPrivateComponent -> EntBasketComponent "Permite navegar a"
        EntPrivateComponent -> EntEventsComponent "Permite navegar a"
        EntPrivateComponent -> EntQuotationsPageComponent "Permite navegar a"
        EntPrivateComponent -> EntPurchaseOrderComponent "Permite navegar a"
        EntPrivateComponent -> EntUsersComponent "Permite navegar a"
        EntCatalogServiceTS -> msMarket "Realiza peticiones a" "JSON/HTTP"
        EntDataPrivateServiceTS -> msData "Realiza peticiones a" "JSON/HTTP"
        EntDataPrivateServiceTS -> msMarket "Realiza peticiones a" "JSON/HTTP"
        EntEntityServiceTS -> msEntity "Realiza peticiones a" "JSON/HTTP"
        EntMyMarketServiceTS -> msMarket "Realiza peticiones a" "JSON/HTTP"
        EntOriginServiceTS -> msQuotation "Realiza peticiones a" "JSON/HTTP"
        EntProviderServiceTS -> msProvider "Realiza peticiones a" "JSON/HTTP"
        EntUserServiceTS -> msAuth "Realiza peticiones a" "JSON/HTTP"
        EntProductsComponent -> EntCatalogServiceTS "Utiliza"
        EntBasketComponent -> EntBasketServiceTS "Utiliza"
        EntEventsComponent -> EntDataPrivateServiceTS "Utiliza"
        EntEventsComponent -> EntCatalogServiceTS "Utiliza"
        EntEventsComponent -> EntMyMarketServiceTS "Utiliza"
        EntEventsComponent -> EntEventsServiceTS "Utiliza"
        EntEventsComponent -> EntOriginServiceTS "Utiliza"
        EntEventsComponent -> EntEntityServiceTS "Utiliza"
        EntEventsComponent -> EntAuthServiceTS "Utiliza"
        EntEventsComponent -> EntBasketServiceTS "Utiliza"
        EntPurchaseOrderComponent -> EntMyMarketServiceTS "Utiliza"
        EntOrderDetailComponent -> EntPurchaseOrderComponent "Hace parte de"
        EntOrderDetailComponent -> EntMyMarketServiceTS "Utiliza"
        EntOrderDetailComponent -> EntOriginServiceTS "Utiliza"
        EntOrderDetailComponent -> EntAuthServiceTS "Utiliza"
        EntOrderDetailComponent -> EntDataPrivateServiceTS "Utiliza"
        EntOrderDetailComponent -> EntEntityServiceTS "Utiliza"
        EntMyQuotationsComponent -> EntQuotationsPageComponent "Compone"
        EntMyQuotationsComponent -> EntOffersComponent "Permite navegar a"

        #Relationships spaAdmin-----------------------------------------------------
        #--spaAdmin
        AdmAppComponent -> AdmLoginComponent "Inicializa a"
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
        
        component msEntity {
            include *
            autolayout tb
            description "El diagrama de componentes msEntity de la aplicación API."
        }

        component msQuotation {
            include *
            autolayout tb
            description "El diagrama de componentes msQuotation de la aplicación API."
        }

        component msOrder {
            include *
            autolayout tb
            description "El diagrama de componentes msOrder de la aplicación API."
        }

        component spaEntity {
            include *
            autolayout tb
            description "El diagrama de componentes Front Entidad"
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
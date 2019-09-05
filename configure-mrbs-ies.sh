#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/configure-mrbs-ies.sh && sh ./configure-mrbs-ies.sh

info "Indica email del administrador "
read ADMINEMAIL

info "Indica nombre del centro (ejemplo: IES Castuera) "
read COMPANY

info "Indica nombre del usuario de tu ldap que será el administrador de mrbs (despues podrás añadir usuarios adicionales en el archivo de configuración)"
read ADMINUSER

cat <<EOT >> /var/www/html/config.inc.php
\$mrbs_admin = "Administrador";
\$mrbs_admin_email = "${AULA}";
\$mrbs_company = "${COMPANY}";
\$mrbs_company_url = "" 
\$weekstarts = 1;

// Configuración para acceder via ldap 
\$auth["type"] = "ldap";
\$auth["admin"][] = "${ADMINUSER}"; //Usuario de la ldap que va a ser adminstrador de la aplicación $auth["admin"][] = "usuario2"//Podéis poner todos los usuarios que se quieran para administrar // Where is the LDAP server.
\$ldap_host = "servidor";
// LDAP base distinguish name.
// This can be an array.
\$ldap_base_dn = "ou=People,dc=instituto,dc=extremadura,dc=es";
\$ldap_user_attrib = "uid";
\$ldap_filter_base_dn = "ou=Group,dc=instituto,dc=extremadura,dc=es"; $ldap_filter_user_attr = "memberuid";
\$ldap_filter = "cn=teachers";
EOT
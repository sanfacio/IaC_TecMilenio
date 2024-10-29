# Install Hashicorp Vault

### Descargar Vault

1. Para instalar **Vault**, es necesario seleccionar el paquete correspondiente a tu sistema operativo. En sistemas Windows, deberás también registrar adecuadamente el *Path* en tus variables de ambiente. Puedes utilizar el siguiente enlace con más detalles de la descarga e instalación:

	[Install Vault | Vault | HashiCorp Developer](https://developer.hashicorp.com/vault/tutorials/getting-started/getting-started-install?in=vault%2Fgetting-started)

###
2.  Validar la instalación de **Vault**

		vault

3.  Revisar los comandos de ayuda de **Vault**

		vault -help
---
### Iniciando el servidor de DEV de Vault

4. Inicializar el servidor de desarrollo de **Vault**

		vault server -dev

5. Copia ty pega el comando ` export VAULT_ADDR`  de acuerdo a la consola que estés utilizando. Ejemplos:

	**`PowerShell:`**
		`$env:VAULT_ADDR="http://127.0.0.1:8200"`

	**`cmd.exe:`**
		`set VAULT_ADDR=http://127.0.0.1:8200`

	**`bash`**
		`$export VAULT_ADDR='http://127.0.0.1:8200'`
####
6. Copia y guarda el valor del *Unseal Key*

		echo "[your key]" > unseal.key

7. Copia y guarda el valor del *Root Token*

		set VAULT_DEV_ROOT_TOKEN_ID=[your token]

8. Verifica que el servidor de desarrollo se esté ejecutando

		vault status

9. Puedes interactuar con el motor de llaves y valores usando el comando `vault kv`

		vault kv -help 
---
### Escribir Secretos en Vault
10. Antes de escribir tu primer secret, revisa el comando de ayuda:

		vault kv put -help
11. Ahora, escribamos un secreto en formato de llave-valor para la ruta `hello` con una llave `foo` y el valor `world`, usando el comando `vault kv put`

		vault kv put -mount=secret hello foo=world

12. Con el comando `kv put` podemos escribir múltiples datos

		vault kv put -mount=secret hello foo=world excited=yes
---
### Leer un Secreto
13. Los *secretos* se pueden leer usando el comando `vault kv get` 

		vault kv get -mount=secret hello

14. Para imprimir solamente el valor de un campo específico, usa el modificador `-field=<key_name>`

		vault kv get -mount=secret -field=excited hello

---
### Eliminar un Secreto
15. Ahora que hemos visto cómo crear y escribir secretos, vamos a eliminar uno. Esto lo podemos hacer usando el comando `vault kv delete` . 

		vault kv delete -mount=secret hello

16. Intenta leer el secreto recién eliminado 

		vault kv get -mount=secret hello

17. Los secretos eliminados se pueden recuperar con el comando `vault kv undelete'

		vault kv undelete -mount=secret -versions=2 hello
---
###### *Fin del documento*

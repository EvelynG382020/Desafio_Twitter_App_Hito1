

Gem ActiveAdmin Se deberá crear un panel de control utilizando ActiveAdmin que liste todos los usuarios y pueda editarlos, cada usuario aparecerá junto al número de cuentas que sigue, cantidad de tweets realizados, cantidad de likes dados y la cantidad de retweets. Además deberán aparecer las acciones de borrar y editar, donde borrar un usuario implica borrar en cascada todos sus tweets, likes y retweets. email eka2021@gmail.com y password eka2021.
Al iniciar sesión en Twitter solo se debe ver los tweets de las personas que sigo. Si no los sigo, no veo sus tweet, pero me aparecen en el Card todos los usuarios por si quiero comenzar a seguirlos.
Paginación de 50 tweets por página.
Buscador de tweet con Ransack y metodos en tweet controller.
Hashtag con metodo en el modelo tweet, tweets controller y agregar las rutas. Me busca contenidos que tienen # en los tweets de usuarios y me lleva a esa publicación.
Agregar Api al proyecto y poder crear tweet mediante Api. Lo integré como apis controller. Crear la página ​/api/news que permita obtener un json con los últimos 50 tweets. Crear la página /​api/:fecha1/:fecha2 que entregue un ​json con todos los tweets entre ambas fechas. Se debe poder crear un tweet a través de la API. Para la creación del tweet el usuario deberá utilizar autenticación con Basic Authentication name "twitter" y password "prueba".

# Run Structurizr 

Run diagram c4

https://c4model.com/

https://docs.structurizr.com/lite/quickstart


```docker pull structurizr/lite```

PATH es el path de tu proyecto 

```docker run -it --rm -p 8080:8080 -v PATH:/usr/local/structurizr structurizr/lite```

Ejemplo

```docker run -it --rm -p 8080:8080 -v /Users/michaelrojas/www/renata/documentacion/gitc4/modelc4:/usr/local/structurizr structurizr/lite```


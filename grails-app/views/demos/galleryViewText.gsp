<%--
  Created by IntelliJ IDEA.
  User: luz
  Date: 4/1/11
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>

<%--

link del demo: http://spaceforaname.com/galleryview

--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Gallery View</title>
        <script type="text/javascript" src="${resource(dir: 'js/jquery/plugins/galleryview/js', file: 'jquery.easing.1.3.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/jquery/plugins/galleryview/js', file: 'jquery.galleryview-3.0.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/jquery/plugins/galleryview/js', file: 'jquery.timers-1.2.js')}"></script>
        <link href="${resource(dir: 'js/jquery/plugins/galleryview/css', file: 'jquery.galleryview-3.0.css')}" rel="stylesheet" type="text/css"/>

        <style type="text/css">
        .gv-title {
            font-size     : 16px;
            font-weight   : bold;
            margin-bottom : 5px;
        }
        </style>

    </head>
    <body>

        <ul id="myGallery" >
            <g:each in="${pags}" var="pagina" status="i">
                <li>
                    <g:each in="${pagina.secciones}" var="seccion">
                        <g:mostrarSeccion tipo="Borrador" idioma="6" id="${seccion.id}" />
                    </g:each>
                </li>
            </g:each>
        </ul>

        <script type="text/javascript">
            $(document).ready(function() {
//                $('#myGallery').galleryView({
//                    panel_width: 300,
//                    panel_height: 300,
//                    frame_width: 60,
//                    frame_height: 60,
//                    pause_on_hover: true,
//                    panel_scale: 'nocrop',
//                    show_overlays: false,
////                    transition_interval: 60,
//                    filmstrip_size: 4,
//                    panel_animation: "slide",
//                    pointer_size: 20
//                });
            });
        </script>

    </body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: svt
  Date: Nov 8, 2010
  Time: 3:53:01 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <script type="text/javascript"
                src="${resource(dir: 'js/jquery/plugins/ckeditor', file: 'ckeditor.js')}"></script>

        <script type="text/javascript"
                src="${resource(dir: 'js/jquery/plugins/ckeditor/adapters', file: 'jquery.js')}"></script>

        <script type="text/javascript" src="${resource(dir: 'js/scripts/rte', file: 'index.js')}"></script>

        <meta name="layout" content="frame" />
    </head>
<body>
<form action="guardarContenidoFrase" name="frmFrase" class="frmFrase">
    <input type="hidden" value="${seccion.id}" name="seccion" id="seccion">
    <input type="hidden" value="${frase.id}" name="frase">
    <textarea class="jquery_ckeditor" id="editor1" name="contFrase">
        ${frase.frase}
    </textarea>

    <g:if test="${pags.size() > 0}">
        <div style="margin: 15px 0 15px 0; display: block; clear: both; height: 25px;">
            <div style="float: left; font-weight: bold; margin-right: 10px; ">
                Link a la p&aacute;gina:
            </div>

            <div style="float: left;">
                <g:select from="${pags}" optionKey="id" optionValue="nombre" name="pagLink"
                          class="ui-widget-content ui-corner-all" value="${sel}" />
            </div>
        </div>
    </g:if>

    <div style="float:left;">
        <a href="#" id="guardar"
           class="boton ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only">Guardar</a>
    </div>
    <g:if test="${fraseEsp}">
        <fieldset style="width: 90%;min-height: 100px;margin-top: 40px;">
            <legend>Contenido en español</legend>
            ${fraseEsp}
        </fieldset>
    </g:if>

</form>
<script type="text/javascript">

    $(".boton").css({"font-size":"11px"});
    $(".boton").button();
    $("#guardar").click(function() {

        var nombre = $("#seccion").val() + "Contenido";
        //alert(nombre)
        //window.opener.document.getElementById($("#seccion").val()).innerHTML=""+$("#editor1").val();
        var elem = $(window.opener.document.getElementById(nombre));
        elem.html(" ");
        elem.html($("#editor1").val());
        $(".frmFrase").submit()
    });
</script>
</body>
</html>
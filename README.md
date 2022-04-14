# mBot-coppeliasims
>Modelo mbot modificado para trabajar con coppelias sims version 4.2 o Mayores
<p>&nbsp;</p>
<p style="text-align: center;"><span style="text-decoration: underline;"><strong>Simulaci&oacute;n&nbsp;mBot&nbsp;en Coppelia Sims</strong></span></p>
<p><strong>Nota: necesita tres programas para que la simulaci&oacute;n&nbsp;&nbsp;funcione: COPPELIA SIMS&nbsp; PRO (EDU) de&nbsp;<a href="http://www.coppeliarobotics.com/index.html">Coppelia&nbsp;Robotics&nbsp;GmbH</a>,&nbsp;<a href="https://mblock.makeblock.com/en-us/">Makeblock&nbsp;Co., Ltd.</a> &nbsp;y emulador de puerto serial Com0com ,<a href="http://com0com.sourceforge.net/">Com0com</a></strong></p>
<hr />
<p>Este es el modelo&nbsp;mBot&nbsp;para simulación;n en COPPELIA SIMS.&nbsp;Funciona&nbsp;recibiendo&nbsp;comandos&nbsp;de&nbsp;mBlock &nbsp;a través de un puerto serie virtual y ejecutánndolos en COPPELIA SIMS&nbsp;&nbsp;en un robot virtual.&nbsp;El modelo contiene el script&nbsp;lua&nbsp;que se encarga de la comunicación por puerto&nbsp;serial&nbsp;&nbsp;y&nbsp;ejecuta comandos. Es fácil de instalar y usar,&nbsp;</p>
<p style="text-align: center;"><strong>Empezando</strong></p>
<p>Primero tienes que descargar e instalar los programas que necesitarás para simular el robot virtual&nbsp;mBot.</p>
<p>&nbsp;</
<table style="width: 512px;" border="0" cellspacing="0" cellpadding="0">
<thead>
<tr>
<td style="width: 135px;">
<p><strong>Programa</strong></p>
</td>
<td style="width: 176px;">
<p><strong>Descripción</strong></p>
</td>
<td style="width: 192px;">
<p><strong>&nbsp;Link&nbsp;de descarga</strong></p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td style="width: 135px;">
<p>COPPELIA SIMS</p>
</td>
<td style="width: 176px;">
<p>Robot&nbsp;simulation&nbsp;platform</p>
</td>
<td style="width: 192px;">
<p><a href="https://www.coppeliarobotics.com/downloads#">coppeliarobotics.com</a></p>
</td>
</tr>
<tr>
<td style="width: 135px;">
<p>mBlock</p>
</td>
<td style="width: 176px;">
<p>Graphical&nbsp;programming&nbsp;environment</p>
</td>
<td style="width: 192px;">
<p><a href="http://learn.makeblock.com/en/software/">makeblock.com</a></p>
</td>
</tr>
<tr>
<td style="width: 135px;">
<p>Com0Com</p>
</td>
<td style="width: 176px;">
<p>Emulador Puertos seriales</p>
</td>
<td style="width: 192px;">
<p><a href="https://sourceforge.net/projects/com0com/">com0com</a></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><strong>Emulador de puerto serie virtual</strong></p>
<p>Antes de iniciar la simulación, debe crear un puerto serie virtual al que se puedan conectar COPPELIA SIMS&nbsp;&nbsp;y mBlock.</p>

<p>1. Ejecute Com0com&nbsp; y escoja la opcion add pair. seleccione Use port class par ambos puertos&nbsp;  y aplique. Verifique en el administrador de dispositivos  la creación de los puertos.</p>
<p><strong>Coppelia Sims versi&oacute;n 4.1</strong></p>
<p>Este es el programa en el que ejecutará; su simulación. Puede usar los archivos de&nbsp;escena .ttt&nbsp;proporcionados o simplemente el archivo de modelo&nbsp;mbot_modificado-v2.ttm&nbsp;en sus propios&nbsp;escenarioss. Después de cargar un escenario o el modelo&nbsp;mBot, debe abrir los parámetros del script di&aacute;logo haciendo clic en el &iacute;cono ubicado a la derecha del &iacute;cono del script secundario adjunto en un objeto ficticio llamado&nbsp;mBotScript&nbsp;y seleccione el parámetro de nombre del puerto Com.&nbsp;Puede&nbsp;acceder a&nbsp;ellos&nbsp;expandiendo el nodo de vista de árbol llamado&nbsp;mBot&nbsp;en la jerarquía de escenas. Ahora, para el&nbsp;valor ,&nbsp;ingrese el nombre del puerto que creó usando el emulador de puerto serie virtual (por ejemplo, COM2) Cierre el cuadro de diálogo y ejecute la simulación.</p>
<p><strong>mBlock 5</strong></p>
<p>mBlock&nbsp;es un entorno de programación gráfica basado en Scratch. Aquí puede hacer un programa para su robot virtual como lo haría para el&nbsp;mBot&nbsp;real, excepto que no puede cargar programas, debe usar el modo en vivo en su lugar (modo Scratch). puede ejecutar su programa, tiene que conectar&nbsp;mBlock&nbsp;al puerto serie virtual que creó usando Com0com &nbsp;&nbsp;. Vaya ala opciónn Conectar-&gt; Puerto serie y elija ese puerto. Ahora usted puede iniciar su programa.</p>
<p><strong>Dispositivos simulados</strong></p>
<p>Los dispositivos compatibles son motores, sensor ultras&oacute;nico, sensores de seguimiento de l&iacute;nea, LED a bordo y&nbsp;pantalla&nbsp;de&nbsp;siete&nbsp;segmentos</p>
<p><strong>&nbsp;</strong></p>
<p>&nbsp;</p>

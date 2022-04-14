
<p style="text-align: center;"><span style="text-decoration: underline;"><strong>Simulaci&oacute;n&nbsp;mBot&nbsp;en Coppelia Sims</strong></span></p>
<p><strong>Nota: necesita tres programas para que la simulaci&oacute;n&nbsp;&nbsp;funcione: COPPELIA SIMS&nbsp; PRO (EDU) de&nbsp;<a href="http://www.coppeliarobotics.com/index.html">Coppelia&nbsp;Robotics&nbsp;GmbH</a>,&nbsp;<a href="https://mblock.makeblock.com/en-us/">Makeblock&nbsp;Co., Ltd.</a> &nbsp;y emulador de puerto serial Com0com ,<a href="http://com0com.sourceforge.net/">Null moden emulator</a></strong></p>
<hr />
<p>Este es el modelo&nbsp;mBot&nbsp;para simulaci&oacute;n en COPPELIA SIMS.&nbsp;Funciona&nbsp;recibiendo&nbsp;comandos&nbsp;de&nbsp;mBlock &nbsp;a trav&eacute;s de un puerto serie virtual y ejecut&aacute;ndolos en COPPELIA SIMS&nbsp;&nbsp;en un robot virtual.&nbsp;El modelo contiene el script&nbsp;lua&nbsp;que se encarga de la comunicaci&oacute;n por puerto&nbsp;serial&nbsp;&nbsp;y&nbsp;ejecuta comandos. Es f&aacute;cil de instalar y usar,&nbsp;</p>
<p style="text-align: center;"><strong>Empezando</strong></p>
<p>Primero tienes que descargar e instalar los programas que necesitar&aacute;s para simular el robot virtual&nbsp;mBot.</p>
<p>&nbsp;</p>
<table style="width: 512px;" border="0" cellspacing="0" cellpadding="0">
<thead>
<tr>
<td style="width: 135px;">
<p><strong>Programa</strong></p>
</td>
<td style="width: 176px;">
<p><strong>Descripci&oacute;n</strong></p>
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
<p><a href="https://www.coppeliarobotics.com/downloads">coppeliarobotics.com</a></p>
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
<p><a href="https://mblock.makeblock.com/en-us/download/">makeblock.com</a></p>
</td>
</tr>
<tr>
<td style="width: 135px;">
<p>Com0com</p>
</td>
<td style="width: 176px;">
<p>Emulador Puertos seriales</p>
</td>
<td style="width: 192px;">
<p><a href="https://sourceforge.net/projects/com0com/">eterlogic.com</a></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><strong>Emulador de puerto serie virtual</strong></p>
<p>Antes de iniciar la simulaci&oacute;n, debe crear un puerto serie virtual al que se puedan conectar COPPELIA SIMS&nbsp;&nbsp;y mBlock.</p>
<p>1. Ejecute Com0com&nbsp; y escoja la opcion add pair . seleccione use ports en ambos puertos y aplique.</p>
<p><strong>Coppelia Sims versión 4.3</strong></p>
<p>Este es el programa en el que ejecutar&aacute; su simulaci&oacute;n. Puede usar los archivos de&nbsp;escena .ttt&nbsp;proporcionados o simplemente el archivo de modelo&nbsp;mbot_modificado-v2.ttm&nbsp;en sus propios&nbsp;escenarioss. Despu&eacute;s de cargar un escenario o el modelo&nbsp;mBot, debe abrir los par&aacute;metros del script di&aacute;logo haciendo clic en el &iacute;cono ubicado a la derecha del &iacute;cono del script secundario adjunto en un objeto ficticio llamado&nbsp;mBotScript&nbsp;y seleccione el par&aacute;metro de nombre del puerto Com.&nbsp;Puede&nbsp;acceder a&nbsp;ellos&nbsp;expandiendo el nodo de vista de &aacute;rbol llamado&nbsp;mBot&nbsp;en la jerarqu&iacute;a de escenas. Ahora, para el&nbsp;valor ,&nbsp;ingrese el nombre del puerto que cre&oacute; usando el emulador de puerto serie virtual (por ejemplo, COM2) Cierre el cuadro de di&aacute;logo y ejecute la simulaci&oacute;n.</p>
<p><strong>mBlock 5/ mblock 3</strong></p>
<p>mBlock&nbsp;es un entorno de programaci&oacute;n gr&aacute;fica basado en Scratch. Aqu&iacute; puede hacer un programa para su robot virtual como lo har&iacute;a para el&nbsp;mBot&nbsp;real, excepto que no puede cargar programas, debe usar el modo de comando en su lugar (modo Scratch). puede ejecutar su programa, tiene que conectar&nbsp;mBlock&nbsp;al puerto serie virtual que cre&oacute; usando virtual serial port&nbsp;&nbsp;. Vaya ala opci&oacute;n Conectar-&gt; Puerto serie y elija ese puerto. Ahora usted puede iniciar su programa.</p>
<p><strong>Dispositivos simulados</strong></p>
<p>Los dispositivos compatibles son motores, sensor ultras&oacute;nico, sensores de seguimiento de l&iacute;nea, LED a bordo y&nbsp;pantalla&nbsp;de&nbsp;siete&nbsp;segmentos</p>
<p><strong>&nbsp;</strong></p>
<p>&nbsp;</p>

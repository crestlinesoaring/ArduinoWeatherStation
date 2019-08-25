<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="arduino">
<description>&lt;b&gt;Arduino Boards&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;MegaArduino
&lt;li&gt;Arduino Duemilanove (2009)
&lt;/ul&gt;
Based on the following sources:
&lt;br&gt;&lt;br&gt;
Schematic &amp; Reference Design from:
&lt;ul&gt;
&lt;li&gt; http://arduino.cc/en/Main/ArduinoBoardMega
&lt;li&gt;http://arduino.cc/en/Main/ArduinoBoardDuemilanove
&lt;/ul&gt;
Version: 1.0 / 30.08.2009&lt;br&gt;
&lt;author&gt;Created by atami@gmx.net&lt;/author&gt;</description>
<packages>
<package name="MEGA_ARDUINO">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="96.52" y2="53.34" width="0.127" layer="51"/>
<wire x1="96.52" y1="53.34" x2="99.06" y2="50.8" width="0.127" layer="51"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="40.64" width="0.127" layer="51"/>
<wire x1="99.06" y1="40.64" x2="101.6" y2="38.1" width="0.127" layer="51"/>
<wire x1="101.6" y1="38.1" x2="101.6" y2="3.81" width="0.127" layer="51"/>
<wire x1="101.6" y1="3.81" x2="99.06" y2="1.27" width="0.127" layer="51"/>
<wire x1="99.06" y1="1.27" x2="99.06" y2="0" width="0.127" layer="51"/>
<wire x1="99.06" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="63.627" y1="27.94" x2="66.167" y2="27.94" width="0" layer="37"/>
<wire x1="64.897" y1="26.67" x2="64.897" y2="29.21" width="0" layer="37"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="69.215" y2="3.81" width="0.1524" layer="21"/>
<wire x1="69.215" y1="3.81" x2="69.85" y2="3.175" width="0.1524" layer="21"/>
<wire x1="69.85" y1="3.175" x2="69.85" y2="1.905" width="0.1524" layer="21"/>
<wire x1="69.85" y1="1.905" x2="69.215" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="65.405" y2="3.81" width="0.1524" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.675" y2="3.81" width="0.1524" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="3.175" x2="67.31" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="66.675" y2="1.27" width="0.1524" layer="21"/>
<wire x1="66.675" y1="1.27" x2="65.405" y2="1.27" width="0.1524" layer="21"/>
<wire x1="65.405" y1="1.27" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="69.215" y1="1.27" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="86.995" y2="3.81" width="0.1524" layer="21"/>
<wire x1="86.995" y1="3.81" x2="87.63" y2="3.175" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="87.63" y1="1.905" x2="86.995" y2="1.27" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="83.185" y2="3.81" width="0.1524" layer="21"/>
<wire x1="83.185" y1="3.81" x2="84.455" y2="3.81" width="0.1524" layer="21"/>
<wire x1="84.455" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="3.175" x2="85.09" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="84.455" y2="1.27" width="0.1524" layer="21"/>
<wire x1="84.455" y1="1.27" x2="83.185" y2="1.27" width="0.1524" layer="21"/>
<wire x1="83.185" y1="1.27" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="86.995" y1="1.27" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="79.375" y2="3.81" width="0.1524" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.01" y2="3.175" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="80.01" y1="1.905" x2="79.375" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.645" y2="3.81" width="0.1524" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.915" y2="3.81" width="0.1524" layer="21"/>
<wire x1="81.915" y1="3.81" x2="82.55" y2="3.175" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="82.55" y1="1.905" x2="81.915" y2="1.27" width="0.1524" layer="21"/>
<wire x1="81.915" y1="1.27" x2="80.645" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.645" y1="1.27" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="75.565" y2="3.81" width="0.1524" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.835" y2="3.81" width="0.1524" layer="21"/>
<wire x1="76.835" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="3.175" x2="77.47" y2="1.905" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="76.835" y2="1.27" width="0.1524" layer="21"/>
<wire x1="76.835" y1="1.27" x2="75.565" y2="1.27" width="0.1524" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="79.375" y1="1.27" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="73.025" y2="3.81" width="0.1524" layer="21"/>
<wire x1="73.025" y1="3.81" x2="74.295" y2="3.81" width="0.1524" layer="21"/>
<wire x1="74.295" y1="3.81" x2="74.93" y2="3.175" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="1.905" x2="74.295" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.025" y2="1.27" width="0.1524" layer="21"/>
<wire x1="73.025" y1="1.27" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="92.075" y2="3.81" width="0.1524" layer="21"/>
<wire x1="92.075" y1="3.81" x2="92.71" y2="3.175" width="0.1524" layer="21"/>
<wire x1="92.71" y1="1.905" x2="92.075" y2="1.27" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="88.265" y2="3.81" width="0.1524" layer="21"/>
<wire x1="88.265" y1="3.81" x2="89.535" y2="3.81" width="0.1524" layer="21"/>
<wire x1="89.535" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="3.175" x2="90.17" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="89.535" y2="1.27" width="0.1524" layer="21"/>
<wire x1="89.535" y1="1.27" x2="88.265" y2="1.27" width="0.1524" layer="21"/>
<wire x1="88.265" y1="1.27" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="92.075" y1="1.27" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="73.025" y2="49.53" width="0.1524" layer="21"/>
<wire x1="73.025" y1="49.53" x2="72.39" y2="50.165" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="72.39" y1="51.435" x2="73.025" y2="52.07" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="76.835" y2="49.53" width="0.1524" layer="21"/>
<wire x1="76.835" y1="49.53" x2="75.565" y2="49.53" width="0.1524" layer="21"/>
<wire x1="75.565" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="50.165" x2="74.93" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="75.565" y2="52.07" width="0.1524" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.835" y2="52.07" width="0.1524" layer="21"/>
<wire x1="76.835" y1="52.07" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="73.025" y1="52.07" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="80.645" y2="49.53" width="0.1524" layer="21"/>
<wire x1="80.645" y1="49.53" x2="80.01" y2="50.165" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="80.01" y1="51.435" x2="80.645" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="79.375" y2="49.53" width="0.1524" layer="21"/>
<wire x1="79.375" y1="49.53" x2="78.105" y2="49.53" width="0.1524" layer="21"/>
<wire x1="78.105" y1="49.53" x2="77.47" y2="50.165" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="77.47" y1="51.435" x2="78.105" y2="52.07" width="0.1524" layer="21"/>
<wire x1="78.105" y1="52.07" x2="79.375" y2="52.07" width="0.1524" layer="21"/>
<wire x1="79.375" y1="52.07" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="84.455" y2="49.53" width="0.1524" layer="21"/>
<wire x1="84.455" y1="49.53" x2="83.185" y2="49.53" width="0.1524" layer="21"/>
<wire x1="83.185" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="50.165" x2="82.55" y2="51.435" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="83.185" y2="52.07" width="0.1524" layer="21"/>
<wire x1="83.185" y1="52.07" x2="84.455" y2="52.07" width="0.1524" layer="21"/>
<wire x1="84.455" y1="52.07" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.645" y1="52.07" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="86.995" y2="49.53" width="0.1524" layer="21"/>
<wire x1="86.995" y1="49.53" x2="85.725" y2="49.53" width="0.1524" layer="21"/>
<wire x1="85.725" y1="49.53" x2="85.09" y2="50.165" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="51.435" x2="85.725" y2="52.07" width="0.1524" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.995" y2="52.07" width="0.1524" layer="21"/>
<wire x1="86.995" y1="52.07" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="67.945" y2="49.53" width="0.1524" layer="21"/>
<wire x1="67.945" y1="49.53" x2="67.31" y2="50.165" width="0.1524" layer="21"/>
<wire x1="67.31" y1="50.165" x2="67.31" y2="51.435" width="0.1524" layer="21"/>
<wire x1="67.31" y1="51.435" x2="67.945" y2="52.07" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="71.755" y2="49.53" width="0.1524" layer="21"/>
<wire x1="71.755" y1="49.53" x2="70.485" y2="49.53" width="0.1524" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="50.165" x2="69.85" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="70.485" y2="52.07" width="0.1524" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.755" y2="52.07" width="0.1524" layer="21"/>
<wire x1="71.755" y1="52.07" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="67.945" y1="52.07" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.705" y2="52.07" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="60.325" y2="52.07" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="49.53" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.865" y2="52.07" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="49.53" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="45.085" y2="52.07" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="28.575" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.575" y1="49.53" x2="27.94" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.94" y1="51.435" x2="28.575" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="32.385" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.385" y1="49.53" x2="31.115" y2="49.53" width="0.1524" layer="21"/>
<wire x1="31.115" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="50.165" x2="30.48" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="31.115" y2="52.07" width="0.1524" layer="21"/>
<wire x1="31.115" y1="52.07" x2="32.385" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.385" y1="52.07" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.575" y1="52.07" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="36.195" y2="49.53" width="0.1524" layer="21"/>
<wire x1="36.195" y1="49.53" x2="35.56" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.56" y1="51.435" x2="36.195" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="34.925" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.925" y1="49.53" x2="33.655" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.655" y1="49.53" x2="33.02" y2="50.165" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="33.02" y1="51.435" x2="33.655" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.655" y1="52.07" x2="34.925" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.925" y1="52.07" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.005" y2="49.53" width="0.1524" layer="21"/>
<wire x1="40.005" y1="49.53" x2="38.735" y2="49.53" width="0.1524" layer="21"/>
<wire x1="38.735" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="50.165" x2="38.1" y2="51.435" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="38.735" y2="52.07" width="0.1524" layer="21"/>
<wire x1="38.735" y1="52.07" x2="40.005" y2="52.07" width="0.1524" layer="21"/>
<wire x1="40.005" y1="52.07" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="36.195" y1="52.07" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="42.545" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.545" y1="49.53" x2="41.275" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.275" y1="49.53" x2="40.64" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="51.435" x2="41.275" y2="52.07" width="0.1524" layer="21"/>
<wire x1="41.275" y1="52.07" x2="42.545" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.545" y1="52.07" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="23.495" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.495" y1="49.53" x2="22.86" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.86" y1="50.165" x2="22.86" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.86" y1="51.435" x2="23.495" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.305" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.305" y1="49.53" x2="26.035" y2="49.53" width="0.1524" layer="21"/>
<wire x1="26.035" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="50.165" x2="25.4" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="26.035" y2="52.07" width="0.1524" layer="21"/>
<wire x1="26.035" y1="52.07" x2="27.305" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.305" y1="52.07" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="23.495" y1="52.07" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="92.71" y2="51.435" width="0.1524" layer="21"/>
<wire x1="92.71" y1="51.435" x2="92.71" y2="50.165" width="0.1524" layer="21"/>
<wire x1="92.71" y1="50.165" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="93.345" y1="49.53" x2="92.71" y2="48.895" width="0.1524" layer="21"/>
<wire x1="92.71" y1="48.895" x2="92.71" y2="47.625" width="0.1524" layer="21"/>
<wire x1="92.71" y1="47.625" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="93.345" y1="46.99" x2="92.71" y2="46.355" width="0.1524" layer="21"/>
<wire x1="92.71" y1="46.355" x2="92.71" y2="45.085" width="0.1524" layer="21"/>
<wire x1="92.71" y1="45.085" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="44.45" x2="92.71" y2="43.815" width="0.1524" layer="21"/>
<wire x1="92.71" y1="43.815" x2="92.71" y2="42.545" width="0.1524" layer="21"/>
<wire x1="92.71" y1="42.545" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="93.345" y1="41.91" x2="92.71" y2="41.275" width="0.1524" layer="21"/>
<wire x1="92.71" y1="41.275" x2="92.71" y2="40.005" width="0.1524" layer="21"/>
<wire x1="92.71" y1="40.005" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="93.345" y1="39.37" x2="92.71" y2="38.735" width="0.1524" layer="21"/>
<wire x1="92.71" y1="38.735" x2="92.71" y2="37.465" width="0.1524" layer="21"/>
<wire x1="92.71" y1="37.465" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="97.155" y2="52.07" width="0.1524" layer="21"/>
<wire x1="97.155" y1="52.07" x2="97.79" y2="51.435" width="0.1524" layer="21"/>
<wire x1="97.79" y1="51.435" x2="97.79" y2="50.165" width="0.1524" layer="21"/>
<wire x1="97.79" y1="50.165" x2="97.155" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="97.79" y2="48.895" width="0.1524" layer="21"/>
<wire x1="97.79" y1="48.895" x2="97.79" y2="47.625" width="0.1524" layer="21"/>
<wire x1="97.79" y1="47.625" x2="97.155" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="97.79" y2="46.355" width="0.1524" layer="21"/>
<wire x1="97.79" y1="46.355" x2="97.79" y2="45.085" width="0.1524" layer="21"/>
<wire x1="97.79" y1="45.085" x2="97.155" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="97.79" y2="43.815" width="0.1524" layer="21"/>
<wire x1="97.79" y1="43.815" x2="97.79" y2="42.545" width="0.1524" layer="21"/>
<wire x1="97.79" y1="42.545" x2="97.155" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="97.79" y2="41.275" width="0.1524" layer="21"/>
<wire x1="97.79" y1="41.275" x2="97.79" y2="40.005" width="0.1524" layer="21"/>
<wire x1="97.79" y1="40.005" x2="97.155" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="97.79" y2="38.735" width="0.1524" layer="21"/>
<wire x1="97.79" y1="38.735" x2="97.79" y2="37.465" width="0.1524" layer="21"/>
<wire x1="97.79" y1="37.465" x2="97.155" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="97.79" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.79" y1="36.195" x2="97.79" y2="34.925" width="0.1524" layer="21"/>
<wire x1="97.79" y1="34.925" x2="97.155" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="97.79" y2="33.655" width="0.1524" layer="21"/>
<wire x1="97.79" y1="33.655" x2="97.79" y2="32.385" width="0.1524" layer="21"/>
<wire x1="97.79" y1="32.385" x2="97.155" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="97.79" y2="31.115" width="0.1524" layer="21"/>
<wire x1="97.79" y1="31.115" x2="97.79" y2="29.845" width="0.1524" layer="21"/>
<wire x1="97.79" y1="29.845" x2="97.155" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="97.79" y2="28.575" width="0.1524" layer="21"/>
<wire x1="97.79" y1="28.575" x2="97.79" y2="27.305" width="0.1524" layer="21"/>
<wire x1="97.79" y1="27.305" x2="97.155" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="97.79" y2="26.035" width="0.1524" layer="21"/>
<wire x1="97.79" y1="26.035" x2="97.79" y2="24.765" width="0.1524" layer="21"/>
<wire x1="97.79" y1="24.765" x2="97.155" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="97.79" y2="23.495" width="0.1524" layer="21"/>
<wire x1="97.79" y1="23.495" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.155" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.155" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.155" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.155" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.155" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.155" y2="6.35" width="0.1524" layer="21"/>
<wire x1="93.345" y1="6.35" x2="92.71" y2="6.985" width="0.1524" layer="21"/>
<wire x1="92.71" y1="6.985" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="9.525" width="0.1524" layer="21"/>
<wire x1="92.71" y1="9.525" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="93.345" y1="13.97" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="93.345" y1="16.51" x2="92.71" y2="17.145" width="0.1524" layer="21"/>
<wire x1="92.71" y1="17.145" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="19.685" width="0.1524" layer="21"/>
<wire x1="92.71" y1="19.685" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="22.225" width="0.1524" layer="21"/>
<wire x1="92.71" y1="22.225" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="24.765" width="0.1524" layer="21"/>
<wire x1="92.71" y1="24.765" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="27.305" width="0.1524" layer="21"/>
<wire x1="92.71" y1="27.305" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="29.845" width="0.1524" layer="21"/>
<wire x1="92.71" y1="29.845" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="32.385" width="0.1524" layer="21"/>
<wire x1="92.71" y1="32.385" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="34.925" width="0.1524" layer="21"/>
<wire x1="92.71" y1="34.925" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="93.345" y1="36.83" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="93.345" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="93.345" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="93.345" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="93.345" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="93.345" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="93.345" y2="21.59" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="93.345" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="93.345" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="93.345" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="6.35" x2="93.345" y2="6.35" width="0.1524" layer="21"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="66.04" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="68.58" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="73.66" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="76.2" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="78.74" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="81.28" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="83.82" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="86.36" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="88.9" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="91.44" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="86.36" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="24" x="83.82" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="25" x="81.28" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="26" x="78.74" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="27" x="76.2" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="28" x="73.66" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="29" x="71.12" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="30" x="68.58" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="31" x="63.5" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="32" x="60.96" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="33" x="58.42" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="34" x="55.88" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="35" x="53.34" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="36" x="50.8" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="37" x="48.26" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="38" x="45.72" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="39" x="41.91" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="40" x="39.37" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="41" x="36.83" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="42" x="34.29" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="43" x="31.75" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="44" x="29.21" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="45" x="26.67" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="46" x="24.13" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="47" x="93.98" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="48" x="96.52" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="49" x="93.98" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="50" x="96.52" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="51" x="93.98" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="52" x="96.52" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="53" x="93.98" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="54" x="96.52" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="55" x="93.98" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="56" x="96.52" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="57" x="93.98" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="58" x="96.52" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="59" x="93.98" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="60" x="96.52" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="61" x="93.98" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="62" x="96.52" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="63" x="93.98" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="64" x="96.52" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="65" x="93.98" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="66" x="96.52" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="67" x="93.98" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="68" x="96.52" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="69" x="93.98" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="70" x="96.52" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="71" x="93.98" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="72" x="96.52" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="73" x="93.98" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="74" x="96.52" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="75" x="93.98" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="76" x="96.52" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="77" x="93.98" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="78" x="96.52" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="79" x="93.98" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="80" x="96.52" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="81" x="93.98" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<pad name="82" x="96.52" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A5</text>
<text x="66.7976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A6</text>
<text x="69.3376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A7</text>
<text x="74.4176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A8</text>
<text x="76.9576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A9</text>
<text x="79.4976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A10</text>
<text x="82.0376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A11</text>
<text x="84.5776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A12</text>
<text x="87.1176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A13</text>
<text x="89.6576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A14</text>
<text x="92.1976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A15</text>
<text x="85.6024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">SCL 21</text>
<text x="83.0624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">SDA 20</text>
<text x="80.5224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Rx1 19</text>
<text x="77.9824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Tx1 18</text>
<text x="75.4424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Rx2 17</text>
<text x="72.9024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Tx2 16</text>
<text x="70.3624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Rx3 15</text>
<text x="67.8224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Tx3 14</text>
<text x="62.7424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Rx0 0</text>
<text x="60.2024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">Tx0 1</text>
<text x="57.6624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PWM 2</text>
<text x="55.1224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">3</text>
<text x="52.5824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">4</text>
<text x="50.0424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">5</text>
<text x="47.5024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">6</text>
<text x="44.9624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">7</text>
<text x="41.1524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">8</text>
<text x="38.6124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">9</text>
<text x="36.0724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">10</text>
<text x="33.5324" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">11</text>
<text x="30.9924" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">12</text>
<text x="28.4524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PWM 13</text>
<text x="25.9124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="23.3724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="91.5802" y="30.9836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">36</text>
<text x="91.5802" y="33.5236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">34</text>
<text x="91.5802" y="36.0636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">32</text>
<text x="91.5802" y="38.6036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">30</text>
<text x="91.5802" y="41.1436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">28</text>
<text x="91.5802" y="43.6836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">26</text>
<text x="91.5802" y="46.2236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">24</text>
<text x="91.5802" y="48.7636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">22</text>
<text x="91.5802" y="10.6636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">52</text>
<text x="91.5802" y="13.2036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">50</text>
<text x="91.5802" y="15.7436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">48</text>
<text x="91.5802" y="18.2836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">46</text>
<text x="98.4118" y="22.1024" size="1.016" layer="48" font="vector" ratio="10">44</text>
<text x="91.5802" y="23.3636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">42</text>
<text x="91.5802" y="25.9036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">40</text>
<text x="91.5802" y="28.4436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">38</text>
<text x="98.4118" y="37.3424" size="1.016" layer="48" font="vector" ratio="10">31</text>
<text x="98.4118" y="34.8024" size="1.016" layer="48" font="vector" ratio="10">33</text>
<text x="98.4118" y="32.2624" size="1.016" layer="48" font="vector" ratio="10">35</text>
<text x="98.4118" y="29.7224" size="1.016" layer="48" font="vector" ratio="10">37</text>
<text x="98.4118" y="27.1824" size="1.016" layer="48" font="vector" ratio="10">39</text>
<text x="98.4118" y="24.6424" size="1.016" layer="48" font="vector" ratio="10">41</text>
<text x="91.5802" y="20.8236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">43</text>
<text x="98.4118" y="19.5624" size="1.016" layer="48" font="vector" ratio="10">45</text>
<text x="98.4118" y="17.0224" size="1.016" layer="48" font="vector" ratio="10">47</text>
<text x="98.4118" y="14.4824" size="1.016" layer="48" font="vector" ratio="10">49</text>
<text x="98.4118" y="11.9424" size="1.016" layer="48" font="vector" ratio="10">51</text>
<text x="98.4118" y="9.4024" size="1.016" layer="48" font="vector" ratio="10">53</text>
<text x="98.4118" y="6.8624" size="1.016" layer="48" font="vector" ratio="10">GND</text>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<rectangle x1="68.326" y1="2.286" x2="68.834" y2="2.794" layer="51"/>
<rectangle x1="65.786" y1="2.286" x2="66.294" y2="2.794" layer="51"/>
<rectangle x1="86.106" y1="2.286" x2="86.614" y2="2.794" layer="51"/>
<rectangle x1="83.566" y1="2.286" x2="84.074" y2="2.794" layer="51"/>
<rectangle x1="81.026" y1="2.286" x2="81.534" y2="2.794" layer="51"/>
<rectangle x1="78.486" y1="2.286" x2="78.994" y2="2.794" layer="51"/>
<rectangle x1="75.946" y1="2.286" x2="76.454" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="2.286" x2="73.914" y2="2.794" layer="51"/>
<rectangle x1="91.186" y1="2.286" x2="91.694" y2="2.794" layer="51"/>
<rectangle x1="88.646" y1="2.286" x2="89.154" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="50.546" x2="73.914" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="75.946" y1="50.546" x2="76.454" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="78.486" y1="50.546" x2="78.994" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="81.026" y1="50.546" x2="81.534" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="83.566" y1="50.546" x2="84.074" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="86.106" y1="50.546" x2="86.614" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="68.326" y1="50.546" x2="68.834" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="70.866" y1="50.546" x2="71.374" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="28.956" y1="50.546" x2="29.464" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="31.496" y1="50.546" x2="32.004" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="34.036" y1="50.546" x2="34.544" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="36.576" y1="50.546" x2="37.084" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="39.116" y1="50.546" x2="39.624" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="41.656" y1="50.546" x2="42.164" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="23.876" y1="50.546" x2="24.384" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="26.416" y1="50.546" x2="26.924" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="93.726" y1="50.546" x2="94.234" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="50.546" x2="96.774" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="48.006" x2="96.774" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="48.006" x2="94.234" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="45.466" x2="96.774" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="45.466" x2="94.234" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="42.926" x2="96.774" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="40.386" x2="96.774" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="37.846" x2="96.774" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="42.926" x2="94.234" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="40.386" x2="94.234" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="37.846" x2="94.234" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="35.306" x2="96.774" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="35.306" x2="94.234" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="32.766" x2="96.774" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="32.766" x2="94.234" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="30.226" x2="96.774" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="30.226" x2="94.234" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="27.686" x2="96.774" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="27.686" x2="94.234" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="25.146" x2="96.774" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="25.146" x2="94.234" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="22.606" x2="96.774" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="22.606" x2="94.234" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="20.066" x2="96.774" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="20.066" x2="94.234" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="17.526" x2="96.774" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="17.526" x2="94.234" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="14.986" x2="96.774" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="14.986" x2="94.234" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="12.446" x2="96.774" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="12.446" x2="94.234" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="9.906" x2="96.774" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="9.906" x2="94.234" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="7.366" x2="96.774" y2="7.874" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="7.366" x2="94.234" y2="7.874" layer="51" rot="R270"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="15.24" y="2.54" drill="3.2"/>
<hole x="90.17" y="50.8" drill="3.2"/>
<hole x="96.52" y="2.54" drill="3.2"/>
<hole x="74.168" y="27.94" drill="2"/>
</package>
<package name="MEGA_ARDUINO_1">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="96.52" y2="53.34" width="0.127" layer="51"/>
<wire x1="96.52" y1="53.34" x2="99.06" y2="50.8" width="0.127" layer="51"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="40.64" width="0.127" layer="51"/>
<wire x1="99.06" y1="40.64" x2="101.6" y2="38.1" width="0.127" layer="51"/>
<wire x1="101.6" y1="38.1" x2="101.6" y2="3.81" width="0.127" layer="51"/>
<wire x1="101.6" y1="3.81" x2="99.06" y2="1.27" width="0.127" layer="51"/>
<wire x1="99.06" y1="1.27" x2="99.06" y2="0" width="0.127" layer="51"/>
<wire x1="99.06" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="63.627" y1="27.94" x2="66.167" y2="27.94" width="0" layer="37"/>
<wire x1="64.897" y1="26.67" x2="64.897" y2="29.21" width="0" layer="37"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="69.215" y2="3.81" width="0.1524" layer="21"/>
<wire x1="69.215" y1="3.81" x2="69.85" y2="3.175" width="0.1524" layer="21"/>
<wire x1="69.85" y1="3.175" x2="69.85" y2="1.905" width="0.1524" layer="21"/>
<wire x1="69.85" y1="1.905" x2="69.215" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="65.405" y2="3.81" width="0.1524" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.675" y2="3.81" width="0.1524" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="3.175" x2="67.31" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="66.675" y2="1.27" width="0.1524" layer="21"/>
<wire x1="66.675" y1="1.27" x2="65.405" y2="1.27" width="0.1524" layer="21"/>
<wire x1="65.405" y1="1.27" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="69.215" y1="1.27" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="86.995" y2="3.81" width="0.1524" layer="21"/>
<wire x1="86.995" y1="3.81" x2="87.63" y2="3.175" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="87.63" y1="1.905" x2="86.995" y2="1.27" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="83.185" y2="3.81" width="0.1524" layer="21"/>
<wire x1="83.185" y1="3.81" x2="84.455" y2="3.81" width="0.1524" layer="21"/>
<wire x1="84.455" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="3.175" x2="85.09" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="84.455" y2="1.27" width="0.1524" layer="21"/>
<wire x1="84.455" y1="1.27" x2="83.185" y2="1.27" width="0.1524" layer="21"/>
<wire x1="83.185" y1="1.27" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="86.995" y1="1.27" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="79.375" y2="3.81" width="0.1524" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.01" y2="3.175" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="80.01" y1="1.905" x2="79.375" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.645" y2="3.81" width="0.1524" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.915" y2="3.81" width="0.1524" layer="21"/>
<wire x1="81.915" y1="3.81" x2="82.55" y2="3.175" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="82.55" y1="1.905" x2="81.915" y2="1.27" width="0.1524" layer="21"/>
<wire x1="81.915" y1="1.27" x2="80.645" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.645" y1="1.27" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="75.565" y2="3.81" width="0.1524" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.835" y2="3.81" width="0.1524" layer="21"/>
<wire x1="76.835" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="3.175" x2="77.47" y2="1.905" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="76.835" y2="1.27" width="0.1524" layer="21"/>
<wire x1="76.835" y1="1.27" x2="75.565" y2="1.27" width="0.1524" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="79.375" y1="1.27" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="73.025" y2="3.81" width="0.1524" layer="21"/>
<wire x1="73.025" y1="3.81" x2="74.295" y2="3.81" width="0.1524" layer="21"/>
<wire x1="74.295" y1="3.81" x2="74.93" y2="3.175" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="1.905" x2="74.295" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.025" y2="1.27" width="0.1524" layer="21"/>
<wire x1="73.025" y1="1.27" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="92.075" y2="3.81" width="0.1524" layer="21"/>
<wire x1="92.075" y1="3.81" x2="92.71" y2="3.175" width="0.1524" layer="21"/>
<wire x1="92.71" y1="1.905" x2="92.075" y2="1.27" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="88.265" y2="3.81" width="0.1524" layer="21"/>
<wire x1="88.265" y1="3.81" x2="89.535" y2="3.81" width="0.1524" layer="21"/>
<wire x1="89.535" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="3.175" x2="90.17" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="89.535" y2="1.27" width="0.1524" layer="21"/>
<wire x1="89.535" y1="1.27" x2="88.265" y2="1.27" width="0.1524" layer="21"/>
<wire x1="88.265" y1="1.27" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="92.075" y1="1.27" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="73.025" y2="49.53" width="0.1524" layer="21"/>
<wire x1="73.025" y1="49.53" x2="72.39" y2="50.165" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="72.39" y1="51.435" x2="73.025" y2="52.07" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="76.835" y2="49.53" width="0.1524" layer="21"/>
<wire x1="76.835" y1="49.53" x2="75.565" y2="49.53" width="0.1524" layer="21"/>
<wire x1="75.565" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="50.165" x2="74.93" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="75.565" y2="52.07" width="0.1524" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.835" y2="52.07" width="0.1524" layer="21"/>
<wire x1="76.835" y1="52.07" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="73.025" y1="52.07" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="80.645" y2="49.53" width="0.1524" layer="21"/>
<wire x1="80.645" y1="49.53" x2="80.01" y2="50.165" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="80.01" y1="51.435" x2="80.645" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="79.375" y2="49.53" width="0.1524" layer="21"/>
<wire x1="79.375" y1="49.53" x2="78.105" y2="49.53" width="0.1524" layer="21"/>
<wire x1="78.105" y1="49.53" x2="77.47" y2="50.165" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="77.47" y1="51.435" x2="78.105" y2="52.07" width="0.1524" layer="21"/>
<wire x1="78.105" y1="52.07" x2="79.375" y2="52.07" width="0.1524" layer="21"/>
<wire x1="79.375" y1="52.07" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="84.455" y2="49.53" width="0.1524" layer="21"/>
<wire x1="84.455" y1="49.53" x2="83.185" y2="49.53" width="0.1524" layer="21"/>
<wire x1="83.185" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="50.165" x2="82.55" y2="51.435" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="83.185" y2="52.07" width="0.1524" layer="21"/>
<wire x1="83.185" y1="52.07" x2="84.455" y2="52.07" width="0.1524" layer="21"/>
<wire x1="84.455" y1="52.07" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.645" y1="52.07" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="86.995" y2="49.53" width="0.1524" layer="21"/>
<wire x1="86.995" y1="49.53" x2="85.725" y2="49.53" width="0.1524" layer="21"/>
<wire x1="85.725" y1="49.53" x2="85.09" y2="50.165" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="51.435" x2="85.725" y2="52.07" width="0.1524" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.995" y2="52.07" width="0.1524" layer="21"/>
<wire x1="86.995" y1="52.07" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="67.945" y2="49.53" width="0.1524" layer="21"/>
<wire x1="67.945" y1="49.53" x2="67.31" y2="50.165" width="0.1524" layer="21"/>
<wire x1="67.31" y1="50.165" x2="67.31" y2="51.435" width="0.1524" layer="21"/>
<wire x1="67.31" y1="51.435" x2="67.945" y2="52.07" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="71.755" y2="49.53" width="0.1524" layer="21"/>
<wire x1="71.755" y1="49.53" x2="70.485" y2="49.53" width="0.1524" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="50.165" x2="69.85" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="70.485" y2="52.07" width="0.1524" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.755" y2="52.07" width="0.1524" layer="21"/>
<wire x1="71.755" y1="52.07" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="67.945" y1="52.07" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.705" y2="52.07" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="60.325" y2="52.07" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="49.53" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.865" y2="52.07" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="49.53" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="45.085" y2="52.07" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="28.575" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.575" y1="49.53" x2="27.94" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.94" y1="51.435" x2="28.575" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="32.385" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.385" y1="49.53" x2="31.115" y2="49.53" width="0.1524" layer="21"/>
<wire x1="31.115" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="50.165" x2="30.48" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="31.115" y2="52.07" width="0.1524" layer="21"/>
<wire x1="31.115" y1="52.07" x2="32.385" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.385" y1="52.07" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.575" y1="52.07" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="36.195" y2="49.53" width="0.1524" layer="21"/>
<wire x1="36.195" y1="49.53" x2="35.56" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.56" y1="51.435" x2="36.195" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="34.925" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.925" y1="49.53" x2="33.655" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.655" y1="49.53" x2="33.02" y2="50.165" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="33.02" y1="51.435" x2="33.655" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.655" y1="52.07" x2="34.925" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.925" y1="52.07" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.005" y2="49.53" width="0.1524" layer="21"/>
<wire x1="40.005" y1="49.53" x2="38.735" y2="49.53" width="0.1524" layer="21"/>
<wire x1="38.735" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="50.165" x2="38.1" y2="51.435" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="38.735" y2="52.07" width="0.1524" layer="21"/>
<wire x1="38.735" y1="52.07" x2="40.005" y2="52.07" width="0.1524" layer="21"/>
<wire x1="40.005" y1="52.07" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="36.195" y1="52.07" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="42.545" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.545" y1="49.53" x2="41.275" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.275" y1="49.53" x2="40.64" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="51.435" x2="41.275" y2="52.07" width="0.1524" layer="21"/>
<wire x1="41.275" y1="52.07" x2="42.545" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.545" y1="52.07" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="23.495" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.495" y1="49.53" x2="22.86" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.86" y1="50.165" x2="22.86" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.86" y1="51.435" x2="23.495" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.305" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.305" y1="49.53" x2="26.035" y2="49.53" width="0.1524" layer="21"/>
<wire x1="26.035" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="50.165" x2="25.4" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="26.035" y2="52.07" width="0.1524" layer="21"/>
<wire x1="26.035" y1="52.07" x2="27.305" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.305" y1="52.07" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="23.495" y1="52.07" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="92.71" y2="51.435" width="0.1524" layer="21"/>
<wire x1="92.71" y1="51.435" x2="92.71" y2="50.165" width="0.1524" layer="21"/>
<wire x1="92.71" y1="50.165" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="93.345" y1="49.53" x2="92.71" y2="48.895" width="0.1524" layer="21"/>
<wire x1="92.71" y1="48.895" x2="92.71" y2="47.625" width="0.1524" layer="21"/>
<wire x1="92.71" y1="47.625" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="93.345" y1="46.99" x2="92.71" y2="46.355" width="0.1524" layer="21"/>
<wire x1="92.71" y1="46.355" x2="92.71" y2="45.085" width="0.1524" layer="21"/>
<wire x1="92.71" y1="45.085" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="44.45" x2="92.71" y2="43.815" width="0.1524" layer="21"/>
<wire x1="92.71" y1="43.815" x2="92.71" y2="42.545" width="0.1524" layer="21"/>
<wire x1="92.71" y1="42.545" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="93.345" y1="41.91" x2="92.71" y2="41.275" width="0.1524" layer="21"/>
<wire x1="92.71" y1="41.275" x2="92.71" y2="40.005" width="0.1524" layer="21"/>
<wire x1="92.71" y1="40.005" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="93.345" y1="39.37" x2="92.71" y2="38.735" width="0.1524" layer="21"/>
<wire x1="92.71" y1="38.735" x2="92.71" y2="37.465" width="0.1524" layer="21"/>
<wire x1="92.71" y1="37.465" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="97.155" y2="52.07" width="0.1524" layer="21"/>
<wire x1="97.155" y1="52.07" x2="97.79" y2="51.435" width="0.1524" layer="21"/>
<wire x1="97.79" y1="51.435" x2="97.79" y2="50.165" width="0.1524" layer="21"/>
<wire x1="97.79" y1="50.165" x2="97.155" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="97.79" y2="48.895" width="0.1524" layer="21"/>
<wire x1="97.79" y1="48.895" x2="97.79" y2="47.625" width="0.1524" layer="21"/>
<wire x1="97.79" y1="47.625" x2="97.155" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="97.79" y2="46.355" width="0.1524" layer="21"/>
<wire x1="97.79" y1="46.355" x2="97.79" y2="45.085" width="0.1524" layer="21"/>
<wire x1="97.79" y1="45.085" x2="97.155" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="97.79" y2="43.815" width="0.1524" layer="21"/>
<wire x1="97.79" y1="43.815" x2="97.79" y2="42.545" width="0.1524" layer="21"/>
<wire x1="97.79" y1="42.545" x2="97.155" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="97.79" y2="41.275" width="0.1524" layer="21"/>
<wire x1="97.79" y1="41.275" x2="97.79" y2="40.005" width="0.1524" layer="21"/>
<wire x1="97.79" y1="40.005" x2="97.155" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="97.79" y2="38.735" width="0.1524" layer="21"/>
<wire x1="97.79" y1="38.735" x2="97.79" y2="37.465" width="0.1524" layer="21"/>
<wire x1="97.79" y1="37.465" x2="97.155" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="97.79" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.79" y1="36.195" x2="97.79" y2="34.925" width="0.1524" layer="21"/>
<wire x1="97.79" y1="34.925" x2="97.155" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="97.79" y2="33.655" width="0.1524" layer="21"/>
<wire x1="97.79" y1="33.655" x2="97.79" y2="32.385" width="0.1524" layer="21"/>
<wire x1="97.79" y1="32.385" x2="97.155" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="97.79" y2="31.115" width="0.1524" layer="21"/>
<wire x1="97.79" y1="31.115" x2="97.79" y2="29.845" width="0.1524" layer="21"/>
<wire x1="97.79" y1="29.845" x2="97.155" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="97.79" y2="28.575" width="0.1524" layer="21"/>
<wire x1="97.79" y1="28.575" x2="97.79" y2="27.305" width="0.1524" layer="21"/>
<wire x1="97.79" y1="27.305" x2="97.155" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="97.79" y2="26.035" width="0.1524" layer="21"/>
<wire x1="97.79" y1="26.035" x2="97.79" y2="24.765" width="0.1524" layer="21"/>
<wire x1="97.79" y1="24.765" x2="97.155" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="97.79" y2="23.495" width="0.1524" layer="21"/>
<wire x1="97.79" y1="23.495" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.155" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.155" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.155" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.155" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.155" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.155" y2="6.35" width="0.1524" layer="21"/>
<wire x1="93.345" y1="6.35" x2="92.71" y2="6.985" width="0.1524" layer="21"/>
<wire x1="92.71" y1="6.985" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="9.525" width="0.1524" layer="21"/>
<wire x1="92.71" y1="9.525" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="93.345" y1="13.97" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="93.345" y1="16.51" x2="92.71" y2="17.145" width="0.1524" layer="21"/>
<wire x1="92.71" y1="17.145" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="19.685" width="0.1524" layer="21"/>
<wire x1="92.71" y1="19.685" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="22.225" width="0.1524" layer="21"/>
<wire x1="92.71" y1="22.225" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="24.765" width="0.1524" layer="21"/>
<wire x1="92.71" y1="24.765" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="27.305" width="0.1524" layer="21"/>
<wire x1="92.71" y1="27.305" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="29.845" width="0.1524" layer="21"/>
<wire x1="92.71" y1="29.845" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="32.385" width="0.1524" layer="21"/>
<wire x1="92.71" y1="32.385" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="34.925" width="0.1524" layer="21"/>
<wire x1="92.71" y1="34.925" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="93.345" y1="36.83" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="93.345" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="93.345" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="93.345" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="93.345" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="93.345" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="93.345" y2="21.59" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="93.345" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="93.345" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="93.345" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="6.35" x2="93.345" y2="6.35" width="0.1524" layer="21"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="66.04" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="68.58" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="73.66" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="76.2" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="78.74" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="81.28" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="83.82" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="86.36" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="88.9" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="91.44" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="86.36" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="24" x="83.82" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="25" x="81.28" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="26" x="78.74" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="27" x="76.2" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="28" x="73.66" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="29" x="71.12" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="30" x="68.58" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="31" x="63.5" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="32" x="60.96" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="33" x="58.42" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="34" x="55.88" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="35" x="53.34" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="36" x="50.8" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="37" x="48.26" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="38" x="45.72" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="39" x="41.91" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="40" x="39.37" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="41" x="36.83" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="42" x="34.29" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="43" x="31.75" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="44" x="29.21" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="45" x="26.67" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="46" x="24.13" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="47" x="93.98" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="48" x="96.52" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="49" x="93.98" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="50" x="96.52" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="51" x="93.98" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="52" x="96.52" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="53" x="93.98" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="54" x="96.52" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="55" x="93.98" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="56" x="96.52" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="57" x="93.98" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="58" x="96.52" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="59" x="93.98" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="60" x="96.52" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="61" x="93.98" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="62" x="96.52" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="63" x="93.98" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="64" x="96.52" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="65" x="93.98" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="66" x="96.52" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="67" x="93.98" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="68" x="96.52" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="69" x="93.98" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="70" x="96.52" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="71" x="93.98" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="72" x="96.52" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="73" x="93.98" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="74" x="96.52" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="75" x="93.98" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="76" x="96.52" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="77" x="93.98" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="78" x="96.52" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="79" x="93.98" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="80" x="96.52" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="81" x="93.98" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<pad name="82" x="96.52" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF5</text>
<text x="66.7976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF6</text>
<text x="69.3376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF7</text>
<text x="74.4176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK0</text>
<text x="76.9576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK1</text>
<text x="79.4976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK2</text>
<text x="82.0376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK3</text>
<text x="84.5776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK4</text>
<text x="87.1176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK5</text>
<text x="89.6576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK6</text>
<text x="92.1976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK7</text>
<text x="85.6024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD0</text>
<text x="83.0624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD1</text>
<text x="80.5224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD2</text>
<text x="77.9824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD3</text>
<text x="75.4424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH0</text>
<text x="72.9024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH1</text>
<text x="70.3624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PJ0</text>
<text x="67.8224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PJ1</text>
<text x="62.7424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE0</text>
<text x="60.2024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE1</text>
<text x="57.6624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE4</text>
<text x="55.1224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE5</text>
<text x="52.5824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PG5</text>
<text x="50.0424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE3</text>
<text x="47.5024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH3</text>
<text x="44.9624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH4</text>
<text x="41.1524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH5</text>
<text x="36.0724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB4</text>
<text x="33.5324" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB5</text>
<text x="30.9924" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB6</text>
<text x="28.4524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB7</text>
<text x="38.6124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH6</text>
<text x="25.9124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="23.3724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="91.5802" y="30.9836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC1</text>
<text x="91.5802" y="33.5236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC3</text>
<text x="91.5802" y="36.0636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC5</text>
<text x="91.5802" y="38.6036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC7</text>
<text x="91.5802" y="41.1436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA6</text>
<text x="91.5802" y="43.6836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA4</text>
<text x="91.5802" y="46.2236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA2</text>
<text x="91.5802" y="48.7636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA0</text>
<text x="91.5802" y="10.6636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PB1</text>
<text x="91.5802" y="13.2036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PB3</text>
<text x="91.5802" y="15.7436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL1</text>
<text x="91.5802" y="18.2836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL3</text>
<text x="98.1578" y="22.1024" size="1.016" layer="48" font="vector" ratio="10">PL6</text>
<text x="91.5802" y="23.3636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL7</text>
<text x="91.5802" y="25.9036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PG1</text>
<text x="91.5802" y="28.4436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PD7</text>
<text x="98.1578" y="37.3424" size="1.016" layer="48" font="vector" ratio="10">PC6</text>
<text x="98.1578" y="34.8024" size="1.016" layer="48" font="vector" ratio="10">PC4</text>
<text x="98.1578" y="32.2624" size="1.016" layer="48" font="vector" ratio="10">PC2</text>
<text x="98.1578" y="29.7224" size="1.016" layer="48" font="vector" ratio="10">PC0</text>
<text x="98.1578" y="27.1824" size="1.016" layer="48" font="vector" ratio="10">PG2</text>
<text x="98.1578" y="24.6424" size="1.016" layer="48" font="vector" ratio="10">PG0</text>
<text x="91.5802" y="20.8236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL5</text>
<text x="98.1578" y="19.5624" size="1.016" layer="48" font="vector" ratio="10">PL4</text>
<text x="98.1578" y="17.0224" size="1.016" layer="48" font="vector" ratio="10">PL2</text>
<text x="98.1578" y="14.4824" size="1.016" layer="48" font="vector" ratio="10">PL0</text>
<text x="98.1578" y="11.9424" size="1.016" layer="48" font="vector" ratio="10">PB2</text>
<text x="98.1578" y="9.4024" size="1.016" layer="48" font="vector" ratio="10">PB0</text>
<text x="98.1578" y="6.8624" size="1.016" layer="48" font="vector" ratio="10">GND</text>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<rectangle x1="68.326" y1="2.286" x2="68.834" y2="2.794" layer="51"/>
<rectangle x1="65.786" y1="2.286" x2="66.294" y2="2.794" layer="51"/>
<rectangle x1="86.106" y1="2.286" x2="86.614" y2="2.794" layer="51"/>
<rectangle x1="83.566" y1="2.286" x2="84.074" y2="2.794" layer="51"/>
<rectangle x1="81.026" y1="2.286" x2="81.534" y2="2.794" layer="51"/>
<rectangle x1="78.486" y1="2.286" x2="78.994" y2="2.794" layer="51"/>
<rectangle x1="75.946" y1="2.286" x2="76.454" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="2.286" x2="73.914" y2="2.794" layer="51"/>
<rectangle x1="91.186" y1="2.286" x2="91.694" y2="2.794" layer="51"/>
<rectangle x1="88.646" y1="2.286" x2="89.154" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="50.546" x2="73.914" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="75.946" y1="50.546" x2="76.454" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="78.486" y1="50.546" x2="78.994" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="81.026" y1="50.546" x2="81.534" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="83.566" y1="50.546" x2="84.074" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="86.106" y1="50.546" x2="86.614" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="68.326" y1="50.546" x2="68.834" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="70.866" y1="50.546" x2="71.374" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="28.956" y1="50.546" x2="29.464" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="31.496" y1="50.546" x2="32.004" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="34.036" y1="50.546" x2="34.544" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="36.576" y1="50.546" x2="37.084" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="39.116" y1="50.546" x2="39.624" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="41.656" y1="50.546" x2="42.164" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="23.876" y1="50.546" x2="24.384" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="26.416" y1="50.546" x2="26.924" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="93.726" y1="50.546" x2="94.234" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="50.546" x2="96.774" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="48.006" x2="96.774" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="48.006" x2="94.234" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="45.466" x2="96.774" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="45.466" x2="94.234" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="42.926" x2="96.774" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="40.386" x2="96.774" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="37.846" x2="96.774" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="42.926" x2="94.234" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="40.386" x2="94.234" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="37.846" x2="94.234" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="35.306" x2="96.774" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="35.306" x2="94.234" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="32.766" x2="96.774" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="32.766" x2="94.234" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="30.226" x2="96.774" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="30.226" x2="94.234" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="27.686" x2="96.774" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="27.686" x2="94.234" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="25.146" x2="96.774" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="25.146" x2="94.234" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="22.606" x2="96.774" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="22.606" x2="94.234" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="20.066" x2="96.774" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="20.066" x2="94.234" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="17.526" x2="96.774" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="17.526" x2="94.234" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="14.986" x2="96.774" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="14.986" x2="94.234" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="12.446" x2="96.774" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="12.446" x2="94.234" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="9.906" x2="96.774" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="9.906" x2="94.234" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="7.366" x2="96.774" y2="7.874" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="7.366" x2="94.234" y2="7.874" layer="51" rot="R270"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="15.24" y="2.54" drill="3.2"/>
<hole x="90.17" y="50.8" drill="3.2"/>
<hole x="96.52" y="2.54" drill="3.2"/>
<hole x="74.168" y="27.94" drill="2"/>
</package>
<package name="MEGA_ARDUINO_2">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="96.52" y2="53.34" width="0.127" layer="51"/>
<wire x1="96.52" y1="53.34" x2="99.06" y2="50.8" width="0.127" layer="51"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="40.64" width="0.127" layer="51"/>
<wire x1="99.06" y1="40.64" x2="101.6" y2="38.1" width="0.127" layer="51"/>
<wire x1="101.6" y1="38.1" x2="101.6" y2="3.81" width="0.127" layer="51"/>
<wire x1="101.6" y1="3.81" x2="99.06" y2="1.27" width="0.127" layer="51"/>
<wire x1="99.06" y1="1.27" x2="99.06" y2="0" width="0.127" layer="51"/>
<wire x1="99.06" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="69.215" y2="3.81" width="0.1524" layer="21"/>
<wire x1="69.215" y1="3.81" x2="69.85" y2="3.175" width="0.1524" layer="21"/>
<wire x1="69.85" y1="3.175" x2="69.85" y2="1.905" width="0.1524" layer="21"/>
<wire x1="69.85" y1="1.905" x2="69.215" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="65.405" y2="3.81" width="0.1524" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.675" y2="3.81" width="0.1524" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="3.175" x2="67.31" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="66.675" y2="1.27" width="0.1524" layer="21"/>
<wire x1="66.675" y1="1.27" x2="65.405" y2="1.27" width="0.1524" layer="21"/>
<wire x1="65.405" y1="1.27" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="67.945" y1="3.81" x2="67.31" y2="3.175" width="0.1524" layer="21"/>
<wire x1="67.31" y1="1.905" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="69.215" y1="1.27" x2="67.945" y2="1.27" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="86.995" y2="3.81" width="0.1524" layer="21"/>
<wire x1="86.995" y1="3.81" x2="87.63" y2="3.175" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="87.63" y1="1.905" x2="86.995" y2="1.27" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="83.185" y2="3.81" width="0.1524" layer="21"/>
<wire x1="83.185" y1="3.81" x2="84.455" y2="3.81" width="0.1524" layer="21"/>
<wire x1="84.455" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="3.175" x2="85.09" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="84.455" y2="1.27" width="0.1524" layer="21"/>
<wire x1="84.455" y1="1.27" x2="83.185" y2="1.27" width="0.1524" layer="21"/>
<wire x1="83.185" y1="1.27" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="85.725" y1="3.81" x2="85.09" y2="3.175" width="0.1524" layer="21"/>
<wire x1="85.09" y1="1.905" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="86.995" y1="1.27" x2="85.725" y2="1.27" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="79.375" y2="3.81" width="0.1524" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.01" y2="3.175" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="80.01" y1="1.905" x2="79.375" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.01" y1="3.175" x2="80.645" y2="3.81" width="0.1524" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.915" y2="3.81" width="0.1524" layer="21"/>
<wire x1="81.915" y1="3.81" x2="82.55" y2="3.175" width="0.1524" layer="21"/>
<wire x1="82.55" y1="3.175" x2="82.55" y2="1.905" width="0.1524" layer="21"/>
<wire x1="82.55" y1="1.905" x2="81.915" y2="1.27" width="0.1524" layer="21"/>
<wire x1="81.915" y1="1.27" x2="80.645" y2="1.27" width="0.1524" layer="21"/>
<wire x1="80.645" y1="1.27" x2="80.01" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="75.565" y2="3.81" width="0.1524" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.835" y2="3.81" width="0.1524" layer="21"/>
<wire x1="76.835" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="3.175" x2="77.47" y2="1.905" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="76.835" y2="1.27" width="0.1524" layer="21"/>
<wire x1="76.835" y1="1.27" x2="75.565" y2="1.27" width="0.1524" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="78.105" y1="3.81" x2="77.47" y2="3.175" width="0.1524" layer="21"/>
<wire x1="77.47" y1="1.905" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="79.375" y1="1.27" x2="78.105" y2="1.27" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="72.39" y1="3.175" x2="73.025" y2="3.81" width="0.1524" layer="21"/>
<wire x1="73.025" y1="3.81" x2="74.295" y2="3.81" width="0.1524" layer="21"/>
<wire x1="74.295" y1="3.81" x2="74.93" y2="3.175" width="0.1524" layer="21"/>
<wire x1="74.93" y1="3.175" x2="74.93" y2="1.905" width="0.1524" layer="21"/>
<wire x1="74.93" y1="1.905" x2="74.295" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.025" y2="1.27" width="0.1524" layer="21"/>
<wire x1="73.025" y1="1.27" x2="72.39" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="92.075" y2="3.81" width="0.1524" layer="21"/>
<wire x1="92.075" y1="3.81" x2="92.71" y2="3.175" width="0.1524" layer="21"/>
<wire x1="92.71" y1="1.905" x2="92.075" y2="1.27" width="0.1524" layer="21"/>
<wire x1="87.63" y1="3.175" x2="88.265" y2="3.81" width="0.1524" layer="21"/>
<wire x1="88.265" y1="3.81" x2="89.535" y2="3.81" width="0.1524" layer="21"/>
<wire x1="89.535" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="3.175" x2="90.17" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="89.535" y2="1.27" width="0.1524" layer="21"/>
<wire x1="89.535" y1="1.27" x2="88.265" y2="1.27" width="0.1524" layer="21"/>
<wire x1="88.265" y1="1.27" x2="87.63" y2="1.905" width="0.1524" layer="21"/>
<wire x1="90.805" y1="3.81" x2="90.17" y2="3.175" width="0.1524" layer="21"/>
<wire x1="90.17" y1="1.905" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="92.075" y1="1.27" x2="90.805" y2="1.27" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="73.025" y2="49.53" width="0.1524" layer="21"/>
<wire x1="73.025" y1="49.53" x2="72.39" y2="50.165" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="72.39" y1="51.435" x2="73.025" y2="52.07" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="76.835" y2="49.53" width="0.1524" layer="21"/>
<wire x1="76.835" y1="49.53" x2="75.565" y2="49.53" width="0.1524" layer="21"/>
<wire x1="75.565" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="50.165" x2="74.93" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="75.565" y2="52.07" width="0.1524" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.835" y2="52.07" width="0.1524" layer="21"/>
<wire x1="76.835" y1="52.07" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="74.295" y1="49.53" x2="74.93" y2="50.165" width="0.1524" layer="21"/>
<wire x1="74.93" y1="51.435" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="73.025" y1="52.07" x2="74.295" y2="52.07" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="80.645" y2="49.53" width="0.1524" layer="21"/>
<wire x1="80.645" y1="49.53" x2="80.01" y2="50.165" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="80.01" y1="51.435" x2="80.645" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.01" y1="50.165" x2="79.375" y2="49.53" width="0.1524" layer="21"/>
<wire x1="79.375" y1="49.53" x2="78.105" y2="49.53" width="0.1524" layer="21"/>
<wire x1="78.105" y1="49.53" x2="77.47" y2="50.165" width="0.1524" layer="21"/>
<wire x1="77.47" y1="50.165" x2="77.47" y2="51.435" width="0.1524" layer="21"/>
<wire x1="77.47" y1="51.435" x2="78.105" y2="52.07" width="0.1524" layer="21"/>
<wire x1="78.105" y1="52.07" x2="79.375" y2="52.07" width="0.1524" layer="21"/>
<wire x1="79.375" y1="52.07" x2="80.01" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="84.455" y2="49.53" width="0.1524" layer="21"/>
<wire x1="84.455" y1="49.53" x2="83.185" y2="49.53" width="0.1524" layer="21"/>
<wire x1="83.185" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="50.165" x2="82.55" y2="51.435" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="83.185" y2="52.07" width="0.1524" layer="21"/>
<wire x1="83.185" y1="52.07" x2="84.455" y2="52.07" width="0.1524" layer="21"/>
<wire x1="84.455" y1="52.07" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="81.915" y1="49.53" x2="82.55" y2="50.165" width="0.1524" layer="21"/>
<wire x1="82.55" y1="51.435" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="80.645" y1="52.07" x2="81.915" y2="52.07" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="87.63" y1="50.165" x2="86.995" y2="49.53" width="0.1524" layer="21"/>
<wire x1="86.995" y1="49.53" x2="85.725" y2="49.53" width="0.1524" layer="21"/>
<wire x1="85.725" y1="49.53" x2="85.09" y2="50.165" width="0.1524" layer="21"/>
<wire x1="85.09" y1="50.165" x2="85.09" y2="51.435" width="0.1524" layer="21"/>
<wire x1="85.09" y1="51.435" x2="85.725" y2="52.07" width="0.1524" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.995" y2="52.07" width="0.1524" layer="21"/>
<wire x1="86.995" y1="52.07" x2="87.63" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="67.945" y2="49.53" width="0.1524" layer="21"/>
<wire x1="67.945" y1="49.53" x2="67.31" y2="50.165" width="0.1524" layer="21"/>
<wire x1="67.31" y1="50.165" x2="67.31" y2="51.435" width="0.1524" layer="21"/>
<wire x1="67.31" y1="51.435" x2="67.945" y2="52.07" width="0.1524" layer="21"/>
<wire x1="72.39" y1="50.165" x2="71.755" y2="49.53" width="0.1524" layer="21"/>
<wire x1="71.755" y1="49.53" x2="70.485" y2="49.53" width="0.1524" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="50.165" x2="69.85" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="70.485" y2="52.07" width="0.1524" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.755" y2="52.07" width="0.1524" layer="21"/>
<wire x1="71.755" y1="52.07" x2="72.39" y2="51.435" width="0.1524" layer="21"/>
<wire x1="69.215" y1="49.53" x2="69.85" y2="50.165" width="0.1524" layer="21"/>
<wire x1="69.85" y1="51.435" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="67.945" y1="52.07" x2="69.215" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.705" y2="52.07" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="60.325" y2="52.07" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="49.53" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.865" y2="52.07" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="49.53" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="45.085" y2="52.07" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="28.575" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.575" y1="49.53" x2="27.94" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.94" y1="51.435" x2="28.575" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="32.385" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.385" y1="49.53" x2="31.115" y2="49.53" width="0.1524" layer="21"/>
<wire x1="31.115" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="50.165" x2="30.48" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="31.115" y2="52.07" width="0.1524" layer="21"/>
<wire x1="31.115" y1="52.07" x2="32.385" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.385" y1="52.07" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="29.845" y1="49.53" x2="30.48" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.48" y1="51.435" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.575" y1="52.07" x2="29.845" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="36.195" y2="49.53" width="0.1524" layer="21"/>
<wire x1="36.195" y1="49.53" x2="35.56" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.56" y1="51.435" x2="36.195" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.56" y1="50.165" x2="34.925" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.925" y1="49.53" x2="33.655" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.655" y1="49.53" x2="33.02" y2="50.165" width="0.1524" layer="21"/>
<wire x1="33.02" y1="50.165" x2="33.02" y2="51.435" width="0.1524" layer="21"/>
<wire x1="33.02" y1="51.435" x2="33.655" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.655" y1="52.07" x2="34.925" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.925" y1="52.07" x2="35.56" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.005" y2="49.53" width="0.1524" layer="21"/>
<wire x1="40.005" y1="49.53" x2="38.735" y2="49.53" width="0.1524" layer="21"/>
<wire x1="38.735" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="50.165" x2="38.1" y2="51.435" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="38.735" y2="52.07" width="0.1524" layer="21"/>
<wire x1="38.735" y1="52.07" x2="40.005" y2="52.07" width="0.1524" layer="21"/>
<wire x1="40.005" y1="52.07" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.465" y1="49.53" x2="38.1" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.1" y1="51.435" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="36.195" y1="52.07" x2="37.465" y2="52.07" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="43.18" y1="50.165" x2="42.545" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.545" y1="49.53" x2="41.275" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.275" y1="49.53" x2="40.64" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.64" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.64" y1="51.435" x2="41.275" y2="52.07" width="0.1524" layer="21"/>
<wire x1="41.275" y1="52.07" x2="42.545" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.545" y1="52.07" x2="43.18" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="23.495" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.495" y1="49.53" x2="22.86" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.86" y1="50.165" x2="22.86" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.86" y1="51.435" x2="23.495" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.94" y1="50.165" x2="27.305" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.305" y1="49.53" x2="26.035" y2="49.53" width="0.1524" layer="21"/>
<wire x1="26.035" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="50.165" x2="25.4" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="26.035" y2="52.07" width="0.1524" layer="21"/>
<wire x1="26.035" y1="52.07" x2="27.305" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.305" y1="52.07" x2="27.94" y2="51.435" width="0.1524" layer="21"/>
<wire x1="24.765" y1="49.53" x2="25.4" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.4" y1="51.435" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="23.495" y1="52.07" x2="24.765" y2="52.07" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="92.71" y2="51.435" width="0.1524" layer="21"/>
<wire x1="92.71" y1="51.435" x2="92.71" y2="50.165" width="0.1524" layer="21"/>
<wire x1="92.71" y1="50.165" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="93.345" y1="49.53" x2="92.71" y2="48.895" width="0.1524" layer="21"/>
<wire x1="92.71" y1="48.895" x2="92.71" y2="47.625" width="0.1524" layer="21"/>
<wire x1="92.71" y1="47.625" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="93.345" y1="46.99" x2="92.71" y2="46.355" width="0.1524" layer="21"/>
<wire x1="92.71" y1="46.355" x2="92.71" y2="45.085" width="0.1524" layer="21"/>
<wire x1="92.71" y1="45.085" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="44.45" x2="92.71" y2="43.815" width="0.1524" layer="21"/>
<wire x1="92.71" y1="43.815" x2="92.71" y2="42.545" width="0.1524" layer="21"/>
<wire x1="92.71" y1="42.545" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="93.345" y1="41.91" x2="92.71" y2="41.275" width="0.1524" layer="21"/>
<wire x1="92.71" y1="41.275" x2="92.71" y2="40.005" width="0.1524" layer="21"/>
<wire x1="92.71" y1="40.005" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="93.345" y1="39.37" x2="92.71" y2="38.735" width="0.1524" layer="21"/>
<wire x1="92.71" y1="38.735" x2="92.71" y2="37.465" width="0.1524" layer="21"/>
<wire x1="92.71" y1="37.465" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="93.345" y1="52.07" x2="97.155" y2="52.07" width="0.1524" layer="21"/>
<wire x1="97.155" y1="52.07" x2="97.79" y2="51.435" width="0.1524" layer="21"/>
<wire x1="97.79" y1="51.435" x2="97.79" y2="50.165" width="0.1524" layer="21"/>
<wire x1="97.79" y1="50.165" x2="97.155" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="97.79" y2="48.895" width="0.1524" layer="21"/>
<wire x1="97.79" y1="48.895" x2="97.79" y2="47.625" width="0.1524" layer="21"/>
<wire x1="97.79" y1="47.625" x2="97.155" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="97.79" y2="46.355" width="0.1524" layer="21"/>
<wire x1="97.79" y1="46.355" x2="97.79" y2="45.085" width="0.1524" layer="21"/>
<wire x1="97.79" y1="45.085" x2="97.155" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="97.79" y2="43.815" width="0.1524" layer="21"/>
<wire x1="97.79" y1="43.815" x2="97.79" y2="42.545" width="0.1524" layer="21"/>
<wire x1="97.79" y1="42.545" x2="97.155" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="97.79" y2="41.275" width="0.1524" layer="21"/>
<wire x1="97.79" y1="41.275" x2="97.79" y2="40.005" width="0.1524" layer="21"/>
<wire x1="97.79" y1="40.005" x2="97.155" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="97.79" y2="38.735" width="0.1524" layer="21"/>
<wire x1="97.79" y1="38.735" x2="97.79" y2="37.465" width="0.1524" layer="21"/>
<wire x1="97.79" y1="37.465" x2="97.155" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="97.79" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.79" y1="36.195" x2="97.79" y2="34.925" width="0.1524" layer="21"/>
<wire x1="97.79" y1="34.925" x2="97.155" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="97.79" y2="33.655" width="0.1524" layer="21"/>
<wire x1="97.79" y1="33.655" x2="97.79" y2="32.385" width="0.1524" layer="21"/>
<wire x1="97.79" y1="32.385" x2="97.155" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="97.79" y2="31.115" width="0.1524" layer="21"/>
<wire x1="97.79" y1="31.115" x2="97.79" y2="29.845" width="0.1524" layer="21"/>
<wire x1="97.79" y1="29.845" x2="97.155" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="97.79" y2="28.575" width="0.1524" layer="21"/>
<wire x1="97.79" y1="28.575" x2="97.79" y2="27.305" width="0.1524" layer="21"/>
<wire x1="97.79" y1="27.305" x2="97.155" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="97.79" y2="26.035" width="0.1524" layer="21"/>
<wire x1="97.79" y1="26.035" x2="97.79" y2="24.765" width="0.1524" layer="21"/>
<wire x1="97.79" y1="24.765" x2="97.155" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="97.79" y2="23.495" width="0.1524" layer="21"/>
<wire x1="97.79" y1="23.495" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.155" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.155" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.155" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.155" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.155" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.79" y2="8.255" width="0.1524" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.155" y2="6.35" width="0.1524" layer="21"/>
<wire x1="93.345" y1="6.35" x2="92.71" y2="6.985" width="0.1524" layer="21"/>
<wire x1="92.71" y1="6.985" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="8.255" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="9.525" width="0.1524" layer="21"/>
<wire x1="92.71" y1="9.525" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="93.345" y1="13.97" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="93.345" y1="16.51" x2="92.71" y2="17.145" width="0.1524" layer="21"/>
<wire x1="92.71" y1="17.145" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="19.685" width="0.1524" layer="21"/>
<wire x1="92.71" y1="19.685" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="22.225" width="0.1524" layer="21"/>
<wire x1="92.71" y1="22.225" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="24.765" width="0.1524" layer="21"/>
<wire x1="92.71" y1="24.765" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="27.305" width="0.1524" layer="21"/>
<wire x1="92.71" y1="27.305" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="29.845" width="0.1524" layer="21"/>
<wire x1="92.71" y1="29.845" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="32.385" width="0.1524" layer="21"/>
<wire x1="92.71" y1="32.385" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="34.925" width="0.1524" layer="21"/>
<wire x1="92.71" y1="34.925" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="93.345" y1="36.83" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="93.345" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="93.345" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="93.345" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="93.345" y2="26.67" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="93.345" y2="24.13" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="93.345" y2="21.59" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="93.345" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="93.345" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="93.345" y2="8.89" width="0.1524" layer="21"/>
<wire x1="97.155" y1="6.35" x2="93.345" y2="6.35" width="0.1524" layer="21"/>
<wire x1="92.71" y1="3.175" x2="92.71" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="66.04" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="68.58" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="73.66" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="76.2" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="78.74" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="81.28" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="83.82" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="86.36" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="88.9" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="91.44" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="86.36" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="24" x="83.82" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="25" x="81.28" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="26" x="78.74" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="27" x="76.2" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="28" x="73.66" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="29" x="71.12" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="30" x="68.58" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="31" x="63.5" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="32" x="60.96" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="33" x="58.42" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="34" x="55.88" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="35" x="53.34" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="36" x="50.8" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="37" x="48.26" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="38" x="45.72" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="39" x="41.91" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="40" x="39.37" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="41" x="36.83" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="42" x="34.29" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="43" x="31.75" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="44" x="29.21" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="45" x="26.67" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="46" x="24.13" y="50.8" drill="1.016" shape="long" rot="R270"/>
<pad name="47" x="93.98" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="48" x="96.52" y="50.8" drill="1.016" shape="octagon" rot="R270"/>
<pad name="49" x="93.98" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="50" x="96.52" y="48.26" drill="1.016" shape="octagon" rot="R270"/>
<pad name="51" x="93.98" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="52" x="96.52" y="45.72" drill="1.016" shape="octagon" rot="R270"/>
<pad name="53" x="93.98" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="54" x="96.52" y="43.18" drill="1.016" shape="octagon" rot="R270"/>
<pad name="55" x="93.98" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="56" x="96.52" y="40.64" drill="1.016" shape="octagon" rot="R270"/>
<pad name="57" x="93.98" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="58" x="96.52" y="38.1" drill="1.016" shape="octagon" rot="R270"/>
<pad name="59" x="93.98" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="60" x="96.52" y="35.56" drill="1.016" shape="octagon" rot="R270"/>
<pad name="61" x="93.98" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="62" x="96.52" y="33.02" drill="1.016" shape="octagon" rot="R270"/>
<pad name="63" x="93.98" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="64" x="96.52" y="30.48" drill="1.016" shape="octagon" rot="R270"/>
<pad name="65" x="93.98" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="66" x="96.52" y="27.94" drill="1.016" shape="octagon" rot="R270"/>
<pad name="67" x="93.98" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="68" x="96.52" y="25.4" drill="1.016" shape="octagon" rot="R270"/>
<pad name="69" x="93.98" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="70" x="96.52" y="22.86" drill="1.016" shape="octagon" rot="R270"/>
<pad name="71" x="93.98" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="72" x="96.52" y="20.32" drill="1.016" shape="octagon" rot="R270"/>
<pad name="73" x="93.98" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="74" x="96.52" y="17.78" drill="1.016" shape="octagon" rot="R270"/>
<pad name="75" x="93.98" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="76" x="96.52" y="15.24" drill="1.016" shape="octagon" rot="R270"/>
<pad name="77" x="93.98" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="78" x="96.52" y="12.7" drill="1.016" shape="octagon" rot="R270"/>
<pad name="79" x="93.98" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="80" x="96.52" y="10.16" drill="1.016" shape="octagon" rot="R270"/>
<pad name="81" x="93.98" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<pad name="82" x="96.52" y="7.62" drill="1.016" shape="octagon" rot="R270"/>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF5</text>
<text x="66.7976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF6</text>
<text x="69.3376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PF7</text>
<text x="74.4176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK0</text>
<text x="76.9576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK1</text>
<text x="79.4976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK2</text>
<text x="82.0376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK3</text>
<text x="84.5776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK4</text>
<text x="87.1176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK5</text>
<text x="89.6576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK6</text>
<text x="92.1976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PK7</text>
<text x="85.6024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD0</text>
<text x="83.0624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD1</text>
<text x="80.5224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD2</text>
<text x="77.9824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD3</text>
<text x="75.4424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH0</text>
<text x="72.9024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH1</text>
<text x="70.3624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PJ0</text>
<text x="67.8224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PJ1</text>
<text x="62.7424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE0</text>
<text x="60.2024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE1</text>
<text x="57.6624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE4</text>
<text x="55.1224" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE5</text>
<text x="52.5824" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PG5</text>
<text x="50.0424" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PE3</text>
<text x="47.5024" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH3</text>
<text x="44.9624" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH4</text>
<text x="41.1524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH5</text>
<text x="36.0724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB4</text>
<text x="33.5324" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB5</text>
<text x="30.9924" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB6</text>
<text x="28.4524" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB7</text>
<text x="38.6124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PH6</text>
<text x="25.9124" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="23.3724" y="48.5272" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="91.5802" y="30.9836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC1</text>
<text x="91.5802" y="33.5236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC3</text>
<text x="91.5802" y="36.0636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC5</text>
<text x="91.5802" y="38.6036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PC7</text>
<text x="91.5802" y="41.1436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA6</text>
<text x="91.5802" y="43.6836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA4</text>
<text x="91.5802" y="46.2236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA2</text>
<text x="91.5802" y="48.7636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PA0</text>
<text x="91.5802" y="10.6636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PB1</text>
<text x="91.5802" y="13.2036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PB3</text>
<text x="91.5802" y="15.7436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL1</text>
<text x="91.5802" y="18.2836" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL3</text>
<text x="98.1578" y="22.1024" size="1.016" layer="48" font="vector" ratio="10">PL6</text>
<text x="91.5802" y="23.3636" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL7</text>
<text x="91.5802" y="25.9036" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PG1</text>
<text x="91.5802" y="28.4436" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PD7</text>
<text x="98.1578" y="37.3424" size="1.016" layer="48" font="vector" ratio="10">PC6</text>
<text x="98.1578" y="34.8024" size="1.016" layer="48" font="vector" ratio="10">PC4</text>
<text x="98.1578" y="32.2624" size="1.016" layer="48" font="vector" ratio="10">PC2</text>
<text x="98.1578" y="29.7224" size="1.016" layer="48" font="vector" ratio="10">PC0</text>
<text x="98.1578" y="27.1824" size="1.016" layer="48" font="vector" ratio="10">PG2</text>
<text x="98.1578" y="24.6424" size="1.016" layer="48" font="vector" ratio="10">PG0</text>
<text x="91.5802" y="20.8236" size="1.016" layer="48" font="vector" ratio="10" rot="R180">PL5</text>
<text x="98.1578" y="19.5624" size="1.016" layer="48" font="vector" ratio="10">PL4</text>
<text x="98.1578" y="17.0224" size="1.016" layer="48" font="vector" ratio="10">PL2</text>
<text x="98.1578" y="14.4824" size="1.016" layer="48" font="vector" ratio="10">PL0</text>
<text x="98.1578" y="11.9424" size="1.016" layer="48" font="vector" ratio="10">PB2</text>
<text x="98.1578" y="9.4024" size="1.016" layer="48" font="vector" ratio="10">PB0</text>
<text x="98.1578" y="6.8624" size="1.016" layer="48" font="vector" ratio="10">GND</text>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<rectangle x1="68.326" y1="2.286" x2="68.834" y2="2.794" layer="51"/>
<rectangle x1="65.786" y1="2.286" x2="66.294" y2="2.794" layer="51"/>
<rectangle x1="86.106" y1="2.286" x2="86.614" y2="2.794" layer="51"/>
<rectangle x1="83.566" y1="2.286" x2="84.074" y2="2.794" layer="51"/>
<rectangle x1="81.026" y1="2.286" x2="81.534" y2="2.794" layer="51"/>
<rectangle x1="78.486" y1="2.286" x2="78.994" y2="2.794" layer="51"/>
<rectangle x1="75.946" y1="2.286" x2="76.454" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="2.286" x2="73.914" y2="2.794" layer="51"/>
<rectangle x1="91.186" y1="2.286" x2="91.694" y2="2.794" layer="51"/>
<rectangle x1="88.646" y1="2.286" x2="89.154" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="50.546" x2="73.914" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="75.946" y1="50.546" x2="76.454" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="78.486" y1="50.546" x2="78.994" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="81.026" y1="50.546" x2="81.534" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="83.566" y1="50.546" x2="84.074" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="86.106" y1="50.546" x2="86.614" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="68.326" y1="50.546" x2="68.834" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="70.866" y1="50.546" x2="71.374" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="28.956" y1="50.546" x2="29.464" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="31.496" y1="50.546" x2="32.004" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="34.036" y1="50.546" x2="34.544" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="36.576" y1="50.546" x2="37.084" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="39.116" y1="50.546" x2="39.624" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="41.656" y1="50.546" x2="42.164" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="23.876" y1="50.546" x2="24.384" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="26.416" y1="50.546" x2="26.924" y2="51.054" layer="51" rot="R180"/>
<rectangle x1="93.726" y1="50.546" x2="94.234" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="50.546" x2="96.774" y2="51.054" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="48.006" x2="96.774" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="48.006" x2="94.234" y2="48.514" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="45.466" x2="96.774" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="45.466" x2="94.234" y2="45.974" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="42.926" x2="96.774" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="40.386" x2="96.774" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="37.846" x2="96.774" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="42.926" x2="94.234" y2="43.434" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="40.386" x2="94.234" y2="40.894" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="37.846" x2="94.234" y2="38.354" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="35.306" x2="96.774" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="35.306" x2="94.234" y2="35.814" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="32.766" x2="96.774" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="32.766" x2="94.234" y2="33.274" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="30.226" x2="96.774" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="30.226" x2="94.234" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="27.686" x2="96.774" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="27.686" x2="94.234" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="25.146" x2="96.774" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="25.146" x2="94.234" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="22.606" x2="96.774" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="22.606" x2="94.234" y2="23.114" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="20.066" x2="96.774" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="20.066" x2="94.234" y2="20.574" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="17.526" x2="96.774" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="17.526" x2="94.234" y2="18.034" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="14.986" x2="96.774" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="14.986" x2="94.234" y2="15.494" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="12.446" x2="96.774" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="12.446" x2="94.234" y2="12.954" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="9.906" x2="96.774" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="9.906" x2="94.234" y2="10.414" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="7.366" x2="96.774" y2="7.874" layer="51" rot="R270"/>
<rectangle x1="93.726" y1="7.366" x2="94.234" y2="7.874" layer="51" rot="R270"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="15.24" y="2.54" drill="3.2"/>
<hole x="90.17" y="50.8" drill="3.2"/>
<hole x="96.52" y="2.54" drill="3.2"/>
</package>
</packages>
<symbols>
<symbol name="MEGAARDUINO_1">
<wire x1="-27.94" y1="68.58" x2="27.94" y2="68.58" width="0.254" layer="94"/>
<wire x1="27.94" y1="68.58" x2="27.94" y2="-53.34" width="0.254" layer="94"/>
<wire x1="27.94" y1="-53.34" x2="-27.94" y2="-53.34" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-53.34" x2="-27.94" y2="68.58" width="0.254" layer="94"/>
<text x="-27.94" y="69.85" size="1.6764" layer="95">&gt;Name</text>
<text x="-3.048" y="0.508" size="1.778" layer="94">Mega</text>
<text x="-4.318" y="-2.794" size="1.778" layer="94">Arduino</text>
<pin name="(MISO/PCINT3)PB3" x="33.02" y="33.02" length="middle" rot="R180"/>
<pin name="(OC2A/PCINT4)PB4" x="33.02" y="30.48" length="middle" rot="R180"/>
<pin name="(OC1A/PCINT5)PB5" x="33.02" y="27.94" length="middle" rot="R180"/>
<pin name="(OC1B/PCINT6)PB6" x="33.02" y="25.4" length="middle" rot="R180"/>
<pin name="(OC0A/OC1C/PCINT7)PB7" x="33.02" y="22.86" length="middle" rot="R180"/>
<pin name="(AD7)PA7" x="33.02" y="45.72" length="middle" rot="R180"/>
<pin name="(AD6)PA6" x="33.02" y="48.26" length="middle" rot="R180"/>
<pin name="(AD5)PA5" x="33.02" y="50.8" length="middle" rot="R180"/>
<pin name="(AD4)PA4" x="33.02" y="53.34" length="middle" rot="R180"/>
<pin name="(AD3)PA3" x="33.02" y="55.88" length="middle" rot="R180"/>
<pin name="(AD2)PA2" x="33.02" y="58.42" length="middle" rot="R180"/>
<pin name="(AD1)PA1" x="33.02" y="60.96" length="middle" rot="R180"/>
<pin name="(AD0)PA0" x="33.02" y="63.5" length="middle" rot="R180"/>
<pin name="GND@1" x="-7.62" y="-58.42" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@2" x="-2.54" y="-58.42" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@3" x="2.54" y="-58.42" length="middle" direction="pwr" rot="R90"/>
<pin name="AREF" x="-33.02" y="58.42" length="middle"/>
<pin name="+5V@1" x="-12.7" y="73.66" length="middle" direction="pwr" rot="R270"/>
<pin name="+3V3" x="5.08" y="73.66" length="middle" direction="pwr" rot="R270"/>
<pin name="+VIN" x="12.7" y="73.66" length="middle" direction="pwr" rot="R270"/>
<pin name="PF0(ADC0)" x="-33.02" y="-30.48" length="middle"/>
<pin name="PF4(ADC4/TCK)" x="-33.02" y="-40.64" length="middle"/>
<pin name="PF3(ADC3)" x="-33.02" y="-38.1" length="middle"/>
<pin name="PF2(ADC2)" x="-33.02" y="-35.56" length="middle"/>
<pin name="PF1(ADC1)" x="-33.02" y="-33.02" length="middle"/>
<pin name="PF5(ADC5/TMS)" x="-33.02" y="-43.18" length="middle"/>
<pin name="!RESET" x="-33.02" y="63.5" length="middle" function="dot"/>
<pin name="PF6(ADC6/TDO)" x="-33.02" y="-45.72" length="middle"/>
<pin name="PF7(ADC7/TDI)" x="-33.02" y="-48.26" length="middle"/>
<pin name="PH0(RXD2)" x="-33.02" y="0" length="middle"/>
<pin name="PH1(TXD2)" x="-33.02" y="-2.54" length="middle"/>
<pin name="PH4(OC4B)" x="-33.02" y="-7.62" length="middle"/>
<pin name="PH5(OC4C)" x="-33.02" y="-10.16" length="middle"/>
<pin name="PH6(OC2B)" x="-33.02" y="-12.7" length="middle"/>
<pin name="PJ0(RXD3/PCINT9)" x="-33.02" y="7.62" length="middle"/>
<pin name="PJ1(TXD3/PCINT10)" x="-33.02" y="5.08" length="middle"/>
<pin name="PK0(ADC8/PCINT16)" x="-33.02" y="30.48" length="middle"/>
<pin name="PK1(ADC9/PCINT17)" x="-33.02" y="27.94" length="middle"/>
<pin name="PK2(ADC10/PCINT18)" x="-33.02" y="25.4" length="middle"/>
<pin name="PK3(ADC11/PCINT19)" x="-33.02" y="22.86" length="middle"/>
<pin name="PK4(ADC12/PCINT20)" x="-33.02" y="20.32" length="middle"/>
<pin name="PK5(ADC13/PCINT21)" x="-33.02" y="17.78" length="middle"/>
<pin name="PK6(ADC14/PCINT22)" x="-33.02" y="15.24" length="middle"/>
<pin name="PK7(ADC15/PCINT23)" x="-33.02" y="12.7" length="middle"/>
<pin name="(SCK/PCINT1)PB1" x="33.02" y="38.1" length="middle" rot="R180"/>
<pin name="(SS/PCINT0)PB0" x="33.02" y="40.64" length="middle" rot="R180"/>
<pin name="(A8)PC0" x="33.02" y="17.78" length="middle" rot="R180"/>
<pin name="(A9)PC1" x="33.02" y="15.24" length="middle" rot="R180"/>
<pin name="(A10)PC2" x="33.02" y="12.7" length="middle" rot="R180"/>
<pin name="(A11)PC3" x="33.02" y="10.16" length="middle" rot="R180"/>
<pin name="(A12)PC4" x="33.02" y="7.62" length="middle" rot="R180"/>
<pin name="(A13)PC5" x="33.02" y="5.08" length="middle" rot="R180"/>
<pin name="(A14)PC6" x="33.02" y="2.54" length="middle" rot="R180"/>
<pin name="(A15)PC7" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="(SCL/INT0)PD0" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="(SDA/INT1)PD1" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="(RXD1/INT2)PD2" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="(TXD1/INT3)PD3" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="(T0)PD7" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="(RXD0/PCIN8)PE0" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="(TXD0)PE1" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="(OC3A/AIN1)PE3" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="(OC3B/AIN4)PE4" x="33.02" y="-27.94" length="middle" rot="R180"/>
<pin name="(OC3C/INT5)PE5" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="PG0(!WR!)" x="-33.02" y="-17.78" length="middle"/>
<pin name="PG1(!RD!)" x="-33.02" y="-20.32" length="middle"/>
<pin name="PG2(ALE)" x="-33.02" y="-22.86" length="middle"/>
<pin name="PG5(OC0B)" x="-33.02" y="-25.4" length="middle"/>
<pin name="PL0(ICP4)" x="-33.02" y="53.34" length="middle"/>
<pin name="PL1(ICP5)" x="-33.02" y="50.8" length="middle"/>
<pin name="PL2(T5)" x="-33.02" y="48.26" length="middle"/>
<pin name="PL3(OC5A)" x="-33.02" y="45.72" length="middle"/>
<pin name="PL4(OC5B)" x="-33.02" y="43.18" length="middle"/>
<pin name="PL5(OC5C)" x="-33.02" y="40.64" length="middle"/>
<pin name="PL6" x="-33.02" y="38.1" length="middle"/>
<pin name="PL7" x="-33.02" y="35.56" length="middle"/>
<pin name="(MOSI/PCINT2)PB2" x="33.02" y="35.56" length="middle" rot="R180"/>
<pin name="PH3(OC4A)" x="-33.02" y="-5.08" length="middle"/>
<pin name="+5V@2" x="-7.62" y="73.66" length="middle" direction="pwr" rot="R270"/>
<pin name="+5V@3" x="-2.54" y="73.66" length="middle" direction="pwr" rot="R270"/>
<pin name="GND@4" x="7.62" y="-58.42" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@5" x="12.7" y="-58.42" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGAARDUINO_1" prefix="IC" uservalue="yes">
<description>The Arduino Mega is a microcontroller board based on the ATmega1280.&lt;br&gt;&lt;br&gt;
- 54 digital input/output pins (of which 14 can be used as PWM outputs)&lt;br&gt;
- 16 analog inputs&lt;br&gt;
- 4 UARTs (hardware serial ports)&lt;br&gt;
- 16 MHz crystal oscillator&lt;br&gt;
- USB connection&lt;br&gt;
- power jack&lt;br&gt;
- ICSP header&lt;br&gt;
- reset button&lt;br&gt;&lt;br&gt;
 It contains everything needed to support the microcontroller; simply connect it to a computer with a USB cable or power it with a AC-to-DC adapter or battery to get started.&lt;br&gt;
The Mega is compatible with most shields designed for the Arduino Duemilanove or Diecimila.
&lt;br&gt;&lt;br&gt;
http://arduino.cc/en/Main/ArduinoBoardMega</description>
<gates>
<gate name="G$1" symbol="MEGAARDUINO_1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MEGA_ARDUINO">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="(A10)PC2" pad="62"/>
<connect gate="G$1" pin="(A11)PC3" pad="61"/>
<connect gate="G$1" pin="(A12)PC4" pad="60"/>
<connect gate="G$1" pin="(A13)PC5" pad="59"/>
<connect gate="G$1" pin="(A14)PC6" pad="58"/>
<connect gate="G$1" pin="(A15)PC7" pad="57"/>
<connect gate="G$1" pin="(A8)PC0" pad="64"/>
<connect gate="G$1" pin="(A9)PC1" pad="63"/>
<connect gate="G$1" pin="(AD0)PA0" pad="49"/>
<connect gate="G$1" pin="(AD1)PA1" pad="50"/>
<connect gate="G$1" pin="(AD2)PA2" pad="51"/>
<connect gate="G$1" pin="(AD3)PA3" pad="52"/>
<connect gate="G$1" pin="(AD4)PA4" pad="53"/>
<connect gate="G$1" pin="(AD5)PA5" pad="54"/>
<connect gate="G$1" pin="(AD6)PA6" pad="55"/>
<connect gate="G$1" pin="(AD7)PA7" pad="56"/>
<connect gate="G$1" pin="(MISO/PCINT3)PB3" pad="77"/>
<connect gate="G$1" pin="(MOSI/PCINT2)PB2" pad="78"/>
<connect gate="G$1" pin="(OC0A/OC1C/PCINT7)PB7" pad="44"/>
<connect gate="G$1" pin="(OC1A/PCINT5)PB5" pad="42"/>
<connect gate="G$1" pin="(OC1B/PCINT6)PB6" pad="43"/>
<connect gate="G$1" pin="(OC2A/PCINT4)PB4" pad="41"/>
<connect gate="G$1" pin="(OC3A/AIN1)PE3" pad="36"/>
<connect gate="G$1" pin="(OC3B/AIN4)PE4" pad="33"/>
<connect gate="G$1" pin="(OC3C/INT5)PE5" pad="34"/>
<connect gate="G$1" pin="(RXD0/PCIN8)PE0" pad="31"/>
<connect gate="G$1" pin="(RXD1/INT2)PD2" pad="25"/>
<connect gate="G$1" pin="(SCK/PCINT1)PB1" pad="79"/>
<connect gate="G$1" pin="(SCL/INT0)PD0" pad="23"/>
<connect gate="G$1" pin="(SDA/INT1)PD1" pad="24"/>
<connect gate="G$1" pin="(SS/PCINT0)PB0" pad="80"/>
<connect gate="G$1" pin="(T0)PD7" pad="65"/>
<connect gate="G$1" pin="(TXD0)PE1" pad="32"/>
<connect gate="G$1" pin="(TXD1/INT3)PD3" pad="26"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V@1" pad="3"/>
<connect gate="G$1" pin="+5V@2" pad="47"/>
<connect gate="G$1" pin="+5V@3" pad="48"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="AREF" pad="46"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="45"/>
<connect gate="G$1" pin="GND@4" pad="81"/>
<connect gate="G$1" pin="GND@5" pad="82"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="7"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="8"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="9"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="10"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="11"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="12"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="13"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="14"/>
<connect gate="G$1" pin="PG0(!WR!)" pad="68"/>
<connect gate="G$1" pin="PG1(!RD!)" pad="67"/>
<connect gate="G$1" pin="PG2(ALE)" pad="66"/>
<connect gate="G$1" pin="PG5(OC0B)" pad="35"/>
<connect gate="G$1" pin="PH0(RXD2)" pad="27"/>
<connect gate="G$1" pin="PH1(TXD2)" pad="28"/>
<connect gate="G$1" pin="PH3(OC4A)" pad="37"/>
<connect gate="G$1" pin="PH4(OC4B)" pad="38"/>
<connect gate="G$1" pin="PH5(OC4C)" pad="39"/>
<connect gate="G$1" pin="PH6(OC2B)" pad="40"/>
<connect gate="G$1" pin="PJ0(RXD3/PCINT9)" pad="29"/>
<connect gate="G$1" pin="PJ1(TXD3/PCINT10)" pad="30"/>
<connect gate="G$1" pin="PK0(ADC8/PCINT16)" pad="15"/>
<connect gate="G$1" pin="PK1(ADC9/PCINT17)" pad="16"/>
<connect gate="G$1" pin="PK2(ADC10/PCINT18)" pad="17"/>
<connect gate="G$1" pin="PK3(ADC11/PCINT19)" pad="18"/>
<connect gate="G$1" pin="PK4(ADC12/PCINT20)" pad="19"/>
<connect gate="G$1" pin="PK5(ADC13/PCINT21)" pad="20"/>
<connect gate="G$1" pin="PK6(ADC14/PCINT22)" pad="21"/>
<connect gate="G$1" pin="PK7(ADC15/PCINT23)" pad="22"/>
<connect gate="G$1" pin="PL0(ICP4)" pad="76"/>
<connect gate="G$1" pin="PL1(ICP5)" pad="75"/>
<connect gate="G$1" pin="PL2(T5)" pad="74"/>
<connect gate="G$1" pin="PL3(OC5A)" pad="73"/>
<connect gate="G$1" pin="PL4(OC5B)" pad="72"/>
<connect gate="G$1" pin="PL5(OC5C)" pad="71"/>
<connect gate="G$1" pin="PL6" pad="70"/>
<connect gate="G$1" pin="PL7" pad="69"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1" package="MEGA_ARDUINO_1">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="(A10)PC2" pad="62"/>
<connect gate="G$1" pin="(A11)PC3" pad="61"/>
<connect gate="G$1" pin="(A12)PC4" pad="60"/>
<connect gate="G$1" pin="(A13)PC5" pad="59"/>
<connect gate="G$1" pin="(A14)PC6" pad="58"/>
<connect gate="G$1" pin="(A15)PC7" pad="57"/>
<connect gate="G$1" pin="(A8)PC0" pad="64"/>
<connect gate="G$1" pin="(A9)PC1" pad="63"/>
<connect gate="G$1" pin="(AD0)PA0" pad="49"/>
<connect gate="G$1" pin="(AD1)PA1" pad="50"/>
<connect gate="G$1" pin="(AD2)PA2" pad="51"/>
<connect gate="G$1" pin="(AD3)PA3" pad="52"/>
<connect gate="G$1" pin="(AD4)PA4" pad="53"/>
<connect gate="G$1" pin="(AD5)PA5" pad="54"/>
<connect gate="G$1" pin="(AD6)PA6" pad="55"/>
<connect gate="G$1" pin="(AD7)PA7" pad="56"/>
<connect gate="G$1" pin="(MISO/PCINT3)PB3" pad="77"/>
<connect gate="G$1" pin="(MOSI/PCINT2)PB2" pad="78"/>
<connect gate="G$1" pin="(OC0A/OC1C/PCINT7)PB7" pad="44"/>
<connect gate="G$1" pin="(OC1A/PCINT5)PB5" pad="42"/>
<connect gate="G$1" pin="(OC1B/PCINT6)PB6" pad="43"/>
<connect gate="G$1" pin="(OC2A/PCINT4)PB4" pad="41"/>
<connect gate="G$1" pin="(OC3A/AIN1)PE3" pad="36"/>
<connect gate="G$1" pin="(OC3B/AIN4)PE4" pad="33"/>
<connect gate="G$1" pin="(OC3C/INT5)PE5" pad="34"/>
<connect gate="G$1" pin="(RXD0/PCIN8)PE0" pad="31"/>
<connect gate="G$1" pin="(RXD1/INT2)PD2" pad="25"/>
<connect gate="G$1" pin="(SCK/PCINT1)PB1" pad="79"/>
<connect gate="G$1" pin="(SCL/INT0)PD0" pad="23"/>
<connect gate="G$1" pin="(SDA/INT1)PD1" pad="24"/>
<connect gate="G$1" pin="(SS/PCINT0)PB0" pad="80"/>
<connect gate="G$1" pin="(T0)PD7" pad="65"/>
<connect gate="G$1" pin="(TXD0)PE1" pad="32"/>
<connect gate="G$1" pin="(TXD1/INT3)PD3" pad="26"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V@1" pad="3"/>
<connect gate="G$1" pin="+5V@2" pad="47"/>
<connect gate="G$1" pin="+5V@3" pad="48"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="AREF" pad="46"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="45"/>
<connect gate="G$1" pin="GND@4" pad="81"/>
<connect gate="G$1" pin="GND@5" pad="82"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="7"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="8"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="9"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="10"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="11"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="12"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="13"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="14"/>
<connect gate="G$1" pin="PG0(!WR!)" pad="68"/>
<connect gate="G$1" pin="PG1(!RD!)" pad="67"/>
<connect gate="G$1" pin="PG2(ALE)" pad="66"/>
<connect gate="G$1" pin="PG5(OC0B)" pad="35"/>
<connect gate="G$1" pin="PH0(RXD2)" pad="27"/>
<connect gate="G$1" pin="PH1(TXD2)" pad="28"/>
<connect gate="G$1" pin="PH3(OC4A)" pad="37"/>
<connect gate="G$1" pin="PH4(OC4B)" pad="38"/>
<connect gate="G$1" pin="PH5(OC4C)" pad="39"/>
<connect gate="G$1" pin="PH6(OC2B)" pad="40"/>
<connect gate="G$1" pin="PJ0(RXD3/PCINT9)" pad="29"/>
<connect gate="G$1" pin="PJ1(TXD3/PCINT10)" pad="30"/>
<connect gate="G$1" pin="PK0(ADC8/PCINT16)" pad="15"/>
<connect gate="G$1" pin="PK1(ADC9/PCINT17)" pad="16"/>
<connect gate="G$1" pin="PK2(ADC10/PCINT18)" pad="17"/>
<connect gate="G$1" pin="PK3(ADC11/PCINT19)" pad="18"/>
<connect gate="G$1" pin="PK4(ADC12/PCINT20)" pad="19"/>
<connect gate="G$1" pin="PK5(ADC13/PCINT21)" pad="20"/>
<connect gate="G$1" pin="PK6(ADC14/PCINT22)" pad="21"/>
<connect gate="G$1" pin="PK7(ADC15/PCINT23)" pad="22"/>
<connect gate="G$1" pin="PL0(ICP4)" pad="76"/>
<connect gate="G$1" pin="PL1(ICP5)" pad="75"/>
<connect gate="G$1" pin="PL2(T5)" pad="74"/>
<connect gate="G$1" pin="PL3(OC5A)" pad="73"/>
<connect gate="G$1" pin="PL4(OC5B)" pad="72"/>
<connect gate="G$1" pin="PL5(OC5C)" pad="71"/>
<connect gate="G$1" pin="PL6" pad="70"/>
<connect gate="G$1" pin="PL7" pad="69"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2" package="MEGA_ARDUINO_2">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="(A10)PC2" pad="62"/>
<connect gate="G$1" pin="(A11)PC3" pad="61"/>
<connect gate="G$1" pin="(A12)PC4" pad="60"/>
<connect gate="G$1" pin="(A13)PC5" pad="59"/>
<connect gate="G$1" pin="(A14)PC6" pad="58"/>
<connect gate="G$1" pin="(A15)PC7" pad="57"/>
<connect gate="G$1" pin="(A8)PC0" pad="64"/>
<connect gate="G$1" pin="(A9)PC1" pad="63"/>
<connect gate="G$1" pin="(AD0)PA0" pad="49"/>
<connect gate="G$1" pin="(AD1)PA1" pad="50"/>
<connect gate="G$1" pin="(AD2)PA2" pad="51"/>
<connect gate="G$1" pin="(AD3)PA3" pad="52"/>
<connect gate="G$1" pin="(AD4)PA4" pad="53"/>
<connect gate="G$1" pin="(AD5)PA5" pad="54"/>
<connect gate="G$1" pin="(AD6)PA6" pad="55"/>
<connect gate="G$1" pin="(AD7)PA7" pad="56"/>
<connect gate="G$1" pin="(MISO/PCINT3)PB3" pad="77"/>
<connect gate="G$1" pin="(MOSI/PCINT2)PB2" pad="78"/>
<connect gate="G$1" pin="(OC0A/OC1C/PCINT7)PB7" pad="44"/>
<connect gate="G$1" pin="(OC1A/PCINT5)PB5" pad="42"/>
<connect gate="G$1" pin="(OC1B/PCINT6)PB6" pad="43"/>
<connect gate="G$1" pin="(OC2A/PCINT4)PB4" pad="41"/>
<connect gate="G$1" pin="(OC3A/AIN1)PE3" pad="36"/>
<connect gate="G$1" pin="(OC3B/AIN4)PE4" pad="33"/>
<connect gate="G$1" pin="(OC3C/INT5)PE5" pad="34"/>
<connect gate="G$1" pin="(RXD0/PCIN8)PE0" pad="31"/>
<connect gate="G$1" pin="(RXD1/INT2)PD2" pad="25"/>
<connect gate="G$1" pin="(SCK/PCINT1)PB1" pad="79"/>
<connect gate="G$1" pin="(SCL/INT0)PD0" pad="23"/>
<connect gate="G$1" pin="(SDA/INT1)PD1" pad="24"/>
<connect gate="G$1" pin="(SS/PCINT0)PB0" pad="80"/>
<connect gate="G$1" pin="(T0)PD7" pad="65"/>
<connect gate="G$1" pin="(TXD0)PE1" pad="32"/>
<connect gate="G$1" pin="(TXD1/INT3)PD3" pad="26"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V@1" pad="3"/>
<connect gate="G$1" pin="+5V@2" pad="47"/>
<connect gate="G$1" pin="+5V@3" pad="48"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="AREF" pad="46"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="45"/>
<connect gate="G$1" pin="GND@4" pad="81"/>
<connect gate="G$1" pin="GND@5" pad="82"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="7"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="8"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="9"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="10"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="11"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="12"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="13"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="14"/>
<connect gate="G$1" pin="PG0(!WR!)" pad="68"/>
<connect gate="G$1" pin="PG1(!RD!)" pad="67"/>
<connect gate="G$1" pin="PG2(ALE)" pad="66"/>
<connect gate="G$1" pin="PG5(OC0B)" pad="35"/>
<connect gate="G$1" pin="PH0(RXD2)" pad="27"/>
<connect gate="G$1" pin="PH1(TXD2)" pad="28"/>
<connect gate="G$1" pin="PH3(OC4A)" pad="37"/>
<connect gate="G$1" pin="PH4(OC4B)" pad="38"/>
<connect gate="G$1" pin="PH5(OC4C)" pad="39"/>
<connect gate="G$1" pin="PH6(OC2B)" pad="40"/>
<connect gate="G$1" pin="PJ0(RXD3/PCINT9)" pad="29"/>
<connect gate="G$1" pin="PJ1(TXD3/PCINT10)" pad="30"/>
<connect gate="G$1" pin="PK0(ADC8/PCINT16)" pad="15"/>
<connect gate="G$1" pin="PK1(ADC9/PCINT17)" pad="16"/>
<connect gate="G$1" pin="PK2(ADC10/PCINT18)" pad="17"/>
<connect gate="G$1" pin="PK3(ADC11/PCINT19)" pad="18"/>
<connect gate="G$1" pin="PK4(ADC12/PCINT20)" pad="19"/>
<connect gate="G$1" pin="PK5(ADC13/PCINT21)" pad="20"/>
<connect gate="G$1" pin="PK6(ADC14/PCINT22)" pad="21"/>
<connect gate="G$1" pin="PK7(ADC15/PCINT23)" pad="22"/>
<connect gate="G$1" pin="PL0(ICP4)" pad="76"/>
<connect gate="G$1" pin="PL1(ICP5)" pad="75"/>
<connect gate="G$1" pin="PL2(T5)" pad="74"/>
<connect gate="G$1" pin="PL3(OC5A)" pad="73"/>
<connect gate="G$1" pin="PL4(OC5B)" pad="72"/>
<connect gate="G$1" pin="PL5(OC5C)" pad="71"/>
<connect gate="G$1" pin="PL6" pad="70"/>
<connect gate="G$1" pin="PL7" pad="69"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim">
<packages>
<package name="21-0042B_16">
<smd name="1" x="-4.6863" y="4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="2" x="-4.6863" y="3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="3" x="-4.6863" y="1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="4" x="-4.6863" y="0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="5" x="-4.6863" y="-0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="6" x="-4.6863" y="-1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="7" x="-4.6863" y="-3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="8" x="-4.6863" y="-4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="9" x="4.6863" y="-4.445" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="10" x="4.6863" y="-3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="11" x="4.6863" y="-1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="12" x="4.6863" y="-0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="13" x="4.6863" y="0.635" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="14" x="4.6863" y="1.905" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="15" x="4.6863" y="3.175" dx="1.9812" dy="0.5334" layer="1"/>
<smd name="16" x="4.6863" y="4.445" dx="1.9812" dy="0.5334" layer="1"/>
<wire x1="-3.7846" y1="4.2164" x2="-3.81" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="4.6736" x2="-5.334" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.6736" x2="-5.3086" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="4.191" x2="-3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="2.9464" x2="-3.81" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.4036" x2="-5.334" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="3.4036" x2="-5.3086" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="2.921" x2="-3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="1.6764" x2="-3.81" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.1336" x2="-5.334" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="2.1336" x2="-5.3086" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="1.651" x2="-3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.4064" x2="-3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.8636" x2="-5.3086" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.8636" x2="-5.3086" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.381" x2="-3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.8636" x2="-3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.4064" x2="-5.3086" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.4064" x2="-5.3086" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.889" x2="-3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.1336" x2="-3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-1.6764" x2="-5.3086" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-1.6764" x2="-5.3086" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.159" x2="-3.7846" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-3.4036" x2="-3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.9464" x2="-5.3086" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.9464" x2="-5.3086" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-3.429" x2="-3.7846" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.6736" x2="-3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.2164" x2="-5.3086" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.2164" x2="-5.3086" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.699" x2="-3.7846" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-4.2164" x2="3.81" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-4.6736" x2="5.334" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.6736" x2="5.3086" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-4.191" x2="3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-2.9464" x2="3.81" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.4036" x2="5.334" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-3.4036" x2="5.3086" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-2.921" x2="3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-1.6764" x2="3.81" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-2.1336" x2="5.334" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.1336" x2="5.3086" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-1.651" x2="3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.4064" x2="3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.8636" x2="5.3086" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.8636" x2="5.3086" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.381" x2="3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.8636" x2="3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.4064" x2="5.3086" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.4064" x2="5.3086" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.889" x2="3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.1336" x2="3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="1.6764" x2="5.3086" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="1.6764" x2="5.3086" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.159" x2="3.7846" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="3.4036" x2="3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.9464" x2="5.3086" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.9464" x2="5.3086" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="3.429" x2="3.7846" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.6736" x2="3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.2164" x2="5.3086" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.2164" x2="5.3086" y2="4.699" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.699" x2="3.7846" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-5.2324" x2="3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-5.2324" x2="3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="5.2324" x2="-0.3048" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.2324" x2="-3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="5.2324" x2="-3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2324" width="0.1524" layer="51" curve="-180"/>
<text x="-3.9878" y="3.9116" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.9116" y1="-5.3848" x2="3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="-5.3848" x2="3.9116" y2="-5.0546" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.3848" x2="-3.9116" y2="5.3848" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="5.3848" x2="-3.9116" y2="5.0546" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="-5.0546" x2="-3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.0546" x2="3.9116" y2="5.3848" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="6.1849" y="-2.9845"/>
<vertex x="6.1849" y="-3.3655"/>
<vertex x="5.9309" y="-3.3655"/>
<vertex x="5.9309" y="-2.9845"/>
</polygon>
<text x="-5.5118" y="4.8514" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-5.9436" y1="-4.9784" x2="-5.9436" y2="4.9784" width="0.1524" layer="39"/>
<wire x1="-5.9436" y1="4.9784" x2="-4.064" y2="4.9784" width="0.1524" layer="39"/>
<wire x1="-4.064" y1="4.9784" x2="-4.064" y2="5.4864" width="0.1524" layer="39"/>
<wire x1="-4.064" y1="5.4864" x2="4.064" y2="5.4864" width="0.1524" layer="39"/>
<wire x1="4.064" y1="5.4864" x2="4.064" y2="4.9784" width="0.1524" layer="39"/>
<wire x1="5.9436" y1="4.9784" x2="4.064" y2="4.9784" width="0.1524" layer="39"/>
<wire x1="5.9436" y1="4.9784" x2="5.9436" y2="-4.9784" width="0.1524" layer="39"/>
<wire x1="5.9436" y1="-4.9784" x2="4.064" y2="-4.9784" width="0.1524" layer="39"/>
<wire x1="4.064" y1="-4.9784" x2="4.064" y2="-5.4864" width="0.1524" layer="39"/>
<wire x1="4.064" y1="-5.4864" x2="-4.064" y2="-5.4864" width="0.1524" layer="39"/>
<wire x1="-4.064" y1="-5.4864" x2="-4.064" y2="-4.9784" width="0.1524" layer="39"/>
<wire x1="-5.9436" y1="-4.9784" x2="-4.064" y2="-4.9784" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-5.9309" y="-4.9657"/>
<vertex x="-5.9309" y="4.9657"/>
<vertex x="-4.0513" y="4.9657"/>
<vertex x="-4.0513" y="5.4991"/>
<vertex x="4.0513" y="5.4991"/>
<vertex x="4.0513" y="4.9657"/>
<vertex x="5.9309" y="4.9657"/>
<vertex x="5.9309" y="-4.9657"/>
<vertex x="4.0513" y="-4.9657"/>
<vertex x="4.0513" y="-5.4991"/>
<vertex x="-4.0513" y="-5.4991"/>
<vertex x="-4.0513" y="-4.9657"/>
</polygon>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="21-0042B_16-M">
<smd name="1" x="-4.7371" y="4.445" dx="2.286" dy="0.5842" layer="1"/>
<smd name="2" x="-4.7371" y="3.175" dx="2.286" dy="0.5842" layer="1"/>
<smd name="3" x="-4.7371" y="1.905" dx="2.286" dy="0.5842" layer="1"/>
<smd name="4" x="-4.7371" y="0.635" dx="2.286" dy="0.5842" layer="1"/>
<smd name="5" x="-4.7371" y="-0.635" dx="2.286" dy="0.5842" layer="1"/>
<smd name="6" x="-4.7371" y="-1.905" dx="2.286" dy="0.5842" layer="1"/>
<smd name="7" x="-4.7371" y="-3.175" dx="2.286" dy="0.5842" layer="1"/>
<smd name="8" x="-4.7371" y="-4.445" dx="2.286" dy="0.5842" layer="1"/>
<smd name="9" x="4.7371" y="-4.445" dx="2.286" dy="0.5842" layer="1"/>
<smd name="10" x="4.7371" y="-3.175" dx="2.286" dy="0.5842" layer="1"/>
<smd name="11" x="4.7371" y="-1.905" dx="2.286" dy="0.5842" layer="1"/>
<smd name="12" x="4.7371" y="-0.635" dx="2.286" dy="0.5842" layer="1"/>
<smd name="13" x="4.7371" y="0.635" dx="2.286" dy="0.5842" layer="1"/>
<smd name="14" x="4.7371" y="1.905" dx="2.286" dy="0.5842" layer="1"/>
<smd name="15" x="4.7371" y="3.175" dx="2.286" dy="0.5842" layer="1"/>
<smd name="16" x="4.7371" y="4.445" dx="2.286" dy="0.5842" layer="1"/>
<wire x1="-3.7846" y1="4.2164" x2="-3.81" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="4.6736" x2="-5.334" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.6736" x2="-5.3086" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="4.191" x2="-3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="2.9464" x2="-3.81" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.4036" x2="-5.334" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="3.4036" x2="-5.3086" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="2.921" x2="-3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="1.6764" x2="-3.81" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.1336" x2="-5.334" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="2.1336" x2="-5.3086" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="1.651" x2="-3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.4064" x2="-3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.8636" x2="-5.3086" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.8636" x2="-5.3086" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.381" x2="-3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.8636" x2="-3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.4064" x2="-5.3086" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.4064" x2="-5.3086" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.889" x2="-3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.1336" x2="-3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-1.6764" x2="-5.3086" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-1.6764" x2="-5.3086" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.159" x2="-3.7846" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-3.4036" x2="-3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.9464" x2="-5.3086" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.9464" x2="-5.3086" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-3.429" x2="-3.7846" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.6736" x2="-3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.2164" x2="-5.3086" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.2164" x2="-5.3086" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.699" x2="-3.7846" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-4.2164" x2="3.81" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-4.6736" x2="5.334" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.6736" x2="5.3086" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-4.191" x2="3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-2.9464" x2="3.81" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.4036" x2="5.334" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-3.4036" x2="5.3086" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-2.921" x2="3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-1.6764" x2="3.81" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-2.1336" x2="5.334" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.1336" x2="5.3086" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-1.651" x2="3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.4064" x2="3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.8636" x2="5.3086" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.8636" x2="5.3086" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.381" x2="3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.8636" x2="3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.4064" x2="5.3086" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.4064" x2="5.3086" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.889" x2="3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.1336" x2="3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="1.6764" x2="5.3086" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="1.6764" x2="5.3086" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.159" x2="3.7846" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="3.4036" x2="3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.9464" x2="5.3086" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.9464" x2="5.3086" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="3.429" x2="3.7846" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.6736" x2="3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.2164" x2="5.3086" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.2164" x2="5.3086" y2="4.699" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.699" x2="3.7846" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-5.2324" x2="3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-5.2324" x2="3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="5.2324" x2="-0.3048" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.2324" x2="-3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="5.2324" x2="-3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2324" width="0.1524" layer="51" curve="-180"/>
<text x="-3.9878" y="3.9116" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.9116" y1="-5.3848" x2="3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="-5.3848" x2="3.9116" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.3848" x2="-3.9116" y2="5.3848" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="5.3848" x2="-3.9116" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="-5.08" x2="-3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.08" x2="3.9116" y2="5.3848" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="6.3881" y="-2.9845"/>
<vertex x="6.3881" y="-3.3655"/>
<vertex x="6.1341" y="-3.3655"/>
<vertex x="6.1341" y="-2.9845"/>
</polygon>
<text x="-5.5626" y="4.9022" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-6.4008" y1="-5.2324" x2="-6.4008" y2="5.2324" width="0.1524" layer="39"/>
<wire x1="-6.4008" y1="5.2324" x2="-4.318" y2="5.2324" width="0.1524" layer="39"/>
<wire x1="-4.318" y1="5.2324" x2="-4.318" y2="5.7404" width="0.1524" layer="39"/>
<wire x1="-4.318" y1="5.7404" x2="4.318" y2="5.7404" width="0.1524" layer="39"/>
<wire x1="4.318" y1="5.7404" x2="4.318" y2="5.2324" width="0.1524" layer="39"/>
<wire x1="6.4008" y1="5.2324" x2="4.318" y2="5.2324" width="0.1524" layer="39"/>
<wire x1="6.4008" y1="5.2324" x2="6.4008" y2="-5.2324" width="0.1524" layer="39"/>
<wire x1="6.4008" y1="-5.2324" x2="4.318" y2="-5.2324" width="0.1524" layer="39"/>
<wire x1="4.318" y1="-5.2324" x2="4.318" y2="-5.7404" width="0.1524" layer="39"/>
<wire x1="4.318" y1="-5.7404" x2="-4.318" y2="-5.7404" width="0.1524" layer="39"/>
<wire x1="-4.318" y1="-5.7404" x2="-4.318" y2="-5.2324" width="0.1524" layer="39"/>
<wire x1="-6.4008" y1="-5.2324" x2="-4.318" y2="-5.2324" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-6.3881" y="-5.2451"/>
<vertex x="-6.3881" y="5.2451"/>
<vertex x="-4.3053" y="5.2451"/>
<vertex x="-4.3053" y="5.7531"/>
<vertex x="4.3053" y="5.7531"/>
<vertex x="4.3053" y="5.2451"/>
<vertex x="6.3881" y="5.2451"/>
<vertex x="6.3881" y="-5.2451"/>
<vertex x="4.3053" y="-5.2451"/>
<vertex x="4.3053" y="-5.7531"/>
<vertex x="-4.3053" y="-5.7531"/>
<vertex x="-4.3053" y="-5.2451"/>
</polygon>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="21-0042B_16-L">
<smd name="1" x="-4.6355" y="4.445" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="2" x="-4.6355" y="3.175" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="3" x="-4.6355" y="1.905" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="4" x="-4.6355" y="0.635" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="5" x="-4.6355" y="-0.635" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="6" x="-4.6355" y="-1.905" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="7" x="-4.6355" y="-3.175" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="8" x="-4.6355" y="-4.445" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="9" x="4.6355" y="-4.445" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="10" x="4.6355" y="-3.175" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="11" x="4.6355" y="-1.905" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="12" x="4.6355" y="-0.635" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="13" x="4.6355" y="0.635" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="14" x="4.6355" y="1.905" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="15" x="4.6355" y="3.175" dx="1.6764" dy="0.4826" layer="1"/>
<smd name="16" x="4.6355" y="4.445" dx="1.6764" dy="0.4826" layer="1"/>
<wire x1="-3.7846" y1="4.2164" x2="-3.81" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="4.6736" x2="-5.334" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.6736" x2="-5.3086" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="4.191" x2="-3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="2.9464" x2="-3.81" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.4036" x2="-5.334" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="3.4036" x2="-5.3086" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="2.921" x2="-3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="1.6764" x2="-3.81" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="2.1336" x2="-5.334" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="2.1336" x2="-5.3086" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="1.651" x2="-3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.4064" x2="-3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="0.8636" x2="-5.3086" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.8636" x2="-5.3086" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="0.381" x2="-3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.8636" x2="-3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-0.4064" x2="-5.3086" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.4064" x2="-5.3086" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-0.889" x2="-3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.1336" x2="-3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-1.6764" x2="-5.3086" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-1.6764" x2="-5.3086" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.159" x2="-3.7846" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-3.4036" x2="-3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-2.9464" x2="-5.3086" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-2.9464" x2="-5.3086" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-3.429" x2="-3.7846" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.6736" x2="-3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7846" y1="-4.2164" x2="-5.3086" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.2164" x2="-5.3086" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-5.3086" y1="-4.699" x2="-3.7846" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-4.2164" x2="3.81" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-4.6736" x2="5.334" y2="-4.6736" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.6736" x2="5.3086" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-4.191" x2="3.7846" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-2.9464" x2="3.81" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.4036" x2="5.334" y2="-3.4036" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-3.4036" x2="5.3086" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-2.921" x2="3.7846" y2="-2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-1.6764" x2="3.81" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-2.1336" x2="5.334" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-2.1336" x2="5.3086" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-1.651" x2="3.7846" y2="-1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.4064" x2="3.7846" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="-0.8636" x2="5.3086" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.8636" x2="5.3086" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="-0.381" x2="3.7846" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.8636" x2="3.7846" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="0.4064" x2="5.3086" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.4064" x2="5.3086" y2="0.889" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="0.889" x2="3.7846" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.1336" x2="3.7846" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="1.6764" x2="5.3086" y2="1.6764" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="1.6764" x2="5.3086" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.159" x2="3.7846" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="3.4036" x2="3.7846" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="2.9464" x2="5.3086" y2="2.9464" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="2.9464" x2="5.3086" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="3.429" x2="3.7846" y2="3.4036" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.6736" x2="3.7846" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="3.7846" y1="4.2164" x2="5.3086" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.2164" x2="5.3086" y2="4.699" width="0.1524" layer="51"/>
<wire x1="5.3086" y1="4.699" x2="3.7846" y2="4.6736" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-5.2324" x2="3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-5.2324" x2="3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="3.81" y1="5.2324" x2="-0.3048" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.2324" x2="-3.81" y2="5.2324" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="5.2324" x2="-3.81" y2="-5.2324" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.2578" x2="-0.3048" y2="5.2324" width="0.1524" layer="51" curve="-180"/>
<text x="-3.9878" y="3.9116" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.9116" y1="-5.3848" x2="3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="-5.3848" x2="3.9116" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.3848" x2="-3.9116" y2="5.3848" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="5.3848" x2="-3.9116" y2="5.0292" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="-5.0292" x2="-3.9116" y2="-5.3848" width="0.1524" layer="21"/>
<wire x1="3.9116" y1="5.0292" x2="3.9116" y2="5.3848" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="5.9817" y="-2.9845"/>
<vertex x="5.9817" y="-3.3655"/>
<vertex x="5.7277" y="-3.3655"/>
<vertex x="5.7277" y="-2.9845"/>
</polygon>
<text x="-5.461" y="4.8006" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-5.588" y1="-4.7752" x2="-5.588" y2="4.7752" width="0.1524" layer="39"/>
<wire x1="-5.588" y1="4.7752" x2="-3.9116" y2="4.7752" width="0.1524" layer="39"/>
<wire x1="-3.9116" y1="4.7752" x2="-3.9116" y2="5.334" width="0.1524" layer="39"/>
<wire x1="-3.9116" y1="5.334" x2="3.9116" y2="5.334" width="0.1524" layer="39"/>
<wire x1="3.9116" y1="5.334" x2="3.9116" y2="4.7752" width="0.1524" layer="39"/>
<wire x1="5.588" y1="4.7752" x2="3.9116" y2="4.7752" width="0.1524" layer="39"/>
<wire x1="5.588" y1="4.7752" x2="5.588" y2="-4.7752" width="0.1524" layer="39"/>
<wire x1="5.588" y1="-4.7752" x2="3.9116" y2="-4.7752" width="0.1524" layer="39"/>
<wire x1="3.9116" y1="-4.7752" x2="3.9116" y2="-5.334" width="0.1524" layer="39"/>
<wire x1="3.9116" y1="-5.334" x2="-3.9116" y2="-5.334" width="0.1524" layer="39"/>
<wire x1="-3.9116" y1="-5.334" x2="-3.9116" y2="-4.7752" width="0.1524" layer="39"/>
<wire x1="-5.588" y1="-4.7752" x2="-3.9116" y2="-4.7752" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-5.5753" y="-4.7879"/>
<vertex x="-5.5753" y="4.7879"/>
<vertex x="-3.8989" y="4.7879"/>
<vertex x="-3.8989" y="5.3467"/>
<vertex x="3.8989" y="5.3467"/>
<vertex x="3.8989" y="4.7879"/>
<vertex x="5.5753" y="4.7879"/>
<vertex x="5.5753" y="-4.7879"/>
<vertex x="3.8989" y="-4.7879"/>
<vertex x="3.8989" y="-5.3467"/>
<vertex x="-3.8989" y="-5.3467"/>
<vertex x="-3.8989" y="-4.7879"/>
</polygon>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="DS3231S">
<pin name="32KHZ" x="2.54" y="0" length="middle" direction="pas"/>
<pin name="VCC" x="2.54" y="-2.54" length="middle" direction="pwr"/>
<pin name="!INT/SQW" x="2.54" y="-5.08" length="middle" direction="pas"/>
<pin name="!RST" x="2.54" y="-7.62" length="middle" direction="pas"/>
<pin name="NC_2" x="2.54" y="-10.16" length="middle" direction="pas"/>
<pin name="NC_3" x="2.54" y="-12.7" length="middle" direction="pas"/>
<pin name="NC_4" x="2.54" y="-15.24" length="middle" direction="pas"/>
<pin name="NC_5" x="2.54" y="-17.78" length="middle" direction="pas"/>
<pin name="NC_6" x="68.58" y="-17.78" length="middle" direction="pas" rot="R180"/>
<pin name="NC_7" x="68.58" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="NC_8" x="68.58" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="NC" x="68.58" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="68.58" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="VBAT" x="68.58" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="SDA" x="68.58" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="SCL" x="68.58" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="63.5" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="63.5" y1="-22.86" x2="63.5" y2="5.08" width="0.1524" layer="94"/>
<wire x1="63.5" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="30.8356" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="30.2006" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS3231S" prefix="U">
<gates>
<gate name="A" symbol="DS3231S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="21-0042B_16">
<connects>
<connect gate="A" pin="!INT/SQW" pad="3"/>
<connect gate="A" pin="!RST" pad="4"/>
<connect gate="A" pin="32KHZ" pad="1"/>
<connect gate="A" pin="GND" pad="13"/>
<connect gate="A" pin="NC" pad="12"/>
<connect gate="A" pin="NC_2" pad="5"/>
<connect gate="A" pin="NC_3" pad="6"/>
<connect gate="A" pin="NC_4" pad="7"/>
<connect gate="A" pin="NC_5" pad="8"/>
<connect gate="A" pin="NC_6" pad="9"/>
<connect gate="A" pin="NC_7" pad="10"/>
<connect gate="A" pin="NC_8" pad="11"/>
<connect gate="A" pin="SCL" pad="16"/>
<connect gate="A" pin="SDA" pad="15"/>
<connect gate="A" pin="VBAT" pad="14"/>
<connect gate="A" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="DS3231S" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
<device name="21-0042B_16-M" package="21-0042B_16-M">
<connects>
<connect gate="A" pin="!INT/SQW" pad="3"/>
<connect gate="A" pin="!RST" pad="4"/>
<connect gate="A" pin="32KHZ" pad="1"/>
<connect gate="A" pin="GND" pad="13"/>
<connect gate="A" pin="NC" pad="12"/>
<connect gate="A" pin="NC_2" pad="5"/>
<connect gate="A" pin="NC_3" pad="6"/>
<connect gate="A" pin="NC_4" pad="7"/>
<connect gate="A" pin="NC_5" pad="8"/>
<connect gate="A" pin="NC_6" pad="9"/>
<connect gate="A" pin="NC_7" pad="10"/>
<connect gate="A" pin="NC_8" pad="11"/>
<connect gate="A" pin="SCL" pad="16"/>
<connect gate="A" pin="SDA" pad="15"/>
<connect gate="A" pin="VBAT" pad="14"/>
<connect gate="A" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="DS3231S" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
<device name="21-0042B_16-L" package="21-0042B_16-L">
<connects>
<connect gate="A" pin="!INT/SQW" pad="3"/>
<connect gate="A" pin="!RST" pad="4"/>
<connect gate="A" pin="32KHZ" pad="1"/>
<connect gate="A" pin="GND" pad="13"/>
<connect gate="A" pin="NC" pad="12"/>
<connect gate="A" pin="NC_2" pad="5"/>
<connect gate="A" pin="NC_3" pad="6"/>
<connect gate="A" pin="NC_4" pad="7"/>
<connect gate="A" pin="NC_5" pad="8"/>
<connect gate="A" pin="NC_6" pad="9"/>
<connect gate="A" pin="NC_7" pad="10"/>
<connect gate="A" pin="NC_8" pad="11"/>
<connect gate="A" pin="SCL" pad="16"/>
<connect gate="A" pin="SDA" pad="15"/>
<connect gate="A" pin="VBAT" pad="14"/>
<connect gate="A" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="DS3231S" constant="no"/>
<attribute name="VENDOR" value="Maxim Integrated Products" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diode" urn="urn:adsk.eagle:library:210">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMA" urn="urn:adsk.eagle:footprint:43244/1" library_version="7">
<description>&lt;b&gt;SMA&lt;/b&gt; CASE 403D-02&lt;p&gt;
Source: http://www.onsemi.com/pub_link/Collateral/MBRA340T3-D.PDF</description>
<wire x1="-2.25" y1="1.825" x2="2.25" y2="1.825" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.825" x2="-2.25" y2="-1.825" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.825" x2="-2.25" y2="1.25" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.25" x2="2.25" y2="-1.25" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.825" x2="-2.25" y2="-1.25" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.825" x2="2.25" y2="-1.25" width="0.254" layer="21" curve="-1.904406"/>
<wire x1="2.25" y1="1.825" x2="2.25" y2="1.25" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-1.25" x2="-2.25" y2="1.25" width="0.254" layer="51"/>
<smd name="C" x="-2" y="0" dx="2" dy="2" layer="1"/>
<smd name="A" x="2" y="0" dx="2" dy="2" layer="1"/>
<text x="-2.75" y="2" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.75" y="-3.5" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.38" y1="-0.825" x2="2.8" y2="0.8" layer="51"/>
<rectangle x1="-2.8" y1="-0.8" x2="-2.38" y2="0.8" layer="51"/>
<rectangle x1="-1.5" y1="-1.75" x2="-0.75" y2="1.75" layer="51"/>
<rectangle x1="-1.5" y1="1.25" x2="-0.75" y2="1.75" layer="21"/>
<rectangle x1="-1.5" y1="-1.75" x2="-0.75" y2="-1.25" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="SMA" urn="urn:adsk.eagle:package:43460/3" type="model" library_version="7">
<description>SMA CASE 403D-02
Source: http://www.onsemi.com/pub_link/Collateral/MBRA340T3-D.PDF</description>
<packageinstances>
<packageinstance name="SMA"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="D" urn="urn:adsk.eagle:symbol:43091/2" library_version="7">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
<pin name="A" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="S1M" urn="urn:adsk.eagle:component:43664/4" prefix="D" library_version="7">
<gates>
<gate name="G$1" symbol="D" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="SMA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:43460/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Battery Holder" urn="urn:adsk.eagle:library:12585215">
<description>&lt;h3&gt; PCBLayout.com - Frequently Used &lt;i&gt;Battery Holder&lt;/i&gt;&lt;/h3&gt;

Visit us at &lt;a href="http://www.PCBLayout.com"&gt;PCBLayout.com&lt;/a&gt; for quick and hassle-free PCB Layout/Manufacturing ordering experience.
&lt;BR&gt;
&lt;BR&gt;
This library has been generated by our experienced pcb layout engineers using current IPC and/or industry standards. We &lt;b&gt;believe&lt;/b&gt; the content to be accurate, complete and current. But, this content is provided as a courtesy and &lt;u&gt;user assumes all risk and responsiblity of it's usage&lt;/u&gt;.
&lt;BR&gt;
&lt;BR&gt;
Feel free to contact us at &lt;a href="mailto:Support@PCBLayout.com"&gt;Support@PCBLayout.com&lt;/a&gt; if you have any questions/concerns regarding any of our content or services.</description>
<packages>
<package name="79578211" urn="urn:adsk.eagle:footprint:12584874/5" library_version="1">
<pad name="2" x="20" y="0" drill="1.3"/>
<pad name="1" x="0" y="0" drill="1.3" shape="square"/>
<wire x1="-1.22" y1="5.4" x2="-1.22" y2="-5.4" width="0.127" layer="51"/>
<wire x1="-1.22" y1="-5.4" x2="1.5" y2="-5.4" width="0.127" layer="51"/>
<wire x1="-1.22" y1="5.4" x2="1.5" y2="5.4" width="0.127" layer="51"/>
<wire x1="-1.22" y1="5.4" x2="-1.22" y2="-5.4" width="0.127" layer="21"/>
<wire x1="-1.22" y1="-5.4" x2="1.5" y2="-5.4" width="0.127" layer="21"/>
<wire x1="-1.22" y1="5.4" x2="1.5" y2="5.4" width="0.127" layer="21"/>
<wire x1="1.5" y1="5.4" x2="1.5" y2="-5.4" width="0.1524" layer="21" curve="-312.008887"/>
<wire x1="1.5" y1="5.4" x2="1.5" y2="-5.4" width="0.1524" layer="51" curve="-312.008887"/>
<text x="3.157" y="13.97" size="1.27" layer="25">&gt;NAME</text>
<text x="3.157" y="-16.51" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="79578211" urn="urn:adsk.eagle:package:12584884/9" type="model" library_version="1">
<packageinstances>
<packageinstance name="79578211"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="HOLDER" urn="urn:adsk.eagle:symbol:12584883/1" library_version="1">
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-2.54" width="0.4064" layer="94"/>
<text x="-1.27" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.524" y="0.508" size="1.778" layer="94">+</text>
<pin name="+" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="-" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="79578211" urn="urn:adsk.eagle:component:12584893/5" prefix="BT" library_version="1">
<description>&lt;h3&gt; BATTERY HOLDER COIN PC PIN &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://katalog.we-online.de/em/datasheet/79578211.pdf"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="HOLDER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="79578211">
<connects>
<connect gate="G$1" pin="+" pad="1"/>
<connect gate="G$1" pin="-" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:12584884/9"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="DIGIKEY_PART_NO" value="732-12330-ND" constant="no"/>
<attribute name="MANUFACTURER" value="Wurth Electronics Inc." constant="no"/>
<attribute name="MPN" value="79578211" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor-dil" urn="urn:adsk.eagle:library:342">
<description>&lt;b&gt;Resistors in DIL Packages&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="0603-ARC" urn="urn:adsk.eagle:footprint:24894/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array&lt;/b&gt; size 4 × 0603&lt;p&gt;
concave termination - Phycomp Components&lt;br&gt;
Source: RS Components</description>
<wire x1="-1.55" y1="0.75" x2="-1.35" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.075" y1="0.75" x2="-0.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.275" y1="0.75" x2="0.25" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.525" y1="0.75" x2="1.05" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.325" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="1.35" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.075" y1="-0.75" x2="0.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.275" y1="-0.75" x2="-0.25" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.525" y1="-0.75" x2="-1.05" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.325" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.35" y1="0.75" x2="-1.075" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.55" y1="0.75" x2="-0.275" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.25" y1="0.75" x2="0.525" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="1.05" y1="0.75" x2="1.325" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="1.35" y1="-0.75" x2="1.075" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.55" y1="-0.75" x2="0.275" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.25" y1="-0.75" x2="-0.525" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-1.05" y1="-0.75" x2="-1.325" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<smd name="1" x="-1.2" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="2" x="-0.4" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="3" x="0.4" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="4" x="1.2" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="5" x="1.2" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="6" x="0.4" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="7" x="-0.4" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="8" x="-1.2" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<text x="-1.905" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0603-ARV" urn="urn:adsk.eagle:footprint:24895/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array&lt;/b&gt; size 4 × 0603&lt;p&gt;
convex termination - Phycomp Components&lt;br&gt;
Source: RS Components</description>
<wire x1="-1.55" y1="0.45" x2="1.55" y2="0.45" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.45" x2="1.55" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.45" x2="-1.55" y2="0.45" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.45" x2="-1.55" y2="-0.45" width="0.1016" layer="51"/>
<smd name="1" x="-1.2" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="2" x="-0.4" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="3" x="0.4" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="4" x="1.2" y="-0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="5" x="1.2" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="6" x="0.4" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="7" x="-0.4" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<smd name="8" x="-1.2" y="0.625" dx="0.5" dy="0.65" layer="1"/>
<text x="-1.905" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6" y1="0.7" x2="-0.9" y2="0.8" layer="51"/>
<rectangle x1="-0.7" y1="0.7" x2="-0.1" y2="0.8" layer="51"/>
<rectangle x1="0.1" y1="0.7" x2="0.7" y2="0.8" layer="51"/>
<rectangle x1="0.9" y1="0.7" x2="1.6" y2="0.8" layer="51"/>
<rectangle x1="-1.5" y1="0.5" x2="-0.95" y2="0.7" layer="51"/>
<rectangle x1="-0.65" y1="0.5" x2="-0.15" y2="0.7" layer="51"/>
<rectangle x1="0.15" y1="0.5" x2="0.65" y2="0.7" layer="51"/>
<rectangle x1="0.95" y1="0.5" x2="1.5" y2="0.7" layer="51"/>
<rectangle x1="0.9" y1="-0.8" x2="1.6" y2="-0.7" layer="51" rot="R180"/>
<rectangle x1="0.1" y1="-0.8" x2="0.7" y2="-0.7" layer="51" rot="R180"/>
<rectangle x1="-0.7" y1="-0.8" x2="-0.1" y2="-0.7" layer="51" rot="R180"/>
<rectangle x1="-1.6" y1="-0.8" x2="-0.9" y2="-0.7" layer="51" rot="R180"/>
<rectangle x1="0.95" y1="-0.7" x2="1.5" y2="-0.5" layer="51" rot="R180"/>
<rectangle x1="0.15" y1="-0.7" x2="0.65" y2="-0.5" layer="51" rot="R180"/>
<rectangle x1="-0.65" y1="-0.7" x2="-0.15" y2="-0.5" layer="51" rot="R180"/>
<rectangle x1="-1.5" y1="-0.7" x2="-0.95" y2="-0.5" layer="51" rot="R180"/>
</package>
<package name="CAT16" urn="urn:adsk.eagle:footprint:24896/1" library_version="2">
<description>&lt;b&gt;BOURNS&lt;/b&gt; Chip Resistor Array&lt;p&gt;
Source: RS Component / BUORNS</description>
<wire x1="-1.55" y1="0.75" x2="-1.4" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1" y1="0.75" x2="-0.6" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.75" x2="0.2" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.75" x2="1" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.4" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.4" y1="0.75" x2="-1" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.6" y1="0.75" x2="-0.2" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.2" y1="0.75" x2="0.6" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="1" y1="0.75" x2="1.4" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="1.55" y1="-0.75" x2="1.4" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1" y1="-0.75" x2="0.6" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.2" y1="-0.75" x2="-0.2" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.75" x2="-1" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.4" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.4" y1="-0.75" x2="1" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.6" y1="-0.75" x2="0.2" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.2" y1="-0.75" x2="-0.6" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-1" y1="-0.75" x2="-1.4" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<smd name="1" x="-1.2" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="2" x="-0.4" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="3" x="0.4" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="4" x="1.2" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="5" x="1.2" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="6" x="0.4" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="7" x="-0.4" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="8" x="-1.2" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<text x="-1.905" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="CAY16" urn="urn:adsk.eagle:footprint:24897/1" library_version="2">
<description>&lt;b&gt;BOURNS&lt;/b&gt; Chip Resistor Array&lt;p&gt;
Source: RS Component / BUORNS</description>
<wire x1="-1.55" y1="0.75" x2="-1" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="0.75" x2="-0.2" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.2" y1="0.75" x2="0.6" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1" y1="0.75" x2="-0.6" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.2" y1="0.75" x2="0.2" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.6" y1="0.75" x2="1" y2="0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="1.55" y1="-0.75" x2="1" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.75" x2="0.2" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="-0.75" x2="-0.6" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1" y1="-0.75" x2="0.6" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="0.2" y1="-0.75" x2="-0.2" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<wire x1="-0.6" y1="-0.75" x2="-1" y2="-0.75" width="0.1016" layer="51" curve="180"/>
<smd name="1" x="-1.2" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="2" x="-0.4" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="3" x="0.4" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="4" x="1.2" y="-0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="5" x="1.2" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="6" x="0.4" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="7" x="-0.4" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<smd name="8" x="-1.2" y="0.675" dx="0.5" dy="0.65" layer="1"/>
<text x="-1.905" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="YC124" urn="urn:adsk.eagle:footprint:24898/1" library_version="2">
<description>&lt;b&gt;ARRAY CHIP RESISTOR&lt;/b&gt; Size 4 x 0402&lt;p&gt;
Source: www.yageo.com .. Pu-YC124_51_PbFree_L_1.pdf</description>
<wire x1="-0.95" y1="0.35" x2="0.95" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.35" x2="0.95" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.35" x2="-0.95" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.35" x2="-0.95" y2="0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.8" y="-0.35" dx="0.4" dy="0.4" layer="1"/>
<smd name="2" x="-0.25" y="-0.35" dx="0.3" dy="0.4" layer="1"/>
<smd name="3" x="0.25" y="-0.35" dx="0.3" dy="0.4" layer="1"/>
<smd name="4" x="0.8" y="-0.35" dx="0.4" dy="0.4" layer="1"/>
<smd name="5" x="0.8" y="0.35" dx="0.4" dy="0.4" layer="1"/>
<smd name="6" x="0.25" y="0.35" dx="0.3" dy="0.4" layer="1"/>
<smd name="7" x="-0.25" y="0.35" dx="0.3" dy="0.4" layer="1"/>
<smd name="8" x="-0.8" y="0.35" dx="0.4" dy="0.4" layer="1"/>
<text x="-2" y="-2" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2" y="0.75" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.475" x2="-0.1" y2="0.5" layer="51"/>
<rectangle x1="-0.325" y1="0.4" x2="-0.175" y2="0.475" layer="51"/>
<rectangle x1="0.1" y1="0.475" x2="0.4" y2="0.5" layer="51"/>
<rectangle x1="0.175" y1="0.4" x2="0.325" y2="0.475" layer="51"/>
<rectangle x1="0.6" y1="0.475" x2="1" y2="0.5" layer="51"/>
<rectangle x1="0.675" y1="0.4" x2="0.825" y2="0.475" layer="51"/>
<rectangle x1="0.6" y1="-0.5" x2="1" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="0.675" y1="-0.475" x2="0.825" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="0.1" y1="-0.5" x2="0.4" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="0.175" y1="-0.475" x2="0.325" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-0.4" y1="-0.5" x2="-0.1" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="-0.325" y1="-0.475" x2="-0.175" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-1" y1="-0.5" x2="-0.6" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="-0.825" y1="-0.475" x2="-0.675" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-1" y1="0.475" x2="-0.6" y2="0.5" layer="51"/>
<rectangle x1="-0.825" y1="0.4" x2="-0.675" y2="0.475" layer="51"/>
</package>
<package name="4X0402ARV341" urn="urn:adsk.eagle:footprint:24899/1" library_version="2">
<description>&lt;b&gt;Array chip resistor&lt;/b&gt; size 4 × 0402&lt;p&gt;
Source: http://docs-europe.electrocomponents.com/webdocs/0114/0900766b80114d99.pdf</description>
<wire x1="-0.95" y1="0.35" x2="0.95" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.35" x2="0.95" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.35" x2="-0.95" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.35" x2="-0.95" y2="0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.8" y="-0.5" dx="0.4" dy="0.5" layer="1"/>
<smd name="2" x="-0.25" y="-0.5" dx="0.3" dy="0.5" layer="1"/>
<smd name="3" x="0.25" y="-0.5" dx="0.3" dy="0.5" layer="1"/>
<smd name="4" x="0.8" y="-0.5" dx="0.4" dy="0.5" layer="1"/>
<smd name="5" x="0.8" y="0.5" dx="0.4" dy="0.5" layer="1"/>
<smd name="6" x="0.25" y="0.5" dx="0.3" dy="0.5" layer="1"/>
<smd name="7" x="-0.25" y="0.5" dx="0.3" dy="0.5" layer="1"/>
<smd name="8" x="-0.8" y="0.5" dx="0.4" dy="0.5" layer="1"/>
<text x="-2" y="-2" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2" y="0.75" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.475" x2="-0.1" y2="0.5" layer="51"/>
<rectangle x1="-0.325" y1="0.4" x2="-0.175" y2="0.475" layer="51"/>
<rectangle x1="0.1" y1="0.475" x2="0.4" y2="0.5" layer="51"/>
<rectangle x1="0.175" y1="0.4" x2="0.325" y2="0.475" layer="51"/>
<rectangle x1="0.6" y1="0.475" x2="1" y2="0.5" layer="51"/>
<rectangle x1="0.675" y1="0.4" x2="0.825" y2="0.475" layer="51"/>
<rectangle x1="0.6" y1="-0.5" x2="1" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="0.675" y1="-0.475" x2="0.825" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="0.1" y1="-0.5" x2="0.4" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="0.175" y1="-0.475" x2="0.325" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-0.4" y1="-0.5" x2="-0.1" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="-0.325" y1="-0.475" x2="-0.175" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-1" y1="-0.5" x2="-0.6" y2="-0.475" layer="51" rot="R180"/>
<rectangle x1="-0.825" y1="-0.475" x2="-0.675" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="-1" y1="0.475" x2="-0.6" y2="0.5" layer="51"/>
<rectangle x1="-0.825" y1="0.4" x2="-0.675" y2="0.475" layer="51"/>
</package>
<package name="EXB18V" urn="urn:adsk.eagle:footprint:24900/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0201x4&lt;/b&gt; 4 resistors in 1.4 mm x 0.6 mm size&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="-0.65" y1="0.25" x2="0.65" y2="0.25" width="0.1016" layer="51"/>
<wire x1="0.65" y1="0.25" x2="0.65" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-0.25" x2="-0.65" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="-0.25" x2="-0.65" y2="0.25" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="-0.05" x2="-0.65" y2="0.05" width="0.1016" layer="21"/>
<wire x1="0.65" y1="0.05" x2="0.65" y2="-0.05" width="0.1016" layer="21"/>
<smd name="1" x="-0.6" y="-0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="2" x="-0.2" y="-0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="3" x="0.2" y="-0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="4" x="0.6" y="-0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="5" x="0.6" y="0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="6" x="0.2" y="0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="7" x="-0.2" y="0.3" dx="0.3" dy="0.3" layer="1"/>
<smd name="8" x="-0.6" y="0.3" dx="0.3" dy="0.3" layer="1"/>
<text x="-0.9525" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.9525" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EXB28V" urn="urn:adsk.eagle:footprint:24901/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0402x4&lt;/b&gt; 4 resistors in 2.0 mm x 1.0 mm size&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="-0.95" y1="0.45" x2="-0.65" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="0.45" x2="-0.15" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.15" y1="0.45" x2="0" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0" y1="0.3" x2="0.15" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.15" y1="0.45" x2="0.35" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.65" y1="0.45" x2="0.95" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.45" x2="0.95" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.45" x2="0.65" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.35" y1="-0.45" x2="0.15" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.15" y1="-0.45" x2="0" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0" y1="-0.3" x2="-0.15" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.15" y1="-0.45" x2="-0.35" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="-0.45" x2="-0.95" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.45" x2="-0.95" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.1" x2="-0.95" y2="0.1" width="0.1016" layer="21"/>
<wire x1="0.95" y1="0.1" x2="0.95" y2="-0.1" width="0.1016" layer="21"/>
<wire x1="-0.65" y1="0.45" x2="-0.5" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.5" y1="0.3" x2="-0.35" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.35" y1="-0.45" x2="-0.5" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.5" y1="-0.3" x2="-0.65" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.35" y1="0.45" x2="0.5" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.5" y1="0.3" x2="0.65" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.65" y1="-0.45" x2="0.5" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.5" y1="-0.3" x2="0.35" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<smd name="1" x="-0.875" y="-0.45" dx="0.525" dy="0.5" layer="1"/>
<smd name="2" x="-0.25" y="-0.45" dx="0.25" dy="0.5" layer="1"/>
<smd name="3" x="0.25" y="-0.45" dx="0.25" dy="0.5" layer="1"/>
<smd name="4" x="0.875" y="-0.45" dx="0.525" dy="0.5" layer="1"/>
<smd name="5" x="0.875" y="0.45" dx="0.525" dy="0.5" layer="1" rot="R180"/>
<smd name="6" x="0.25" y="0.45" dx="0.25" dy="0.5" layer="1" rot="R180"/>
<smd name="7" x="-0.25" y="0.45" dx="0.25" dy="0.5" layer="1" rot="R180"/>
<smd name="8" x="-0.875" y="0.45" dx="0.525" dy="0.5" layer="1" rot="R180"/>
<text x="-0.9525" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.9525" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EXB38V" urn="urn:adsk.eagle:footprint:24902/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0603x4&lt;/b&gt; 4 resistors in 3.2 mm x 1.6 mm size (EXB38V, V8V)&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.15" x2="-1.55" y2="0.15" width="0.1016" layer="21"/>
<wire x1="1.55" y1="0.15" x2="1.55" y2="-0.15" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="0.75" x2="-1.025" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="0.75" x2="-0.225" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.225" y1="0.75" x2="0.575" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.025" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.575" y1="0.75" x2="0.575" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.575" y1="0.45" x2="1.025" y2="0.45" width="0.1016" layer="51"/>
<wire x1="1.025" y1="0.45" x2="1.025" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.025" y1="0.75" x2="-1.025" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-1.025" y1="0.45" x2="-0.575" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="0.45" x2="-0.575" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.225" y1="0.75" x2="-0.225" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.225" y1="0.45" x2="0.225" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.225" y1="0.45" x2="0.225" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="1.025" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.575" y1="-0.75" x2="0.225" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.225" y1="-0.75" x2="-0.575" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.025" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.75" x2="-0.575" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.45" x2="-1.025" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-1.025" y1="-0.45" x2="-1.025" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.025" y1="-0.75" x2="1.025" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="1.025" y1="-0.45" x2="0.575" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.575" y1="-0.45" x2="0.575" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.225" y1="-0.75" x2="0.225" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.225" y1="-0.45" x2="-0.225" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.225" y1="-0.45" x2="-0.225" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.275" y="-0.75" dx="0.6" dy="0.8" layer="1"/>
<smd name="2" x="-0.4" y="-0.75" dx="0.5" dy="0.8" layer="1"/>
<smd name="3" x="0.4" y="-0.75" dx="0.5" dy="0.8" layer="1"/>
<smd name="4" x="1.275" y="-0.75" dx="0.6" dy="0.8" layer="1"/>
<smd name="5" x="1.275" y="0.75" dx="0.6" dy="0.8" layer="1" rot="R180"/>
<smd name="6" x="0.4" y="0.75" dx="0.5" dy="0.8" layer="1" rot="R180"/>
<smd name="7" x="-0.4" y="0.75" dx="0.5" dy="0.8" layer="1" rot="R180"/>
<smd name="8" x="-1.275" y="0.75" dx="0.6" dy="0.8" layer="1" rot="R180"/>
<text x="-1.9725" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9725" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EXBN8V" urn="urn:adsk.eagle:footprint:24903/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0402x4&lt;/b&gt; 4 resistors in 2.0 mm x 1.0 mm size&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="-0.95" y1="0.45" x2="-0.9" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="0.45" x2="-0.4" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="0.45" x2="-0.25" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.25" y1="0.3" x2="-0.1" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.1" y1="0.45" x2="0.1" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.6" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.9" y1="0.45" x2="0.95" y2="0.45" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.45" x2="0.95" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.45" x2="0.9" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.1" y1="-0.45" x2="-0.1" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-0.45" x2="-0.25" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.25" y1="-0.3" x2="-0.4" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.4" y1="-0.45" x2="-0.6" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.9" y1="-0.45" x2="-0.95" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.45" x2="-0.95" y2="0.45" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="-0.1" x2="-0.95" y2="0.1" width="0.1016" layer="21"/>
<wire x1="0.95" y1="0.1" x2="0.95" y2="-0.1" width="0.1016" layer="21"/>
<wire x1="-0.9" y1="0.45" x2="-0.75" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.75" y1="0.3" x2="-0.6" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.6" y1="-0.45" x2="-0.75" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.75" y1="-0.3" x2="-0.9" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.6" y1="0.45" x2="0.75" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.75" y1="0.3" x2="0.9" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.9" y1="-0.45" x2="0.75" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.75" y1="-0.3" x2="0.6" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.1" y1="0.45" x2="0.25" y2="0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.25" y1="0.3" x2="0.4" y2="0.45" width="0.1016" layer="51" curve="90"/>
<wire x1="0.4" y1="-0.45" x2="0.25" y2="-0.3" width="0.1016" layer="51" curve="90"/>
<wire x1="0.25" y1="-0.3" x2="0.1" y2="-0.45" width="0.1016" layer="51" curve="90"/>
<smd name="1" x="-0.8" y="-0.475" dx="0.38" dy="0.5" layer="1"/>
<smd name="2" x="-0.25" y="-0.475" dx="0.25" dy="0.5" layer="1"/>
<smd name="3" x="0.25" y="-0.475" dx="0.25" dy="0.5" layer="1"/>
<smd name="4" x="0.8" y="-0.475" dx="0.38" dy="0.5" layer="1"/>
<smd name="5" x="0.8" y="0.475" dx="0.38" dy="0.5" layer="1" rot="R180"/>
<smd name="6" x="0.25" y="0.475" dx="0.25" dy="0.5" layer="1" rot="R180"/>
<smd name="7" x="-0.25" y="0.475" dx="0.25" dy="0.5" layer="1" rot="R180"/>
<smd name="8" x="-0.8" y="0.475" dx="0.38" dy="0.5" layer="1" rot="R180"/>
<text x="-0.9525" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.9525" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EXBS8V" urn="urn:adsk.eagle:footprint:24904/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0805x4&lt;/b&gt; 4 resistors in 5.08 mm x 2.20 mm size&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="-2.475" y1="1.05" x2="-2.05" y2="1.05" width="0.1016" layer="51"/>
<wire x1="-1.75" y1="1.05" x2="-0.8" y2="1.05" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="1.05" x2="-0.65" y2="0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.65" y1="0.9" x2="-0.5" y2="1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.5" y1="1.05" x2="0.5" y2="1.05" width="0.1016" layer="51"/>
<wire x1="0.8" y1="1.05" x2="1.75" y2="1.05" width="0.1016" layer="51"/>
<wire x1="2.05" y1="1.05" x2="2.475" y2="1.05" width="0.1016" layer="51"/>
<wire x1="2.475" y1="1.05" x2="2.475" y2="-1.05" width="0.1016" layer="21"/>
<wire x1="2.475" y1="-1.05" x2="2.05" y2="-1.05" width="0.1016" layer="51"/>
<wire x1="1.75" y1="-1.05" x2="0.8" y2="-1.05" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.05" x2="-0.5" y2="-1.05" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.05" x2="-0.65" y2="-0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.65" y1="-0.9" x2="-0.8" y2="-1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.8" y1="-1.05" x2="-1.75" y2="-1.05" width="0.1016" layer="51"/>
<wire x1="-2.05" y1="-1.05" x2="-2.475" y2="-1.05" width="0.1016" layer="51"/>
<wire x1="-2.475" y1="-1.05" x2="-2.475" y2="1.05" width="0.1016" layer="21"/>
<wire x1="-2.05" y1="1.05" x2="-1.9" y2="0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.9" y1="0.9" x2="-1.75" y2="1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.75" y1="-1.05" x2="-1.9" y2="-0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.9" y1="-0.9" x2="-2.05" y2="-1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="1.75" y1="1.05" x2="1.9" y2="0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="1.9" y1="0.9" x2="2.05" y2="1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="2.05" y1="-1.05" x2="1.9" y2="-0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="1.9" y1="-0.9" x2="1.75" y2="-1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="0.5" y1="1.05" x2="0.65" y2="0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="0.65" y1="0.9" x2="0.8" y2="1.05" width="0.1016" layer="51" curve="90"/>
<wire x1="0.8" y1="-1.05" x2="0.65" y2="-0.9" width="0.1016" layer="51" curve="90"/>
<wire x1="0.65" y1="-0.9" x2="0.5" y2="-1.05" width="0.1016" layer="51" curve="90"/>
<smd name="1" x="-1.905" y="-1.07" dx="0.75" dy="1.1" layer="1"/>
<smd name="2" x="-0.635" y="-1.07" dx="0.75" dy="1.1" layer="1"/>
<smd name="3" x="0.635" y="-1.07" dx="0.75" dy="1.1" layer="1"/>
<smd name="4" x="1.905" y="-1.07" dx="0.75" dy="1.1" layer="1"/>
<smd name="5" x="1.905" y="1.07" dx="0.75" dy="1.1" layer="1" rot="R180"/>
<smd name="6" x="0.635" y="1.07" dx="0.75" dy="1.1" layer="1" rot="R180"/>
<smd name="7" x="-0.635" y="1.07" dx="0.75" dy="1.1" layer="1" rot="R180"/>
<smd name="8" x="-1.905" y="1.07" dx="0.75" dy="1.1" layer="1" rot="R180"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="EXBV8V" urn="urn:adsk.eagle:footprint:24905/1" library_version="2">
<description>&lt;b&gt;Chip Resistor Array 0603x4&lt;/b&gt; 4 resistors in 3.20 mm x 1.60 mm size&lt;p&gt;
Source: PANASONIC .. aoc0000ce1.pdf</description>
<wire x1="-1.55" y1="0.75" x2="-1.35" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.05" y1="0.75" x2="-0.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="0.75" x2="-0.4" y2="0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.4" y1="0.6" x2="-0.25" y2="0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.25" y1="0.75" x2="0.25" y2="0.75" width="0.1016" layer="51"/>
<wire x1="0.55" y1="0.75" x2="1.05" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.35" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="1.55" y1="-0.75" x2="1.35" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-0.75" x2="0.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="0.25" y1="-0.75" x2="-0.25" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.25" y1="-0.75" x2="-0.4" y2="-0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.4" y1="-0.6" x2="-0.55" y2="-0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="-0.55" y1="-0.75" x2="-1.05" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.35" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="21"/>
<wire x1="-1.35" y1="0.75" x2="-1.2" y2="0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.2" y1="0.6" x2="-1.05" y2="0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.05" y1="-0.75" x2="-1.2" y2="-0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="-1.2" y1="-0.6" x2="-1.35" y2="-0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="1.05" y1="0.75" x2="1.2" y2="0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="1.2" y1="0.6" x2="1.35" y2="0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="1.35" y1="-0.75" x2="1.2" y2="-0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="1.2" y1="-0.6" x2="1.05" y2="-0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="0.25" y1="0.75" x2="0.4" y2="0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="0.4" y1="0.6" x2="0.55" y2="0.75" width="0.1016" layer="51" curve="90"/>
<wire x1="0.55" y1="-0.75" x2="0.4" y2="-0.6" width="0.1016" layer="51" curve="90"/>
<wire x1="0.4" y1="-0.6" x2="0.25" y2="-0.75" width="0.1016" layer="51" curve="90"/>
<smd name="1" x="-1.2" y="-0.775" dx="0.45" dy="0.7" layer="1"/>
<smd name="2" x="-0.4" y="-0.775" dx="0.45" dy="0.7" layer="1"/>
<smd name="3" x="0.4" y="-0.775" dx="0.45" dy="0.7" layer="1"/>
<smd name="4" x="1.2" y="-0.775" dx="0.45" dy="0.7" layer="1"/>
<smd name="5" x="1.2" y="0.775" dx="0.45" dy="0.7" layer="1" rot="R180"/>
<smd name="6" x="0.4" y="0.775" dx="0.45" dy="0.7" layer="1" rot="R180"/>
<smd name="7" x="-0.4" y="0.775" dx="0.45" dy="0.7" layer="1" rot="R180"/>
<smd name="8" x="-1.2" y="0.775" dx="0.45" dy="0.7" layer="1" rot="R180"/>
<text x="-1.5875" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5875" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="0603-ARC" urn="urn:adsk.eagle:package:24926/1" type="box" library_version="2">
<description>Chip Resistor Array size 4 × 0603
concave termination - Phycomp Components
Source: RS Components</description>
<packageinstances>
<packageinstance name="0603-ARC"/>
</packageinstances>
</package3d>
<package3d name="0603-ARV" urn="urn:adsk.eagle:package:24915/1" type="box" library_version="2">
<description>Chip Resistor Array size 4 × 0603
convex termination - Phycomp Components
Source: RS Components</description>
<packageinstances>
<packageinstance name="0603-ARV"/>
</packageinstances>
</package3d>
<package3d name="CAT16" urn="urn:adsk.eagle:package:24916/1" type="box" library_version="2">
<description>BOURNS Chip Resistor Array
Source: RS Component / BUORNS</description>
<packageinstances>
<packageinstance name="CAT16"/>
</packageinstances>
</package3d>
<package3d name="CAY16" urn="urn:adsk.eagle:package:24918/1" type="box" library_version="2">
<description>BOURNS Chip Resistor Array
Source: RS Component / BUORNS</description>
<packageinstances>
<packageinstance name="CAY16"/>
</packageinstances>
</package3d>
<package3d name="YC124" urn="urn:adsk.eagle:package:24919/1" type="box" library_version="2">
<description>ARRAY CHIP RESISTOR Size 4 x 0402
Source: www.yageo.com .. Pu-YC124_51_PbFree_L_1.pdf</description>
<packageinstances>
<packageinstance name="YC124"/>
</packageinstances>
</package3d>
<package3d name="4X0402ARV341" urn="urn:adsk.eagle:package:24920/1" type="box" library_version="2">
<description>Array chip resistor size 4 × 0402
Source: http://docs-europe.electrocomponents.com/webdocs/0114/0900766b80114d99.pdf</description>
<packageinstances>
<packageinstance name="4X0402ARV341"/>
</packageinstances>
</package3d>
<package3d name="EXB18V" urn="urn:adsk.eagle:package:24921/1" type="box" library_version="2">
<description>Chip Resistor Array 0201x4 4 resistors in 1.4 mm x 0.6 mm size
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXB18V"/>
</packageinstances>
</package3d>
<package3d name="EXB28V" urn="urn:adsk.eagle:package:24922/1" type="box" library_version="2">
<description>Chip Resistor Array 0402x4 4 resistors in 2.0 mm x 1.0 mm size
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXB28V"/>
</packageinstances>
</package3d>
<package3d name="EXB38V" urn="urn:adsk.eagle:package:24923/1" type="box" library_version="2">
<description>Chip Resistor Array 0603x4 4 resistors in 3.2 mm x 1.6 mm size (EXB38V, V8V)
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXB38V"/>
</packageinstances>
</package3d>
<package3d name="EXBN8V" urn="urn:adsk.eagle:package:24924/1" type="box" library_version="2">
<description>Chip Resistor Array 0402x4 4 resistors in 2.0 mm x 1.0 mm size
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXBN8V"/>
</packageinstances>
</package3d>
<package3d name="EXBS8V" urn="urn:adsk.eagle:package:24925/1" type="box" library_version="2">
<description>Chip Resistor Array 0805x4 4 resistors in 5.08 mm x 2.20 mm size
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXBS8V"/>
</packageinstances>
</package3d>
<package3d name="EXBV8V" urn="urn:adsk.eagle:package:24931/1" type="box" library_version="2">
<description>Chip Resistor Array 0603x4 4 resistors in 3.20 mm x 1.60 mm size
Source: PANASONIC .. aoc0000ce1.pdf</description>
<packageinstances>
<packageinstance name="EXBV8V"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R1NV" urn="urn:adsk.eagle:symbol:24885/1" library_version="2">
<wire x1="-2.54" y1="-0.762" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.762" x2="-2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.762" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<text x="2.54" y="-3.048" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="-3.048" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4R-N" urn="urn:adsk.eagle:component:24945/1" prefix="RN" uservalue="yes" library_version="2">
<description>&lt;b&gt;Array Chip Resistor&lt;/b&gt;&lt;p&gt;
Source: RS Component / Phycomp</description>
<gates>
<gate name="A" symbol="R1NV" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="B" symbol="R1NV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="C" symbol="R1NV" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="D" symbol="R1NV" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="0603-ARC" package="0603-ARC">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24926/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603-ARV" package="0603-ARV">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24915/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAT16" package="CAT16">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24916/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAY16" package="CAY16">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24918/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="YC124" package="YC124">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24919/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="0402ARV341" package="4X0402ARV341">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24920/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXB18V" package="EXB18V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24921/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXB28V" package="EXB28V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24922/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXB38V" package="EXB38V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24923/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXBN8V" package="EXBN8V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24924/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXBS8V" package="EXBS8V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24925/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="EXBV8V" package="EXBV8V">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="8"/>
<connect gate="B" pin="1" pad="2"/>
<connect gate="B" pin="2" pad="7"/>
<connect gate="C" pin="1" pad="3"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="4"/>
<connect gate="D" pin="2" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24931/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rcl" urn="urn:adsk.eagle:library:334">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="C0402" urn="urn:adsk.eagle:footprint:23121/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504" urn="urn:adsk.eagle:footprint:23122/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603" urn="urn:adsk.eagle:footprint:23123/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805" urn="urn:adsk.eagle:footprint:23124/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206" urn="urn:adsk.eagle:footprint:23125/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210" urn="urn:adsk.eagle:footprint:23126/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310" urn="urn:adsk.eagle:footprint:23127/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608" urn="urn:adsk.eagle:footprint:23128/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812" urn="urn:adsk.eagle:footprint:23129/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825" urn="urn:adsk.eagle:footprint:23130/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012" urn="urn:adsk.eagle:footprint:23131/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216" urn="urn:adsk.eagle:footprint:23132/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225" urn="urn:adsk.eagle:footprint:23133/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532" urn="urn:adsk.eagle:footprint:23134/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564" urn="urn:adsk.eagle:footprint:23135/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044" urn="urn:adsk.eagle:footprint:23136/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050" urn="urn:adsk.eagle:footprint:23137/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050" urn="urn:adsk.eagle:footprint:23138/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050" urn="urn:adsk.eagle:footprint:23139/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050" urn="urn:adsk.eagle:footprint:23140/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050" urn="urn:adsk.eagle:footprint:23141/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070" urn="urn:adsk.eagle:footprint:23142/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075" urn="urn:adsk.eagle:footprint:23143/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075" urn="urn:adsk.eagle:footprint:23144/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075" urn="urn:adsk.eagle:footprint:23145/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075" urn="urn:adsk.eagle:footprint:23146/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044" urn="urn:adsk.eagle:footprint:23147/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075" urn="urn:adsk.eagle:footprint:23148/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075" urn="urn:adsk.eagle:footprint:23149/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075" urn="urn:adsk.eagle:footprint:23150/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075" urn="urn:adsk.eagle:footprint:23151/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075" urn="urn:adsk.eagle:footprint:23152/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075" urn="urn:adsk.eagle:footprint:23153/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075" urn="urn:adsk.eagle:footprint:23154/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103" urn="urn:adsk.eagle:footprint:23155/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103" urn="urn:adsk.eagle:footprint:23156/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106" urn="urn:adsk.eagle:footprint:23157/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133" urn="urn:adsk.eagle:footprint:23158/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133" urn="urn:adsk.eagle:footprint:23159/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133" urn="urn:adsk.eagle:footprint:23160/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184" urn="urn:adsk.eagle:footprint:23161/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183" urn="urn:adsk.eagle:footprint:23162/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183" urn="urn:adsk.eagle:footprint:23163/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183" urn="urn:adsk.eagle:footprint:23164/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183" urn="urn:adsk.eagle:footprint:23165/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182" urn="urn:adsk.eagle:footprint:23166/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268" urn="urn:adsk.eagle:footprint:23167/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268" urn="urn:adsk.eagle:footprint:23168/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268" urn="urn:adsk.eagle:footprint:23169/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268" urn="urn:adsk.eagle:footprint:23170/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268" urn="urn:adsk.eagle:footprint:23171/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316" urn="urn:adsk.eagle:footprint:23172/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316" urn="urn:adsk.eagle:footprint:23173/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316" urn="urn:adsk.eagle:footprint:23174/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316" urn="urn:adsk.eagle:footprint:23175/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374" urn="urn:adsk.eagle:footprint:23176/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374" urn="urn:adsk.eagle:footprint:23177/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374" urn="urn:adsk.eagle:footprint:23178/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418" urn="urn:adsk.eagle:footprint:23179/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418" urn="urn:adsk.eagle:footprint:23180/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075" urn="urn:adsk.eagle:footprint:23181/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418" urn="urn:adsk.eagle:footprint:23182/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106" urn="urn:adsk.eagle:footprint:23183/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316" urn="urn:adsk.eagle:footprint:23184/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316" urn="urn:adsk.eagle:footprint:23185/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K" urn="urn:adsk.eagle:footprint:23186/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K" urn="urn:adsk.eagle:footprint:23187/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K" urn="urn:adsk.eagle:footprint:23188/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K" urn="urn:adsk.eagle:footprint:23189/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K" urn="urn:adsk.eagle:footprint:23190/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K" urn="urn:adsk.eagle:footprint:23191/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K" urn="urn:adsk.eagle:footprint:23192/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K" urn="urn:adsk.eagle:footprint:23193/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K" urn="urn:adsk.eagle:footprint:23194/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="C0201" urn="urn:adsk.eagle:footprint:23196/1" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<smd name="1" x="-0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="2" x="0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="0.1" x2="0.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="-0.1" layer="51"/>
</package>
<package name="C1808" urn="urn:adsk.eagle:footprint:23197/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-1.4732" y1="0.9502" x2="1.4732" y2="0.9502" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-0.9502" x2="1.4732" y2="-0.9502" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<text x="-2.233" y="1.827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.233" y="-2.842" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.275" y1="-1.015" x2="-1.225" y2="1.015" layer="51"/>
<rectangle x1="1.225" y1="-1.015" x2="2.275" y2="1.015" layer="51"/>
</package>
<package name="C3640" urn="urn:adsk.eagle:footprint:23198/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-3.8322" y1="5.0496" x2="3.8322" y2="5.0496" width="0.1016" layer="51"/>
<wire x1="-3.8322" y1="-5.0496" x2="3.8322" y2="-5.0496" width="0.1016" layer="51"/>
<smd name="1" x="-4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<smd name="2" x="4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<text x="-4.647" y="6.465" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.647" y="-7.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.57" y1="-5.1" x2="-3.05" y2="5.1" layer="51"/>
<rectangle x1="3.05" y1="-5.1" x2="4.5688" y2="5.1" layer="51"/>
</package>
<package name="C01005" urn="urn:adsk.eagle:footprint:23199/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="CAPC1005X60" urn="urn:adsk.eagle:package:23626/2" type="model" library_version="11">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="C0402"/>
</packageinstances>
</package3d>
<package3d name="C0504" urn="urn:adsk.eagle:package:23624/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0504"/>
</packageinstances>
</package3d>
<package3d name="C0603" urn="urn:adsk.eagle:package:23616/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0603"/>
</packageinstances>
</package3d>
<package3d name="C0805" urn="urn:adsk.eagle:package:23617/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0805"/>
</packageinstances>
</package3d>
<package3d name="C1206" urn="urn:adsk.eagle:package:23618/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1206"/>
</packageinstances>
</package3d>
<package3d name="C1210" urn="urn:adsk.eagle:package:23619/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1210"/>
</packageinstances>
</package3d>
<package3d name="C1310" urn="urn:adsk.eagle:package:23620/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1310"/>
</packageinstances>
</package3d>
<package3d name="C1608" urn="urn:adsk.eagle:package:23621/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1608"/>
</packageinstances>
</package3d>
<package3d name="C1812" urn="urn:adsk.eagle:package:23622/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1812"/>
</packageinstances>
</package3d>
<package3d name="C1825" urn="urn:adsk.eagle:package:23623/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1825"/>
</packageinstances>
</package3d>
<package3d name="C2012" urn="urn:adsk.eagle:package:23625/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C2012"/>
</packageinstances>
</package3d>
<package3d name="C3216" urn="urn:adsk.eagle:package:23628/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3216"/>
</packageinstances>
</package3d>
<package3d name="C3225" urn="urn:adsk.eagle:package:23655/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3225"/>
</packageinstances>
</package3d>
<package3d name="C4532" urn="urn:adsk.eagle:package:23627/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4532"/>
</packageinstances>
</package3d>
<package3d name="C4564" urn="urn:adsk.eagle:package:23648/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4564"/>
</packageinstances>
</package3d>
<package3d name="C025-024X044" urn="urn:adsk.eagle:package:23630/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C025-024X044"/>
</packageinstances>
</package3d>
<package3d name="C025-025X050" urn="urn:adsk.eagle:package:23629/2" type="model" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-025X050"/>
</packageinstances>
</package3d>
<package3d name="C025-030X050" urn="urn:adsk.eagle:package:23631/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 3 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-030X050"/>
</packageinstances>
</package3d>
<package3d name="C025-040X050" urn="urn:adsk.eagle:package:23634/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 4 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-040X050"/>
</packageinstances>
</package3d>
<package3d name="C025-050X050" urn="urn:adsk.eagle:package:23633/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-050X050"/>
</packageinstances>
</package3d>
<package3d name="C025-060X050" urn="urn:adsk.eagle:package:23632/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 6 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-060X050"/>
</packageinstances>
</package3d>
<package3d name="C025_050-024X070" urn="urn:adsk.eagle:package:23639/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<packageinstances>
<packageinstance name="C025_050-024X070"/>
</packageinstances>
</package3d>
<package3d name="C025_050-025X075" urn="urn:adsk.eagle:package:23641/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-035X075" urn="urn:adsk.eagle:package:23651/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-045X075" urn="urn:adsk.eagle:package:23635/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-055X075" urn="urn:adsk.eagle:package:23636/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-024X044" urn="urn:adsk.eagle:package:23643/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C050-024X044"/>
</packageinstances>
</package3d>
<package3d name="C050-025X075" urn="urn:adsk.eagle:package:23637/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C050-045X075" urn="urn:adsk.eagle:package:23638/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C050-030X075" urn="urn:adsk.eagle:package:23640/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-030X075"/>
</packageinstances>
</package3d>
<package3d name="C050-050X075" urn="urn:adsk.eagle:package:23665/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-050X075"/>
</packageinstances>
</package3d>
<package3d name="C050-055X075" urn="urn:adsk.eagle:package:23642/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-075X075" urn="urn:adsk.eagle:package:23645/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-075X075"/>
</packageinstances>
</package3d>
<package3d name="C050H075X075" urn="urn:adsk.eagle:package:23644/1" type="box" library_version="11">
<description>CAPACITOR
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050H075X075"/>
</packageinstances>
</package3d>
<package3d name="C075-032X103" urn="urn:adsk.eagle:package:23646/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-032X103"/>
</packageinstances>
</package3d>
<package3d name="C075-042X103" urn="urn:adsk.eagle:package:23656/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-042X103"/>
</packageinstances>
</package3d>
<package3d name="C075-052X106" urn="urn:adsk.eagle:package:23650/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-052X106"/>
</packageinstances>
</package3d>
<package3d name="C102-043X133" urn="urn:adsk.eagle:package:23647/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-043X133"/>
</packageinstances>
</package3d>
<package3d name="C102-054X133" urn="urn:adsk.eagle:package:23649/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-054X133"/>
</packageinstances>
</package3d>
<package3d name="C102-064X133" urn="urn:adsk.eagle:package:23653/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-064X133"/>
</packageinstances>
</package3d>
<package3d name="C102_152-062X184" urn="urn:adsk.eagle:package:23652/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<packageinstances>
<packageinstance name="C102_152-062X184"/>
</packageinstances>
</package3d>
<package3d name="C150-054X183" urn="urn:adsk.eagle:package:23669/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 5.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-054X183"/>
</packageinstances>
</package3d>
<package3d name="C150-064X183" urn="urn:adsk.eagle:package:23654/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 6.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-064X183"/>
</packageinstances>
</package3d>
<package3d name="C150-072X183" urn="urn:adsk.eagle:package:23657/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 7.2 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-072X183"/>
</packageinstances>
</package3d>
<package3d name="C150-084X183" urn="urn:adsk.eagle:package:23658/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 8.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-084X183"/>
</packageinstances>
</package3d>
<package3d name="C150-091X182" urn="urn:adsk.eagle:package:23659/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 9.1 x 18.2 mm</description>
<packageinstances>
<packageinstance name="C150-091X182"/>
</packageinstances>
</package3d>
<package3d name="C225-062X268" urn="urn:adsk.eagle:package:23661/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-062X268"/>
</packageinstances>
</package3d>
<package3d name="C225-074X268" urn="urn:adsk.eagle:package:23660/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-074X268"/>
</packageinstances>
</package3d>
<package3d name="C225-087X268" urn="urn:adsk.eagle:package:23662/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-087X268"/>
</packageinstances>
</package3d>
<package3d name="C225-108X268" urn="urn:adsk.eagle:package:23663/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-108X268"/>
</packageinstances>
</package3d>
<package3d name="C225-113X268" urn="urn:adsk.eagle:package:23667/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-113X268"/>
</packageinstances>
</package3d>
<package3d name="C275-093X316" urn="urn:adsk.eagle:package:23701/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-093X316"/>
</packageinstances>
</package3d>
<package3d name="C275-113X316" urn="urn:adsk.eagle:package:23673/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-113X316"/>
</packageinstances>
</package3d>
<package3d name="C275-134X316" urn="urn:adsk.eagle:package:23664/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-134X316"/>
</packageinstances>
</package3d>
<package3d name="C275-205X316" urn="urn:adsk.eagle:package:23666/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-205X316"/>
</packageinstances>
</package3d>
<package3d name="C325-137X374" urn="urn:adsk.eagle:package:23672/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-137X374"/>
</packageinstances>
</package3d>
<package3d name="C325-162X374" urn="urn:adsk.eagle:package:23670/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-162X374"/>
</packageinstances>
</package3d>
<package3d name="C325-182X374" urn="urn:adsk.eagle:package:23668/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-182X374"/>
</packageinstances>
</package3d>
<package3d name="C375-192X418" urn="urn:adsk.eagle:package:23674/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-192X418"/>
</packageinstances>
</package3d>
<package3d name="C375-203X418" urn="urn:adsk.eagle:package:23671/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-203X418"/>
</packageinstances>
</package3d>
<package3d name="C050-035X075" urn="urn:adsk.eagle:package:23677/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C375-155X418" urn="urn:adsk.eagle:package:23675/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-155X418"/>
</packageinstances>
</package3d>
<package3d name="C075-063X106" urn="urn:adsk.eagle:package:23678/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-063X106"/>
</packageinstances>
</package3d>
<package3d name="C275-154X316" urn="urn:adsk.eagle:package:23685/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-154X316"/>
</packageinstances>
</package3d>
<package3d name="C275-173X316" urn="urn:adsk.eagle:package:23676/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-173X316"/>
</packageinstances>
</package3d>
<package3d name="C0402K" urn="urn:adsk.eagle:package:23679/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0204 reflow solder
Metric Code Size 1005</description>
<packageinstances>
<packageinstance name="C0402K"/>
</packageinstances>
</package3d>
<package3d name="C0603K" urn="urn:adsk.eagle:package:23680/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0603 reflow solder
Metric Code Size 1608</description>
<packageinstances>
<packageinstance name="C0603K"/>
</packageinstances>
</package3d>
<package3d name="C0805K" urn="urn:adsk.eagle:package:23681/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0805 reflow solder
Metric Code Size 2012</description>
<packageinstances>
<packageinstance name="C0805K"/>
</packageinstances>
</package3d>
<package3d name="C1206K" urn="urn:adsk.eagle:package:23682/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1206 reflow solder
Metric Code Size 3216</description>
<packageinstances>
<packageinstance name="C1206K"/>
</packageinstances>
</package3d>
<package3d name="C1210K" urn="urn:adsk.eagle:package:23683/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1210 reflow solder
Metric Code Size 3225</description>
<packageinstances>
<packageinstance name="C1210K"/>
</packageinstances>
</package3d>
<package3d name="C1812K" urn="urn:adsk.eagle:package:23686/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1812 reflow solder
Metric Code Size 4532</description>
<packageinstances>
<packageinstance name="C1812K"/>
</packageinstances>
</package3d>
<package3d name="C1825K" urn="urn:adsk.eagle:package:23684/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1825 reflow solder
Metric Code Size 4564</description>
<packageinstances>
<packageinstance name="C1825K"/>
</packageinstances>
</package3d>
<package3d name="C2220K" urn="urn:adsk.eagle:package:23687/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2220 reflow solderMetric Code Size 5650</description>
<packageinstances>
<packageinstance name="C2220K"/>
</packageinstances>
</package3d>
<package3d name="C2225K" urn="urn:adsk.eagle:package:23692/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2225 reflow solderMetric Code Size 5664</description>
<packageinstances>
<packageinstance name="C2225K"/>
</packageinstances>
</package3d>
<package3d name="C0201" urn="urn:adsk.eagle:package:23690/2" type="model" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<packageinstances>
<packageinstance name="C0201"/>
</packageinstances>
</package3d>
<package3d name="C1808" urn="urn:adsk.eagle:package:23689/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C1808"/>
</packageinstances>
</package3d>
<package3d name="C3640" urn="urn:adsk.eagle:package:23693/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C3640"/>
</packageinstances>
</package3d>
<package3d name="C01005" urn="urn:adsk.eagle:package:23691/1" type="box" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C-US" urn="urn:adsk.eagle:symbol:23201/1" library_version="11">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C-US" urn="urn:adsk.eagle:component:23794/44" prefix="C" uservalue="yes" library_version="11">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="C-US" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23626/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="16" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23624/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23616/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="37" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23617/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="63" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23618/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23619/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23620/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23621/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23622/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23623/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23625/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23628/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23655/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23627/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23648/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23630/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23629/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23631/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23634/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23633/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23632/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23639/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23641/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23651/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23635/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23636/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23643/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="14" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23637/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23638/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23640/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23665/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23642/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23645/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23644/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23646/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23656/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23650/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23647/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23649/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23653/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23652/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23669/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23654/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23657/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23658/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23659/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23661/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23660/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23662/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23663/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23667/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23701/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23673/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23664/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23666/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23672/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23670/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23668/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23674/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23671/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23677/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23675/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23678/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23685/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23676/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23679/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23680/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23681/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23682/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23683/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23686/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23684/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23687/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23692/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0201" package="C0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23690/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1808" package="C1808">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23689/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3640" package="C3640">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23693/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="C01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23691/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="atreml-eprom">
<packages>
<package name="8S1">
<smd name="1" x="-2.465" y="1.905" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="2" x="-2.465" y="0.635" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="3" x="-2.465" y="-0.635" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="4" x="-2.465" y="-1.905" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="5" x="2.465" y="-1.905" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="6" x="2.465" y="-0.635" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="7" x="2.465" y="0.635" dx="1.9812" dy="0.5608" layer="1"/>
<smd name="8" x="2.465" y="1.905" dx="1.9812" dy="0.5608" layer="1"/>
<wire x1="-2.0066" y1="1.651" x2="-2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.381" x2="-2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.889" x2="-2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.159" x2="-2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-1.651" x2="2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.381" x2="2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.889" x2="2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.159" x2="2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.5146" x2="2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.5146" x2="2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.5146" x2="0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.5146" x2="-2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.5146" x2="-2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.7084" y1="-2.4384" x2="-3.7084" y2="2.4384" width="0.1524" layer="39"/>
<wire x1="-3.7084" y1="2.4384" x2="-2.2606" y2="2.4384" width="0.1524" layer="39"/>
<wire x1="-2.2606" y1="2.4384" x2="-2.2606" y2="2.7686" width="0.1524" layer="39"/>
<wire x1="-2.2606" y1="2.7686" x2="2.2606" y2="2.7686" width="0.1524" layer="39"/>
<wire x1="2.2606" y1="2.7686" x2="2.2606" y2="2.4384" width="0.1524" layer="39"/>
<wire x1="3.7084" y1="2.4384" x2="2.2606" y2="2.4384" width="0.1524" layer="39"/>
<wire x1="3.7084" y1="2.4384" x2="3.7084" y2="-2.4384" width="0.1524" layer="39"/>
<wire x1="3.7084" y1="-2.4384" x2="2.2606" y2="-2.4384" width="0.1524" layer="39"/>
<wire x1="2.2606" y1="-2.4384" x2="2.2606" y2="-2.7686" width="0.1524" layer="39"/>
<wire x1="2.2606" y1="-2.7686" x2="-2.2606" y2="-2.7686" width="0.1524" layer="39"/>
<wire x1="-2.2606" y1="-2.7686" x2="-2.2606" y2="-2.4384" width="0.1524" layer="39"/>
<wire x1="-3.7084" y1="-2.4384" x2="-2.2606" y2="-2.4384" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-3.7096" y="-2.4394"/>
<vertex x="-3.7096" y="2.4394"/>
<vertex x="-2.249" y="2.4394"/>
<vertex x="-2.249" y="2.779"/>
<vertex x="2.249" y="2.779"/>
<vertex x="2.249" y="2.4394"/>
<vertex x="3.7096" y="2.4394"/>
<vertex x="3.7096" y="-2.4394"/>
<vertex x="2.249" y="-2.4394"/>
<vertex x="2.249" y="-2.779"/>
<vertex x="-2.249" y="-2.779"/>
<vertex x="-2.249" y="-2.4394"/>
</polygon>
<wire x1="-2.1336" y1="-2.6416" x2="2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.6416" x2="-2.1336" y2="2.6416" width="0.1524" layer="21"/>
<text x="-3.302" y="2.3368" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="8S1-M">
<smd name="1" x="-2.5158" y="1.905" dx="2.286" dy="0.6116" layer="1"/>
<smd name="2" x="-2.5158" y="0.635" dx="2.286" dy="0.6116" layer="1"/>
<smd name="3" x="-2.5158" y="-0.635" dx="2.286" dy="0.6116" layer="1"/>
<smd name="4" x="-2.5158" y="-1.905" dx="2.286" dy="0.6116" layer="1"/>
<smd name="5" x="2.5158" y="-1.905" dx="2.286" dy="0.6116" layer="1"/>
<smd name="6" x="2.5158" y="-0.635" dx="2.286" dy="0.6116" layer="1"/>
<smd name="7" x="2.5158" y="0.635" dx="2.286" dy="0.6116" layer="1"/>
<smd name="8" x="2.5158" y="1.905" dx="2.286" dy="0.6116" layer="1"/>
<wire x1="-2.0066" y1="1.651" x2="-2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.381" x2="-2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.889" x2="-2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.159" x2="-2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-1.651" x2="2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.381" x2="2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.889" x2="2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.159" x2="2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.5146" x2="2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.5146" x2="2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.5146" x2="0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.5146" x2="-2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.5146" x2="-2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-4.1656" y1="-2.7178" x2="-4.1656" y2="2.7178" width="0.1524" layer="39"/>
<wire x1="-4.1656" y1="2.7178" x2="-2.5146" y2="2.7178" width="0.1524" layer="39"/>
<wire x1="-2.5146" y1="2.7178" x2="-2.5146" y2="3.0226" width="0.1524" layer="39"/>
<wire x1="-2.5146" y1="3.0226" x2="2.5146" y2="3.0226" width="0.1524" layer="39"/>
<wire x1="2.5146" y1="3.0226" x2="2.5146" y2="2.7178" width="0.1524" layer="39"/>
<wire x1="4.1656" y1="2.7178" x2="2.5146" y2="2.7178" width="0.1524" layer="39"/>
<wire x1="4.1656" y1="2.7178" x2="4.1656" y2="-2.7178" width="0.1524" layer="39"/>
<wire x1="4.1656" y1="-2.7178" x2="2.5146" y2="-2.7178" width="0.1524" layer="39"/>
<wire x1="2.5146" y1="-2.7178" x2="2.5146" y2="-3.0226" width="0.1524" layer="39"/>
<wire x1="2.5146" y1="-3.0226" x2="-2.5146" y2="-3.0226" width="0.1524" layer="39"/>
<wire x1="-2.5146" y1="-3.0226" x2="-2.5146" y2="-2.7178" width="0.1524" layer="39"/>
<wire x1="-4.1656" y1="-2.7178" x2="-2.5146" y2="-2.7178" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-4.1668" y="-2.7188"/>
<vertex x="-4.1668" y="2.7188"/>
<vertex x="-2.503" y="2.7188"/>
<vertex x="-2.503" y="3.033"/>
<vertex x="2.503" y="3.033"/>
<vertex x="2.503" y="2.7188"/>
<vertex x="4.1668" y="2.7188"/>
<vertex x="4.1668" y="-2.7188"/>
<vertex x="2.503" y="-2.7188"/>
<vertex x="2.503" y="-3.033"/>
<vertex x="-2.503" y="-3.033"/>
<vertex x="-2.503" y="-2.7188"/>
</polygon>
<wire x1="-2.1336" y1="-2.6416" x2="2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.6416" x2="-2.1336" y2="2.6416" width="0.1524" layer="21"/>
<text x="-3.3528" y="2.3876" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="8S1-L">
<smd name="1" x="-2.4142" y="1.905" dx="1.6764" dy="0.51" layer="1"/>
<smd name="2" x="-2.4142" y="0.635" dx="1.6764" dy="0.51" layer="1"/>
<smd name="3" x="-2.4142" y="-0.635" dx="1.6764" dy="0.51" layer="1"/>
<smd name="4" x="-2.4142" y="-1.905" dx="1.6764" dy="0.51" layer="1"/>
<smd name="5" x="2.4142" y="-1.905" dx="1.6764" dy="0.51" layer="1"/>
<smd name="6" x="2.4142" y="-0.635" dx="1.6764" dy="0.51" layer="1"/>
<smd name="7" x="2.4142" y="0.635" dx="1.6764" dy="0.51" layer="1"/>
<smd name="8" x="2.4142" y="1.905" dx="1.6764" dy="0.51" layer="1"/>
<wire x1="-2.0066" y1="1.651" x2="-2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.381" x2="-2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.889" x2="-2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.159" x2="-2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-1.651" x2="2.0066" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="2.0066" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.381" x2="2.0066" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="2.0066" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.889" x2="2.0066" y2="0.381" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="2.0066" y2="0.889" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.159" x2="2.0066" y2="1.651" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="2.0066" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.5146" x2="2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.5146" x2="2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.5146" x2="0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.5146" x2="-2.0066" y2="2.5146" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.5146" x2="-2.0066" y2="-2.5146" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.5146" x2="-0.3048" y2="2.5146" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="1.1684" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.3528" y1="-2.2606" x2="-3.3528" y2="2.2606" width="0.1524" layer="39"/>
<wire x1="-3.3528" y1="2.2606" x2="-2.1082" y2="2.2606" width="0.1524" layer="39"/>
<wire x1="-2.1082" y1="2.2606" x2="-2.1082" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="-2.1082" y1="2.6162" x2="2.1082" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="2.1082" y1="2.6162" x2="2.1082" y2="2.2606" width="0.1524" layer="39"/>
<wire x1="3.3528" y1="2.2606" x2="2.1082" y2="2.2606" width="0.1524" layer="39"/>
<wire x1="3.3528" y1="2.2606" x2="3.3528" y2="-2.2606" width="0.1524" layer="39"/>
<wire x1="3.3528" y1="-2.2606" x2="2.1082" y2="-2.2606" width="0.1524" layer="39"/>
<wire x1="2.1082" y1="-2.2606" x2="2.1082" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="2.1082" y1="-2.6162" x2="-2.1082" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="-2.1082" y1="-2.6162" x2="-2.1082" y2="-2.2606" width="0.1524" layer="39"/>
<wire x1="-3.3528" y1="-2.2606" x2="-2.1082" y2="-2.2606" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-3.354" y="-2.2616"/>
<vertex x="-3.354" y="2.2616"/>
<vertex x="-2.0966" y="2.2616"/>
<vertex x="-2.0966" y="2.6266"/>
<vertex x="2.0966" y="2.6266"/>
<vertex x="2.0966" y="2.2616"/>
<vertex x="3.354" y="2.2616"/>
<vertex x="3.354" y="-2.2616"/>
<vertex x="2.0966" y="-2.2616"/>
<vertex x="2.0966" y="-2.6266"/>
<vertex x="-2.0966" y="-2.6266"/>
<vertex x="-2.0966" y="-2.2616"/>
</polygon>
<wire x1="-2.1336" y1="-2.6416" x2="2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-2.6416" x2="2.1336" y2="-2.4892" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.6416" x2="-2.1336" y2="2.6416" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="2.6416" x2="-2.1336" y2="2.4892" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-2.4892" x2="-2.1336" y2="-2.6416" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.4892" x2="2.1336" y2="2.6416" width="0.1524" layer="21"/>
<text x="-3.2512" y="2.286" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="AT24C64D-SSHM-B">
<pin name="A0" x="2.54" y="0" length="middle" direction="in"/>
<pin name="A1" x="2.54" y="-2.54" length="middle" direction="in"/>
<pin name="A2" x="2.54" y="-5.08" length="middle" direction="in"/>
<pin name="GND" x="2.54" y="-7.62" length="middle" direction="pwr"/>
<pin name="SDA" x="53.34" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="SCL" x="53.34" y="-5.08" length="middle" direction="in" rot="R180"/>
<pin name="WP" x="53.34" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="VCC" x="53.34" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="48.26" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="48.26" y1="-12.7" x2="48.26" y2="5.08" width="0.1524" layer="94"/>
<wire x1="48.26" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="23.2156" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="22.5806" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="AT24C64D-SSHM-B" prefix="U">
<gates>
<gate name="A" symbol="AT24C64D-SSHM-B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="8S1">
<connects>
<connect gate="A" pin="A0" pad="1"/>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="SCL" pad="6"/>
<connect gate="A" pin="SDA" pad="5"/>
<connect gate="A" pin="VCC" pad="8"/>
<connect gate="A" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="AT24C64DSSHMB" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="8S1-M" package="8S1-M">
<connects>
<connect gate="A" pin="A0" pad="1"/>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="SCL" pad="6"/>
<connect gate="A" pin="SDA" pad="5"/>
<connect gate="A" pin="VCC" pad="8"/>
<connect gate="A" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="AT24C64DSSHMB" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="8S1-L" package="8S1-L">
<connects>
<connect gate="A" pin="A0" pad="1"/>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="SCL" pad="6"/>
<connect gate="A" pin="SDA" pad="5"/>
<connect gate="A" pin="VCC" pad="8"/>
<connect gate="A" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="AT24C64DSSHMB" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="" value="+5V-ISO"/>
<part name="IC1" library="arduino" deviceset="MEGAARDUINO_1" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U1" library="maxim" deviceset="DS3231S" device=""/>
<part name="D1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="S1M" device="" package3d_urn="urn:adsk.eagle:package:43460/3"/>
<part name="BT1" library="Battery Holder" library_urn="urn:adsk.eagle:library:12585215" deviceset="79578211" device="" package3d_urn="urn:adsk.eagle:package:12584884/9"/>
<part name="RN1" library="resistor-dil" library_urn="urn:adsk.eagle:library:342" deviceset="4R-N" device="0603-ARC" package3d_urn="urn:adsk.eagle:package:24926/1" value="4.7K"/>
<part name="RN2" library="resistor-dil" library_urn="urn:adsk.eagle:library:342" deviceset="4R-N" device="0603-ARC" package3d_urn="urn:adsk.eagle:package:24926/1" value="4.7K"/>
<part name="C1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="0.1uf"/>
<part name="C2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0603" package3d_urn="urn:adsk.eagle:package:23616/2" value="1uF"/>
<part name="U2" library="atreml-eprom" deviceset="AT24C64D-SSHM-B" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="P+1" gate="1" x="134.62" y="114.3" smashed="yes">
<attribute name="VALUE" x="132.08" y="109.22" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC1" gate="G$1" x="48.26" y="17.78" smashed="yes">
<attribute name="NAME" x="20.32" y="87.63" size="1.6764" layer="95"/>
</instance>
<instance part="GND1" gate="1" x="132.08" y="-38.1" smashed="yes">
<attribute name="VALUE" x="129.54" y="-40.64" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="A" x="137.16" y="35.56" smashed="yes">
<attribute name="NAME" x="167.9956" y="44.6786" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="167.3606" y="42.1386" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="D1" gate="G$1" x="231.14" y="81.28" smashed="yes" rot="R270">
<attribute name="NAME" x="231.6226" y="78.74" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="228.8286" y="78.74" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="BT1" gate="G$1" x="231.14" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="227.965" y="11.43" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="236.22" y="11.43" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="RN1" gate="A" x="154.94" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="157.988" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="157.988" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN1" gate="B" x="160.02" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="163.068" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="163.068" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN1" gate="C" x="165.1" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="168.148" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="168.148" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN1" gate="D" x="170.18" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="173.228" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="173.228" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN2" gate="A" x="190.5" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="193.548" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="193.548" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN2" gate="B" x="195.58" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="198.628" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="198.628" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN2" gate="C" x="200.66" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="203.708" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="203.708" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="RN2" gate="D" x="205.74" y="83.82" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.788" y="86.36" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="208.788" y="78.74" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="C1" gate="G$1" x="124.46" y="27.94" smashed="yes">
<attribute name="NAME" x="125.476" y="28.575" size="1.778" layer="95"/>
<attribute name="VALUE" x="125.476" y="23.749" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="111.76" y="27.94" smashed="yes">
<attribute name="NAME" x="112.776" y="28.575" size="1.778" layer="95"/>
<attribute name="VALUE" x="112.776" y="23.749" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="A" x="139.7" y="63.5" smashed="yes">
<attribute name="NAME" x="162.9156" y="72.6186" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="162.2806" y="70.0786" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="A" pin="32KHZ"/>
<wire x1="139.7" y1="35.56" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
<pinref part="RN2" gate="B" pin="1"/>
<wire x1="195.58" y1="78.74" x2="195.58" y2="71.12" width="0.1524" layer="91"/>
<wire x1="195.58" y1="71.12" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V-ISO" class="0">
<segment>
<label x="137.16" y="104.14" size="1.778" layer="95"/>
<wire x1="134.62" y1="104.14" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<wire x1="124.46" y1="101.6" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<wire x1="124.46" y1="104.14" x2="134.62" y2="104.14" width="0.1524" layer="91"/>
<junction x="134.62" y="104.14"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="IC1" gate="G$1" pin="+5V@1"/>
<wire x1="35.56" y1="91.44" x2="35.56" y2="101.6" width="0.1524" layer="91"/>
<wire x1="35.56" y1="101.6" x2="40.64" y2="101.6" width="0.1524" layer="91"/>
<junction x="124.46" y="101.6"/>
<pinref part="IC1" gate="G$1" pin="+5V@2"/>
<wire x1="40.64" y1="101.6" x2="45.72" y2="101.6" width="0.1524" layer="91"/>
<wire x1="45.72" y1="101.6" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<wire x1="40.64" y1="91.44" x2="40.64" y2="101.6" width="0.1524" layer="91"/>
<junction x="40.64" y="101.6"/>
<pinref part="IC1" gate="G$1" pin="+5V@3"/>
<wire x1="45.72" y1="91.44" x2="45.72" y2="101.6" width="0.1524" layer="91"/>
<junction x="45.72" y="101.6"/>
<pinref part="U1" gate="A" pin="VCC"/>
<wire x1="139.7" y1="33.02" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<wire x1="124.46" y1="33.02" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="RN1" gate="A" pin="2"/>
<wire x1="134.62" y1="104.14" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="154.94" y1="104.14" x2="154.94" y2="91.44" width="0.1524" layer="91"/>
<pinref part="RN1" gate="B" pin="2"/>
<wire x1="154.94" y1="91.44" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
<wire x1="154.94" y1="91.44" x2="160.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="160.02" y1="91.44" x2="160.02" y2="88.9" width="0.1524" layer="91"/>
<junction x="154.94" y="91.44"/>
<pinref part="RN1" gate="C" pin="2"/>
<wire x1="160.02" y1="91.44" x2="165.1" y2="91.44" width="0.1524" layer="91"/>
<wire x1="165.1" y1="91.44" x2="165.1" y2="88.9" width="0.1524" layer="91"/>
<junction x="160.02" y="91.44"/>
<pinref part="RN1" gate="D" pin="2"/>
<wire x1="165.1" y1="91.44" x2="170.18" y2="91.44" width="0.1524" layer="91"/>
<wire x1="170.18" y1="91.44" x2="170.18" y2="88.9" width="0.1524" layer="91"/>
<junction x="165.1" y="91.44"/>
<pinref part="RN2" gate="A" pin="2"/>
<wire x1="170.18" y1="91.44" x2="180.34" y2="91.44" width="0.1524" layer="91"/>
<wire x1="180.34" y1="91.44" x2="190.5" y2="91.44" width="0.1524" layer="91"/>
<wire x1="190.5" y1="91.44" x2="190.5" y2="88.9" width="0.1524" layer="91"/>
<junction x="170.18" y="91.44"/>
<pinref part="RN2" gate="B" pin="2"/>
<wire x1="190.5" y1="91.44" x2="195.58" y2="91.44" width="0.1524" layer="91"/>
<wire x1="195.58" y1="91.44" x2="195.58" y2="88.9" width="0.1524" layer="91"/>
<junction x="190.5" y="91.44"/>
<pinref part="RN2" gate="C" pin="2"/>
<wire x1="195.58" y1="91.44" x2="200.66" y2="91.44" width="0.1524" layer="91"/>
<wire x1="200.66" y1="91.44" x2="200.66" y2="88.9" width="0.1524" layer="91"/>
<junction x="195.58" y="91.44"/>
<pinref part="RN2" gate="D" pin="2"/>
<wire x1="200.66" y1="91.44" x2="205.74" y2="91.44" width="0.1524" layer="91"/>
<wire x1="205.74" y1="91.44" x2="205.74" y2="88.9" width="0.1524" layer="91"/>
<junction x="200.66" y="91.44"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="124.46" y1="30.48" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<junction x="124.46" y="33.02"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="124.46" y1="33.02" x2="111.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="231.14" y1="83.82" x2="231.14" y2="91.44" width="0.1524" layer="91"/>
<wire x1="231.14" y1="91.44" x2="205.74" y2="91.44" width="0.1524" layer="91"/>
<junction x="205.74" y="91.44"/>
<wire x1="193.04" y1="73.66" x2="180.34" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="VCC"/>
<wire x1="193.04" y1="63.5" x2="193.04" y2="73.66" width="0.1524" layer="91"/>
<wire x1="180.34" y1="73.66" x2="180.34" y2="91.44" width="0.1524" layer="91"/>
<junction x="180.34" y="91.44"/>
</segment>
</net>
<net name="GND-ISO" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<wire x1="132.08" y1="0" x2="132.08" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-40.64" x2="40.64" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-45.72" x2="45.72" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-45.72" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-45.72" x2="55.88" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-45.72" x2="60.96" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-45.72" x2="121.92" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-45.72" x2="121.92" y2="0" width="0.1524" layer="91"/>
<junction x="132.08" y="0"/>
<pinref part="IC1" gate="G$1" pin="GND@2"/>
<wire x1="45.72" y1="-40.64" x2="45.72" y2="-45.72" width="0.1524" layer="91"/>
<junction x="45.72" y="-45.72"/>
<pinref part="IC1" gate="G$1" pin="GND@3"/>
<wire x1="50.8" y1="-40.64" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<junction x="50.8" y="-45.72"/>
<pinref part="IC1" gate="G$1" pin="GND@4"/>
<wire x1="55.88" y1="-40.64" x2="55.88" y2="-45.72" width="0.1524" layer="91"/>
<junction x="55.88" y="-45.72"/>
<pinref part="IC1" gate="G$1" pin="GND@5"/>
<wire x1="60.96" y1="-40.64" x2="60.96" y2="-45.72" width="0.1524" layer="91"/>
<junction x="60.96" y="-45.72"/>
<wire x1="132.08" y1="0" x2="215.9" y2="0" width="0.1524" layer="91"/>
<wire x1="215.9" y1="0" x2="215.9" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="GND"/>
<wire x1="215.9" y1="27.94" x2="205.74" y2="27.94" width="0.1524" layer="91"/>
<pinref part="BT1" gate="G$1" pin="-"/>
<wire x1="231.14" y1="7.62" x2="231.14" y2="0" width="0.1524" layer="91"/>
<wire x1="231.14" y1="0" x2="215.9" y2="0" width="0.1524" layer="91"/>
<junction x="215.9" y="0"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="111.76" y1="22.86" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<wire x1="111.76" y1="20.32" x2="121.92" y2="20.32" width="0.1524" layer="91"/>
<wire x1="121.92" y1="20.32" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="20.32" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<wire x1="121.92" y1="20.32" x2="121.92" y2="0" width="0.1524" layer="91"/>
<wire x1="121.92" y1="0" x2="132.08" y2="0" width="0.1524" layer="91"/>
<junction x="121.92" y="20.32"/>
<junction x="132.08" y="0"/>
<pinref part="U2" gate="A" pin="GND"/>
<wire x1="142.24" y1="55.88" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
<wire x1="132.08" y1="55.88" x2="132.08" y2="0" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="WP"/>
<wire x1="193.04" y1="60.96" x2="215.9" y2="60.96" width="0.1524" layer="91"/>
<wire x1="215.9" y1="60.96" x2="215.9" y2="27.94" width="0.1524" layer="91"/>
<junction x="215.9" y="27.94"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(SDA/INT1)PD1"/>
<wire x1="106.68" y1="10.16" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<label x="152.4" y="45.72" size="1.778" layer="95"/>
<pinref part="U1" gate="A" pin="SCL"/>
<wire x1="205.74" y1="35.56" x2="205.74" y2="45.72" width="0.1524" layer="91"/>
<wire x1="205.74" y1="45.72" x2="200.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="200.66" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
<wire x1="106.68" y1="45.72" x2="106.68" y2="10.16" width="0.1524" layer="91"/>
<pinref part="RN2" gate="C" pin="1"/>
<wire x1="200.66" y1="78.74" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<junction x="200.66" y="45.72"/>
<pinref part="U2" gate="A" pin="SCL"/>
<wire x1="200.66" y1="58.42" x2="200.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="193.04" y1="58.42" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<junction x="200.66" y="58.42"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<wire x1="91.44" y1="48.26" x2="91.44" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="(SCL/INT0)PD0"/>
<wire x1="91.44" y1="12.7" x2="81.28" y2="12.7" width="0.1524" layer="91"/>
<label x="152.4" y="48.26" size="1.778" layer="95"/>
<pinref part="U1" gate="A" pin="SDA"/>
<wire x1="205.74" y1="33.02" x2="210.82" y2="33.02" width="0.1524" layer="91"/>
<wire x1="210.82" y1="33.02" x2="210.82" y2="53.34" width="0.1524" layer="91"/>
<wire x1="210.82" y1="53.34" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<wire x1="198.12" y1="53.34" x2="198.12" y2="48.26" width="0.1524" layer="91"/>
<wire x1="198.12" y1="48.26" x2="91.44" y2="48.26" width="0.1524" layer="91"/>
<pinref part="RN2" gate="D" pin="1"/>
<wire x1="205.74" y1="78.74" x2="205.74" y2="68.58" width="0.1524" layer="91"/>
<wire x1="205.74" y1="68.58" x2="198.12" y2="68.58" width="0.1524" layer="91"/>
<wire x1="198.12" y1="68.58" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<junction x="198.12" y="53.34"/>
<pinref part="U2" gate="A" pin="SDA"/>
<wire x1="193.04" y1="55.88" x2="193.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="193.04" y1="53.34" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5VBAT" class="0">
<segment>
<pinref part="U1" gate="A" pin="VBAT"/>
<wire x1="205.74" y1="30.48" x2="231.14" y2="30.48" width="0.1524" layer="91"/>
<pinref part="BT1" gate="G$1" pin="+"/>
<wire x1="231.14" y1="30.48" x2="231.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="231.14" y1="78.74" x2="231.14" y2="30.48" width="0.1524" layer="91"/>
<junction x="231.14" y="30.48"/>
<label x="233.68" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="137.16" y1="73.66" x2="137.16" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="A0"/>
<wire x1="137.16" y1="63.5" x2="142.24" y2="63.5" width="0.1524" layer="91"/>
<wire x1="137.16" y1="73.66" x2="165.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="RN1" gate="C" pin="1"/>
<wire x1="165.1" y1="73.66" x2="165.1" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="134.62" y1="76.2" x2="134.62" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U2" gate="A" pin="A1"/>
<wire x1="134.62" y1="60.96" x2="142.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="134.62" y1="76.2" x2="160.02" y2="76.2" width="0.1524" layer="91"/>
<pinref part="RN1" gate="B" pin="1"/>
<wire x1="160.02" y1="76.2" x2="160.02" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U2" gate="A" pin="A2"/>
<wire x1="142.24" y1="58.42" x2="132.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="58.42" x2="132.08" y2="78.74" width="0.1524" layer="91"/>
<pinref part="RN1" gate="A" pin="1"/>
<wire x1="132.08" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>

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
<library name="diy-modules">
<description>&lt;b&gt;DIY Modules for Arduino, Raspberry Pi, CubieBoard etc.&lt;/b&gt;
&lt;br&gt;&lt;br&gt;
The library contains a list of symbols and footprints for popular, cheap and easy-to-use electronic modules.&lt;br&gt;
The modules are intend to work with microprocessor-based platforms such as &lt;a href="http://arduino.cc"&gt;Arduino&lt;/a&gt;, &lt;a href="http://raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt;, &lt;a href="http://cubieboard.org/"&gt;CubieBoard&lt;/a&gt;, &lt;a href="http://beagleboard.org/"&gt;BeagleBone&lt;/a&gt; and many others. There are many manufacturers of the modules in the world. Almost all of them can be bought on &lt;a href="ebay.com"&gt;ebay.com&lt;/a&gt;.&lt;br&gt;
&lt;br&gt;
By using this library, you can design a PCB for devices created with usage of modules. Even if you do not need to create PCB design, you can also use the library to quickly document your work by drawing schematics of devices built by you.&lt;br&gt;
&lt;br&gt;
The latest version, examples, photos and much more can be found at: &lt;b&gt;&lt;a href="http://diymodules.org/eagle"&gt;diymodules.org/eagle&lt;/a&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;
Comments, suggestions and bug reports please send to: &lt;b&gt;&lt;a href="mailto:eagle@diymodules.org"&gt;eagle@diymodules.org&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Version: 1.8.0 (2017-Jul-02)&lt;/i&gt;&lt;br&gt;
&lt;i&gt;Created by: Miroslaw Brudnowski&lt;/i&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Released under the Creative Commons Attribution 4.0 International License: &lt;a href="http://creativecommons.org/licenses/by/4.0"&gt;http://creativecommons.org/licenses/by/4.0&lt;/a&gt;&lt;/i&gt;
&lt;br&gt;&lt;br&gt;
&lt;center&gt;
&lt;a href="http://diymodules.org/eagle"&gt;&lt;img src="http://www.diymodules.org/img/diymodules-lbr-image.php?v=1.8.0" alt="DIYmodules.org"&gt;&lt;/a&gt;
&lt;/center&gt;</description>
<packages>
<package name="RTC-DS3231-AT24C32">
<description>&lt;b&gt;RTC Module with Battery and EEPROM&lt;/b&gt; based on &lt;b&gt;DS3231&lt;/b&gt; and &lt;b&gt;AT24C32&lt;/b&gt; chips</description>
<wire x1="-19.304" y1="11.684" x2="19.304" y2="11.684" width="0.127" layer="21"/>
<wire x1="19.05" y1="4.445" x2="19.05" y2="3.175" width="0.127" layer="21"/>
<wire x1="19.05" y1="1.905" x2="19.05" y2="0.635" width="0.127" layer="21"/>
<wire x1="19.05" y1="-0.635" x2="19.05" y2="-1.905" width="0.127" layer="21"/>
<wire x1="19.05" y1="-3.175" x2="19.05" y2="-4.445" width="0.127" layer="21"/>
<wire x1="19.304" y1="-11.684" x2="-19.304" y2="-11.684" width="0.127" layer="21"/>
<hole x="-11.43" y="-9.525" drill="2.2"/>
<hole x="-11.43" y="9.525" drill="2.2"/>
<pad name="J1.1" x="-17.78" y="6.35" drill="1" shape="square"/>
<pad name="J1.2" x="-17.78" y="3.81" drill="1"/>
<pad name="J1.3" x="-17.78" y="1.27" drill="1"/>
<pad name="J1.4" x="-17.78" y="-1.27" drill="1"/>
<pad name="J1.5" x="-17.78" y="-3.81" drill="1"/>
<pad name="J2.1" x="17.78" y="3.81" drill="1" shape="square"/>
<pad name="J2.2" x="17.78" y="1.27" drill="1"/>
<pad name="J2.3" x="17.78" y="-1.27" drill="1"/>
<pad name="J2.4" x="17.78" y="-3.81" drill="1"/>
<text x="0" y="12.7" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-12.7" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<pad name="J1.6" x="-17.78" y="-6.35" drill="1"/>
<hole x="15.24" y="9.525" drill="2.2"/>
<wire x1="-19.05" y1="-6.985" x2="-19.05" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-4.445" x2="-19.05" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-1.905" x2="-19.05" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-19.05" y1="0.635" x2="-19.05" y2="1.905" width="0.127" layer="21"/>
<wire x1="-19.05" y1="3.175" x2="-19.05" y2="4.445" width="0.127" layer="21"/>
<wire x1="-19.05" y1="5.715" x2="-19.05" y2="6.985" width="0.127" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-18.415" y2="7.62" width="0.127" layer="21"/>
<wire x1="-18.415" y1="7.62" x2="-17.145" y2="7.62" width="0.127" layer="21"/>
<wire x1="-17.145" y1="7.62" x2="-16.51" y2="6.985" width="0.127" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="5.715" width="0.127" layer="21"/>
<wire x1="-16.51" y1="5.715" x2="-17.145" y2="5.08" width="0.127" layer="21"/>
<wire x1="-17.145" y1="5.08" x2="-16.51" y2="4.445" width="0.127" layer="21"/>
<wire x1="-16.51" y1="4.445" x2="-16.51" y2="3.175" width="0.127" layer="21"/>
<wire x1="-16.51" y1="3.175" x2="-17.145" y2="2.54" width="0.127" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-16.51" y2="1.905" width="0.127" layer="21"/>
<wire x1="-16.51" y1="1.905" x2="-16.51" y2="0.635" width="0.127" layer="21"/>
<wire x1="-16.51" y1="0.635" x2="-17.145" y2="0" width="0.127" layer="21"/>
<wire x1="-17.145" y1="0" x2="-16.51" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-0.635" x2="-16.51" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-1.905" x2="-17.145" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-2.54" x2="-16.51" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-3.175" x2="-16.51" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-4.445" x2="-17.145" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-5.08" x2="-16.51" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-5.715" x2="-16.51" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-16.51" y1="-6.985" x2="-17.145" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-17.145" y1="-7.62" x2="-18.415" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-18.415" y1="-7.62" x2="-19.05" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-5.715" x2="-18.415" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-18.415" y1="-5.08" x2="-19.05" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-3.175" x2="-18.415" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-19.05" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-0.635" x2="-18.415" y2="0" width="0.127" layer="21"/>
<wire x1="-18.415" y1="0" x2="-19.05" y2="0.635" width="0.127" layer="21"/>
<wire x1="-19.05" y1="1.905" x2="-18.415" y2="2.54" width="0.127" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-19.05" y2="3.175" width="0.127" layer="21"/>
<wire x1="-19.05" y1="4.445" x2="-18.415" y2="5.08" width="0.127" layer="21"/>
<wire x1="-18.415" y1="5.08" x2="-19.05" y2="5.715" width="0.127" layer="21"/>
<wire x1="19.05" y1="-4.445" x2="18.415" y2="-5.08" width="0.127" layer="21"/>
<wire x1="18.415" y1="-5.08" x2="17.145" y2="-5.08" width="0.127" layer="21"/>
<wire x1="17.145" y1="-5.08" x2="16.51" y2="-4.445" width="0.127" layer="21"/>
<wire x1="16.51" y1="-4.445" x2="16.51" y2="-3.175" width="0.127" layer="21"/>
<wire x1="16.51" y1="-3.175" x2="17.145" y2="-2.54" width="0.127" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="16.51" y2="-1.905" width="0.127" layer="21"/>
<wire x1="16.51" y1="-1.905" x2="16.51" y2="-0.635" width="0.127" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="17.145" y2="0" width="0.127" layer="21"/>
<wire x1="17.145" y1="0" x2="16.51" y2="0.635" width="0.127" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="1.905" width="0.127" layer="21"/>
<wire x1="16.51" y1="1.905" x2="17.145" y2="2.54" width="0.127" layer="21"/>
<wire x1="17.145" y1="2.54" x2="16.51" y2="3.175" width="0.127" layer="21"/>
<wire x1="16.51" y1="3.175" x2="16.51" y2="4.445" width="0.127" layer="21"/>
<wire x1="16.51" y1="4.445" x2="17.145" y2="5.08" width="0.127" layer="21"/>
<wire x1="17.145" y1="5.08" x2="18.415" y2="5.08" width="0.127" layer="21"/>
<wire x1="18.415" y1="5.08" x2="19.05" y2="4.445" width="0.127" layer="21"/>
<wire x1="19.05" y1="3.175" x2="18.415" y2="2.54" width="0.127" layer="21"/>
<wire x1="18.415" y1="2.54" x2="19.05" y2="1.905" width="0.127" layer="21"/>
<wire x1="19.05" y1="0.635" x2="18.415" y2="0" width="0.127" layer="21"/>
<wire x1="18.415" y1="0" x2="19.05" y2="-0.635" width="0.127" layer="21"/>
<wire x1="19.05" y1="-1.905" x2="18.415" y2="-2.54" width="0.127" layer="21"/>
<wire x1="18.415" y1="-2.54" x2="19.05" y2="-3.175" width="0.127" layer="21"/>
<text x="-15.875" y="6.35" size="1.27" layer="21" align="center-left">32K</text>
<text x="-15.875" y="3.81" size="1.27" layer="21" align="center-left">SQW</text>
<text x="-15.875" y="1.27" size="1.27" layer="21" align="center-left">SCL</text>
<text x="-15.875" y="-1.27" size="1.27" layer="21" align="center-left">SDA</text>
<text x="-15.875" y="-3.81" size="1.27" layer="21" align="center-left">VCC</text>
<text x="-15.875" y="-6.35" size="1.27" layer="21" align="center-left">GND</text>
<text x="15.875" y="3.81" size="1.27" layer="21" align="center-right">SCL</text>
<text x="15.875" y="1.27" size="1.27" layer="21" align="center-right">SDA</text>
<text x="15.875" y="-1.27" size="1.27" layer="21" align="center-right">VCC</text>
<text x="15.875" y="-3.81" size="1.27" layer="21" align="center-right">GND</text>
<wire x1="-19.304" y1="11.684" x2="-19.304" y2="-11.684" width="0.127" layer="21"/>
<wire x1="19.304" y1="11.684" x2="19.304" y2="-11.684" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RTC-DS3231-AT24C32">
<description>&lt;b&gt;RTC Module with Battery and EEPROM&lt;/b&gt; based on &lt;b&gt;DS3231&lt;/b&gt; and &lt;b&gt;AT24C32&lt;/b&gt; chips</description>
<pin name="VCC.1" x="-17.78" y="-5.08" length="middle" direction="pwr"/>
<pin name="SDA.1" x="-17.78" y="-2.54" length="middle"/>
<pin name="SCL.1" x="-17.78" y="0" length="middle"/>
<pin name="SQW" x="-17.78" y="2.54" length="middle"/>
<pin name="32K" x="-17.78" y="5.08" length="middle"/>
<pin name="GND.2" x="17.78" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC.2" x="17.78" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="SDA.2" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="SCL.2" x="17.78" y="2.54" length="middle" rot="R180"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<text x="-12.7" y="15.24" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND.1" x="-17.78" y="-7.62" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RTC-DS3231-AT24C32">
<description>&lt;b&gt;RTC Module with Battery and EEPROM&lt;/b&gt; based on &lt;b&gt;DS3231&lt;/b&gt; and &lt;b&gt;AT24C32&lt;/b&gt; chips
&lt;p&gt;Tutorial can be found here:&lt;br /&gt;
&lt;a href="https://edwardmallon.wordpress.com/2014/05/21/using-a-cheap-3-ds3231-rtc-at24c32-eeprom-from-ebay/"&gt;https://edwardmallon.wordpress.com/2014/05/21/using-a-cheap-3-ds3231-rtc-at24c32-eeprom-from-ebay/&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/DS3231+AT24C32+module"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=RTC-DS3231-AT24C32"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RTC-DS3231-AT24C32" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RTC-DS3231-AT24C32">
<connects>
<connect gate="G$1" pin="32K" pad="J1.1"/>
<connect gate="G$1" pin="GND.1" pad="J1.6"/>
<connect gate="G$1" pin="GND.2" pad="J2.4"/>
<connect gate="G$1" pin="SCL.1" pad="J1.3"/>
<connect gate="G$1" pin="SCL.2" pad="J2.1"/>
<connect gate="G$1" pin="SDA.1" pad="J1.4"/>
<connect gate="G$1" pin="SDA.2" pad="J2.2"/>
<connect gate="G$1" pin="SQW" pad="J1.2"/>
<connect gate="G$1" pin="VCC.1" pad="J1.5"/>
<connect gate="G$1" pin="VCC.2" pad="J2.3"/>
</connects>
<technologies>
<technology name=""/>
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
<package name="R0402" urn="urn:adsk.eagle:footprint:23043/3" library_version="10">
<description>&lt;b&gt;Chip RESISTOR 0402 EIA (1005 Metric)&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1" y1="0.483" x2="1" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="0.483" x2="1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="-0.483" x2="-1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1" y1="-0.483" x2="-1" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.35" x2="0.1999" y2="0.35" layer="35"/>
</package>
<package name="R0603" urn="urn:adsk.eagle:footprint:23044/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:23045/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W" urn="urn:adsk.eagle:footprint:23046/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206" urn="urn:adsk.eagle:footprint:23047/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W" urn="urn:adsk.eagle:footprint:23048/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210" urn="urn:adsk.eagle:footprint:23049/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W" urn="urn:adsk.eagle:footprint:23050/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010" urn="urn:adsk.eagle:footprint:23051/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W" urn="urn:adsk.eagle:footprint:23052/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012" urn="urn:adsk.eagle:footprint:23053/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W" urn="urn:adsk.eagle:footprint:23054/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512" urn="urn:adsk.eagle:footprint:23055/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W" urn="urn:adsk.eagle:footprint:23056/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216" urn="urn:adsk.eagle:footprint:23057/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W" urn="urn:adsk.eagle:footprint:23058/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225" urn="urn:adsk.eagle:footprint:23059/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W" urn="urn:adsk.eagle:footprint:23060/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025" urn="urn:adsk.eagle:footprint:23061/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W" urn="urn:adsk.eagle:footprint:23062/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332" urn="urn:adsk.eagle:footprint:23063/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W" urn="urn:adsk.eagle:footprint:25646/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805" urn="urn:adsk.eagle:footprint:23065/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206" urn="urn:adsk.eagle:footprint:23066/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406" urn="urn:adsk.eagle:footprint:23067/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012" urn="urn:adsk.eagle:footprint:23068/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309" urn="urn:adsk.eagle:footprint:23069/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216" urn="urn:adsk.eagle:footprint:23070/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516" urn="urn:adsk.eagle:footprint:23071/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923" urn="urn:adsk.eagle:footprint:23072/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5" urn="urn:adsk.eagle:footprint:22991/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:22998/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:22992/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:22993/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:22997/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:22994/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:22995/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10" urn="urn:adsk.eagle:footprint:23073/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12" urn="urn:adsk.eagle:footprint:23074/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0411/12" urn="urn:adsk.eagle:footprint:23076/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15" urn="urn:adsk.eagle:footprint:23077/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V" urn="urn:adsk.eagle:footprint:23078/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15" urn="urn:adsk.eagle:footprint:23079/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V" urn="urn:adsk.eagle:footprint:23080/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17" urn="urn:adsk.eagle:footprint:23081/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22" urn="urn:adsk.eagle:footprint:23082/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V" urn="urn:adsk.eagle:footprint:23083/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22" urn="urn:adsk.eagle:footprint:23084/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V" urn="urn:adsk.eagle:footprint:23085/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15" urn="urn:adsk.eagle:footprint:23086/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22" urn="urn:adsk.eagle:footprint:23087/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V" urn="urn:adsk.eagle:footprint:23088/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12" urn="urn:adsk.eagle:footprint:23089/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17" urn="urn:adsk.eagle:footprint:23090/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0" urn="urn:adsk.eagle:footprint:23091/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102AX" urn="urn:adsk.eagle:footprint:23100/1" library_version="10">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="0922V" urn="urn:adsk.eagle:footprint:23098/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="MINI_MELF-0102R" urn="urn:adsk.eagle:footprint:23092/1" library_version="10">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W" urn="urn:adsk.eagle:footprint:23093/1" library_version="10">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R" urn="urn:adsk.eagle:footprint:25676/1" library_version="10">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W" urn="urn:adsk.eagle:footprint:25677/1" library_version="10">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R" urn="urn:adsk.eagle:footprint:25678/1" library_version="10">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W" urn="urn:adsk.eagle:footprint:25679/1" library_version="10">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RDH/15" urn="urn:adsk.eagle:footprint:23099/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:22999/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0309V" urn="urn:adsk.eagle:footprint:23075/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="R0201" urn="urn:adsk.eagle:footprint:25683/1" library_version="10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VMTA55" urn="urn:adsk.eagle:footprint:25689/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60" urn="urn:adsk.eagle:footprint:25690/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="VTA52" urn="urn:adsk.eagle:footprint:25684/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53" urn="urn:adsk.eagle:footprint:25685/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54" urn="urn:adsk.eagle:footprint:25686/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55" urn="urn:adsk.eagle:footprint:25687/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56" urn="urn:adsk.eagle:footprint:25688/1" library_version="10">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="R4527" urn="urn:adsk.eagle:footprint:13246/1" library_version="10">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001" urn="urn:adsk.eagle:footprint:25692/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002" urn="urn:adsk.eagle:footprint:25693/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2" urn="urn:adsk.eagle:footprint:25694/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515" urn="urn:adsk.eagle:footprint:25695/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527" urn="urn:adsk.eagle:footprint:25696/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927" urn="urn:adsk.eagle:footprint:25697/1" library_version="10">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" urn="urn:adsk.eagle:footprint:25698/1" library_version="10">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R" urn="urn:adsk.eagle:footprint:25699/1" library_version="10">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="R01005" urn="urn:adsk.eagle:footprint:25701/1" library_version="10">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="R0402" urn="urn:adsk.eagle:package:23547/3" type="model" library_version="10">
<description>Chip RESISTOR 0402 EIA (1005 Metric)</description>
<packageinstances>
<packageinstance name="R0402"/>
</packageinstances>
</package3d>
<package3d name="R0603" urn="urn:adsk.eagle:package:23555/3" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0603"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:23553/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="R0805W" urn="urn:adsk.eagle:package:23537/2" type="model" library_version="10">
<description>RESISTOR wave soldering</description>
<packageinstances>
<packageinstance name="R0805W"/>
</packageinstances>
</package3d>
<package3d name="R1206" urn="urn:adsk.eagle:package:23540/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1206"/>
</packageinstances>
</package3d>
<package3d name="R1206W" urn="urn:adsk.eagle:package:23539/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1206W"/>
</packageinstances>
</package3d>
<package3d name="R1210" urn="urn:adsk.eagle:package:23554/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1210"/>
</packageinstances>
</package3d>
<package3d name="R1210W" urn="urn:adsk.eagle:package:23541/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1210W"/>
</packageinstances>
</package3d>
<package3d name="R2010" urn="urn:adsk.eagle:package:23551/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2010"/>
</packageinstances>
</package3d>
<package3d name="R2010W" urn="urn:adsk.eagle:package:23542/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2010W"/>
</packageinstances>
</package3d>
<package3d name="R2012" urn="urn:adsk.eagle:package:23543/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2012"/>
</packageinstances>
</package3d>
<package3d name="R2012W" urn="urn:adsk.eagle:package:23544/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2012W"/>
</packageinstances>
</package3d>
<package3d name="R2512" urn="urn:adsk.eagle:package:23545/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2512"/>
</packageinstances>
</package3d>
<package3d name="R2512W" urn="urn:adsk.eagle:package:23565/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2512W"/>
</packageinstances>
</package3d>
<package3d name="R3216" urn="urn:adsk.eagle:package:23557/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3216"/>
</packageinstances>
</package3d>
<package3d name="R3216W" urn="urn:adsk.eagle:package:23548/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3216W"/>
</packageinstances>
</package3d>
<package3d name="R3225" urn="urn:adsk.eagle:package:23549/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3225"/>
</packageinstances>
</package3d>
<package3d name="R3225W" urn="urn:adsk.eagle:package:23550/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3225W"/>
</packageinstances>
</package3d>
<package3d name="R5025" urn="urn:adsk.eagle:package:23552/2" type="model" library_version="10">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R5025"/>
</packageinstances>
</package3d>
<package3d name="R5025W" urn="urn:adsk.eagle:package:23558/2" type="model" library_version="10">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R5025W"/>
</packageinstances>
</package3d>
<package3d name="R6332" urn="urn:adsk.eagle:package:23559/2" type="model" library_version="10">
<description>RESISTOR
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332"/>
</packageinstances>
</package3d>
<package3d name="R6332W" urn="urn:adsk.eagle:package:26078/2" type="model" library_version="10">
<description>RESISTOR wave soldering
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332W"/>
</packageinstances>
</package3d>
<package3d name="M0805" urn="urn:adsk.eagle:package:23556/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M0805"/>
</packageinstances>
</package3d>
<package3d name="M1206" urn="urn:adsk.eagle:package:23566/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M1206"/>
</packageinstances>
</package3d>
<package3d name="M1406" urn="urn:adsk.eagle:package:23569/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M1406"/>
</packageinstances>
</package3d>
<package3d name="M2012" urn="urn:adsk.eagle:package:23561/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M2012"/>
</packageinstances>
</package3d>
<package3d name="M2309" urn="urn:adsk.eagle:package:23562/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M2309"/>
</packageinstances>
</package3d>
<package3d name="M3216" urn="urn:adsk.eagle:package:23563/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M3216"/>
</packageinstances>
</package3d>
<package3d name="M3516" urn="urn:adsk.eagle:package:23573/2" type="model" library_version="10">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M3516"/>
</packageinstances>
</package3d>
<package3d name="M5923" urn="urn:adsk.eagle:package:23564/3" type="model" library_version="10">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M5923"/>
</packageinstances>
</package3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:23488/1" type="box" library_version="10">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:23498/2" type="model" library_version="10">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:23491/2" type="model" library_version="10">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:23489/1" type="box" library_version="10">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:23492/1" type="box" library_version="10">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:23490/1" type="box" library_version="10">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:23502/1" type="box" library_version="10">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:23493/2" type="model" library_version="10">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0309/10" urn="urn:adsk.eagle:package:23567/2" type="model" library_version="10">
<description>RESISTOR
type 0309, grid 10mm</description>
<packageinstances>
<packageinstance name="0309/10"/>
</packageinstances>
</package3d>
<package3d name="0309/12" urn="urn:adsk.eagle:package:23571/1" type="box" library_version="10">
<description>RESISTOR
type 0309, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0309/12"/>
</packageinstances>
</package3d>
<package3d name="0411/12" urn="urn:adsk.eagle:package:23578/1" type="box" library_version="10">
<description>RESISTOR
type 0411, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0411/12"/>
</packageinstances>
</package3d>
<package3d name="0411/15" urn="urn:adsk.eagle:package:23568/2" type="model" library_version="10">
<description>RESISTOR
type 0411, grid 15 mm</description>
<packageinstances>
<packageinstance name="0411/15"/>
</packageinstances>
</package3d>
<package3d name="0411V" urn="urn:adsk.eagle:package:23570/1" type="box" library_version="10">
<description>RESISTOR
type 0411, grid 3.81 mm</description>
<packageinstances>
<packageinstance name="0411V"/>
</packageinstances>
</package3d>
<package3d name="0414/15" urn="urn:adsk.eagle:package:23579/2" type="model" library_version="10">
<description>RESISTOR
type 0414, grid 15 mm</description>
<packageinstances>
<packageinstance name="0414/15"/>
</packageinstances>
</package3d>
<package3d name="0414V" urn="urn:adsk.eagle:package:23574/1" type="box" library_version="10">
<description>RESISTOR
type 0414, grid 5 mm</description>
<packageinstances>
<packageinstance name="0414V"/>
</packageinstances>
</package3d>
<package3d name="0617/17" urn="urn:adsk.eagle:package:23575/2" type="model" library_version="10">
<description>RESISTOR
type 0617, grid 17.5 mm</description>
<packageinstances>
<packageinstance name="0617/17"/>
</packageinstances>
</package3d>
<package3d name="0617/22" urn="urn:adsk.eagle:package:23577/1" type="box" library_version="10">
<description>RESISTOR
type 0617, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0617/22"/>
</packageinstances>
</package3d>
<package3d name="0617V" urn="urn:adsk.eagle:package:23576/1" type="box" library_version="10">
<description>RESISTOR
type 0617, grid 5 mm</description>
<packageinstances>
<packageinstance name="0617V"/>
</packageinstances>
</package3d>
<package3d name="0922/22" urn="urn:adsk.eagle:package:23580/2" type="model" library_version="10">
<description>RESISTOR
type 0922, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0922/22"/>
</packageinstances>
</package3d>
<package3d name="P0613V" urn="urn:adsk.eagle:package:23582/1" type="box" library_version="10">
<description>RESISTOR
type 0613, grid 5 mm</description>
<packageinstances>
<packageinstance name="P0613V"/>
</packageinstances>
</package3d>
<package3d name="P0613/15" urn="urn:adsk.eagle:package:23581/2" type="model" library_version="10">
<description>RESISTOR
type 0613, grid 15 mm</description>
<packageinstances>
<packageinstance name="P0613/15"/>
</packageinstances>
</package3d>
<package3d name="P0817/22" urn="urn:adsk.eagle:package:23583/1" type="box" library_version="10">
<description>RESISTOR
type 0817, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="P0817/22"/>
</packageinstances>
</package3d>
<package3d name="P0817V" urn="urn:adsk.eagle:package:23608/1" type="box" library_version="10">
<description>RESISTOR
type 0817, grid 6.35 mm</description>
<packageinstances>
<packageinstance name="P0817V"/>
</packageinstances>
</package3d>
<package3d name="V234/12" urn="urn:adsk.eagle:package:23592/1" type="box" library_version="10">
<description>RESISTOR
type V234, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="V234/12"/>
</packageinstances>
</package3d>
<package3d name="V235/17" urn="urn:adsk.eagle:package:23586/2" type="model" library_version="10">
<description>RESISTOR
type V235, grid 17.78 mm</description>
<packageinstances>
<packageinstance name="V235/17"/>
</packageinstances>
</package3d>
<package3d name="V526-0" urn="urn:adsk.eagle:package:23590/1" type="box" library_version="10">
<description>RESISTOR
type V526-0, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="V526-0"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102AX" urn="urn:adsk.eagle:package:23594/1" type="box" library_version="10">
<description>Mini MELF 0102 Axial</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102AX"/>
</packageinstances>
</package3d>
<package3d name="0922V" urn="urn:adsk.eagle:package:23589/1" type="box" library_version="10">
<description>RESISTOR
type 0922, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0922V"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102R" urn="urn:adsk.eagle:package:23591/2" type="model" library_version="10">
<description>CECC Size RC2211 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102W" urn="urn:adsk.eagle:package:23588/2" type="model" library_version="10">
<description>CECC Size RC2211 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204R" urn="urn:adsk.eagle:package:26109/2" type="model" library_version="10">
<description>CECC Size RC3715 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204W" urn="urn:adsk.eagle:package:26111/2" type="model" library_version="10">
<description>CECC Size RC3715 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207R" urn="urn:adsk.eagle:package:26113/2" type="model" library_version="10">
<description>CECC Size RC6123 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207W" urn="urn:adsk.eagle:package:26112/2" type="model" library_version="10">
<description>CECC Size RC6123 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207W"/>
</packageinstances>
</package3d>
<package3d name="RDH/15" urn="urn:adsk.eagle:package:23595/1" type="box" library_version="10">
<description>RESISTOR
type RDH, grid 15 mm</description>
<packageinstances>
<packageinstance name="RDH/15"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:23495/1" type="box" library_version="10">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="0309V" urn="urn:adsk.eagle:package:23572/1" type="box" library_version="10">
<description>RESISTOR
type 0309, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0309V"/>
</packageinstances>
</package3d>
<package3d name="R0201" urn="urn:adsk.eagle:package:26117/2" type="model" library_version="10">
<description>RESISTOR chip
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R0201"/>
</packageinstances>
</package3d>
<package3d name="VMTA55" urn="urn:adsk.eagle:package:26121/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTA55"/>
</packageinstances>
</package3d>
<package3d name="VMTB60" urn="urn:adsk.eagle:package:26122/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC60
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTB60"/>
</packageinstances>
</package3d>
<package3d name="VTA52" urn="urn:adsk.eagle:package:26116/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR52
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA52"/>
</packageinstances>
</package3d>
<package3d name="VTA53" urn="urn:adsk.eagle:package:26118/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR53
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA53"/>
</packageinstances>
</package3d>
<package3d name="VTA54" urn="urn:adsk.eagle:package:26119/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR54
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA54"/>
</packageinstances>
</package3d>
<package3d name="VTA55" urn="urn:adsk.eagle:package:26120/2" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA55"/>
</packageinstances>
</package3d>
<package3d name="VTA56" urn="urn:adsk.eagle:package:26129/3" type="model" library_version="10">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR56
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA56"/>
</packageinstances>
</package3d>
<package3d name="R4527" urn="urn:adsk.eagle:package:13310/2" type="model" library_version="10">
<description>Package 4527
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<packageinstances>
<packageinstance name="R4527"/>
</packageinstances>
</package3d>
<package3d name="WSC0001" urn="urn:adsk.eagle:package:26123/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0001"/>
</packageinstances>
</package3d>
<package3d name="WSC0002" urn="urn:adsk.eagle:package:26125/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0002"/>
</packageinstances>
</package3d>
<package3d name="WSC01/2" urn="urn:adsk.eagle:package:26127/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC01/2"/>
</packageinstances>
</package3d>
<package3d name="WSC2515" urn="urn:adsk.eagle:package:26134/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC2515"/>
</packageinstances>
</package3d>
<package3d name="WSC4527" urn="urn:adsk.eagle:package:26126/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC4527"/>
</packageinstances>
</package3d>
<package3d name="WSC6927" urn="urn:adsk.eagle:package:26128/2" type="model" library_version="10">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC6927"/>
</packageinstances>
</package3d>
<package3d name="R1218" urn="urn:adsk.eagle:package:26131/2" type="model" library_version="10">
<description>CRCW1218 Thick Film, Rectangular Chip Resistors
Source: http://www.vishay.com .. dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R1218"/>
</packageinstances>
</package3d>
<package3d name="1812X7R" urn="urn:adsk.eagle:package:26130/2" type="model" library_version="10">
<description>Chip Monolithic Ceramic Capacitors Medium Voltage High Capacitance for General Use
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<packageinstances>
<packageinstance name="1812X7R"/>
</packageinstances>
</package3d>
<package3d name="R01005" urn="urn:adsk.eagle:package:26133/2" type="model" library_version="10">
<description>Chip, 0.40 X 0.20 X 0.16 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.16 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="R01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-US" urn="urn:adsk.eagle:symbol:23200/1" library_version="10">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US_" urn="urn:adsk.eagle:component:23792/21" prefix="R" uservalue="yes" library_version="10">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23547/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23555/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23553/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23537/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23540/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23539/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23554/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23541/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23551/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23542/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23543/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23544/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23545/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23565/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23557/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23548/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23549/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23550/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23552/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23558/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23559/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26078/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23556/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23566/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23569/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23561/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23562/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23563/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23573/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23564/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23488/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23498/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23491/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23489/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23490/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23502/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23493/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23567/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23571/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23578/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23568/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23570/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23579/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23574/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23575/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23577/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23576/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23580/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23582/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23581/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23583/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23608/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23592/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23586/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23590/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23594/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23589/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23591/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23588/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26109/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26111/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26113/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26112/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23595/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23495/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23572/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26117/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26121/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26122/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26116/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26118/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26119/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26120/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26129/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13310/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26123/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26125/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26127/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26134/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26126/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26128/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26131/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26130/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26133/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
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
<part name="U$1" library="diy-modules" deviceset="RTC-DS3231-AT24C32" device=""/>
<part name="R33" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0402" package3d_urn="urn:adsk.eagle:package:23547/3" value="22K"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="" value="+5V-ISO"/>
<part name="IC1" library="arduino" deviceset="MEGAARDUINO_1" device="" value="ARDUINO-MEGA-HEADER"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="162.56" y="83.82" smashed="yes">
<attribute name="NAME" x="149.86" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="149.86" y="96.52" size="1.778" layer="96"/>
</instance>
<instance part="R33" gate="G$1" x="134.62" y="93.98" smashed="yes" rot="R90">
<attribute name="NAME" x="133.1214" y="90.17" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="137.922" y="90.17" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+1" gate="1" x="134.62" y="114.3" smashed="yes">
<attribute name="VALUE" x="132.08" y="109.22" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC1" gate="G$1" x="48.26" y="17.78" smashed="yes">
<attribute name="NAME" x="20.32" y="87.63" size="1.6764" layer="95"/>
</instance>
<instance part="GND1" gate="1" x="132.08" y="-38.1" smashed="yes">
<attribute name="VALUE" x="129.54" y="-40.64" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="R33" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="32K"/>
<wire x1="134.62" y1="88.9" x2="144.78" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V-ISO" class="0">
<segment>
<pinref part="R33" gate="G$1" pin="2"/>
<wire x1="134.62" y1="99.06" x2="134.62" y2="104.14" width="0.1524" layer="91"/>
<label x="137.16" y="104.14" size="1.778" layer="95"/>
<pinref part="U$1" gate="G$1" pin="VCC.1"/>
<wire x1="134.62" y1="104.14" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<wire x1="144.78" y1="78.74" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<wire x1="124.46" y1="78.74" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
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
</segment>
</net>
<net name="GND-ISO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND.1"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="144.78" y1="76.2" x2="132.08" y2="76.2" width="0.1524" layer="91"/>
<wire x1="132.08" y1="76.2" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<wire x1="132.08" y1="53.34" x2="132.08" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-22.86" x2="132.08" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-40.64" x2="40.64" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-45.72" x2="45.72" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-45.72" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-45.72" x2="116.84" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-45.72" x2="116.84" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-22.86" x2="132.08" y2="-22.86" width="0.1524" layer="91"/>
<junction x="132.08" y="-22.86"/>
<pinref part="IC1" gate="G$1" pin="GND@2"/>
<wire x1="45.72" y1="-40.64" x2="45.72" y2="-45.72" width="0.1524" layer="91"/>
<junction x="45.72" y="-45.72"/>
<pinref part="IC1" gate="G$1" pin="GND@3"/>
<wire x1="50.8" y1="-40.64" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<junction x="50.8" y="-45.72"/>
<pinref part="U$1" gate="G$1" pin="GND.2"/>
<wire x1="180.34" y1="78.74" x2="180.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="180.34" y1="53.34" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
<junction x="132.08" y="53.34"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SDA.1"/>
<wire x1="144.78" y1="81.28" x2="96.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="96.52" y1="81.28" x2="96.52" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="(SDA/INT1)PD1"/>
<wire x1="96.52" y1="10.16" x2="81.28" y2="10.16" width="0.1524" layer="91"/>
<label x="109.22" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SCL.1"/>
<wire x1="144.78" y1="83.82" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<wire x1="91.44" y1="83.82" x2="91.44" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="(SCL/INT0)PD0"/>
<wire x1="91.44" y1="12.7" x2="81.28" y2="12.7" width="0.1524" layer="91"/>
<label x="109.22" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="102,1,134.62,111.76,+5V,+5V-ISO,,,,"/>
<approved hash="102,1,132.08,-35.56,GND,GND-ISO,,,,"/>
<approved hash="104,1,144.78,78.74,U$1,VCC.1,+5V-ISO,,,"/>
<approved hash="104,1,180.34,78.74,U$1,GND.2,GND-ISO,,,"/>
<approved hash="204,1,180.34,81.28,U$1,VCC.2,,,,"/>
<approved hash="104,1,144.78,76.2,U$1,GND.1,GND-ISO,,,"/>
<approved hash="104,1,40.64,-40.64,IC1,GND,GND-ISO,,,"/>
<approved hash="104,1,45.72,-40.64,IC1,GND,GND-ISO,,,"/>
<approved hash="104,1,50.8,-40.64,IC1,GND,GND-ISO,,,"/>
<approved hash="104,1,35.56,91.44,IC1,+5V,+5V-ISO,,,"/>
<approved hash="204,1,53.34,91.44,IC1,+3V3,,,,"/>
<approved hash="204,1,60.96,91.44,IC1,+VIN,,,,"/>
<approved hash="104,1,40.64,91.44,IC1,+5V,+5V-ISO,,,"/>
<approved hash="104,1,45.72,91.44,IC1,+5V,+5V-ISO,,,"/>
</errors>
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

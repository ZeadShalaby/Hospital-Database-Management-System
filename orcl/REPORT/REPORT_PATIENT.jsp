<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="REPORT_PATIENT" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE1" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
</head>
<body bgcolor="#ffffff">

]]>
    </beforeReportHtmlEscape>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL PATIENTS.ID_P, PATIENTS.NAME_P, PATIENTS.AGE, 
PATIENTS.INVOICE, PATIENTS.NUM_ROOM, PATIENTS.S_E_ME, PATIENTS.MONEY
FROM PATIENTS ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_ID_P">
        <displayInfo x="1.04773" y="1.94995" width="1.90466" height="1.69922"
        />
        <dataItem name="ID_P" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Id P">
          <dataDescriptor expression="PATIENTS.ID_P"
           descriptiveExpression="ID_P" order="1" width="22" precision="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NAME_P" datatype="vchar2" columnOrder="12" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Name P">
          <dataDescriptor expression="PATIENTS.NAME_P"
           descriptiveExpression="NAME_P" order="2" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AGE" oracleDatatype="number" columnOrder="13"
         width="22" defaultWidth="50000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Age">
          <dataDescriptor expression="PATIENTS.AGE"
           descriptiveExpression="AGE" order="3" width="22" precision="3"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="INVOICE" datatype="vchar2" columnOrder="14" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Invoice">
          <dataDescriptor expression="PATIENTS.INVOICE"
           descriptiveExpression="INVOICE" order="4" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NUM_ROOM" oracleDatatype="number" columnOrder="15"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Num Room">
          <dataDescriptor expression="PATIENTS.NUM_ROOM"
           descriptiveExpression="NUM_ROOM" order="5" width="22"
           precision="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="S_E_ME" datatype="vchar2" columnOrder="16" width="100"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="S E Me">
          <dataDescriptor expression="PATIENTS.S_E_ME"
           descriptiveExpression="S_E_ME" order="6" width="100"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MONEY" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Money">
          <dataDescriptor expression="PATIENTS.MONEY"
           descriptiveExpression="MONEY" order="7" width="22" precision="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="TotalMONEYPerID_P" source="MONEY"
         function="percentOfTotal" width="22" precision="20" reset="G_ID_P"
         compute="report" defaultWidth="90000" defaultHeight="10000"
         columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
    </dataSource>
    <summary name="SumMONEYPerReport" source="MONEY" function="sum" width="22"
     precision="20" reset="report" compute="report" defaultWidth="90000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="MaxMONEYPerReport" source="MONEY" function="maximum"
     width="22" precision="20" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Maximum:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="CountMONEYPerReport" source="MONEY" function="count"
     precision="8" reset="report" compute="report" defaultWidth="100000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Count:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="AvgMONEYPerReport" source="MONEY" function="average"
     width="22" precision="20" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Average:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="MinMONEYPerReport" source="MONEY" function="minimum"
     width="22" precision="20" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Minimum:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_ID_P_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="6.68750" height="1.31250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_ID_P" source="G_ID_P" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="6.68750"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background2"/>
          <field name="F_ID_P" source="ID_P" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="0.00000" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_NAME_P" source="NAME_P" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="1.06250" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_AGE" source="AGE" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="1.62500" y="0.18750" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_INVOICE" source="INVOICE" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="2.25000" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_NUM_ROOM" source="NUM_ROOM" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="2.81250" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_S_E_ME" source="S_E_ME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="3.87500" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_MONEY" source="MONEY" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="4.43750" y="0.18750" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_TotalMONEYPerID_P" source="TotalMONEYPerID_P"
           minWidowLines="1" formatMask="NNNNNNNNNNN0D00%" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="5.62500" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_ID_P_FTR">
          <geometryInfo x="0.00000" y="0.37500" width="6.68750"
           height="0.93750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background3"/>
          <field name="F_SumMONEYPerReport" source="SumMONEYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.43750" y="0.37500" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_AvgMONEYPerReport" source="AvgMONEYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.43750" y="0.56250" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_MinMONEYPerReport" source="MinMONEYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.43750" y="0.75000" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_MaxMONEYPerReport" source="MaxMONEYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.43750" y="0.93750" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_CountMONEYPerReport" source="CountMONEYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.43750" y="1.12500" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_Total_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.37500" width="0.31250"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Average_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.56250" width="0.50000"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Average:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Minimum_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.75000" width="0.56250"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Minimum:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Maximum_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.93750" width="0.56250"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Maximum:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Count_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="1.12500" width="0.37500"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Count:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_ID_P_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="6.68750"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="custom6"/>
          <text name="B_ID_P" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Id P]]>
              </string>
            </textSegment>
          </text>
          <text name="B_NAME_P" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.06250" y="0.00000" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Name P]]>
              </string>
            </textSegment>
          </text>
          <text name="B_AGE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.62500" y="0.00000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Age]]>
              </string>
            </textSegment>
          </text>
          <text name="B_INVOICE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.25000" y="0.00000" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Invoice]]>
              </string>
            </textSegment>
          </text>
          <text name="B_NUM_ROOM" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.81250" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Num Room]]>
              </string>
            </textSegment>
          </text>
          <text name="B_S_E_ME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.87500" y="0.00000" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[S E Me]]>
              </string>
            </textSegment>
          </text>
          <text name="B_MONEY" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.43750" y="0.00000" width="1.18750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Money]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TotalMONEYPerID_P" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.62500" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[% of Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.43750" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.43750"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 9C28DA2F 0EBE3950 C54E1C6D 7D1A2CCC
A82B8FFE 5FCF7FAF DD1BCCAD 9A7C0D29 7BBE0D0E 7E8CBDEE 8D5E5F8E 0F3D99CB
1E9B1DA9 51665B35 F8CB3699 2C273A7A 43B79C28 EAEA4458 1A42070D 298B6CA7
8AFBB6E9 BAC3F769 D0160000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1E60C091 6084C10E 1A3C4868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 031C1859
8317E189 830804EC F90438A0 51811A06 2859B080 A18B9C27 1E2870B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A20B1 87C60855 563D1845
D36CC187 5B1E15FA A1626500 BC7DBA85 40608024 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0480 20233307 C20D0C7D 9031D76F D1DF35C2 00705090
89CD8C43 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E230 5AE590C4
FFC90B2F 04508830 2387C20F B3381F99 31034284 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 02180180 02121060 02809505
51C00A1A D670460A 12500046 8A1E004D 97491288 00C50304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68904103 18603223 08315030 060E1130 A1AA7D26 00942001 18C8E0CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 C20802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B71E4C7E 4041CD43 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8004 30C02CAE 5D7A576E 474EA825 200326C5 45E00710 965AE74E
AE085220 06821871 20070038 1CA3080A 76B21EA4 0E205B6F 8E523816 A65B4EA8
931C9A1E 1B004203 2A173E64 BF552BDA 2AAB8228 59E10010 38A2D4B6 1E74F045
80D67BF2 120EFE08 B08B583E 884E1E47 9A40C498 83A20047 6F914110 542CB00C
2B1043B2 03386041 07F2384D 16C33A7C 23629E8E 5902B052 2E00A14E 4CB66A00
8786C200 F2210326 4BC4DF90 CA0AC5A2 C2F69BC6 2380181C F040DBF2 0CB2D7C3
021914DF A300BA2C 23903E88 40C50F2E 1032A59B 7EB405A6 890F7461 36CDCA74
E0C0C24A 2060F596 6BC85081 C723C8C0 ABBD8E88 30CB7AE2 9B37F781 716095F5
FF051840 4557D30C 7DE158DF 3FF48001 0FCE1A05 F7470420 B6700014 0BB2DBDE
1908802B A50CFD47 36071017 5CE7D20C 29083E47 041BF167 9A3B4049 71E78619
E1530197 6CD19482 00082082 DCCAF8F5 218596DA E596B806 8BB25FE0 929DB105
0B1CEEE0 E60C18EA E7E0C414 BE0006E3 0ACDB251 D7D63E83 520783FB 80AB91B2
091CF5BF 396F7CF5 EFDF380D F8FEDE74 6D21818E CB3025F1 492D36BF B8D2E493
285B87BF B2950400 60840CC9 020C0040 4AE01080 8CA21060 0C837042 0E30172D
08208208 5580C008 D6E00110 B025F400 90CF9820 608882C9 C2070883 920C0010
890020A8 FE32D009 02A0372E 0801E74E 48108508 1C04852A 11210703 B2961AB0
FFF32700 F121F000 708C0EA0 17201810 627004C0 81065A00 483C41E0 1F68304E
6D74C10E 69308C09 C4931F1A 2052800C 215D0528 4D9708C0 B00D0840 830768F1
112A40D8 372C4E80 0E54E5C9 0200EE88 5483A744 58304A3A 31752118 32631528
04980E81 528CD300 44052874 C81E7156 804CF8CB 1908DAB3 3AD1393B 00D22008
0094AA22 12D28744 00002D83 B08B0541 119049A1 E2290860 84BD7400 9C8C590E
0729304B DC429A30 2C008D19 A29008C4 10249504 FA4E1B29 84CC1EA4 010234C9
479410FA 42069075 22949167 9E698B4D 5E719793 84F8080F 32C00AC5 00889E7C
44E12F77 294739F0 BC9A3CF8 020E778D C1069239 839CB6E7 1F29A14C 9821908F
FFBBE5AD 17C9E193 00350484 E4036B2F 09A7CF36 73D32BAC 276006A9 62C94EEF
C32BE491 27352838 970450B8 9F19A8E0 0DD457CF 80F0372B 0C282E4A 38508200
24948ECC B3A8F498 83197205 2E95E4A5 AC012A79 C6DDA2DD 4DB420AD 64C822DC
7A51D4AB 21B9AC0D E7041936 C43001BC F90D4D0A 6A4C5624 100F0051 A10A7830
C86930A9 86084081 C899B0DE 56E46084 4D95A455 69DA4E8A 744A9E45 C5A51179
0150A4E1 F3A06193 EF310A14 5CBE725D A15D9426 F082E0C5 AAC432A3 9C7B2E21
9ABCC596 B35B2D05 F56E5719 56558E42 F88A6490 E4410011 0782C23D 6F453C2E
2F778314 0CA43B8D 84404661 D897D8B0 0232BD75 91E56F4B 09C59456 50BC25B5
84AB5B8A 25520E20 A1094240 800220BF C53230A7 BFBD0E60 02107741 045339BD
35EDED15 E8CC510C 863791DD 9E22799B 80C8EE71 D9BFC5C5 65737B0E D0FA877C
B4ED2FA9 7FCB5ED0 8000B3DC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDFDF
        </binaryData>
      </image>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#ffffff"/>
    <color index="191" displayName="custom6" value="#93065d"/>
    <color index="192" displayName="Background2" value="#e4c1d6"/>
    <color index="193" displayName="Background3" value="#c982ae"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwwine"/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="167">
<link rel="StyleSheet" type="text/css" href="css/rwbeige.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwbeige_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGIDPGRPFR127">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBIDP127" asArray="no"/> class="OraColumnHeader"> Id P </th>
   <th <rw:id id="HBNAMEP127" asArray="no"/> class="OraColumnHeader"> Name P </th>
   <th <rw:id id="HBAGE127" asArray="no"/> class="OraColumnHeader"> Age </th>
   <th <rw:id id="HBINVOICE127" asArray="no"/> class="OraColumnHeader"> Invoice </th>
   <th <rw:id id="HBNUMROOM127" asArray="no"/> class="OraColumnHeader"> Num Room </th>
   <th <rw:id id="HBSEME127" asArray="no"/> class="OraColumnHeader"> S E Me </th>
   <th <rw:id id="HBMONEY127" asArray="no"/> class="OraColumnHeader"> Money </th>
   <th <rw:id id="HBTotalMONEYPerIDP127" asArray="no"/> class="OraColumnHeader"> % of Total: </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGIDP1271" src="G_ID_P">
   <tr>
    <td <rw:headers id="HFIDP127" src="HBIDP127"/> class="OraCellNumber"><rw:field id="FIDP127" src="ID_P" nullValue="&nbsp;"> F_ID_P </rw:field></td>
    <td <rw:headers id="HFNAMEP127" src="HBNAMEP127"/> class="OraCellText"><rw:field id="FNAMEP127" src="NAME_P" nullValue="&nbsp;"> F_NAME_P </rw:field></td>
    <td <rw:headers id="HFAGE127" src="HBAGE127"/> class="OraCellNumber"><rw:field id="FAGE127" src="AGE" nullValue="&nbsp;"> F_AGE </rw:field></td>
    <td <rw:headers id="HFINVOICE127" src="HBINVOICE127"/> class="OraCellText"><rw:field id="FINVOICE127" src="INVOICE" nullValue="&nbsp;"> F_INVOICE </rw:field></td>
    <td <rw:headers id="HFNUMROOM127" src="HBNUMROOM127"/> class="OraCellNumber"><rw:field id="FNUMROOM127" src="NUM_ROOM" nullValue="&nbsp;"> F_NUM_ROOM </rw:field></td>
    <td <rw:headers id="HFSEME127" src="HBSEME127"/> class="OraCellText"><rw:field id="FSEME127" src="S_E_ME" nullValue="&nbsp;"> F_S_E_ME </rw:field></td>
    <td <rw:headers id="HFMONEY127" src="HBMONEY127"/> class="OraCellNumber"><rw:field id="FMONEY127" src="MONEY" nullValue="&nbsp;"> F_MONEY </rw:field></td>
    <td <rw:headers id="HFTotalMONEYPerIDP127" src="HBTotalMONEYPerIDP127"/> class="OraCellNumber"><rw:field id="FTotalMONEYPerIDP127" src="TotalMONEYPerID_P" nullValue="&nbsp;"> F_TotalMONEYPerID_P </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
 <!-- Report Level Summary -->
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFSumMONEYPerReport127" src="HBMONEY127"/> class="OraTotalNumber">Total: <rw:field id="FSumMONEYPerReport127" src="SumMONEYPerReport" nullValue="&nbsp;"> F_SumMONEYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFAvgMONEYPerReport127" src="HBMONEY127"/> class="OraTotalNumber">Average: <rw:field id="FAvgMONEYPerReport127" src="AvgMONEYPerReport" nullValue="&nbsp;"> F_AvgMONEYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFMinMONEYPerReport127" src="HBMONEY127"/> class="OraTotalNumber">Minimum: <rw:field id="FMinMONEYPerReport127" src="MinMONEYPerReport" nullValue="&nbsp;"> F_MinMONEYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFMaxMONEYPerReport127" src="HBMONEY127"/> class="OraTotalNumber">Maximum: <rw:field id="FMaxMONEYPerReport127" src="MaxMONEYPerReport" nullValue="&nbsp;"> F_MaxMONEYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFCountMONEYPerReport127" src="HBMONEY127"/> class="OraTotalNumber">Count: <rw:field id="FCountMONEYPerReport127" src="CountMONEYPerReport" nullValue="&nbsp;"> F_CountMONEYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGIDPGRPFR127" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->

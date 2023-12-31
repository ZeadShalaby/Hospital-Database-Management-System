<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="MODULE1" DTDVersion="9.0.2.0.10">
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
      <![CDATA[SELECT ALL DOCTORS.ID_D, DOCTORS.NAME_D, DOCTORS.DEPARTMENT_D, 
DOCTORS.NUM_PHONE, DOCTORS.CLINIC, DOCTORS.SALARY
FROM DOCTORS ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_ID_D">
        <displayInfo x="1.01111" y="1.94995" width="1.97791" height="1.51929"
        />
        <dataItem name="ID_D" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Id D">
          <dataDescriptor expression="DOCTORS.ID_D"
           descriptiveExpression="ID_D" order="1" width="22" precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NAME_D" datatype="vchar2" columnOrder="12" width="25"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Name D">
          <dataDescriptor expression="DOCTORS.NAME_D"
           descriptiveExpression="NAME_D" order="2" width="25"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEPARTMENT_D" datatype="vchar2" columnOrder="13"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Department D">
          <dataDescriptor expression="DOCTORS.DEPARTMENT_D"
           descriptiveExpression="DEPARTMENT_D" order="3" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NUM_PHONE" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Num Phone">
          <dataDescriptor expression="DOCTORS.NUM_PHONE"
           descriptiveExpression="NUM_PHONE" order="4" width="22"
           precision="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CLINIC" datatype="vchar2" columnOrder="15" width="40"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Clinic">
          <dataDescriptor expression="DOCTORS.CLINIC"
           descriptiveExpression="CLINIC" order="5" width="40"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SALARY" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Salary">
          <dataDescriptor expression="DOCTORS.SALARY"
           descriptiveExpression="SALARY" order="6" width="22" precision="10"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="TotalSALARYPerID_D" source="SALARY"
         function="percentOfTotal" width="22" precision="10" reset="G_ID_D"
         compute="report" defaultWidth="120000" defaultHeight="10000"
         columnFlags="552" defaultLabel="% of Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
    </dataSource>
    <summary name="SumSALARYPerReport" source="SALARY" function="sum"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="MinSALARYPerReport" source="SALARY" function="minimum"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Minimum:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="CountSALARYPerReport" source="SALARY" function="count"
     precision="8" reset="report" compute="report" defaultWidth="100000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Count:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="MaxSALARYPerReport" source="SALARY" function="maximum"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Maximum:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="AvgSALARYPerReport" source="SALARY" function="average"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Average:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_ID_D_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="6.93750" height="1.31250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_ID_D" source="G_ID_D" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="6.93750"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_ID_D" source="ID_D" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="0.00000" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_NAME_D" source="NAME_D" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="1.06250" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_DEPARTMENT_D" source="DEPARTMENT_D" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="1.62500" y="0.18750" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_NUM_PHONE" source="NUM_PHONE" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="2.43750" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_CLINIC" source="CLINIC" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="3.50000" y="0.18750" width="0.56250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SALARY" source="SALARY" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="4.06250" y="0.18750" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_TotalSALARYPerID_D" source="TotalSALARYPerID_D"
           minWidowLines="1" formatMask="NNNNNNNNNNN0D00%" spacing="0"
           alignment="start">
            <font face="helvetica" size="8"/>
            <geometryInfo x="5.50000" y="0.18750" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_ID_D_FTR">
          <geometryInfo x="0.00000" y="0.37500" width="6.93750"
           height="0.93750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumSALARYPerReport" source="SumSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.06250" y="0.37500" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <field name="F_AvgSALARYPerReport" source="AvgSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.06250" y="0.56250" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <field name="F_MinSALARYPerReport" source="MinSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.06250" y="0.75000" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <field name="F_MaxSALARYPerReport" source="MaxSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.06250" y="0.93750" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <field name="F_CountSALARYPerReport" source="CountSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="8" bold="yes"/>
            <geometryInfo x="4.06250" y="1.12500" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <text name="B_Total_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.37500" width="0.37500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Average_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.56250" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Average:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Minimum_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.75000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Minimum:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Maximum_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.93750" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Maximum:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Count_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="1.12500" width="0.43750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes"/>
              <string>
              <![CDATA[Count:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_ID_D_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="6.93750"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_ID_D" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Id D]]>
              </string>
            </textSegment>
          </text>
          <text name="B_NAME_D" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.06250" y="0.00000" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Name D]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DEPARTMENT_D" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.62500" y="0.00000" width="0.81250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Department D]]>
              </string>
            </textSegment>
          </text>
          <text name="B_NUM_PHONE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.43750" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Num Phone]]>
              </string>
            </textSegment>
          </text>
          <text name="B_CLINIC" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.50000" y="0.00000" width="0.56250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Clinic]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SALARY" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.06250" y="0.00000" width="1.43750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
              <string>
              <![CDATA[Salary]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TotalSALARYPerID_D" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.50000" y="0.00000" width="1.43750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="8" bold="yes" textColor="TextColor"
              />
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
        <geometryInfo x="0.50000" y="0.31250" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.31250"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF BCBC8989 89562F2F 5E5E5ECC 8D8D2BEC
ECE9CFCF 9F9F9F2F FDFDFBBD BD8B8E8E 2D5F5FCE 2D2D5A5D 5DBAFEFE FD2E2E5C
CECE8D5E 5E9DE9E9 F69F9F5F 8D8D5C8B 8B595C5C 8AFBFBF9 2F2FCEBA BA28CCCC
2BFDFDFC CECE2E2B 2BC85A5A 872D2DCB 8C8C59EB EBB82E2E 2D2C2C29 CECECDB9
B986EAEA B75A5A27 2B2BF78B 8B580000 00000000 00000000 00000000 00000000
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
FF003080 C1840B0A 1C388031 A2C58C01 16884182 40844106 2E48A868 8133E043
07000874 0030A061 8F830A0C 143040A3 E7400408 0E8C5912 90E7C69B 03102859
83172589 820424EC F90438A0 51801A06 2859D080 A18B9C27 163060B2 96A0C794
2B0ECC68 C158E7CC 0315386D FA0617A0 C10A0A0E 00F82550 E20F8B00 BAAC6A30
9AA7C893 0FA63C3A F514C4CB 016BFE7D 1B70C001 47000018 0E8BE111 81450400
24252887 1EE45C94 750AD518 E06086E8 0F850A10 0B6162AF 4FB4AF7E 8500F0A0
21039B19 96205A05 F3EB628C 43DAC509 651DABC5 99A56E7D 90217240 59041E32
17DA2164 B6D3D00A CE6C28B6 D3E16184 00760628 1DD635EC D29308CD 80A4FBA4
FF898616 5258B0E1 E3808F0E 1B200FF0 5C37A40B 0E183078 90516970 83B00E04
7E28A0C7 48040040 2181BDA4 A0418100 E5408287 BD00A060 0F153850 A3030C58
40810A06 4614D502 0C789FDA 441C70F1 26000878 F1A00ACD 74E1A980 0C602080
724118CF 10001648 10810F6D D850EF44 1218F2DF 810C3811 E4883E19 60035249
60926609 3D40F127 05185002 4A8D10E4 81800E18 74D1C78C EDC8104D 80004083
E30B21F8 40AF8E0A 7424219A 0A1974A3 87060591 4A8E51E4 D5E78218 9851C782
3E7403AA 8E1150C4 688141D8 B2D10D08 2810E995 46E4D62B 9B6A3AF6 A4A176E8
1DD75D7E 78C71E41 8A508141 761498B2 5D920CD9 E712AB25 10A06579 864826A7
FF4CA618 0185A042 E486A486 BE0900C2 0116DAF5 D8AA76E4 C46C8752 0092A1A0
046920C6 05A9AAF1 DCA40ABA B2D2A502 7800C08A 0640E1D3 0A0E76B2 9FA50630
07EDA366 4866A650 56C89399 ADCA74C1 4A81F974 BE270FC6 898394B1 005B5E21
899220E0 448A296B 7DE74C08 6850FEAF 2D108031 8D0CB5F3 94092697 83D6A314
C7822AA0 04E92860 521CCBF1 14B2B6BA 9313C11A 105040C1 12FBAF6E 8923E853
64AE1540 B2B0582A 00024E42 C67A0009 8FEA3900 84C152E4 1F11A6C2 E422300A
F2FBF15E A17A3001 33079E68 B29CCE19 AC406291 451B2000 DB25A86F 200EEA40
B100D414 A8B520A1 2659F125 C123EBBA 29CF3D30 D0F19A00 4C337DD8 361001B5
FFD63648 8DE7424F 78023001 F2BBE1D0 E8182BE1 0ADB1C50 3181AC6B 00E6B749
4F2D14D1 04085BC8 6CAB2120 908ED108 30CD2E4E 730090A2 81B65009 7A8A5E60
3F23BE67 600564E4 433B52A7 D0081D31 C1BF6718 A082983D 202AFEBD 1D5830C1
83006D3D 2EA46618 9969BF59 8BA06ABB 2D3FF8E7 4F048022 480DCF48 1209032C
7ED0B805 20E49A31 8183E425 F7BE97E4 908CDB25 BF6024AD 3E4FFDEF 44F75A80
ACF00058 0CAF8010 20040CBD C3080850 40BC0011 85ABFA83 0018C43F 88108080
E2C9C205 75F59600 20308831 D0220908 93930C40 908CFAB0 6CAC382C 311E7058
70085041 04101BA1 1ED60100 1871630D 3230080E F421040C 64950118 83920010
FF938000 E12107E4 B2950C70 14893930 29075271 C6004C27 8C4350C7 0903B213
2E11F328 00B2600C A700040C 80788839 706008A5 70A80010 33570AB0 60111837
A5029BE3 2F087B02 0698814C 9871B48F 142223DC 98A3CF80 30698508 50420C38
C4CF8861 1182CB50 25B600CF 9B360026 3C08A19B 17522442 0632F98F 1180081D
C804CF98 A09F8F1C 7F974458 F1403A21 1F8B44C2 E74019C0 C59831F1 94DA6045
090069C0 5672F580 64004625 87D00E09 A1F38149 30292118 600CBD74 2395A482
2B290983 1652FB27 876CF8C0 08A29088 C4102799 841A842D 5916C00C C1F49B44
C9889410 7C440AF0 398CA413 D50F9910 8BD84375 24DC7426 0320D0C0 00733F80
FF493089 13A7BAC9 3971BB90 0092E74E 001DB772 20B7926C 67A33798 0BC872E4
6C880C8E 5D3DA9AF 4F802089 293CD7A6 5E100A41 E5629F53 C4286006 D9F34C36
50D3230D 52E43B59 000608B0 579C25C3 6C193900 0A26E460 8E1D594D 0B005000
56F0DC90 9442E813 A9F540A8 2496AEBC 762A4169 73C16EC9 8A980CBD CE113A7B
96A6F479 90FCB1A0 54B884D4 6EF469A4 05662E15 87C0012A 10AA8404 C6184300
6084004C E0018CC9 21410040 CDAA74CC AB445620 500984D3 9E85F99F 647A2854
29B540B8 61DE9915 C8636100 794EA2B2 7D7141F0 60639A92 5C3616F9 9E5D01A0
5D0AA592 96531784 64106E5D 4B56D762 81709F1C 59200020 625462ED 8CACF4EB
D62E13A7 831F72E1 B106A400 C1006BF1 46C28333 9A7D6AAA 41720CD4 5EA485B7
951CE345 3B894872 20B10B08 A1D10600 010A8212 3206D5CE A6730090 084E0065
9AF41F65 45CBA541 F24258A5 555FE008 DB0E57FE 40DDB7B5 5FE22B49 AE58FA47
7FBCFDEF AF7FFB00 E00B085A B10100B3 DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
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
      <text name="B_OR$BODY_SECTION" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="3.91650" y="0.25000" width="0.66699" height="0.16675"
        />
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[RDoctors]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#cccc99"/>
    <color index="192" displayName="TableCell" value="#f7f7e7"/>
    <color index="193" displayName="Totals" value="#ffffcc"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwbeige" sectionTitle="RDoctors"/>
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
  <rw:style id="170">
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
<rw:dataArea id="MGIDDGRPFR147">
<table class="OraTable">
<caption> RDoctors </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBIDD147" asArray="no"/> class="OraColumnHeader"> Id D </th>
   <th <rw:id id="HBNAMED147" asArray="no"/> class="OraColumnHeader"> Name D </th>
   <th <rw:id id="HBDEPARTMENTD147" asArray="no"/> class="OraColumnHeader"> Department D </th>
   <th <rw:id id="HBNUMPHONE147" asArray="no"/> class="OraColumnHeader"> Num Phone </th>
   <th <rw:id id="HBCLINIC147" asArray="no"/> class="OraColumnHeader"> Clinic </th>
   <th <rw:id id="HBSALARY147" asArray="no"/> class="OraColumnHeader"> Salary </th>
   <th <rw:id id="HBTotalSALARYPerIDD147" asArray="no"/> class="OraColumnHeader"> % of Total: </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGIDD1471" src="G_ID_D">
   <tr>
    <td <rw:headers id="HFIDD147" src="HBIDD147"/> class="OraCellNumber"><rw:field id="FIDD147" src="ID_D" nullValue="&nbsp;"> F_ID_D </rw:field></td>
    <td <rw:headers id="HFNAMED147" src="HBNAMED147"/> class="OraCellText"><rw:field id="FNAMED147" src="NAME_D" nullValue="&nbsp;"> F_NAME_D </rw:field></td>
    <td <rw:headers id="HFDEPARTMENTD147" src="HBDEPARTMENTD147"/> class="OraCellText"><rw:field id="FDEPARTMENTD147" src="DEPARTMENT_D" nullValue="&nbsp;"> F_DEPARTMENT_D </rw:field></td>
    <td <rw:headers id="HFNUMPHONE147" src="HBNUMPHONE147"/> class="OraCellNumber"><rw:field id="FNUMPHONE147" src="NUM_PHONE" nullValue="&nbsp;"> F_NUM_PHONE </rw:field></td>
    <td <rw:headers id="HFCLINIC147" src="HBCLINIC147"/> class="OraCellText"><rw:field id="FCLINIC147" src="CLINIC" nullValue="&nbsp;"> F_CLINIC </rw:field></td>
    <td <rw:headers id="HFSALARY147" src="HBSALARY147"/> class="OraCellNumber"><rw:field id="FSALARY147" src="SALARY" nullValue="&nbsp;"> F_SALARY </rw:field></td>
    <td <rw:headers id="HFTotalSALARYPerIDD147" src="HBTotalSALARYPerIDD147"/> class="OraCellNumber"><rw:field id="FTotalSALARYPerIDD147" src="TotalSALARYPerID_D" nullValue="&nbsp;"> F_TotalSALARYPerID_D </rw:field></td>
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
  <td <rw:headers id="HFSumSALARYPerReport147" src="HBSALARY147"/> class="OraTotalNumber">Total: <rw:field id="FSumSALARYPerReport147" src="SumSALARYPerReport" nullValue="&nbsp;"> F_SumSALARYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFAvgSALARYPerReport147" src="HBSALARY147"/> class="OraTotalNumber">Average: <rw:field id="FAvgSALARYPerReport147" src="AvgSALARYPerReport" nullValue="&nbsp;"> F_AvgSALARYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFMinSALARYPerReport147" src="HBSALARY147"/> class="OraTotalNumber">Minimum: <rw:field id="FMinSALARYPerReport147" src="MinSALARYPerReport" nullValue="&nbsp;"> F_MinSALARYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFMaxSALARYPerReport147" src="HBSALARY147"/> class="OraTotalNumber">Maximum: <rw:field id="FMaxSALARYPerReport147" src="MaxSALARYPerReport" nullValue="&nbsp;"> F_MaxSALARYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFCountSALARYPerReport147" src="HBSALARY147"/> class="OraTotalNumber">Count: <rw:field id="FCountSALARYPerReport147" src="CountSALARYPerReport" nullValue="&nbsp;"> F_CountSALARYPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGIDDGRPFR147" -->
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

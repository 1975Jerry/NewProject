<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolvedCosTickets.aspx.cs" Inherits="TTWeb.SolvedCosTickets" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>





<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx1" %>










<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .dxeTrackBar, 
.dxeIRadioButton, 
.dxeButtonEdit, 
.dxeTextBox, 
.dxeRadioButtonList, 
.dxeCheckBoxList, 
.dxeMemo, 
.dxeListBox, 
.dxeCalendar, 
.dxeColorTable
{
	-webkit-tap-highlight-color: rgba(0,0,0,0);
}

.dxeTextBox,
.dxeButtonEdit,
.dxeIRadioButton,
.dxeRadioButtonList,
.dxeCheckBoxList
{
    cursor: default;
}

.dxeTextBox,
.dxeMemo
{
	background-color: white;
	border: 1px solid #9f9f9f;
}

.dxeTextBoxSys,
.dxeButtonEditSys 
{
    width: 170px;
}

.dxeTextBoxSys, 
.dxeMemoSys 
{
    border-collapse:separate!important;
}

.dxeTextBox .dxeEditArea
{
	background-color: white;
}

.dxeEditArea
{
	font: 12px Tahoma;
	border: 1px solid #A0A0A0;
}
.dxeEditAreaSys 
{
    height: 14px;
    line-height: 14px;
    border: 0px!important;
	padding: 0px 1px 0px 0px; /* B146658 */
    background-position: 0 0; /* iOS Safari */
}
        .dxtcRightAlignCell_SoftOrange 
{
	text-align: right;
}
        .dxpcControl_Aqua
{
	font: 12px Tahoma;
	cursor: default;
	color: #000000;
	background-color: #ECF4FE;
	border: 1px Solid #8BB6EF;
	width: 200px;
}

.dxpcHBCell_Aqua {
    padding: 1px 1px 1px 1px;
}
.dxpcCloseButton_Aqua,
.dxpcPinButton_Aqua,
.dxpcRefreshButton_Aqua,
.dxpcCollapseButton_Aqua,
.dxpcMaximizeButton_Aqua
{
	cursor: pointer;
	padding: 1px 1px 1px 1px;
}

.dxpcContent_Aqua
{
	color: #000000;
	background-color: #FFFFFF;
	line-height: 128%;
	white-space: normal;
	border-width: 0px;
	vertical-align: top;
}
.dxpcContentPaddings_Aqua 
{
	padding: 14px 20px 15px;
}
.dxflInternalEditorTable_Aqua {
    width: 100%;
}
        </style>
</head>
<body style="font-size: 8pt">
    <script language="javascript" type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/JScriptFunctions.js") %>"></script>
    <script language="javascript" type="text/javascript">
    function OnGetSelectedFieldValues(selectedValues) {
        for (var i = 0; i < 36; i++) {
            var editor = ASPxGridViewSolvedCosTickets.GetEditor(i + 1);
            if (editor != null) {
                if (selectedValues[0][i] == null) {
                    editor.SetText('');
                }
                else {
                    editor.SetText(selectedValues[0][i]);
                }
            }
        }
    }

    function OnGetRowValues(values) {
        popupsri1.Hide();
        popupsri2.Show();

		processedrows.SetText(values[0]);
		errorrows.SetText(values[1]);

}

</script>

    <form id="form1" runat="server">
    <div>
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" 
            CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
            CssPostfix="Office2010Blue" 
            GroupBoxCaptionOffsetY="-19px" HeaderText="Solved CosTickets" 
            SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
            Width="100%" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px" 
            Theme="Metropolis">
            <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" 
                PaddingTop="10px" />
            <HeaderStyle Font-Size="Small">
            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" 
                PaddingTop="3px" />
            </HeaderStyle>
            <HeaderTemplate>
                <table style="width: 100%">
                    <tr>
                        <td width="100%" valign="middle" align="left">Solved Cosmote Tickets
                        </td>
                        <td align="right" valign="middle">
                            <dx:ASPxMenu ID="ASPxMenu3" runat="server" 
                                EnableTheming="True" HorizontalAlign="Right" ItemAutoWidth="False" 
                                onitemclick="ASPxMenu3_ItemClick" Theme="Metropolis">
                                <ClientSideEvents ItemClick="function(s, e) {
	 if(e.item.name == &quot;Refresh&quot;) 
	{
	window.pagegrid.Refresh();
    }
}" />
                                <Items>
                                    <dx:MenuItem Name="Export" Text="Export as...">
                                        <Items>
                                            <dx:MenuItem Name="pdf" Text="pdf">
                                            </dx:MenuItem>
                                            <dx:MenuItem Name="xls" Text="xls">
                                            </dx:MenuItem>
                                        </Items>
                                        <Image Height="12px" Url="~/Images/export_ticket.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <RootItemSubMenuOffset FirstItemX="10" LastItemX="10" X="10" />
                                <BackgroundImage ImageUrl="~/Images/back2.png" />
                                <Border BorderStyle="None" />
                            </dx:ASPxMenu>
                        </td>
                        <td align="right" valign="middle" width="80">
                            <dx:ASPxMenu ID="ASPxMenu4" runat="server" EnableTheming="True" 
                                HorizontalAlign="Right" ItemAutoWidth="False" Theme="Metropolis" Width="80px">
                                <ClientSideEvents ItemClick="function(s, e) {
	 if(e.item.name == &quot;Refresh&quot;) 
	{
	window.pagegrid.Refresh();
    }
}" />
                                <Items>
                                    <dx:MenuItem Name="Refresh" Text="Refresh">
                                        <Image Height="12px" Url="~/Images/refresh.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <RootItemSubMenuOffset FirstItemX="10" LastItemX="10" X="10" />
                                <BackgroundImage ImageUrl="~/Images/back2.png" />
                                <Border BorderStyle="None" />
                            </dx:ASPxMenu>
                        </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <PanelCollection>
<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxGridView runat="server" 
    ClientInstanceName="ASPxGridViewSolvedCosTickets" 
    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
    KeyFieldName="Hidden_id" AutoGenerateColumns="False" Width="100%" 
    ClientIDMode="AutoID" ID="ASPxGridViewSolvedCosTickets" 
    EnableViewState="False" 
        Theme="Metropolis" style="font-size: 8pt" 
        OnHtmlRowPrepared="ASPxGridViewSolvedCosTickets_HtmlRowPrepared">
<ClientSideEvents Init="function(s, e) {
	window.pagegrid = s;
}"></ClientSideEvents>
<Columns>
    <dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="0" Width="60px" Name="CommandButtons" Caption=" " Visible="False" ShowEditButton="True" ShowDeleteButton="True"/>
<dx:GridViewDataTextColumn FieldName="SRI" 
        ShowInCustomizationForm="True" Name="SRI" 
        Caption="SRI" VisibleIndex="3" Width="150px">
<PropertiesTextEdit DisplayFormatInEditMode="True" 
        DisplayFormatString="dd/MM/yy HH:mm" MaxLength="30">
    <ReadOnlyStyle BackColor="WhiteSmoke">
    </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
</dx:GridViewDataTextColumn>
    <dx:GridViewDataComboBoxColumn Caption="Status" FieldName="STATUS" 
        Name="STATUS" ShowInCustomizationForm="True" VisibleIndex="7" 
        Width="80px">
        <PropertiesComboBox MaxLength="30" IncrementalFilteringDelay="300" 
            IncrementalFilteringMode="StartsWith" DropDownStyle="DropDown">
        </PropertiesComboBox>
        <Settings FilterMode="DisplayText" AutoFilterCondition="Contains" />
    </dx:GridViewDataComboBoxColumn>
    <dx:GridViewDataCheckColumn Caption="To be Scheduled" FieldName="ToBeScheduled" 
        Name="ToBeScheduled" ShowInCustomizationForm="True" VisibleIndex="1" 
        Width="70px" Visible="False">
    </dx:GridViewDataCheckColumn>
<dx:GridViewDataTextColumn FieldName="COS_TICKET_ID" ShowInCustomizationForm="True" 
        Name="COS_TICKET_ID" Caption="ID" 
        VisibleIndex="2" Width="100px">
    <PropertiesTextEdit MaxLength="50">
        <ReadOnlyStyle BackColor="WhiteSmoke">
        </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
    </dx:GridViewDataTextColumn>

    <dx:GridViewDataComboBoxColumn FieldName="SEVERITY" 
        Name="SEVERITY" ShowInCustomizationForm="True" VisibleIndex="8" 
        Caption="Priority" Width="80px">
        <PropertiesComboBox DropDownStyle="DropDown" IncrementalFilteringDelay="300" 
            IncrementalFilteringMode="StartsWith">
        </PropertiesComboBox>

        <Settings FilterMode="DisplayText" AutoFilterCondition="Contains" />

    </dx:GridViewDataComboBoxColumn>


        <dx:GridViewDataComboBoxColumn Caption="Site" FieldName="SITE" Name="SITE" 
        ShowInCustomizationForm="True" VisibleIndex="5">
            <PropertiesComboBox DropDownStyle="DropDown" IncrementalFilteringDelay="500" 
                IncrementalFilteringMode="Contains" MaxLength="120">
                <ValidationSettings>
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
            </PropertiesComboBox>
            <Settings FilterMode="DisplayText" AutoFilterCondition="Contains" />
    </dx:GridViewDataComboBoxColumn>




    <dx:GridViewDataComboBoxColumn Caption="Problem" FieldName="PROBLEM" 
        Name="PROBLEM" ShowInCustomizationForm="True" VisibleIndex="6">
        <PropertiesComboBox DropDownStyle="DropDown" MaxLength="500">
        </PropertiesComboBox>
        <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" />
    </dx:GridViewDataComboBoxColumn>

            


    <dx:GridViewDataDateColumn Caption="Event time" FieldName="EVENT_DATE" 
        Name="EVENT_DATE" ShowInCustomizationForm="True" VisibleIndex="4" 
        Width="110px">
        <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy HH:mm" 
            DisplayFormatInEditMode="True" EditFormat="Custom" 
            EditFormatString="dd/MM/yyyy HH:mm">
            <TimeSectionProperties Visible="True">
            </TimeSectionProperties>
        </PropertiesDateEdit>
    </dx:GridViewDataDateColumn>




    <dx:GridViewDataComboBoxColumn Caption="Region" FieldName="Region" 
        Name="Region" ShowInCustomizationForm="True" VisibleIndex="11" 
        Width="100px">
        <PropertiesComboBox IncrementalFilteringDelay="300" 
            IncrementalFilteringMode="StartsWith">
        </PropertiesComboBox>
        <Settings FilterMode="DisplayText" AutoFilterCondition="Contains" />
    </dx:GridViewDataComboBoxColumn>




    <dx:GridViewDataTextColumn Caption="Tooltip" FieldName="Tooltip" 
        Name="Tooltip" ShowInCustomizationForm="True" Visible="False" 
        VisibleIndex="24">
    </dx:GridViewDataTextColumn>

            


    <dx:GridViewDataTextColumn Caption="Hidden_id" FieldName="Hidden_id" 
        Name="Hidden_id" ShowInCustomizationForm="True" Visible="False" 
        VisibleIndex="13">
    </dx:GridViewDataTextColumn>

            


</Columns>

<SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" 
                    AllowSelectSingleRowOnly="True" ColumnResizeMode="NextColumn" 
                    ConfirmDelete="True"></SettingsBehavior>

<SettingsPager PageSize="20" AlwaysShowPager="True" ShowDefaultImages="False">
<AllButton Text="All"></AllButton>

<NextPageButton Text="Next &gt;"></NextPageButton>

<PrevPageButton Text="&lt; Prev"></PrevPageButton>

<PageSizeItemSettings Visible="True"></PageSizeItemSettings>
</SettingsPager>

                    <SettingsEditing Mode="Inline" />

                    <Settings ShowFilterBar="Visible" ShowFilterRowMenu="True" 
                        ShowGroupPanel="True" 
                        ShowHeaderFilterButton="True" ShowFilterRow="True" />

<SettingsCookies Enabled="True" Version="6" StoreColumnsVisiblePosition="False"></SettingsCookies>


<Styles CssPostfix="PlasticBlue" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css">
<Header SortingImageSpacing="10px" ImageSpacing="10px" BackColor="#0066CC" 
        ForeColor="White" Wrap="True"></Header>

    <Row BackColor="#F2FFFD">
    </Row>

<FocusedRow BackColor="#FCF9DF" ForeColor="Black">
<BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX"></BackgroundImage>
</FocusedRow>

<CommandColumnItem>
<Paddings PaddingLeft="3px"></Paddings>
</CommandColumnItem>
</Styles>

<StylesEditors>
<CalendarHeader Spacing="11px"></CalendarHeader>

<ProgressBar Height="25px"></ProgressBar>
</StylesEditors>
<SettingsCommandButton>
    <EditButton>
        <Image Height="10px" ToolTip="Edit" Url="~/Images/Edit.png">
        </Image>
    </EditButton>
    <DeleteButton>
        <Image Height="10px" ToolTip="Delete" Url="~/Images/delete.png">
        </Image>
    </DeleteButton>
    <CancelButton>
        <Image Height="18px" ToolTip="Cancel" Url="~/Images/cancel.png">
        </Image>
    </CancelButton>
    <UpdateButton>
        <Image Height="18px" ToolTip="Save" Url="~/Images/Save.png">
        </Image>
    </UpdateButton>
</SettingsCommandButton>
</dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    
    </div>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter2" runat="server" 
        GridViewID="ASPxGridViewSolvedCosTickets" Landscape="True" PaperKind="A4">
        <Styles>
            <Default Font-Size="8pt">
            </Default>
        </Styles>
        <PageHeader Left="Solved Cosmote Tickets " 
            Right="[Page # of Pages #]">
        </PageHeader>
        <PageFooter Left="TBSP Task Management System" 
            Right="[Date Printed] [Time Printed]">
        </PageFooter>
    </dx:ASPxGridViewExporter>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActiveWindTickets.aspx.cs" Inherits="TTWeb.ActiveWindTickets" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>





<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx1" %>










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
        .style10
        {
            font-size: 8pt;
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
        .style15
        {
            color: #990000;
        }
        .style11
        {
            text-align: right;
            color: #666666;
        }
        .style12
        {
            text-align: right;
            color: #666666;
            }
        .style16
        {
            color: #993300;
        }
        </style>
</head>
<body style="font-size: 8pt">
    <script language="javascript" type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/JScriptFunctions.js") %>"></script>
    <script language="javascript" type="text/javascript">
    function OnGetSelectedFieldValues(selectedValues) {
        for (var i = 0; i < 36; i++) {
            var editor = ASPxGridViewActiveWindTickets.GetEditor(i + 1);
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
            GroupBoxCaptionOffsetY="-19px" HeaderText="Active WindTickets" 
            SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css" 
            Width="100%"  GroupBoxCaptionOffsetX="6px" 
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
                        <td width="100%" valign="middle" align="left">Active Wind Tickets
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
    <table class="style1">
        <tr>
            <td>

<table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td style="padding-right: 0px; border-right-width: 0px; margin-right: 0px; padding-left: 0px;" 
                            width="100%">
                            <dx:ASPxMenu ID="ASPxMenuAttachment" runat="server" ItemAutoWidth="False" Theme="Metropolis" 
                                Width="100%" ClientInstanceName="menuAttachment" SeparatorWidth="0px" 
                                OnLoad="ASPxMenuAttachment_Load">
                                <ClientSideEvents ItemClick="function(s, e) {

	 if(e.item.name == &quot;CreateSRI&quot;) 
	{
        popupsri1.Show();
        CallbackSRI.PerformCallback(ASPxGridViewActiveWindTickets.GetRowKey(ASPxGridViewActiveWindTickets.GetFocusedRowIndex()));
    }

	 if(e.item.name == &quot;AddWindTicket&quot;) 
	{          
		ASPxGridViewActiveWindTickets.AddNewRow();
	}
}
                                    " />
                                <Items>
                                    <dx:MenuItem Name="CreateSRI" Text="Create SRI ">
                                        <Image AlternateText="New" Height="12px" Url="~/Images/star.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <ItemStyle>
                                <Paddings PaddingRight="0px" />
                                </ItemStyle>
                                <BackgroundImage ImageUrl="~/Images/back2.png" />
                                <BorderRight BorderWidth="0px" />
                            </dx:ASPxMenu>
                        </td>
                    </tr>
                </table>

                </td>
        </tr>
    </table>
                <dx:ASPxGridView runat="server" 
    ClientInstanceName="ASPxGridViewActiveWindTickets" 
    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
    KeyFieldName="ID" AutoGenerateColumns="False" Width="100%" 
    ClientIDMode="AutoID" ID="ASPxGridViewActiveWindTickets" 
    EnableViewState="False" 
        Theme="Metropolis" style="font-size: 8pt" 
        OnHtmlRowPrepared="ASPxGridViewActiveWindTickets_HtmlRowPrepared" 
        OnRowInserting="ASPxGridViewActiveWindTickets_RowInserting" 
        OnRowDeleting="ASPxGridViewActiveWindTickets_RowDeleting" 
        OnRowUpdating="ASPxGridViewActiveWindTickets_RowUpdating" 
        OnLoad="ASPxGridViewActiveWindTickets_Load" 
        
        
        OnHtmlDataCellPrepared="ASPxGridViewActiveWindTickets_HtmlDataCellPrepared">
<ClientSideEvents Init="function(s, e) {
	window.pagegrid = s;
}"></ClientSideEvents>
<Columns>
    <dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="0" Width="60px" Name="CommandButtons" Caption=" " ShowEditButton="True" ShowDeleteButton="True"/>
<dx:GridViewDataTextColumn FieldName="SRI" 
        ShowInCustomizationForm="True" Name="SRI" 
        Caption="SRI" VisibleIndex="6" Width="140px">
<PropertiesTextEdit DisplayFormatInEditMode="True" 
        DisplayFormatString="dd/MM/yy HH:mm">
    <ReadOnlyStyle BackColor="#ECE9D8">
    </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
</dx:GridViewDataTextColumn>
    <dx:GridViewDataCheckColumn Caption="Processed" FieldName="Processed" 
        Name="Processed" ShowInCustomizationForm="True" VisibleIndex="1" 
        Width="70px" ReadOnly="True">
        <PropertiesCheckEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
                <Border BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
            </ReadOnlyStyle>
        </PropertiesCheckEdit>
    </dx:GridViewDataCheckColumn>
    <dx:GridViewDataCheckColumn Caption="To be Scheduled" FieldName="ToBeScheduled" 
        Name="ToBeScheduled" ShowInCustomizationForm="True" VisibleIndex="2" 
        Width="70px">
    </dx:GridViewDataCheckColumn>
<dx:GridViewDataTextColumn FieldName="TT_Id" ShowInCustomizationForm="True" 
        Name="TT_Id" Caption="Ticket ID" VisibleIndex="5" 
        Width="130px" ReadOnly="True">
    <PropertiesTextEdit>
        <ReadOnlyStyle BackColor="#ECE9D8">
        </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
    </dx:GridViewDataTextColumn>


        <dx:GridViewDataTextColumn Caption="Status" FieldName="Status" 
        Name="Status" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3" 
        Width="70px">
            <PropertiesTextEdit>
                <ReadOnlyStyle BackColor="#ECE9D8">
                </ReadOnlyStyle>
            </PropertiesTextEdit>
            <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" />
    </dx:GridViewDataTextColumn>



        <dx:GridViewDataComboBoxColumn FieldName="Priority" 
        Name="Priority" ShowInCustomizationForm="True" VisibleIndex="4" 
        Width="50px" ReadOnly="True" Caption="Severity">
        <PropertiesComboBox ShowImageInEditBox="True">
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/bullet_red.png" Text=" " Value="EMERGENCY" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_red.png" Text=" " Value="Critical" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_yellow.png" Text=" " Value="P1" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_yellow.png" Text=" " Value="High" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_blue.png" Text=" " Value="Medium" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_green.png" Text=" " Value="P2" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_green.png" Text=" " Value="Low" />
            </Items>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesComboBox>

                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False">
                </CellStyle>
    </dx:GridViewDataComboBoxColumn>




    <dx:GridViewDataDateColumn Caption="Event time" FieldName="Event_time" 
        Name="Event_time" ShowInCustomizationForm="True" VisibleIndex="7" 
        Width="110px" ReadOnly="True">
        <PropertiesDateEdit DisplayFormatString="dd/MM/yy HH:mm" EditFormat="Custom" 
            EditFormatString="dd/MM/yy HH:mm">
            <TimeSectionProperties Visible="True">
            </TimeSectionProperties>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesDateEdit>
    </dx:GridViewDataDateColumn>

            


    <dx:GridViewDataComboBoxColumn Caption="BSC" FieldName="BSC" 
        Name="BSC" ShowInCustomizationForm="True" VisibleIndex="20" 
        Width="60px" Visible="False" ReadOnly="True">
        <PropertiesComboBox DropDownStyle="DropDown" IncrementalFilteringDelay="300" 
            IncrementalFilteringMode="Contains">
        </PropertiesComboBox>
        <Settings FilterMode="DisplayText" AutoFilterCondition="Contains" />
    </dx:GridViewDataComboBoxColumn>

            


    <dx:GridViewDataTextColumn Caption="Site" FieldName="Object" Name="Object" 
        ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8" 
        Width="180px">
        <PropertiesTextEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesTextEdit>
        <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" />
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn Caption="Region" FieldName="Region" Name="Region" 
        ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="10" 
        Width="80px">
        <PropertiesTextEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesTextEdit>
        <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" />
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn Caption="Problem" FieldName="Problem" Name="Problem" 
        ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="11">
        <PropertiesTextEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesTextEdit>
        <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" />
    </dx:GridViewDataTextColumn>

            


    <dx:GridViewDataTextColumn Caption="Tooltip" FieldName="Tooltip" Name="Tooltip" 
        ShowInCustomizationForm="True" Visible="False" VisibleIndex="21" 
        ReadOnly="True">
    </dx:GridViewDataTextColumn>

            


    <dx:GridViewDataTextColumn Caption="ID" FieldName="ID" Name="ID" 
        ShowInCustomizationForm="True" VisibleIndex="19" Visible="False" 
        ReadOnly="True">
    </dx:GridViewDataTextColumn>

            


    <dx:GridViewDataTextColumn Caption="Zone" FieldName="Zone" Name="Zone" 
        ShowInCustomizationForm="True" VisibleIndex="9" Width="50px" 
        ReadOnly="True" Visible="False">
        <PropertiesTextEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesTextEdit>
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn Caption="Comments" FieldName="Comments" 
        Name="Comments" ShowInCustomizationForm="True" Visible="False" 
        VisibleIndex="18" ReadOnly="True">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataDateColumn Caption="TT_receive_time" 
        FieldName="TT_receive_time" Name="TT_receive_time" 
        ShowInCustomizationForm="True" Visible="False" VisibleIndex="17" 
        ReadOnly="True">
        <PropertiesDateEdit DisplayFormatString="">
        </PropertiesDateEdit>
    </dx:GridViewDataDateColumn>
    <dx:GridViewDataDateColumn Caption="Repair_time" FieldName="Repair_time" 
        Name="Repair_time" ShowInCustomizationForm="True" Visible="False" 
        VisibleIndex="16" ReadOnly="True">
        <PropertiesDateEdit DisplayFormatString="">
        </PropertiesDateEdit>
    </dx:GridViewDataDateColumn>

            


    <dx:GridViewDataTextColumn Caption="Last_Uploaded_On" 
        FieldName="Last_Uploaded_On" Name="Last_Uploaded_On" 
        ShowInCustomizationForm="True" Visible="False" VisibleIndex="15">
    </dx:GridViewDataTextColumn>

            


    <dx:GridViewDataTextColumn Caption="Vendor_resolution_date" 
        FieldName="Vendor_resolution_date" Name="Vendor_resolution_date" 
        ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn Caption="Actual_resolution_date" 
        FieldName="Actual_resolution_date" Name="Actual_resolution_date" 
        ShowInCustomizationForm="True" Visible="False" VisibleIndex="14">
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn Caption="Submit_date" FieldName="Submit_date" 
        Name="Submit_date" ShowInCustomizationForm="True" Visible="False" 
        VisibleIndex="12">
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

<SettingsEditing Mode="Inline"></SettingsEditing>

                    <Settings ShowFilterBar="Visible" ShowFilterRowMenu="True" 
                        ShowGroupPanel="True" 
                        ShowHeaderFilterButton="True" ShowFilterRow="True" />

<SettingsCookies Enabled="True" Version="18" StoreColumnsVisiblePosition="False"></SettingsCookies>

                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />

<Styles CssPostfix="PlasticBlue" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css">
<Header SortingImageSpacing="10px" ImageSpacing="10px" BackColor="#0066CC" 
        ForeColor="White" Wrap="True"></Header>

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
                    <Templates>
                        <DetailRow>
                            <table cellpadding="0" cellspacing="0" class="dxflInternalEditorTable" 
                                width="100%">
                                <tr>
                                    <td style="border-top: 2px solid #000066; text-align: right; padding-top: 8px; padding-bottom: 8px; border-top-style: solid; border-bottom-style: none; border-width: 2px 2px 1px 2px; border-color: #000066 #000066 #808080 #000066;" 
                                        width="120">
                                        To be Scheduled:</td>
                                    <td style="border-top-style: solid; border-width: 2px 1px 1px 2px; border-color: #000066 #808080 #808080 #000066; padding-top: 8px; padding-bottom: 8px; border-right-style: none; border-bottom-style: none;">
                                        <dx:ASPxCheckBox ID="ASPxCheckBoxToBeScheduled" runat="server" 
                                            CheckState="Unchecked" ClientEnabled="False" Font-Bold="True" Font-Size="8pt" 
                                            ForeColor="Black" style="font-size: 8pt" Theme="Metropolis" 
                                            Value='<%# Bind("ToBeScheduled") %>'>
                                        </dx:ASPxCheckBox>
                                    </td>
                                    <td style="border-top: 2px solid #000066; padding-right: 2px; padding-top: 8px; padding-bottom: 8px; background-color: #EAF4FF; text-align: right; border-left-color: #000066; border-left-width: 2px; border-right-color: #000066; border-right-width: 2px; border-bottom-color: #000066; border-bottom-width: 2px;" 
                                        width="300">
                                        <span class="style15">* </span>ID:</td>
                                    <td style="border-top-style: solid; border-width: 2px; border-color: #000066; background-color: #EAF4FF;">
                                        <dx:ASPxTextBox ID="ASPxTextBoxID" runat="server" BackColor="#F9FCFF" 
                                            ClientEnabled="False" EnableTheming="True" Font-Bold="False" Font-Size="8pt" 
                                            ForeColor="Black" Text='<%# Bind("TT_Id") %>' Theme="Aqua" Width="200px">
                                            <ReadOnlyStyle BackColor="#F4F4F4">
                                            </ReadOnlyStyle>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td style="border-top-style: solid; border-width: 2px; border-color: #000066; padding-top: 8px; padding-bottom: 8px; background-color: #EAF4FF;" 
                                        width="80">
                                        &nbsp;</td>
                                    <td style="padding: 4px; border-right-style: solid; border-width: 2px 1px 1px 1px; border-color: #000066; border-top-style: solid; text-align: right; background-color: #EAF4FF;" 
                                        width="30%">
                                        <dx:ASPxImage ID="ASPxImage1" runat="server" Height="28px" 
                                            ImageUrl="~/Images/issue.png">
                                        </dx:ASPxImage>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11" 
                                        style="padding-right: 2px; padding-bottom: 8px; background-color: #EAF4FF; padding-top: 3px;" 
                                        valign="middle">
                                        <span class="style15">* </span>Severity:</td>
                                    <td style="background-color: #EAF4FF; padding-right: 2px; padding-bottom: 8px; padding-left: 2px; padding-top: 3px;">
                                        <dx:ASPxComboBox ID="ASPxComboBoxPriority" runat="server" BackColor="#F9FCFF" 
                                            ClientEnabled="False" ClientInstanceName="projectcombo" EnableTheming="True" 
                                            Font-Bold="True" Font-Size="8pt" ForeColor="Black" 
                                            Text='<%# Bind("Priority") %>' Theme="Aqua" Width="200px">
                                            <Items>
                                                <dx:ListEditItem Text="High" Value="High" />
                                                <dx:ListEditItem Text="Medium" Value="Medium" />
                                                <dx:ListEditItem Text="Low" Value="Low" />
                                            </Items>
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td class="style11" 
                                        style="padding-right: 2px; background-color: #EAF4FF; padding-bottom: 8px; padding-top: 3px;" 
                                        valign="middle">
                                        <span class="style15">* </span>Status:</td>
                                    <td style="background-color: #EAF4FF; padding-bottom: 8px; padding-top: 3px;">
                                        <dx:ASPxComboBox ID="ASPxComboBoxStatus" runat="server" BackColor="#F9FCFF" 
                                            ClientEnabled="False" EnableTheming="True" Font-Bold="True" Font-Size="8pt" 
                                            ForeColor="Black" Text='<%# Bind("Status") %>' Theme="Aqua" Width="200px">
                                            <Items>
                                                <dx:ListEditItem Text="Active" Value="Active" />
                                                <dx:ListEditItem Text="Active /S" Value="Active /S" />
                                                <dx:ListEditItem Text="Completed" Value="Completed" />
                                            </Items>
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td class="style11" 
                                        style="border-width: 1px; border-color: #808080; padding-right: 2px; background-color: #EAF4FF; border-bottom-style: none; padding-bottom: 8px; border-top-style: none; border-left-style: none; padding-top: 3px;" 
                                        valign="middle">
                                        SRI:</td>
                                    <td style="border-style: none solid none none; border-width: 1px; border-color: #808080 #000066 #808080 #000080; background-color: #EAF4FF; padding-bottom: 8px; padding-top: 3px;">
                                        <dx:ASPxTextBox ID="ASPxTextBoxSRI" runat="server" BackColor="#F9FCFF" 
                                            ClientEnabled="False" EnableTheming="True" Font-Size="8pt" ForeColor="Black" 
                                            Text='<%# Bind("SRI") %>' Theme="Aqua" Width="200px">
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11" 
                                        style="padding-top: 5px; padding-bottom: 4px; background-color: #FFFFE6;" 
                                        valign="middle">
                                        <span class="style15">*</span> Site:</td>
                                    <td style="padding: 5px 2px 4px 2px; background-color: #FFFFE6;">
                                        <dx:ASPxComboBox ID="ASPxComboBoxSite" runat="server" BackColor="#FFFFE6" 
                                            ClientEnabled="False" ClientInstanceName="combosite" DropDownStyle="DropDown" 
                                            Font-Bold="False" Font-Size="8pt" ForeColor="Black" 
                                            IncrementalFilteringDelay="500" IncrementalFilteringMode="Contains" 
                                            Theme="Aqua" Value='<%# Bind("Object") %>' Width="200px">
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td class="style11" 
                                        style="padding-right: 2px; background-color: #FFFBFF; padding-bottom: 4px; padding-top: 3px;" 
                                        valign="middle">
                                        <span class="style15">* </span>Problem:</td>
                                    <td colspan="3" 
                                        style="border-width: 1px; border-color: #000066; background-color: #FFFBFF; padding-bottom: 4px; border-right-style: solid; padding-top: 3px;">
                                        <dx:ASPxComboBox ID="ASPxComboBoxProblem" runat="server" BackColor="#FFFBFF" 
                                            ClientEnabled="False" ClientInstanceName="combodescription" 
                                            DropDownStyle="DropDown" EnableTheming="True" Font-Bold="False" Font-Size="8pt" 
                                            ForeColor="Black" MaxLength="100" Text='<%# Bind("Problem") %>' Theme="Aqua" 
                                            Width="95%">
                                            <ItemStyle VerticalAlign="Top" />
                                            <ListBoxStyle VerticalAlign="Top" Wrap="True">
                                            </ListBoxStyle>
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12" 
                                        style="padding-right: 2px; padding-top: 5px; padding-bottom: 2px; background-color: #FFFFE6;" 
                                        valign="middle">
                                        &nbsp;BSC:</td>
                                    <td class="style13" 
                                        style="padding: 5px 2px 2px 2px; background-color: #FFFFE6;">
                                        <dx:ASPxComboBox ID="ASPxComboBoxBSC" runat="server" BackColor="#FFFFE6" 
                                            ClientEnabled="False" DropDownStyle="DropDown" EnableTheming="True" 
                                            Font-Size="8pt" ForeColor="Black" IncrementalFilteringDelay="300" 
                                            IncrementalFilteringMode="Contains" Text='<%# Bind("BSC") %>' Theme="Aqua" 
                                            Width="200px">
                                            <Items>
                                                <dx:ListEditItem Text="Mainland" Value="Mainland" />
                                                <dx:ListEditItem Text="Island" Value="Island" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                    </td>
                                    <td class="style12" 
                                        style="padding-right: 2px; background-color: #FFFBFF; padding-top: 5px; padding-bottom: 2px;" 
                                        valign="middle">
                                        <span class="style15">* </span>Event time:</td>
                                    <td style="background-color: #FFFBFF; padding-top: 5px; padding-bottom: 2px;">
                                        <dx:ASPxDateEdit ID="ASPxDateEditEventTime" runat="server" BackColor="#FFFBFF" 
                                            ClientEnabled="False" DisplayFormatString="dd/MM/yyyy HH:mm" Font-Size="8pt" 
                                            ForeColor="Black" Theme="Aqua" Value='<%# Bind("Event_time") %>' Width="200px">
                                            <TimeSectionProperties Visible="True">
                                            </TimeSectionProperties>
                                        </dx:ASPxDateEdit>
                                    </td>
                                    <td class="style12" 
                                        style="padding-right: 2px; background-color: #FFFBFF; padding-top: 5px; padding-bottom: 4px;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" 
                                        style="border-right-style: solid; border-width: 1px; border-color: #000066; background-color: #FFFBFF;">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style12" 
                                        style="padding-right: 2px; padding-top: 2px; padding-bottom: 2px; background-color: #FFFFE6;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" style="padding: 2px; background-color: #FFFFE6;">
                                        &nbsp;</td>
                                    <td class="style12" style="padding-right: 2px; background-color: #FFFBFF;" 
                                        valign="middle">
                                        Submit time:</td>
                                    <td class="style13" style="background-color: #FFFBFF; padding-top: 5px;">
                                        <dx:ASPxDateEdit ID="Submit_date" runat="server" 
                                            BackColor="#FFFBFF" ClientEnabled="False" 
                                            DisplayFormatString="dd/MM/yyyy HH:mm" Font-Size="8pt" ForeColor="Black" 
                                            Theme="Aqua" Value='<%# Bind("Submit_date") %>' Width="200px">
                                            <TimeSectionProperties Visible="True">
                                            </TimeSectionProperties>
                                        </dx:ASPxDateEdit>
                                    </td>
                                    <td class="style12" style="padding-right: 2px; background-color: #FFFBFF; padding-bottom: 4px; padding-top: 3px;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" 
                                        style="border-right-style: solid; border-width: 1px; border-color: #000066; background-color: #FFFBFF;">
                                        <br class="style16" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12" 
                                        style="padding-right: 2px; padding-top: 2px; padding-bottom: 2px; background-color: #FFFFE6;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" style="padding: 2px; background-color: #FFFFE6;">
                                        &nbsp;</td>
                                    <td class="style12" style="padding-right: 2px; background-color: #FFFBFF;" 
                                        valign="middle">
                                        Vendor resolution:</td>
                                    <td class="style13" style="background-color: #FFFBFF; padding-top: 5px;">
                                        <dx:ASPxDateEdit ID="Vendor_resolution_date" runat="server" BackColor="#FFFBFF" 
                                            ClientEnabled="False" DisplayFormatString="dd/MM/yyyy HH:mm" Font-Size="8pt" 
                                            ForeColor="Black" Theme="Aqua" Value='<%# Bind("Vendor_resolution_date") %>' 
                                            Width="200px">
                                            <TimeSectionProperties Visible="True">
                                            </TimeSectionProperties>
                                        </dx:ASPxDateEdit>
                                    </td>
                                    <td class="style12" 
                                        style="padding-right: 2px; background-color: #FFFBFF; padding-bottom: 4px; padding-top: 3px;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" 
                                        style="border-right-style: solid; border-width: 1px; border-color: #000066; background-color: #FFFBFF;">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style12" 
                                        style="padding-right: 2px; padding-top: 2px; padding-bottom: 2px; background-color: #FFFFE6;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" style="padding: 2px; background-color: #FFFFE6;">
                                        &nbsp;</td>
                                    <td class="style12" style="padding-right: 2px; background-color: #FFFBFF;" 
                                        valign="middle">
                                        Actual resolution:</td>
                                    <td class="style13" style="background-color: #FFFBFF; padding-top: 5px;">
                                        <dx:ASPxDateEdit ID="Actual_resolution_date" runat="server" BackColor="#FFFBFF" 
                                            ClientEnabled="False" DisplayFormatString="dd/MM/yyyy HH:mm" Font-Size="8pt" 
                                            ForeColor="Black" Theme="Aqua" Value='<%# Bind("Actual_resolution_date") %>' 
                                            Width="200px">
                                            <TimeSectionProperties Visible="True">
                                            </TimeSectionProperties>
                                        </dx:ASPxDateEdit>
                                    </td>
                                    <td class="style12" 
                                        style="padding-right: 2px; background-color: #FFFBFF; padding-top: 3px;" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style13" 
                                        style="border-right-style: solid; border-width: 1px; border-color: #000066; background-color: #FFFBFF;">
                                        <span class="style16">
                                        <dx:ASPxLabel ID="ASPxLabel6" runat="server" Font-Size="8pt" 
                                            style="color: #999999" Text='<%# Bind("Last_Uploaded_On") %>'>
                                        </dx:ASPxLabel>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </DetailRow>
                    </Templates>
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
    <dx:ASPxCallback ID="ASPxCallbackSRI" runat="server" 
        oncallback="ASPxCallbackSRI_Callback" ClientInstanceName="CallbackSRI">
        <ClientSideEvents CallbackComplete="function(s, e) {

if (e.result.split(';')[2] == &quot;no&quot;)
{
	    popupsri1.Hide();
        popupsri2.Show();
		processedrows.SetText(e.result.split(';')[0]);
		errorrows.SetText(e.result.split(';')[1]);
        ASPxGridViewActiveWindTickets.Refresh();
} 
else
{
		popupsri1.Hide();
}
	
}" />
    </dx:ASPxCallback>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter2" runat="server" 
        GridViewID="ASPxGridViewActiveWindTickets" Landscape="True" 
        MaxColumnWidth="500" PaperKind="A4">
        <Styles>
            <Default Font-Size="8pt">
            </Default>
        </Styles>
        <PageHeader Left="Active Wind Tickets" Right="[Page # of Pages #]">
        </PageHeader>
        <PageFooter Left="TBSP Task Management System" 
            Right="[Date Printed] [Time Printed]">
        </PageFooter>
    </dx:ASPxGridViewExporter>
    <dx:ASPxPopupControl ID="ASPxPopupControlSRI1" runat="server" 
        ClientInstanceName="popupsri1" EnableCallbackAnimation="True" 
        EnableClientSideAPI="True" HeaderText="SRI generation process" Height="100px" 
        Modal="True" PopupAction="None" PopupHorizontalAlign="WindowCenter" 
        PopupVerticalAlign="WindowCenter" Theme="Aqua" 
        Width="300px" ShowCloseButton="False" CloseAction="CloseButton">
        <HeaderStyle Font-Size="Small" />
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <table class="dxflInternalEditorTable_Aqua">
        <tr>
            <td width="40%" class="style10">
                Genarating SRI identification. Please wait...</td>
        </tr>
    </table>
            </dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="ASPxPopupControlSRI2" runat="server" 
        ClientInstanceName="popupsri2" EnableCallbackAnimation="True" 
        EnableClientSideAPI="True" HeaderText="New SRI generated" Height="100px" 
        Modal="True" PopupAction="None" PopupHorizontalAlign="WindowCenter" 
        PopupVerticalAlign="WindowCenter" Theme="Aqua" 
        Width="300px" CloseAction="CloseButton">
        <HeaderStyle Font-Size="Small" />
        <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <table class="dxflInternalEditorTable_Aqua">
        <tr>
            <td width="40%" style="width: 70%">
                <span class="style10">SRI id:<br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </span>
                <dx:ASPxLabel ID="ASPxLabel5" runat="server" ClientInstanceName="processedrows" 
                    CssClass="style10" Font-Bold="True" Font-Size="8pt" 
                    style="color: #CC0000; font-weight: 700;" Text="0">
                </dx:ASPxLabel>
                &nbsp;<br class="style10" /> <span class="style10">has been assigned for the WindTicket
                </span>
                <dx:ASPxLabel ID="ASPxLabel4" runat="server" ClientInstanceName="errorrows" 
                    CssClass="style10" Font-Size="8pt" style="color: #000000; " Text="0">
                </dx:ASPxLabel>
                <span class="style10">. </span></td>
        </tr>
    </table>
            </dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>

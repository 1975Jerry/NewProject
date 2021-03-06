<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolvedTickets.aspx.cs" Inherits="TTWeb.SolvedTickets" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>





<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx1" %>







<%@ Register src="SchTicketInfoControl.ascx" tagname="SchTicketInfoControl" tagprefix="uc1" %>



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
            var editor = ASPxGridViewSolvedTickets.GetEditor(i + 1);
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
            GroupBoxCaptionOffsetY="-19px" HeaderText="Solved Tickets" 
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
                        <td width="100%" valign="middle" align="left">Solved VF Trouble Tickets
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
                        <td align="left" valign="middle" width="80">
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
    ClientInstanceName="ASPxGridViewSolvedTickets" 
    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
    KeyFieldName="TT_Id" AutoGenerateColumns="False" Width="100%" 
    ClientIDMode="AutoID" ID="ASPxGridViewSolvedTickets" 
    EnableViewState="False" 
        Theme="Metropolis" style="font-size: 8pt" 
        
        OnDetailRowExpandedChanged="ASPxGridViewSolvedTickets_DetailRowExpandedChanged" 
        OnHtmlDataCellPrepared="ASPxGridViewSolvedTickets_HtmlDataCellPrepared" 
                    OnLoad="ASPxGridViewSolvedTickets_Load" 
                    OnRowUpdating="ASPxGridViewSolvedTickets_RowUpdating">
<ClientSideEvents Init="function(s, e) {
	window.pagegrid = s;
}"></ClientSideEvents>
<Columns>
    <dx:GridViewCommandColumn ButtonType="Image" Caption=" " ShowInCustomizationForm="True" VisibleIndex="0" Width="60px" ShowEditButton="True"/>
<dx:GridViewDataTextColumn FieldName="SRI" 
        ShowInCustomizationForm="True" Name="SRI" 
        Caption="SRI" VisibleIndex="5" ReadOnly="True" Width="150px">
<PropertiesTextEdit DisplayFormatInEditMode="True" 
        DisplayFormatString="dd/MM/yy HH:mm">
    <ReadOnlyStyle BackColor="#ECE9D8">
    </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
</dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="TT_Id" ShowInCustomizationForm="True" 
        Name="TT_Id" Caption="TT Id" VisibleIndex="7" ReadOnly="True" 
        Width="100px">
    <PropertiesTextEdit>
        <ReadOnlyStyle BackColor="#ECE9D8">
        </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
    </dx:GridViewDataTextColumn>
    <dx:GridViewDataDateColumn Caption="Inc Started on" 
        FieldName="Send_to_Vendor_Datetime" Name="Send_to_Vendor_Datetime" 
        ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3" Width="130px">
        <PropertiesDateEdit DisplayFormatInEditMode="True" 
            DisplayFormatString="dd/MM/yy HH:mm" EditFormat="Custom" 
            EditFormatString="dd/MM/yy HH:mm">
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesDateEdit>
    </dx:GridViewDataDateColumn>
<dx:GridViewDataTextColumn FieldName="Location" ShowInCustomizationForm="True" 
        Name="Location" Caption="Location" VisibleIndex="16" ReadOnly="True">
    <PropertiesTextEdit>
        <ReadOnlyStyle BackColor="#ECE9D8">
        </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
    </dx:GridViewDataTextColumn>

    <dx:GridViewDataCheckColumn Caption="To be Scheduled" FieldName="ToBeScheduled" 
        Name="ToBeScheduled" ShowInCustomizationForm="True" VisibleIndex="1" 
        Width="70px">
    </dx:GridViewDataCheckColumn>

    <dx:GridViewDataComboBoxColumn FieldName="Priority" 
        Name="Priority" ShowInCustomizationForm="True" VisibleIndex="2" 
        Width="50px" ReadOnly="True">
        <PropertiesComboBox>
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/bullet_red.png" Text=" " Value="HIGH" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_yellow.png" Text=" " Value="LOW" />
                <dx:ListEditItem ImageUrl="~/Images/bullet_blue.png" Text=" " 
                    Value="MEDIUM" />
            </Items>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesComboBox>

                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False">
                </CellStyle>
    </dx:GridViewDataComboBoxColumn>


    <dx:GridViewDataComboBoxColumn Caption="Frozen" FieldName="Freeze_Flag" 
        Name="Freeze_Flag" ShowInCustomizationForm="True" VisibleIndex="21" 
        ToolTip="Freeze_Flag" Width="60px" ReadOnly="True">
        <PropertiesComboBox ShowImageInEditBox="True">
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/Suspended.png" Text=" " Value="Yes" />
                <dx:ListEditItem Text=" " Value="No" />
            </Items>
            <ItemStyle Font-Size="0pt" HorizontalAlign="Center" />
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
            <Style HorizontalAlign="Center">
            </Style>
        </PropertiesComboBox>
        <Settings AllowAutoFilter="True" />
        <CellStyle HorizontalAlign="Center">
        </CellStyle>
    </dx:GridViewDataComboBoxColumn>

        <dx:GridViewDataComboBoxColumn Caption="Freeze Resp." FieldName="Response_Freeze" 
        Name="Response_Freeze" ShowInCustomizationForm="True" VisibleIndex="27" 
        ToolTip="Response_Freeze" Width="50px" ReadOnly="True" Visible="False">
        <PropertiesComboBox ShowImageInEditBox="True">
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/Suspended.png" Text=" " Value="Yes" />
                <dx:ListEditItem Text=" " Value="No" />
            </Items>
            <ItemStyle Font-Size="0pt" HorizontalAlign="Center" />
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
            <Style HorizontalAlign="Center">
            </Style>
        </PropertiesComboBox>
        <Settings AllowAutoFilter="True" />
        <CellStyle HorizontalAlign="Center">
        </CellStyle>
    </dx:GridViewDataComboBoxColumn>

        <dx:GridViewDataComboBoxColumn Caption="Freeze Rest." FieldName="Restore_Freeze" 
        Name="Restore_Freeze" ShowInCustomizationForm="True" VisibleIndex="29" 
        ToolTip="Restore_Freeze" Width="50px" ReadOnly="True" Visible="False">
        <PropertiesComboBox ShowImageInEditBox="True">
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/Suspended.png" Text=" " Value="Yes" />
                <dx:ListEditItem Text=" " Value="No" />
            </Items>
            <ItemStyle Font-Size="0pt" HorizontalAlign="Center" />
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
            <Style HorizontalAlign="Center">
            </Style>
        </PropertiesComboBox>
        <Settings AllowAutoFilter="True" />
        <CellStyle HorizontalAlign="Center">
        </CellStyle>
    </dx:GridViewDataComboBoxColumn>


<dx:GridViewDataTextColumn FieldName="Status" ShowInCustomizationForm="True" 
        Name="Status" Caption="Status" VisibleIndex="18" ReadOnly="True" 
        Width="100px">
    <PropertiesTextEdit>
        <ReadOnlyStyle BackColor="#ECE9D8">
        </ReadOnlyStyle>
    </PropertiesTextEdit>
    <Settings AutoFilterCondition="Contains" />
    </dx:GridViewDataTextColumn>


     <dx:GridViewDataComboBoxColumn Caption="Kintec Reject." FieldName="Kintec_Rejection_Status_Flag" 
        Name="Kintec_Rejection_Status_Flag" ShowInCustomizationForm="True" VisibleIndex="4" 
        ToolTip="Kintec_Rejection_Status_Flag" Width="50px" ReadOnly="True">
        <PropertiesComboBox ShowImageInEditBox="True">
            <Items>
                <dx:ListEditItem ImageUrl="~/Images/reject.png" Text=" " Value="True" />
                <dx:ListEditItem Text=" " Value="False" />
            </Items>
            <ItemStyle Font-Size="0pt" HorizontalAlign="Center" />
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
            <Style HorizontalAlign="Center">
            </Style>
        </PropertiesComboBox>
        <Settings AllowAutoFilter="True" />

                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False">
                </CellStyle>
    </dx:GridViewDataComboBoxColumn>


                <dx:GridViewDataComboBoxColumn Caption=" " FieldName="Attention" Name="Attention" 
                ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="31" 
                FixedStyle="Left" ToolTip="Attention" Width="30px" Visible="False">
                <PropertiesComboBox ShowImageInEditBox="True" ValueField="Attention" 
                    ValueType="System.String">
                    <Items>
                        <dx:ListEditItem ImageUrl="~/Images/warning.png" Text=" " Value="1" />
                        <dx:ListEditItem Text=" " Value="0" />
                    </Items>
                    <ItemStyle Font-Size="0pt" Wrap="False" />
                    <ReadOnlyStyle BackColor="#F8F8F8">
                    </ReadOnlyStyle>
                </PropertiesComboBox>
                <Settings AllowAutoFilter="True" />

                <HeaderStyle>
                <Border BorderStyle="None" />
                </HeaderStyle>
                <CellStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False">
                    <BorderRight BorderStyle="None" />
                </CellStyle>
            </dx:GridViewDataComboBoxColumn>

            


    <dx:GridViewDataTextColumn Caption="Problem" FieldName="Short_Description" 
        Name="Short_Description" ShowInCustomizationForm="True" VisibleIndex="17" 
        ReadOnly="True">
        <PropertiesTextEdit>
            <ReadOnlyStyle BackColor="#ECE9D8">
            </ReadOnlyStyle>
        </PropertiesTextEdit>
        <Settings AutoFilterCondition="Contains" />
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

<SettingsCookies Enabled="True" Version="31" StoreColumnsVisiblePosition="False"></SettingsCookies>

                    <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />


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
                    <Templates>
                        <DetailRow>
                            <uc1:SchTicketInfoControl ID="SchTicketInfoControl1" runat="server" />
                        </DetailRow>
                    </Templates>
                    <SettingsCommandButton>
                        <EditButton Text="Edit">
                            <Image Height="10px" Url="~/Images/edit.png">
                            </Image>
                        </EditButton>
                        <CancelButton Text="Cancel">
                            <Image Height="18px" Url="~/Images/Cancel.png">
                            </Image>
                        </CancelButton>
                        <UpdateButton Text="Save">
                            <Image Height="18px" Url="~/Images/save.png">
                            </Image>
                        </UpdateButton>
                    </SettingsCommandButton>
</dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    
    </div>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter2" runat="server" 
        GridViewID="ASPxGridViewSolvedTickets" Landscape="True" MaxColumnWidth="500" 
        PaperKind="A4">
        <Styles>
            <Default Font-Size="8pt">
            </Default>
        </Styles>
        <PageHeader Left="Solved Tickets" Right="[Page # of Pages #]">
        </PageHeader>
        <PageFooter Left="TBSP Task Management System" 
            Right="[Date Printed] [Time Printed]">
        </PageFooter>
    </dx:ASPxGridViewExporter>
    </form>
</body>
</html>

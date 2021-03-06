<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigurationList.aspx.cs" Inherits="TTWeb.ConfigurationList" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>










<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <script language="javascript" type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/JScriptFunctions.js") %>"></script>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" 
            CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
            CssPostfix="Office2010Blue" 
            GroupBoxCaptionOffsetY="-19px" HeaderText="Head Offices" 
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
                        <td width="100%" valign="middle" align="left">Configuration Lists
                        </td>
                        
                    </tr>
                </table>
            </HeaderTemplate>
            <PanelCollection>
<dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
    <table class="style1">
        <tr>
            <td>

<table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td style="padding-right: 0px; border-right-width: 0px; margin-right: 0px;" 
                            width="100%">
                            <dx:ASPxMenu runat="server" ItemAutoWidth="False" Theme="Metropolis" 
                                Width="100%" ID="ASPxMenu1">
<ClientSideEvents ItemClick="function(s, e) {

 
if(e.item.name == &quot;AddConfigurationValue&quot;) 
    {
	ASPxGridViewConfigurationValue.AddNewRow();
	}

}"></ClientSideEvents>
<Items>
<dx:MenuItem Name="AddConfigurationValue" Text="Add Configuration Value">
<Image Height="10px" Url="~/Images/Add.png"></Image>
</dx:MenuItem>
</Items>

<ItemStyle>
<Paddings PaddingRight="0px"></Paddings>
</ItemStyle>

<BorderRight BorderWidth="0px"></BorderRight>
</dx:ASPxMenu>

                        </td>
                        <td style="border-left-width: 0px; padding-left: 0px; margin-left: 0px;">
                            <dx:ASPxMenu runat="server" ItemAutoWidth="False" RightToLeft="False" 
                                Theme="Metropolis" Width="100%" EnableTheming="True" ID="ASPxMenu2">
<ClientSideEvents ItemClick="function(s, e) {
	window.pagegrid.Refresh();
}"></ClientSideEvents>
<Items>
<dx:MenuItem Name="Refresh" Text="Refresh">
<Image Height="10px" Url="~/Images/Refresh.png"></Image>
</dx:MenuItem>
</Items>

<ItemStyle HorizontalAlign="Right">
<Paddings PaddingLeft="0px"></Paddings>
</ItemStyle>

<BorderLeft BorderWidth="0px"></BorderLeft>
</dx:ASPxMenu>

                        </td>
                    </tr>
                </table>


            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" EnableTheming="True" 
                    Height="800px" style="font-weight: 700" Theme="DevEx" 
                    Width="100%">
                    <Panes>
                        <dx:SplitterPane ScrollBars="Auto" Size="20%">
                            <ContentCollection>
                                <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                                    <dx:ASPxListBox ID="ASPxListBoxCategory" runat="server" AutoPostBack="True" 
                                        Height="100%" OnSelectedIndexChanged="ASPxListBoxCategory_SelectedIndexChanged" 
                                        Theme="PlasticBlue" Width="100%">
                                        <ClientSideEvents EndCallback="function(s, e) {
			window.pagegrid.Refresh();
}" SelectedIndexChanged="function(s, e) {
	window.pagegrid.Refresh();
}" />
                                        <Border BorderStyle="None" />
                                    </dx:ASPxListBox>
                                </dx:SplitterContentControl>
                            </ContentCollection>
                        </dx:SplitterPane>
                        <dx:SplitterPane ScrollBars="Auto">
                            <ContentCollection>
                                <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                                    <dx:ASPxGridView ID="ASPxGridViewConfigurationValue" runat="server" 
                                        AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                        ClientInstanceName="ASPxGridViewConfigurationValue" 
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
                                        EnableViewState="False" KeyFieldName="Hidden_id" 
                                        OnCellEditorInitialize="ASPxGridViewConfigurationValue_CellEditorInitialize" 
                                        OnRowDeleting="ASPxGridViewConfigurationValue_RowDeleting" 
                                        OnRowInserting="ASPxGridViewConfigurationValue_RowInserting" 
                                        style="font-size: 8pt" Theme="Metropolis" Width="100%">
                                        <ClientSideEvents Init="function(s, e) {
	window.pagegrid = s;
}" />
                                        <Columns>
                                            <dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="0" Width="50px" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                            <dx:GridViewDataComboBoxColumn Caption="Configuration Category" 
                                                FieldName="Configuration_Category" Name="Configuration_Category" 
                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" Width="20%">
                                                <PropertiesComboBox MaxLength="50">
                                                    <ReadOnlyStyle Font-Italic="False">
                                                    </ReadOnlyStyle>
                                                    <ValidationSettings>
                                                        <RequiredField IsRequired="True" />
                                                    </ValidationSettings>
                                                </PropertiesComboBox>
                                                <EditCellStyle Font-Bold="False" Font-Italic="False">
                                                </EditCellStyle>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn Caption="Hidden_id" FieldName="Hidden_id" 
                                                Name="Hidden_id" ShowInCustomizationForm="True" Visible="False" 
                                                VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn Caption="Updated on" FieldName="Last_Update" 
                                                Name="Last_Update" ReadOnly="True" ShowInCustomizationForm="True" 
                                                VisibleIndex="5">
                                                <PropertiesDateEdit AllowUserInput="False" DisplayFormatInEditMode="True" 
                                                    DisplayFormatString="dd/MM/yyyy HH:mm">
                                                    <ReadOnlyStyle BackColor="#F2F2F2" Font-Italic="False" ForeColor="#999999">
                                                    </ReadOnlyStyle>
                                                </PropertiesDateEdit>
                                                <EditCellStyle Font-Italic="False">
                                                </EditCellStyle>
                                                <CellStyle ForeColor="#999999">
                                                </CellStyle>
                                            </dx:GridViewDataDateColumn>
                                            <dx:GridViewDataTextColumn Caption="Configuration Value" 
                                                FieldName="Configuration_Value" Name="Configuration_Value" 
                                                ShowInCustomizationForm="True" VisibleIndex="2" Width="40%">
                                                <PropertiesTextEdit MaxLength="50">
                                                    <ValidationSettings>
                                                        <RequiredField IsRequired="True" />
                                                    </ValidationSettings>
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                        <SettingsPager AlwaysShowPager="True" PageSize="20" ShowDefaultImages="False">
                                            <AllButton Text="All">
                                            </AllButton>
                                            <NextPageButton Text="Next &gt;">
                                            </NextPageButton>
                                            <PrevPageButton Text="&lt; Prev">
                                            </PrevPageButton>
                                            <PageSizeItemSettings Visible="True">
                                            </PageSizeItemSettings>
                                        </SettingsPager>
                                        <SettingsEditing Mode="Inline" />
                                        <Settings ShowHeaderFilterButton="True" />
                                        <SettingsText Title="Test title" />
                                        <SettingsCookies Enabled="True" StoreFiltering="False" Version="7" />
                                        <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                                            CssPostfix="PlasticBlue">
                                            <Header BackColor="#0066CC" ForeColor="White" ImageSpacing="10px" 
                                                SortingImageSpacing="10px">
                                            </Header>
                                            <FocusedRow BackColor="#FCF9DF" ForeColor="Black">
                                                <BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX" />
                                            </FocusedRow>
                                            <CommandColumnItem>
                                                <Paddings PaddingLeft="3px" />
                                            </CommandColumnItem>
                                        </Styles>
                                        <StylesEditors>
                                            <CalendarHeader Spacing="11px">
                                            </CalendarHeader>
                                            <ProgressBar Height="25px">
                                            </ProgressBar>
                                        </StylesEditors>
                                        <SettingsCommandButton>
                                            <EditButton Text="Edit Head Office">
                                                <Image Height="10px" ToolTip="Edit Group" Url="~/Images/Edit.png">
                                                </Image>
                                            </EditButton>
                                            <NewButton Text="New Process">
                                                <Image Height="10px" ToolTip="New Group" Url="~/Images/Add.png">
                                                </Image>
                                            </NewButton>
                                            <DeleteButton Text="Delete Head Office">
                                                <Image Height="10px" ToolTip="Delete Group" Url="~/Images/Delete.png">
                                                </Image>
                                            </DeleteButton>
                                            <CancelButton Text="Cancel">
                                                <Image Height="18px" ToolTip="Cancel" Url="~/Images/Cancel.png">
                                                </Image>
                                            </CancelButton>
                                            <UpdateButton Text="Update">
                                                <Image Height="18px" ToolTip="Save Group" Url="~/Images/Save.png">
                                                </Image>
                                            </UpdateButton>
                                            <ClearFilterButton Text="Clear Filter">
                                                <Image Height="20px" Url="~/Images/ClearFilter.png">
                                                </Image>
                                            </ClearFilterButton>
                                        </SettingsCommandButton>
                                    </dx:ASPxGridView>
                                </dx:SplitterContentControl>
                            </ContentCollection>
                        </dx:SplitterPane>
                    </Panes>
                </dx:ASPxSplitter>
            </td>
        </tr>
    </table>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    
    </div>
    </form>
</body>
</html>

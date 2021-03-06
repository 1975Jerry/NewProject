<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemGroups.aspx.cs" Inherits="TTWeb.SystemGroups" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>









<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .dxgvControl_Office2003Blue,
.dxgvDisabled_Office2003Blue
{
	border: solid 1px #4f93e3;
	font: 9pt Tahoma;
	background-color: White;
	color: Black;
	cursor: default;
}

.dxgvTable_Office2003Blue
{
	background-color: transparent;
	border:0;
	border-collapse: separate !important;
	overflow:hidden;
	font: 9pt Tahoma;
	color: Black;
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
            GroupBoxCaptionOffsetY="-19px" HeaderText="CI Groups" 
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
                        <td width="100%" valign="middle" align="left">Configuration Item Groups Management
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
                        <td style="padding-right: 0px; border-right-width: 0px; margin-right: 0px;" 
                            width="100%">
                            <dx:ASPxMenu ID="ASPxMenu1" runat="server" ItemAutoWidth="False" Theme="Metropolis" 
                                Width="100%">
                                <ClientSideEvents ItemClick="function(s, e) {ASPxGridViewSystemGroups.AddNewRow()}" />
                                <Items>
                                    <dx:MenuItem Name="NewCIGroup" Text="New CI Group">
                                        <Image AlternateText="New" Height="10px" Url="~/Images/Add.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <ItemStyle>
                                <Paddings PaddingRight="0px" />
                                </ItemStyle>
                                <BorderRight BorderWidth="0px" />
                            </dx:ASPxMenu>
                        </td>
                        <td style="border-left-width: 0px; padding-left: 0px; margin-left: 0px;">
                            <dx:ASPxMenu ID="ASPxMenu2" runat="server" EnableTheming="True" 
                                ItemAutoWidth="False" RightToLeft="False" Theme="Metropolis" Width="100%">
                                <ClientSideEvents ItemClick="function(s, e) {
	window.pagegrid.Refresh();
}" />
                                <Items>
                                    <dx:MenuItem Name="Refresh" Text="Refresh">
                                        <Image Height="10px" Url="~/Images/Refresh.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <ItemStyle HorizontalAlign="Right">
                                <Paddings PaddingLeft="0px" />
                                </ItemStyle>
                                <BorderLeft BorderWidth="0px" />
                            </dx:ASPxMenu>
                        </td>
                    </tr>
                </table>


                <dx:ASPxGridView ID="ASPxGridViewSystemGroups" runat="server" 
                    AutoGenerateColumns="False" ClientIDMode="AutoID" 
                    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                    CssPostfix="PlasticBlue" KeyFieldName="Hidden_id" 
                    OnCellEditorInitialize="ASPxGridViewPendingtypes_CellEditorInitialize" 
                    OnRowDeleting="ASPxGridViewPendingtypes_RowDeleting" 
                    OnRowInserting="ASPxGridViewPendingtypes_RowInserting" 
                    OnRowUpdating="ASPxGridViewPendingtypes_RowUpdating" Width="100%" 
                    EnableViewState="False" 
                    OnDetailRowExpandedChanged="ASPxGridViewSystemGroups_DetailRowExpandedChanged" 
                                                        ClientInstanceName="ASPxGridViewSystemGroups" Theme="Metropolis">
                    <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                        CssPostfix="PlasticBlue">
                        <Header ImageSpacing="10px" SortingImageSpacing="10px" BackColor="#0066CC" 
                            ForeColor="White">
                        </Header>
                        <FocusedRow BackColor="#FCF9DF" ForeColor="Black">
                        <BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX" />
                        </FocusedRow>

<CommandColumnItem>
<Paddings PaddingLeft="3px"></Paddings>
</CommandColumnItem>
                    </Styles>
                    <ClientSideEvents  Init="function(s, e) {
	window.pagegrid = s;
}" />

                    <Columns>
                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" Width="80px" ButtonType="Image" ShowEditButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                        <dx:GridViewDataTextColumn Caption="Configuration Item Group" FieldName="System_Group" 
                            Name="System_Group" ShowInCustomizationForm="True" VisibleIndex="1">
                            <Settings AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Hidden_id" FieldName="Hidden_id" 
                            Name="Hidden_id" ShowInCustomizationForm="True" Visible="False" 
                            VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                     <%--   <dx:GridViewDataTextColumn Caption="Process" FieldName="Process" Name="Process" 
                            ShowInCustomizationForm="True" VisibleIndex="2" Width="35%">
                        </dx:GridViewDataTextColumn>--%>

                        
                         <dx:GridViewDataDropDownEditColumn Caption="Process" FieldName="Process" 
                            Name="Process" ShowInCustomizationForm="True" VisibleIndex="2" Width="45%"
                            ReadOnly="True">
                            <PropertiesDropDownEdit Spacing="0" ClientInstanceName="checkComboBox">
                                <ValidationSettings>
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                                <DropDownWindowTemplate>
                        <dx:ASPxListBox Width="100%" ID="listBox" ClientInstanceName="checkListBox" SelectionMode="CheckColumn"
                            runat="server" SkinID="CheckComboBoxListBox">
                            <Border BorderStyle="None" />
                            <BorderBottom BorderStyle="Solid" BorderWidth="1px" BorderColor="#DCDCDC" />
                            <Items>
                                <dx:ListEditItem Text="(Select all)" />
                            </Items>
                            <ClientSideEvents SelectedIndexChanged="function(s,e) {OnListBoxSelectionChanged(s,e,checkComboBox)}" />
                        </dx:ASPxListBox>
                        <table style="width: 100%" cellspacing="0" cellpadding="4">
                            <tr>
                                <td align="right">
                                    <dx:ASPxButton ID="ASPxButton1" AutoPostBack="False" runat="server" Text="Close">
                                        <ClientSideEvents Click="function(s, e){ checkComboBox.HideDropDown(); }" />
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </DropDownWindowTemplate>
                        </PropertiesDropDownEdit>
                             <Settings AutoFilterCondition="Contains" />
                        </dx:GridViewDataDropDownEditColumn>

                    </Columns>
                    <SettingsBehavior ColumnResizeMode="NextColumn" 
                        ConfirmDelete="True" AllowFocusedRow="True" />
                    <SettingsPager ShowDefaultImages="False" PageSize="20" AlwaysShowPager="True">
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
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowFilterRowMenu="True" 
                        ShowGroupedColumns="True" ShowFilterBar="Visible" />
                    <SettingsCookies Enabled="True" Version="4" />
                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" />
                    <Styles>
<Header SortingImageSpacing="10px" ImageSpacing="10px"></Header>

<FocusedRow BackColor="#FCF9DF" ForeColor="Black">
<BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX"></BackgroundImage>
</FocusedRow>

                        <CommandColumnItem>
                            <Paddings PaddingLeft="3px"/>
                        </CommandColumnItem>
                    </Styles>

                    <StylesEditors>
                        <ButtonEdit Wrap="True">
                        </ButtonEdit>
                        <CalendarHeader Spacing="11px">
                        </CalendarHeader>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                    <Templates>
                        <DetailRow>
                            

                             <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td 
                            width="100%">
                            <dx:ASPxMenu ID="ASPxMenu2" runat="server" ItemAutoWidth="False" Theme="DevEx" 
                                Width="100%">
                                <ClientSideEvents ItemClick="function(s, e) {ASPxGridViewSystemProblemGroups.AddNewRow()}" />
                                <Items>
                                    <dx:MenuItem Name="AddCIGroup" Text="Add Event Group Association">
                                        <Image AlternateText="New" Height="10px" Url="~/Images/Add.png">
                                        </Image>
                                    </dx:MenuItem>
                                </Items>
                                <ItemStyle>
                                <Paddings PaddingRight="0px" />
                                </ItemStyle>
                            </dx:ASPxMenu>
                        </td>

                    </tr>
                </table>

                            <dx:ASPxGridView ID="ASPxGridViewSystemProblemGroups" runat="server" 
                                AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
                                EnableTheming="True" KeyFieldName="Hidden_ID" 
                                onbeforeperformdataselect="ASPxGridViewSystemProblemGroups_BeforePerformDataSelect" 
                                OnCellEditorInitialize="ASPxGridViewSystemProblemGroups_CellEditorInitialize" 
                                OnRowDeleting="ASPxGridViewSystemProblemGroups_RowDeleting" 
                                OnRowInserting="ASPxGridViewSystemProblemGroups_RowInserting" 
                                OnRowUpdating="ASPxGridViewSystemProblemGroups_RowUpdating" 
                                Theme="Office2003Blue" Width="100%" 
                                
                                 onautofiltercelleditorinitialize="ASPxGridViewSystemProblemGroups_AutoFilterCellEditorInitialize" 
                                 ClientInstanceName="ASPxGridViewSystemProblemGroups">
                                <ClientSideEvents Init="function(s, e) {
	window.pagegrid = s;
}" />
                                <Columns>
                                    <dx:GridViewCommandColumn ButtonType="Image" VisibleIndex="0" Width="50px" ShowEditButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                    <dx:GridViewDataTextColumn Caption="Process" FieldName="Process" Name="Process" 
                                        ReadOnly="True" VisibleIndex="2">
                                        <PropertiesTextEdit>
                                            <ReadOnlyStyle BackColor="#CCCCCC" ForeColor="Gray">
                                            </ReadOnlyStyle>
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Associated Event Groups" 
                                        FieldName="Problem_Group" Name="Problem_Group" VisibleIndex="1" Width="40%">
                                        <PropertiesComboBox Spacing="0">
                                            <ValidationSettings>
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataTextColumn Caption="Hidden_ID" FieldName="Hidden_ID" 
                                        Name="Hidden_ID" Visible="False" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="NextColumn" 
                                    ConfirmDelete="True" />
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
                                <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />
                                <SettingsCookies Enabled="True" Version="1" />
                                <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                                <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                                    CssPostfix="PlasticBlue">
                                    <Header ImageSpacing="10px" SortingImageSpacing="10px">
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
                                <Templates>
                                    <DetailRow>
                                        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
                                            ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                            CssPostfix="Office2003Blue" Theme="DevEx" Width="100%">
                                            <TabPages>
                                                <dx:TabPage Name="Group_Systems" Text="Group Configuration Items">
                                                    <ContentCollection>
                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                            <dx:ASPxGridView ID="ASPxGridViewGroupSystems" runat="server" 
                                                                AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                                                CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                                                CssPostfix="Office2003Blue" 
                                                                OnBeforePerformDataSelect="ASPxGridViewGroupSystems_BeforePerformDataSelect" 
                                                                Theme="DevEx" Width="100%">
                                                                <Columns>
                                                                    <dx:GridViewDataTextColumn Caption="Configuration Item" FieldName="SYSTEM" Name="SYSTEM" 
                                                                        ShowInCustomizationForm="True" VisibleIndex="0" Width="35%">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Process" FieldName="Process" 
                                                                        Name="Process" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <SettingsBehavior ColumnResizeMode="NextColumn" />
                                                                <SettingsDetail IsDetailGrid="True" />
                                                                <SettingsPager PageSize="20">
                                                                </SettingsPager>
                                                                <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />
                                                                <Styles CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2003Blue">
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <Row BackColor="WhiteSmoke">
                                                                    </Row>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                </Styles>
                                                                <StylesEditors>
                                                                    <ProgressBar Height="25px">
                                                                    </ProgressBar>
                                                                </StylesEditors>
                                                            </dx:ASPxGridView>
                                                            <br />
                                                            ** Specific Configuration Item to Events mapping
                                                        </dx:ContentControl>
                                                    </ContentCollection>
                                                </dx:TabPage>
                                                <dx:TabPage Name="Group_Problems" Text="Group Events / Issues">
                                                    <ContentCollection>
                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                            <dx:ASPxGridView ID="ASPxGridViewGroupProblems" runat="server" 
                                                                AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                                                CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                                                CssPostfix="Office2003Blue" 
                                                                OnBeforePerformDataSelect="ASPxGridViewGroupProblems_BeforePerformDataSelect" 
                                                                Theme="DevEx" Width="100%">
                                                                <Columns>
                                                                    <dx:GridViewDataTextColumn Caption="Event" FieldName="Problem" Name="Problem" 
                                                                        ShowInCustomizationForm="True" VisibleIndex="0" Width="40%">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Process" FieldName="Process" 
                                                                        Name="Process" ShowInCustomizationForm="True" VisibleIndex="1" Width="30%">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataCheckColumn Caption="Valid Event" FieldName="Valid_Problem" 
                                                                        Name="Valid_Problem" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    </dx:GridViewDataCheckColumn>
                                                                </Columns>
                                                                <SettingsDetail IsDetailGrid="True" />
                                                                <SettingsPager PageSize="20">
                                                                </SettingsPager>
                                                                <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />
                                                                <Styles CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                                                    CssPostfix="Office2003Blue">
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <Row BackColor="WhiteSmoke">
                                                                    </Row>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                </Styles>
                                                                <StylesEditors>
                                                                    <ProgressBar Height="25px">
                                                                    </ProgressBar>
                                                                </StylesEditors>
                                                            </dx:ASPxGridView>
                                                            <br />
                                                            ** Specific Configuration Item to Events mapping
                                                        </dx:ContentControl>
                                                    </ContentCollection>
                                                </dx:TabPage>
                                            </TabPages>
                                            <LoadingPanelImage Url="~/App_Themes/Office2003Blue/Web/Loading.gif">
                                            </LoadingPanelImage>
                                            <LoadingPanelStyle ImageSpacing="6px">
                                            </LoadingPanelStyle>
                                            <ContentStyle>
                                                <Border BorderColor="#002D96" BorderStyle="Solid" BorderWidth="1px" />
                                            </ContentStyle>
                                        </dx:ASPxPageControl>
                                    </DetailRow>
                                </Templates>
                                <SettingsCommandButton>
                                    <EditButton Text="Edit CI Group">
                                        <Image Height="10px" ToolTip="Edit Group" Url="~/Images/Edit.png">
                                        </Image>
                                    </EditButton>
                                    <NewButton Text="New CI Group">
                                        <Image Height="10px" ToolTip="New Group" Url="~/Images/Add.png">
                                        </Image>
                                    </NewButton>
                                    <DeleteButton Text="Delete CI Group">
                                        <Image Height="10px" ToolTip="Delete Group" Url="~/Images/Delete.png">
                                        </Image>
                                    </DeleteButton>
                                    <CancelButton Text="Cancel">
                                        <Image Height="18px" ToolTip="Cancel" Url="~/Images/Cancel.png">
                                        </Image>
                                    </CancelButton>
                                    <UpdateButton Text="Update CI Group">
                                        <Image Height="18px" ToolTip="Save Group" Url="~/Images/Save.png">
                                        </Image>
                                    </UpdateButton>
                                    <ClearFilterButton Text="Clear Filter">
                                        <Image Height="20px" Url="~/Images/ClearFilter.png">
                                        </Image>
                                    </ClearFilterButton>
                                </SettingsCommandButton>
                            </dx:ASPxGridView>
                            <br />
                            * CI Groups to Event Groups associations defines Configuration Item to Events 
                            mapping&nbsp;&nbsp;
                        </DetailRow>
                    </Templates>
                    <SettingsCommandButton>
                        <EditButton Text="Edit CI Group">
                            <Image Height="10px" Url="~/Images/Edit.png" ToolTip="Edit Group">
                            </Image>
                        </EditButton>
                        <NewButton Text="New CI Group">
                            <Image Height="10px" Url="~/Images/Add.png" ToolTip="New Group">
                            </Image>
                        </NewButton>
                        <DeleteButton Text="Delete CI Group">
                            <Image Height="10px" Url="~/Images/Delete.png" ToolTip="Delete Group">
                            </Image>
                        </DeleteButton>
                        <CancelButton Text="Cancel">
                            <Image Height="18px" Url="~/Images/Cancel.png" ToolTip="Cancel">
                            </Image>
                        </CancelButton>
                        <UpdateButton Text="Update CI Group">
                            <Image Height="18px" Url="~/Images/Save.png" ToolTip="Save Group">
                            </Image>
                        </UpdateButton>
                        <ClearFilterButton Text="Clear Filter">
                            <Image Height="18px" Url="~/Images/ClearFilter.png">
                            </Image>
                        </ClearFilterButton>
                    </SettingsCommandButton>
                </dx:ASPxGridView>
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

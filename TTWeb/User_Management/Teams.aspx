<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="TTWeb.Teams" uiCulture="en" Culture="en-US" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" 
            CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" 
            CssPostfix="Office2010Blue" 
            GroupBoxCaptionOffsetY="-19px" HeaderText="Teams" 
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
                        <td width="100%" valign="middle" align="left">Teams Management [> Team Members]
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
                                <ClientSideEvents ItemClick="function(s, e) {
	gridViewTeams.AddNewRow()
    	
}" />
                                <Items>
                                    <dx:MenuItem Name="NewTeam" Text="New Team">
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

                <dx:ASPxGridView ID="ASPxGridViewTeams" runat="server" 
                    AutoGenerateColumns="False" ClientIDMode="AutoID" 
                    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                    CssPostfix="PlasticBlue" KeyFieldName="Hidden_team_id" Width="100%" 
                    OnRowInserting="ASPxGridViewTeams_RowInserting" 
                    OnRowUpdating="ASPxGridViewTeams_RowUpdating" 
                    OnRowDeleting="ASPxGridViewTeams_RowDeleting"
                    OnInitNewRow="ASPxGridViewTeams_InitNewRow" 
                    ClientInstanceName="gridViewTeams" Theme="Metropolis">

                    <SettingsBehavior AllowGroup="False" ColumnResizeMode="NextColumn" 
                        AllowFocusedRow="True" EnableRowHotTrack="True" ConfirmDelete="True" />
                    <SettingsEditing Mode="Inline" />
                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />

                    <ClientSideEvents CallbackError="function(s, e) {
	if (s.Editing)
	{	
        newButton.SetEnabled(false);
	    editButton.SetEnabled(false);
	    deleteButton.SetEnabled(false);
	    saveButton.SetEnabled(true);
	    cancelButton.SetEnabled(true);
        s.Editing = false;
	}
}" Init="function(s, e) {
	window.pagegrid = s;
}"/>

                    <Styles>
                        <Header SortingImageSpacing="10px" ImageSpacing="10px" BackColor="#0066CC" 
                            ForeColor="White"></Header>

                        <FocusedRow BackColor="#FCF9DF" ForeColor="Black">
                        <BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX"></BackgroundImage>
                        </FocusedRow>

                        <CommandColumnItem>
                            <Paddings PaddingLeft="3px"/>
                        </CommandColumnItem>
                    </Styles>

                    <Columns>

                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" Width="70px" ButtonType="Image" ShowEditButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>

                        <dx:GridViewDataTextColumn Caption="Team" FieldName="Team" 
                            Name="Team" ShowInCustomizationForm="True" VisibleIndex="0">
                            <PropertiesTextEdit ClientInstanceName="teamname">
                                <ValidationSettings ValidationGroup="editform">
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <Settings AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn Caption="Valid Team" FieldName="Valid_team" 
                            Name="Valid_team" ShowInCustomizationForm="True" VisibleIndex="1" 
                            Width="10%">
                            <PropertiesCheckEdit ClientInstanceName="validteam" AllowGrayed="True" 
                                AllowGrayedByClick="False">
                                
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn Caption="Team Email" FieldName="Team_email" 
                            Name="Team_email" ShowInCustomizationForm="True" VisibleIndex="2">
                            <PropertiesTextEdit ClientInstanceName="teamemail">
                            </PropertiesTextEdit>
                            <Settings AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Created on" FieldName="Created_on" Name="Created_on" 
                            ShowInCustomizationForm="True" VisibleIndex="5" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy HH:mm">
                                <ReadOnlyStyle ForeColor="#999999" BackColor="#EBEBEB">
                                </ReadOnlyStyle>
                            </PropertiesTextEdit>
                            <CellStyle ForeColor="#999999">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Members" FieldName="Members" Name="Members" 
                                ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3" Width="70px">
                                <PropertiesTextEdit>
                                    <ReadOnlyStyle BackColor="#EBEBEB" ForeColor="#999999">
                                    </ReadOnlyStyle>
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="CI Grps" FieldName="System_Groups" 
                                Name="System_Groups" ReadOnly="True" ShowInCustomizationForm="True" 
                                VisibleIndex="4" Width="70px" Visible="False">
                                <PropertiesTextEdit>
                                    <ReadOnlyStyle BackColor="#EBEBEB" ForeColor="#999999">
                                    </ReadOnlyStyle>
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Hidden Team Id" FieldName="Hidden_team_id" 
                            Name="Hidden_team_id" ShowInCustomizationForm="True" Visible="False" 
                            VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                    </Columns>

<SettingsBehavior AllowGroup="False" ColumnResizeMode="NextColumn"></SettingsBehavior>

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

<SettingsEditing Mode="Inline"></SettingsEditing>

                    <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowFilterRowMenu="True" />
                    <SettingsCookies Enabled="True" Version="10" />

<SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True"></SettingsDetail>

                    <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                        CssPostfix="PlasticBlue">
                        <Header ImageSpacing="10px" SortingImageSpacing="10px">
                        </Header>
                        <FocusedRow BackColor="#FCF9DF" ForeColor="Black">
                        <BackgroundImage ImageUrl="~/Images/GridRowBack.png" Repeat="RepeatX" />
                        </FocusedRow>
                    </Styles>
                    <StylesEditors>
                        <CalendarHeader Spacing="11px">
                        </CalendarHeader>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                    <Templates>
                        <DetailRow>
                            <table class="style1">
                                <tr>
                                    <td>
                                        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
                                            ClientIDMode="AutoID" CssFilePath="~/App_Themes/Glass/{0}/styles.css" 
                                            CssPostfix="Glass" TabSpacing="0px" Width="100%" Theme="PlasticBlue">
                                            <TabPages>
                                                <dx:TabPage Name="Members" Text="Members">
                                                    <ContentCollection>
                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                            
                                                            <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td 
                            width="100%">
                            <dx:ASPxMenu ID="ASPxMenu1" runat="server" ItemAutoWidth="False" Theme="Metropolis" 
                                Width="100%">
                                <ClientSideEvents ItemClick="function(s, e) {
	TeamDetailsGrid.AddNewRow()

		
}" />
                                <Items>
                                    <dx:MenuItem Name="AddUser" Text="Add User">
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


                                                            <dx:ASPxGridView ID="ASPxGridViewTeamDetails" runat="server" 
                                                                AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                                                ClientInstanceName="TeamDetailsGrid" 
                                                                CssFilePath="~/App_Themes/Office2003Silver/{0}/styles.css" 
                                                                CssPostfix="Office2003Silver" KeyFieldName="Hidden_user_id" 
                                                                OnBeforePerformDataSelect="ASPxGridViewDetails_BeforePerformDataSelect" 
                                                                OnRowUpdating="ASPxGridViewTeamDetails_RowUpdating" Width="100%" 
                                                                OnCellEditorInitialize="ASPxGridViewTeamDetails_CellEditorInitialize" 
                                                                Theme="Office2003Blue" OnRowDeleting="ASPxGridViewTeamDetails_RowDeleting" 
                                                                OnRowInserting="ASPxGridViewTeamDetails_RowInserting">
   


                                                                <Styles>
                                                                    
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                    
                                                                    <CommandColumnItem>
                                                                        <Paddings PaddingLeft="3px"/>
                                                                    </CommandColumnItem>
                                                                </Styles>

                                                                <Columns>

                                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" Width="50px" ButtonType="Image" ShowEditButton="True" ShowDeleteButton="True"/>

                                                                        <dx:GridViewDataComboBoxColumn Caption="User Name" FieldName="User_name" 
                                                                            Name="User_name" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                            <PropertiesComboBox IncrementalFilteringDelay="300" 
                                                                                IncrementalFilteringMode="Contains">
                                                                                <ReadOnlyStyle BackColor="#EBEBEB">
                                                                                </ReadOnlyStyle>
                                                                                <ValidationSettings>
                                                                                    <RequiredField IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </PropertiesComboBox>
                                                                        </dx:GridViewDataComboBoxColumn>
                                                                    <dx:GridViewDataCheckColumn Caption="Read Only" FieldName="Read_only" 
                                                                        Name="Read_only" ShowInCustomizationForm="True" VisibleIndex="3" 
                                                                        Width="10%">
                                                                    </dx:GridViewDataCheckColumn>
                                                                    <dx:GridViewDataDateColumn Caption="Updated on" FieldName="Updated_on" 
                                                                        Name="Updated_on" ReadOnly="True" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="4">
                                                                        <PropertiesDateEdit AllowUserInput="False" DisplayFormatString="dd/MM/yyyy HH:mm">
                                                                            <DropDownButton Enabled="False">
                                                                            </DropDownButton>
                                                                            <ReadOnlyStyle BackColor="#EBEBEB">
                                                                            </ReadOnlyStyle>
                                                                        </PropertiesDateEdit>
                                                                        <CellStyle ForeColor="#999999">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataDateColumn>
                                                                    <dx:GridViewDataCheckColumn Caption="Valid User" FieldName="Valid_user" 
                                                                        Name="Valid_user" ReadOnly="True" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="5" Width="10%">
                                                                        <EditFormSettings Visible="False" />
                                                                        <CellStyle ForeColor="#999999">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataCheckColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Hidden_user_id" FieldName="Hidden_user_id" 
                                                                        Name="Hidden_user_id" ShowInCustomizationForm="True" Visible="False" 
                                                                        VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Hidden_team_id" FieldName="Hidden_team_id" 
                                                                        Name="Hidden_team_id" ShowInCustomizationForm="True" Visible="False" 
                                                                        VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="NextColumn" />
                                                                <SettingsPager PageSize="20" AlwaysShowPager="True">
                                                                </SettingsPager>
                                                                <SettingsEditing Mode="Inline" />
                                                                <SettingsDetail IsDetailGrid="True" />

                                                                <Styles CssFilePath="~/App_Themes/Office2003Silver/{0}/styles.css" 
                                                                    CssPostfix="Office2003Silver">
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                </Styles>
                                                                <StylesEditors>
                                                                    <ProgressBar Height="25px">
                                                                    </ProgressBar>
                                                                </StylesEditors>
                                                                <SettingsCommandButton>
                                                                    <EditButton Text="Add / Remove Member">
                                                                        <Image Height="10px" Url="~/Images/Edit.png" ToolTip="Edit">
                                                                        </Image>
                                                                    </EditButton>
                                                                    <NewButton Text="Add User">
                                                                        <Image Height="10px" Url="~/Images/Add.png">
                                                                        </Image>
                                                                    </NewButton>
                                                                    <DeleteButton Text="Delete">
                                                                        <Image Height="10px" Url="~/Images/Delete.png">
                                                                        </Image>
                                                                    </DeleteButton>
                                                                    <CancelButton Text="Cancel">
                                                                        <Image Height="18px" Url="~/Images/Cancel.png">
                                                                        </Image>
                                                                    </CancelButton>
                                                                    <UpdateButton Text="Save">
                                                                        <Image Height="18px" Url="~/Images/Save.png">
                                                                        </Image>
                                                                    </UpdateButton>
                                                                </SettingsCommandButton>
                                                            </dx:ASPxGridView>
                                                        </dx:ContentControl>
                                                    </ContentCollection>
                                                </dx:TabPage>
                                                <dx:TabPage Name="System Groups" Text="Configuration Item Groups" 
                                                    ClientVisible="False">
                                                    <ContentCollection>
                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                            
                                                                                                                        <table cellpadding="0" cellspacing="0" class="style1">
                    <tr>
                        <td 
                            width="100%">
                            <dx:ASPxMenu ID="ASPxMenu3" runat="server" ItemAutoWidth="False" Theme="Metropolis" 
                                Width="100%">
                                <ClientSideEvents ItemClick="function(s, e) {ASPxGridViewSystemDetails.AddNewRow()
		
}" />
                                <Items>
                                    <dx:MenuItem Name="AddGroup" Text="Add Group">
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

                                                            <dx:ASPxGridView ID="ASPxGridViewSystemDetails" runat="server" 
                                                                AutoGenerateColumns="False" ClientIDMode="AutoID" 
                                                                CssFilePath="~/App_Themes/Office2003Silver/{0}/styles.css" 
                                                                CssPostfix="Office2003Silver" 
                                                                OnBeforePerformDataSelect="ASPxGridViewSystemDetails_BeforePerformDataSelect" 
                                                                Width="100%" KeyFieldName="System_Group" 
                                                                Theme="Office2003Blue" 
                                                                OnCellEditorInitialize="ASPxGridViewSystemDetails_CellEditorInitialize" 
                                                                OnRowDeleting="ASPxGridViewSystemDetails_RowDeleting" 
                                                                OnRowInserting="ASPxGridViewSystemDetails_RowInserting" ClientInstanceName="ASPxGridViewSystemDetails">

                                                                <Styles>
                                                                    
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                    
                                                                    <CommandColumnItem>
                                                                        <Paddings PaddingLeft="3px"/>
                                                                    </CommandColumnItem>
                                                                </Styles>

                                                                <Columns>

                                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" Width="50px" ButtonType="Image" ShowDeleteButton="True"/>




                                                                        <dx:GridViewDataComboBoxColumn Caption="Configuration Item Group" FieldName="System_Group" 
                                                                            Name="System_Group" ShowInCustomizationForm="True" VisibleIndex="1" 
                                                                            Width="40%">
                                                                            <PropertiesComboBox>
                                                                                <ReadOnlyStyle BackColor="#EBEBEB">
                                                                                </ReadOnlyStyle>
                                                                                <ValidationSettings>
                                                                                    <RequiredField IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </PropertiesComboBox>
                                                                        </dx:GridViewDataComboBoxColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Added On" FieldName="Added_on" 
                                                                        Name="Added_on" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="3" ReadOnly="True">
                                                                        <PropertiesTextEdit>
                                                                            <ReadOnlyStyle BackColor="#EBEBEB">
                                                                            </ReadOnlyStyle>
                                                                        </PropertiesTextEdit>
                                                                        <CellStyle ForeColor="#999999">
                                                                        </CellStyle>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn Caption="Hidden_team_id" FieldName="Hidden_team_id" 
                                                                        Name="Hidden_team_id" ShowInCustomizationForm="True" Visible="False" 
                                                                        VisibleIndex="2">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="NextColumn" 
                                                                    EnableRowHotTrack="True" />
                                                                <SettingsPager PageSize="20" AlwaysShowPager="True">
                                                                </SettingsPager>
                                                                <SettingsEditing Mode="Inline" />
                                                                <SettingsDetail IsDetailGrid="True" />

                                                                <Styles CssFilePath="~/App_Themes/Office2003Silver/{0}/styles.css" 
                                                                    CssPostfix="Office2003Silver">
                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                    </Header>
                                                                    <LoadingPanel ImageSpacing="10px">
                                                                    </LoadingPanel>
                                                                </Styles>
                                                                <StylesEditors>
                                                                    <ProgressBar Height="25px">
                                                                    </ProgressBar>
                                                                </StylesEditors>
                                                                <SettingsCommandButton>
                                                                    <EditButton Text="Add / Remove System Group">
                                                                        <Image Height="10px" Url="~/Images/Edit.png" ToolTip="Edit">
                                                                        </Image>
                                                                    </EditButton>
                                                                    <NewButton Text="Add System Group">
                                                                        <Image Height="10px" Url="~/Images/Add.png">
                                                                        </Image>
                                                                    </NewButton>
                                                                    <DeleteButton Text="Delete">
                                                                        <Image Height="10px" Url="~/Images/Delete.png">
                                                                        </Image>
                                                                    </DeleteButton>
                                                                    <CancelButton Text="Cancel">
                                                                        <Image Height="18px" Url="~/Images/Cancel.png">
                                                                        </Image>
                                                                    </CancelButton>
                                                                    <UpdateButton Text="Save">
                                                                        <Image Height="18px" Url="~/Images/Save.png">
                                                                        </Image>
                                                                    </UpdateButton>
                                                                </SettingsCommandButton>
                                                            </dx:ASPxGridView>
                                                             
                                                             <p style="padding-top: 5px;">* System Groups that the selected Team monitors. Needed 
                                                                 for Teams initiating a new Routing Path</p>
                                                             
                                                        </dx:ContentControl>
                                                    </ContentCollection>
                                                   </dx:TabPage>
                                            </TabPages>
                                            <LoadingPanelImage Url="~/App_Themes/Glass/Web/Loading.gif">
                                            </LoadingPanelImage>
                                            <Paddings PaddingLeft="0px" />
                                            <ContentStyle>
                                                <Border BorderColor="#4986A2" />
                                            </ContentStyle>
                                        </dx:ASPxPageControl>
                                    </td>
                                </tr>
                            </table>
                        </DetailRow>
                        <EditForm>
                            <table class="style1">
                                <tr>
                                    <td>
                                        Team Name</td>
                                    <td>
                                        <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientIDMode="AutoID" 
                                            CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                            CssPostfix="Office2003Blue" 
                                            SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" 
                                            ValidationSettings-ValidationGroup='<%# Container.ValidationGroup %>'
                                            Text='<%# Bind("Team") %>' Width="230px">
                                            <ValidationSettings RequiredField-IsRequired="true" >
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td>
                                        Created on</td>
                                    <td>
                                        <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" ClientIDMode="AutoID" 
                                            CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                            CssPostfix="Office2003Blue"
                                            ReadOnly = "true"
                                            SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" 
                                            Value='<%# Bind("Created_on") %>' Width="228px">
                                            <DropDownButton Enabled="False">
                                            </DropDownButton>
                                        </dx:ASPxDateEdit>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Valid Team</td>
                                    <td>
                                        <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" ClientIDMode="AutoID" 
                                            CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                            CssPostfix="Office2003Blue" 
                                            SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" 
                                            ValidationSettings-ValidationGroup='<%# Container.ValidationGroup %>'
                                            Value='<%# Bind("Valid_team") %>'>
                                            <ValidationSettings RequiredField-IsRequired="true" ValidationGroup = "edit">
                                            </ValidationSettings>
                                            
                                        </dx:ASPxCheckBox>
                                    </td>
                                    <td>
                                        Team Email</td>
                                    <td>
                                        <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientIDMode="AutoID" 
                                            CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                            CssPostfix="Office2003Blue" 
                                            SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css"
                                            ValidationSettings-ValidationGroup='<%# Container.ValidationGroup %>' 
                                            Text='<%# Bind("Team_email") %>' Width="170px">
                                            <ValidationSettings RequiredField-IsRequired="true" ValidationGroup = "edit">
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: right; padding: 2px 2px 2px 2px">
                                    <dx:ASPxGridViewTemplateReplacement ID="UpdateButton" runat="server" ReplacementType="EditFormUpdateButton">
                                    </dx:ASPxGridViewTemplateReplacement>
                                    <dx:ASPxGridViewTemplateReplacement ID="CancelButton" runat="server" ReplacementType="EditFormCancelButton">
                                    </dx:ASPxGridViewTemplateReplacement>
                                </div>
                        </EditForm>
                    </Templates>
                    <SettingsCommandButton>
                        <EditButton Text="Edit Team">
                            <Image Height="10px" Url="~/Images/Edit.png" ToolTip="Edit Team">
                            </Image>
                        </EditButton>
                        <NewButton Text="New Team">
                            <Image Height="10px" Url="~/Images/Add.png" ToolTip="New Team">
                            </Image>
                        </NewButton>
                        <DeleteButton Text="Delete Team">
                            <Image Height="10px" Url="~/Images/Delete.png" ToolTip="Delete Team">
                            </Image>
                        </DeleteButton>
                        <CancelButton Text="Cancel">
                            <Image Height="18px" Url="~/Images/Cancel.png" ToolTip="Cancel">
                            </Image>
                        </CancelButton>
                        <UpdateButton Text="Update Team">
                            <Image Height="18px" Url="~/Images/Save.png" ToolTip="Save Team">
                            </Image>
                        </UpdateButton>
                        <ClearFilterButton Text="Clear Filter">
                            <Image Height="20px" Url="~/Images/ClearFilter.png">
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
    <div>
    
    </div>
    </form>
</body>
</html>

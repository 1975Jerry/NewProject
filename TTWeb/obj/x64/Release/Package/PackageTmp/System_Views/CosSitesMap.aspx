<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CosSitesMap.aspx.cs" Inherits="TTWeb.System_Views.CosSitesMap" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0"></script>

    <script charset="UTF-8" type="text/javascript">
        var systemsmap = null;
        var thearray = null;

        function onLoadSystems() {
            if (window.onresize == null) {
                window.onresize = windowresized;
            }
            InitMap();
        }

        function windowresized() {
            var myWidth = document.documentElement.clientWidth - 20;
            var myHeight = document.documentElement.clientHeight - 20;
            var container = document.getElementById('systemmapdiv');
            container.style.width = myWidth + 'px';
            container.style.height = myHeight + 'px';
        }

        function AddInfoBox(pin, labelsystem, hastt) {

            var label = "<font size='2pt'>" + labelsystem + "</font>";
            //var label = "<strong>System </strong>" + labelsystem + "</strong><hr/>";
            pin.setInfoBox(new InfoBox(label));
        }

        function InitMap() {
            var myWidth = document.documentElement.clientWidth - 20;
            var myHeight = document.documentElement.clientHeight - 20;
            var container = document.getElementById('systemmapdiv');
            container.style.width = myWidth + 'px';
            container.style.height = myHeight + 'px';

            var container = document.getElementById('systemmapdiv');
            systemsmap = new Microsoft.Maps.Map(container, { credentials: 'An9eDuIsRVmZAKSD_iLrr4RMqqbK30ssMOwnBG_SEGBEp5MVLySR_diMHPsvAJ-h', center: new Microsoft.Maps.Location(38.333, 24.020202), mapTypeId: Microsoft.Maps.MapTypeId.road, zoom: 7 });
            coordinatesCallback.PerformCallback('All');
        }

        /***************************************************************/
        /* Add support for pop-up info boxes.
        /***************************************************************/

        // InfoBox class
        function InfoBox(html) {
            this.div;  // Container div element
            this.html = html; // HTML to display inside the infobox 
        }

        // Add the infobox div to the page
        InfoBox.prototype.show = function (e) {
            if (this.div == undefined) {
                // Create the container div.
                this.div = document.createElement("div");
                this.div.className = "infobox";
                this.div.innerHTML = this.html;
                var mapDiv = document.getElementById('systemmapdiv');
                mapDiv.appendChild(this.div);
            }

            // Calculate the pixel position of the pushpin relative to the map control
            var pinLocation = systemsmap.tryLocationToPixel(e.target.getLocation(), Microsoft.Maps.PixelReference.control);

            // Display the infobox at the correct pixel coordinates
            this.div.style.left = pinLocation.x + "px";
            this.div.style.top = pinLocation.y + "px";
            this.div.style.visibility = "visible";
        };

        // Hide the infobox
        InfoBox.prototype.hide = function (e) {
            if (this.div != undefined)
                this.div.style.visibility = "hidden";
        };

        // Extend the Pushpin class to add an InfoBox object
        Microsoft.Maps.Pushpin.prototype.setInfoBox = function (infoBox) {
            if (typeof this.infoBox != undefined && this.infoBox != undefined && this.infoBox != null) {
                this.removeInfoBox();
            }
            // Assign the infobox to this pushpin
            this.infoBox = infoBox;

            // Add handlers for mouse events
            this.mouseoverHandler = Microsoft.Maps.Events.addHandler(this, 'mouseover', function (e) { infoBox.show(e); }
   );
            this.mouseoutHander = Microsoft.Maps.Events.addHandler(this, 'mouseout', function (e) { infoBox.hide(e); }
   );
        }

    </script>
    <style type="text/css">
      /* Define a style used for infoboxes */
      .infobox 
      {
       position: absolute;
       /*border: solid 2px black;*/
       background-color: White;
       z-index: 1000;
       padding: 2px;
       /*width: 180px;*/
      }
        .style1
        {
            width: 100%;
        }
        .style4
        {
            font-size: 8pt;
            text-align: right;
        }
        .style5
        {
            color: #336699;
            font-family: Tahoma;
        }
        .style9
        {
            color: #FF9900;
            font-size: small;
            padding-bottom: 8px;
        }
     </style>
</head>
<body  onload="onLoadSystems()">
    <script language="javascript" type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/JScriptFunctions.js") %>"></script>
    <form id="form1" runat="server">

        <table class="style1" style="padding-bottom: 8px">
            <tr>
                <td colspan="3" class="style9">
                    Cosmote Sites Map</td>
            </tr>
            <tr>
                <td class="style4" 
                    style="border-bottom-style: solid; border-left-style: solid; border-width: 1px; border-color: #808080; background-color: #FBFBFB;" 
                    width="80">
                    <span class="style5">Prefecture</span>:</td>
                <td style="background-color: #FBFBFB;" width="140">
                    <dx:ASPxComboBox ID="ASPxComboBoxPeriod" runat="server" EnableTheming="True" 
                        Font-Size="8pt" SelectedIndex="0" Theme="Aqua" Width="120px" 
                        ClientInstanceName="period" onload="ASPxComboBoxPeriod_Load" 
                        IncrementalFilteringDelay="300" IncrementalFilteringMode="StartsWith">
                        <ClientSideEvents SelectedIndexChanged="function(s, e) {
	coordinatesCallback.PerformCallback(period.GetText());
}" />
                        <Items>
                            <dx:ListEditItem Selected="True" Text="All" Value="All" />
                        </Items>
                    </dx:ASPxComboBox>
                </td>
                <td style="background-color: #FBFBFB;">
                    &nbsp;</td>
            </tr>
        </table>

    <div id="systemmapdiv" style="position:relative; top: 0px; left: -1px;">

    </div>
    <dx:ASPxCallback ID="coordinatesCallback" runat="server" 
        ClientInstanceName="coordinatesCallback" 
        oncallback="ASPxCallback1_Callback" ClientIDMode="AutoID">
        <clientsideevents callbackcomplete="function(s, e) {
	    
}" />
<ClientSideEvents CallbackComplete="function(s, e) {
	thearray = e.result.split('/');
    systemsmap.entities.clear();
        for (var i = 0; i &lt; thearray.length; i++)
        { 
            var  innerarray = thearray[i].split(';');
            var latitude = innerarray[0];
            var longitude = innerarray[1];
            var pin= new  Microsoft.Maps.Pushpin( new Microsoft.Maps.Location(latitude, longitude), {icon: 'bullet-green-icon.png', width:32, height:32, anchor: new Microsoft.Maps.Point(16, 16)});
            AddInfoBox(pin, innerarray[2], innerarray[4]);
            systemsmap.entities.push(pin);
        }     
}"></ClientSideEvents>
    </dx:ASPxCallback>
    </form>
</body>
</html>

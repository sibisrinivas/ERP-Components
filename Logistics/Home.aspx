<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style2
        {
            font-size: 14pt;
        }
        .style3
        {
            width: 75%;
            height: 670px;
        }
        .style4
        {
            text-align: justify;
        }
        .style5
        {
            text-align: justify;
            color: #000000;
            font-size: large;
        }
        .style6
        {
            color: #000000;
            font-size: large;
        }
        .style7
        {
            color: #000000;
            font-weight: bold;
            font-size: large;
        }
        .style8
        {
            color: #000000;
            font-style: italic;
            font-size: large;
        }
        .style11
        {
            text-decoration: none;
        }
        </style>
</head>
<body background="logistics_bg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style2" 
            Font-Bold="True" Font-Underline="False" ForeColor="#002346" 
            NavigateUrl="~/Home.aspx">HOME</asp:HyperLink>
        <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style2" 
            Font-Bold="True" Font-Underline="False" ForeColor="#002346" 
            NavigateUrl="~/SupplyChainManagement.aspx">SUPPLY CHAIN MANAGEMENT</asp:HyperLink>
        <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style2" 
            Font-Bold="True" Font-Underline="False" ForeColor="#002346" 
            NavigateUrl="~/HowDoWeWork.aspx">HOW DO WE WORK</asp:HyperLink>
        <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        </span>
        <b>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#002448" 
            NavigateUrl="~/Login.aspx" CssClass="style2" Font-Underline="False">SIGN IN</asp:HyperLink>
        &nbsp;</b></p>
    </form>
    <p>
        &nbsp;</p>
    <table align="center" class="style3">
        <tr>
            <td class="style4">
                <div class="style4">
                    <span class="style7">Logistics</span><span class="style6"> is the </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Management" 
                        title="Management"><span class="style6">management</span></a><span 
                        class="style6"> of the flow of </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Resources" title="Resources">
                    <span class="style6">resources</span></a><span class="style6">, between the 
                    point of origin and the point of destination in order to meet some requirements, 
                    i.e. of customers or corporations. The resources managed in logistics can 
                    include physical items as food, materials, equipment, liquids and staff as well 
                    as abstract items as information, particles and energy. The logistics of 
                    physical items usually involves the integration of information flow, </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Materials_management" 
                        title="Materials management"><span class="style6">material handling</span></a><span 
                        class="style6">, </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Production" title="Production">
                    <span class="style6">production</span></a><span class="style6">, </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Packaging" 
                        title="Packaging"><span class="style6">packaging</span></a><span 
                        class="style6">, </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Inventory" title="Inventory">
                    <span class="style6">inventory</span></a><span class="style6">, </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Transportation" 
                        title="Transportation"><span class="style6">transportation</span></a><span 
                        class="style6">, </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Warehousing" title="Warehousing">
                    <span class="style6">warehousing</span></a><span class="style6"> and oftentimes
                    </span><a class="style11" href="http://en.wikipedia.org/wiki/Security" 
                        title="Security"><span class="style6">security</span></a><span 
                        class="style6">. Furthermore the complexity of logistics can be modeled, 
                    analyzed, visualized and optimized by dedicated simulation software.</span><br 
                        class="style6" />
                    <br class="style6" />
                </div>
                <h2 class="style4">
                    <span id="Origins_and_definition" class="style6">Origins and definition</span></h2>
                <p class="style4">
                    <span class="style6">The term </span><span class="style8">logistics</span><span 
                        class="style6"> comes from the late 19th century: from French </span>
                    <span class="style8">logistique</span><span class="style6">, from </span>
                    <span class="style8">loger</span><span class="style6"> &#39;to lodge&#39;</span></p>
                <p class="style4">
                    <span class="style6">Logistics is considered to have originated in the 
                    military&#39;s need to supply themselves with arms, ammunition and rations as they 
                    moved from their base to a forward position. In ancient </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Greek_Empire" 
                        title="Greek Empire"><span class="style6">Greek</span></a><span 
                        class="style6">, </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Roman_Empire" title="Roman Empire">
                    <span class="style6">Roman</span></a><span class="style6"> and </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Byzantine_Empire" 
                        title="Byzantine Empire"><span class="style6">Byzantine empires</span></a><span 
                        class="style6">, military officers with the title </span>
                    <span class="style8">Logistikas</span><span class="style6"> were responsible for 
                    financial and supply distribution matters</span><sup class="Template-Fact" 
                        style="white-space:nowrap;">[<a class="style11" 
                        href="http://en.wikipedia.org/wiki/Wikipedia:Citation_needed" 
                        title="Wikipedia:Citation needed"><span class="style8" 
                        title="This claim needs references to reliable sources from March 2011">citation 
                    needed</span></a><span class="style6">]</span></sup><span class="style6">.</span></p>
                <p class="style4">
                    <span class="style6">The </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Oxford_English_Dictionary" 
                        title="Oxford English Dictionary"><span class="style8">Oxford English 
                    Dictionary</span></a><span class="style6"> defines logistics as &quot;the branch of
                    </span><a class="style11" href="http://en.wikipedia.org/wiki/Military_science" 
                        title="Military science"><span class="style6">military science</span></a><span 
                        class="style6"> relating to procuring, maintaining and transporting </span>
                    <a class="style11" href="http://en.wikipedia.org/wiki/Material" 
                        title="Material"><span class="style6">material</span></a><span 
                        class="style6">, personnel and facilities.&quot; However, the </span>
                    <a class="style11" 
                        href="http://en.wikipedia.org/wiki/New_Oxford_American_Dictionary" 
                        title="New Oxford American Dictionary"><span class="style8">New Oxford 
                    American Dictionary</span></a><span class="style6"> defines logistics as &quot;the 
                    detailed coordination of a complex operation involving many people, facilities, 
                    or supplies&quot; and the Oxford Dictionary online defines it as, &quot;the detailed 
                    organization and implementation of a complex operation:&quot;&nbsp; Another 
                    dictionary definition is &quot;the time-related positioning of resources.&quot; As such, 
                    logistics is commonly seen as a branch of </span><a class="style11" 
                        href="http://en.wikipedia.org/wiki/Engineering" title="Engineering">
                    <span class="style6">engineering</span></a><span class="style6"> that creates 
                    &quot;people systems&quot; rather than &quot;machine systems&quot;. When talking in terms of </span>
                    <a class="style11" 
                        href="http://en.wikipedia.org/wiki/Human_resources_management" 
                        title="Human resources management"><span class="style6">human resources 
                    management</span></a><span class="style6">, logistics means giving inputs, i.e. 
                    &quot;recruiting manpowers&quot;, which ultimately work for the final consumer or to 
                    delivery.</span></p>
                <p class="style5">
                    According to the Council of Logistics Management, logistics contains the 
                    integrated planning, control, realization and monitoring of all internal and 
                    network-wide material-, part- and product flow including the necessary 
                    information flow in industrial and trading companies along the complete 
                    value-added chain (and product life cycle) for the purpose of conforming to 
                    customer requirements.</p>
                <h2 class="style4">
                    <span id="Main_logistics_targets" class="style6">Main logistics targets</span></h2>
                <p class="style4">
                    <span class="style6">Logistics is one of the main functions within a company. 
                    The main targets of logistics can be divided into </span><span class="style7">
                    performance</span><span class="style6"> related and </span><span class="style7">
                    cost</span><span class="style6"> related. They are high due date reliability, 
                    short delivery times, low inventory level and high capacity utilization. But 
                    when decisions need to be made, there is always a trade off between these 
                    targets.</span></p>
                <h2 class="style4">
                    <span id="Logistics_viewpoints" class="style6">Logistics viewpoints</span></h2>
                <p class="style5">
                    Inbound logistics is one of the primary processes and it concentrates on 
                    purchasing and arranging inbound movement of materials, parts and/or finished 
                    inventory from suppliers to manufacturing or assembly plants, warehouses or 
                    retail stores.</p>
                <p class="style5">
                    Outbound logistics is the process related to the storage and movement of the 
                    final product and the related information flows from the end of the production 
                    line to the end user.</p>
            </td>
        </tr>
    </table>
</body>
</html>

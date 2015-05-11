<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.master" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderDefault" Runat="Server">
    <form method="post" runat="server"> 
    <div class="center col1">
    <video width="1280" height="720" id="videoPlayer" autoplay="autoplay" controls="controls">
        <source src="https://mediamoviestream.blob.core.windows.net/asset-cc1e445d-1500-80c5-bf1e-f1e4f3cf508d/Thor-%20The%20Dark%20World%20Official%20Trailer%20HD.mp4?sv=2012-02-12&sr=c&si=ca4461a7-bd9f-4852-bed0-0a0bfa1bf40a&sig=3dAOPo%2FoLJxqpCfIfSD87t%2BKvKi1F8mDygVkhrBzl0s%3D&st=2015-05-06T09%3A12%3A56Z&se=2115-04-12T09%3A12%3A56Z" type="video/mp4"/>
    </video>
    </div>
    </form>
</asp:Content>


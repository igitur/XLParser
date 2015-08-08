﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XLParser.Web.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8"/>
    <title>XLParser web demo</title>
    <link rel="stylesheet" href="xlparser-web.css" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js" charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <!--<script src="https://d3js.org/d3.v3.js" charset="utf-8"></script>-->
    <script src="d3vizsvg.js" type="text/javascript" defer></script>
</head>
<body>
    <div id="borderwrapper">
        <h2>XLParser web demo</h2>
    
        <p>
            Formula: <input type="text" size="100" id="formulainput" /> <br/> <br />
            <button onclick="newTree(document.getElementById('formulainput').value)">Parse</button>
        </p>
    
        <div id="bugreport">
            <a href="javascript:;" onclick=" javascript: if(document.getElementById('bug_explanation').style.display !== 'block') {document.getElementById('bug_explanation').style.display = 'block'} else {document.getElementById('bug_explanation').style.display = 'none'};" style="color: black; font-weight: bold;">Found a bug?</a> <br/> <br/>
            <div id="bug_explanation" style="display: none;">
                Great! <a href="https://github.com/PerfectXL/XLParser/issues">Please report it as a Github issue!</a> <br/> <br/>

                If the bug is with a specific formula/excel file, please include that too.<br/>
                Generally bugs in XLParser are one of the following, please include this type in the report:<br/>
                <ul>
                    <li>The parser can't parse a formula that Excel accepts</li>
                    <li>The parser parses a formula that Excel doesn't accept.</li>
                    <li>The parser interprets a formula wrong, that is it produces a parse tree that doesn't correspond with how Excel behaves.</li>
                    <li>There is a "normal" bug in the code around the core parser.</li>
                </ul>
            
            </div>
        </div>
    </div>
    <div id="borderwrapper2">
        <script type="text/javascript">
            var ua = window.navigator.userAgent;
            if (ua.indexOf("MSIE ") > 0 // IE 10-
             || ua.indexOf('Trident/') > 0) // // IE 11
            {
                document.write("<em>Note: image downloading does not work properly in Internet Explorer 11 and lower.</em><br />");
            }
        </script>
        <!-- Based on https://mbostock.github.io/d3/talk/20111018/tree.html and https://gist.github.com/d3noob/8326869-->
        <p>Parse Tree (<a id="imgdatasvg">SVG</a>, <a id="imgdatapng">PNG</a>):</p>
        <div id="d3viz">
        </div>
    </div>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-66111314-1', 'auto');
      ga('send', 'pageview');

    </script>
</body>
</html>

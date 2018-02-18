<%@page contentType="text/html"%>

<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>

<div class="flex-container" style=" padding:1%;">
    <div class="row" style="text-align:center;">
        <div class="col-xs-12" >
            <header>
                <h1 id="head-text" style=" font-size:40px; color :white ;">Team Bits 2 Bytes '18 Presents</h1>
                <h1 style=" font-size:45px; color : #00c1ef;">The Imitation Game</h1>
            </header>
        </div>
    </div>
</div>

<div id="main">
    <div class="container text-center">
        <h3 id="head-text" style="font-size: 40px; color: white;">Some text</h3>
        <div style="margin-bottom: 3%"> </div>

        <h3 id="example" style="font-size: 35px; color: #fc0a02">TYPES OF CYPHER TOOLS</h3>

        <div style="margin-bottom: 5%"></div>
        <h3 id="example">Ceaser's Cipher</h3>
        <h1 id="example-text">Write your text here</h1>
        <br>
        <br>
        <input id="CeaserInput" name="CeaserInput" type="text/css" class="form-control input-lg" placeholder="Encrypted Text *">
        <br>
        <input id="CeaserKey" type="text/css" class="form-control input-lg" placeholder="Key">
        <input type="submit" id="CeaserSubmit">
        <hr width="99%">
        <br>


        <h3 id="example">Example</h3>
        <h1 id="example-text">Write your text here</h1>
        <br>
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Input *">
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Output">
        <hr width="99%">
        <br>

        <h3 id="example">Example</h3>
        <h1 id="example-text">Write your text here</h1>
        <br>
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Input *">
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Output">
        <hr width="99%">
        <br>

        <h3 id="example">Example</h3>
        <h1 id="example-text">Write your text here</h1>
        <br>
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Input *">
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Output">
        <hr width="99%">
        <br>
    </div>
</div>
<div class="container-fluid" style=" padding:3%;" >
    <div class="row" >
        <div class="container-fluid text-center" >
            <div class="col-xs-2"></div>
            <div class="col-xs-8" style="text-align:center;">
                <h1 style=" font-size:25px; color : #00c1ef;">Need Help?</h1>
                <h1 style=" font-size:25px; color : #00c1ef;">Co-ordinators</h1>
                <p style="padding-top:10px; font-size:20px; color : yellow;"> Sania Parween (Head Coordinator)<br>Ravi Mandalia <br> Wahab Kukaswadia <br> Swapnil Sharma</p>
            </div>
            <div class="col-xs-2"></div>
        </div>
    </div>
</div>

<script src="../js/cipher.js"></script> <!-- all custom js to go here !-->
<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>
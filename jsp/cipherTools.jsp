<%@page contentType="text/html"%>
<%@page import="org.json.simple.JSONObject"%>

<%-- Include header file --%>
<%@include file="/jsp/header.jsp" %>


<div id="main"></div>
    <div class="container text-center">
	
	<h1 id="example-text" style="color:yellow;">About Cryptography!</h1>
	
			<h3 id="head-text" style="font-size: 30px; color: white;">Cryptography is the technique of giding texts. There are various methods of doing so.<br>
																	There are various ciphers ranging from symmetric cryptography to assymetric cryptography
																	However, here we will discuss only those ciphers that are related to the problem statements. </h3>
				<div style="margin-bottom: 3%"> </div>
			<h3 id="example" style="font-size: 35px; color: #fc0a02">TYPES OF CIPHER TOOLS</h3>
			

<form class="cipherForms" id="">
        
		<h3 id="example" style="color:yellow;">Substitution Method</h3>
        <h1 id="example-text" style="color:white;" >This is the simplest and oldest known method.<br>It basically consists of substituting every plaintext character for a different ciphertext character.
					<br>Keys for the simple substitution cipher usually consist of 26 letters (compared to the caeser cipher's single number). An example key is:<br><br>
					plain alphabet : abcdefghijklmnopqrstuvwxyz			
					cipher alphabet: phqgiumeaylnofdxjkrcvstzwb<br><br>
					An example encryption using the above key:<br><br>plaintext : defend the east wall of the castle
					ciphertext: giuifg cei iprc tpnn du cei qprcni</h1>
				<br>
				<br>
				<hr width="99%">

</form>
	
<form class="cipherForms" id="ceaserCipher">
       <div style="margin-bottom: 5%"></div>
			
			<h3 id="example" style="color:yellow;">Caeser's Cipher</h3>
			<h1 id="example-text" style="color:white;">The Caesar cipher is one of the earliest known and simplest ciphers. It is a type of substitution cipher in which each letter in the plaintext is 'shifted' a certain number of places down the alphabet. For example, with a shift of 1, A would be replaced by B, B would become C, and so on. 
									The method is named after Julius Caesar, who apparently used it to communicate with his generals.
									<br>To pass an encrypted message from one person to another, it is first necessary that both parties have the 'key' for the cipher, so that the sender may encrypt it and the receiver may decrypt it. For the caesar cipher, 
									the key is the number of characters to shift the cipher alphabet.
									<br><br>we will encrypt is 'defend the east wall of the castle', with a shift (key) of 1.
									<br>plaintext:  defend the east wall of the castle<br>
									ciphertext: efgfoe uif fbtu xbmm pg uif dbtumf<br>
									<br><br>It is easy to see how each character in the plaintext is shifted up the alphabet. Decryption is just as easy, by using an offset of -1.

										<br><br>plain:  abcdefghijklmnopqrstuvwxyz<br>
										cipher: bcdefghijklmnopqrstuvwxyza</h1><br>
				
			<br><input id="ceaserInput" name="ceaserInput" type="text/css" class="form-control input-lg" placeholder="Encrypted Text *">
			<br><input id="ceaserKey" name="ceaserKey" type="text/css" class="form-control input-lg" placeholder="Key">
			<input type="submit" id="ceaserSubmit">
				
			<span class='errorSpan' id="inputEmptyError" style="display:none;">Please enter the correct values &#x1F609;</span>
				<div style="">
					<span id='decryptedCeaserCipher' ></span>
				</div>
			<hr width="99%">
</form>		


<form class="cipherForms" id="">
        
		<h3 id="example" style="color:yellow;">Playfair Cipher</h3>
        <h1 id="example-text" style="color:white;">In order to encrypt using the Playfair Cipher, we must first draw up a Polybius Square (but without the need for the number headings). <br>This is usually done using a keyword, and either combining "i" and "j" or omitting "q" from the square. 
<br><br>We must now split the plaintext up into digraphs (that is pairs of letters). On each digraph we peform the following encryption steps:<br>
If the digraph consists of the same letter twice (or there is only one letter left by itself at the end of the plaintext) then insert the letter "X" between the same letters (or at the end), and then continue with the rest of the steps.
If the two letters appear on the same row in the square, then replace each letter by the letter immediately to the right of it in the square (cycling round to the left hand side if necessary).<br>
<br>If the two letters appear in the same column in the square, then replace each letter by the letter immediately below it in the square (cycling round to the top of the square if necessary).<br>
<br>Otherwise, form the rectangle for which the two plaintext letters are two opposit corners. Then replace each plaintext letter with the letter that forms the other corner of the rectangle that lies on the same row as that plaintext letter (being careful to maintain the order).
<br>As an example we shall encrypt the plaintext "hide the gold in the tree stump" using the keyphrase playfair example. Firstly we must generate the Polybius Square that we are going to use.<br> We do this by setting out a 5x5 grid, and filling it with the alphabet, starting with the letters of the keyphrase, and ignoring any letters we already have in the square. We are also going to combine "I" and "J" in the square.</h1>
        <br>
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Input *">
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Output">
        <hr width="99%">
        <br>
</form>


<form class="cipherForms" id="vigenereCipher">
        
		<h3 id="example"style="color:yellow;">Vigenere's Cipher</h3>
        <h1 id="example-text">Write your text here</h1>
        <br>
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Input *">
        <br>
        <input id="input-box" type="text/css" class="form-control input-lg" placeholder="Output">
        <hr width="99%">
        <br>
</form>

   

<script src="../js/cipher.js"></script> <!-- all custom js to go here !-->
<%-- Include footer file --%>
<%@include file="/jsp/footer.jsp" %>
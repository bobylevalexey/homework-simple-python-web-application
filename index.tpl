<html>
	<head>
		<style>
			body{
				background-color: #088;
			}
			#container{
				//border-left: 10px dashed #00f;
				//border-bottom: 10px dashed #00f;
				background-color: #8FBC8F;
				border-radius: 0px 100px 0px 100px;
				position: absolute;
				width: 650px;
				height: 300px;
				left: 50%;
				top: 50%;
				margin-left: -325px;
				margin-top: -150px;
			}
			#frame{
				position absolute;
				height: 250px;
				border-radius: 0px 80px 0px 80px;
				margin: 20px;
				border: 5px double #339;
			}
			#form {
				position: absolute;
				left: 110px;
				top: 100px
			}
			#button, #address{
				background-color: #BFFCBF;
				font: 100% sans-serif;
				border: 3px solid #339;
				//color: #00f;
			}
			#address{
				background-color: white;
			}
			p{
				font: 100% sans-serif;
				color: #008;
			}
			#form p{
				position: absolute;
				left: 87px;
			}
			#content{
				font-size: 21px;
				position: absolute;
				top: 170px;
				left: 110px;
				width: 322px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div id='container'>
			<div id="frame">
				<div id='form'>
					<form method='post' action='/shorten'>
						<input id="address" name='address' type='text' size='40'>
						<input id="button" type='submit' value='Shorten'><br>
						<p> For example: <b>mail.ru</b> </p>
					</form>
				</div>
%if content:
				<div id="content">
					<p>{{content}}</p>
				</div>
%end
			</div>
		</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en" class="login_page">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="incoming_resource_file.jsp"></jsp:include>

<title>登录</title>

<!-- favicon -->
<link rel="shortcut icon" href="favicon.ico" />

<link href="../../fonts.googleapis.com/css-family=PT+Sans.css"
	rel='stylesheet' type='text/css'>
		        <script src="js/jquery.min.js" ></script>

<!--[if lt IE 9]>
            <script src="js/ie/html5.js" ></script>
			<script src="js/ie/respond.min.js" ></script>
        <![endif]-->

</head>
<body>

	<div class="login_box">

		<form  method="post" id="login_form" action="menu">
			<div class="top_b">登录</div>
			<div class="cnt_b">
				<div class="formRow">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-user"></i></span><input
							type="text" id="username" name="username" placeholder="Username"
							value="John Smith" style="height: 30px"/>
					</div>
				</div>
				<div class="formRow">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span><input
							type="password" id="password" name="password"
							placeholder="Password" value="password" style="height: 30px"/>
					</div>
				</div>
				<div class="formRow clearfix">
					<label class="checkbox"><input type="checkbox" />记住用户名密码</label>
				</div>
			</div>
			<div class="btm_b clearfix">
				<button class="btn btn-inverse pull-right" type="submit" id='login_button'>登录</button>
				<span class="link_reg"><a href="#reg_form">没有注册? 点击这里</a></span>
			</div>
		</form>

		<!-- <form
			action="http://tzd-themes.com/gebo_admin/index.php?uid=1&page=dashboard"
			method="post" id="pass_form" style="display: none">
			<div class="top_b">不能登录?</div>
			<div class="alert alert-info alert-login">请输入你的邮箱地址. 你将会通过邮箱接收到一个链接去创建新的密码.</div>
			<div class="cnt_b">
				<div class="formRow clearfix">
					<div class="input-prepend">
						<span class="add-on">@</span><input type="text"
							placeholder="Your email address" />
					</div>
				</div>
			</div>
			<div class="btm_b tac">
				<button class="btn btn-inverse" type="submit">Request New
					Password</button>
			</div>
		</form>

		<form
			action="http://tzd-themes.com/gebo_admin/index.php?uid=1&page=dashboard"
			method="post" id="reg_form" style="display: none">
			<div class="top_b">Sign up to Gebo Admin</div>
			<div class="alert alert-login">
				By filling in the form bellow and clicking the "Sign Up" button, you
				accept and agree to <a data-toggle="modal" href="#terms">Terms
					of Service</a>.
			</div>
			<div id="terms" class="modal hide fade" style="display: none">
				<div class="modal-header">
					<a class="close" data-dismiss="modal">×</a>
					<h3>Terms and Conditions</h3>
				</div>
				<div class="modal-body">
					<p>Nulla sollicitudin pulvinar enim, vitae mattis velit
						venenatis vel. Nullam dapibus est quis lacus tristique
						consectetur. Morbi posuere vestibulum neque, quis dictum odio
						facilisis placerat. Sed vel diam ultricies tortor egestas
						vulputate. Aliquam lobortis felis at ligula elementum volutpat. Ut
						accumsan sollicitudin neque vitae bibendum. Suspendisse id
						ullamcorper tellus. Cum sociis natoque penatibus et magnis dis
						parturient montes, nascetur ridiculus mus. Vestibulum at augue
						lorem, at sagittis dolor. Curabitur lobortis justo ut urna gravida
						scelerisque. Cum sociis natoque penatibus et magnis dis parturient
						montes, nascetur ridiculus mus. Aliquam vitae ligula elit.
						Pellentesque tincidunt mollis erat ac iaculis. Morbi odio quam,
						suscipit at sagittis eget, commodo ut justo. Vestibulum auctor
						nibh id diam placerat dapibus. Cum sociis natoque penatibus et
						magnis dis parturient montes, nascetur ridiculus mus. Suspendisse
						vel nunc sed tellus rhoncus consectetur nec quis nunc. Donec
						ultricies aliquam turpis in rhoncus. Maecenas convallis lorem ut
						nisl posuere tristique. Suspendisse auctor nibh in velit hendrerit
						rhoncus. Fusce at libero velit. Integer eleifend sem a orci
						blandit id condimentum ipsum vehicula. Quisque vehicula erat non
						diam pellentesque sed volutpat purus congue. Duis feugiat, nisl in
						scelerisque congue, odio ipsum cursus erat, sit amet blandit risus
						enim quis ante. Pellentesque sollicitudin consectetur risus, sed
						rutrum ipsum vulputate id. Sed sed blandit sem. Integer eleifend
						pretium metus, id mattis lorem tincidunt vitae. Donec aliquam
						lorem eu odio facilisis eu tempus augue volutpat.</p>
				</div>
				<div class="modal-footer">
					<a data-dismiss="modal" class="btn" href="#">Close</a>
				</div>
			</div>
			<div class="cnt_b">

				<div class="formRow">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-user"></i></span><input
							type="text" placeholder="Username" />
					</div>
				</div>
				<div class="formRow">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span><input
							type="text" placeholder="Password" />
					</div>
				</div>
				<div class="formRow">
					<div class="input-prepend">
						<span class="add-on">@</span><input type="text"
							placeholder="Your email address" />
					</div>
					<small>The e-mail address is not made public and will only
						be used if you wish to receive a new password.</small>
				</div>

			</div>
			<div class="btm_b tac">
				<button class="btn btn-inverse" type="submit">Sign Up</button>
			</div>
		</form>

		<div class="links_b links_btm clearfix">
			<span class="linkform"><a href="#pass_form">Forgot
					password?</a></span> <span class="linkform" style="display: none">Never
				mind, <a href="#login_form">send me back to the sign-in screen</a>
			</span>
		</div>

	</div>
 -->
</div>
	<script>
            $(document).ready(function(){
                
				//* boxes animation
				/* form_wrapper = $('.login_box');
				function boxHeight() {
					form_wrapper.animate({ marginTop : ( - ( form_wrapper.height() / 2) - 24) },400);	
				};
				form_wrapper.css({ marginTop : ( - ( form_wrapper.height() / 2) - 24) });
                $('.linkform a,.link_reg a').on('click',function(e){
					var target	= $(this).attr('href'),
						target_height = $(target).actual('height');
					$(form_wrapper).css({
						'height'		: form_wrapper.height()
					});	
					$(form_wrapper.find('form:visible')).fadeOut(400,function(){
						form_wrapper.stop().animate({
                            height	 : target_height,
							marginTop: ( - (target_height/2) - 24)
                        },500,function(){
                            $(target).fadeIn(400);
                            $('.links_btm .linkform').toggle();
							$(form_wrapper).css({
								'height'		: ''
							});	
                        });
					});
					e.preventDefault();
				}); */
				
				//* validation
			/* 	$('#login_form').validate({
					onkeyup: false,
					errorClass: 'error',
					validClass: 'valid',
					rules: {
						username: { required: true, minlength: 3 },
						password: { required: true, minlength: 3 }
					},
					highlight: function(element) {
						$(element).closest('div').addClass("f_error");
						setTimeout(function() {
							boxHeight()
						}, 200)
					},
					unhighlight: function(element) {
						$(element).closest('div').removeClass("f_error");
						setTimeout(function() {
							boxHeight()
						}, 200)
					},
					errorPlacement: function(error, element) {
						$(element).closest('div').append(error);
					}
				});
            }); */
            });
        </script>

	<script type="text/javascript">

	/* 		var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-32339645-1']);
			_gaq.push(['_trackPageview']);
		  
			(function() {
			  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})(); */
		  
		  </script>
<script type="text/javascript">
/* $("#login_button").click(function(){
	alert('coming');
    $.ajax({
        url:"/menu",
        type:'post',
        data:'name=John Smith&password=123456'
    });
}); */
</script>
</body>
</html>

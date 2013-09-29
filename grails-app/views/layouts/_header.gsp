<div id="header">
	<div id="logo">
		<a class="header-main" href="${createLink(uri: '/machineFeed/list')}">Monitor</a>
		<p class="header-sub">remotely</p>
	</div>
	<div id="loginHeader" class='inner'>
		<sec:ifLoggedIn>
			<sec:username />, <g:link controller="Logout" action="index">Logout</g:link>
		</sec:ifLoggedIn>

		<sec:ifNotLoggedIn>
			<div id='loginInHeader'>
				<form action="${resource('file': 'j_spring_security_check')}"
					method='POST' id='loginForm' class='loginform' autocomplete='off'>
					<div id='loginUser'>
						<input type='text' class='text_' name='j_username' id='username'
							tabindex=1 placeholder='username' />
						<p id="remember_me_holder">
							<input type='checkbox' class='chk' name='${rememberMeParameter}'
								id='remember_me' tabindex=3
								<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
								for='remember_me'><g:message
									code="springSecurity.login.remember.me.label" /></label>
						</p>
					</div>
					<div id='loginPass'>
						<input type='password' class='text_' name='j_password'
							id='password' tabindex=2 placeholder='password' />
						<p>
							<input type='submit' id="submit" tabindex=4
								value='${message(code: "springSecurity.login.button")}' />
						</p>
					</div>
					<div class="clear-both"></div>
				</form>
			</div>
			<div>
				<g:if test='${flash.message}'>
					<div id='login_message'>
						${flash.message}
					</div>
				</g:if>

			</div>
		</sec:ifNotLoggedIn>
	</div>
	<div class="clear-both"></div>
	<hr />
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="" lang="de">
<head>
<script>
    document.onreadystatechange = function() {
      var _html = document.getElementsByTagName('html')[0];

      _html.classList.remove('no-js');
      _html.classList.add('js');

      switch (document.readyState) {
        case 'loading':
          _html.classList.add('app_loading');

          break;
        case 'interactive':
          _html.classList.add('app_interactive');

          break;
        case 'complete':
          _html.classList.remove('app_loading');
          _html.classList.remove('app_interactive');
          _html.classList.add('app_complete');

          break;
      }
    }
  </script>



<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="google-site-verification"
	content="-fbyHJnH1IcRb9URcTscr8fCaEFNsN5tCzGqzMJdHhs" />

<script>
  !function(e){"use strict";var n=function(n,t,o){function i(e){if(a.body)return e();setTimeout(function(){i(e)})}function r(){l.addEventListener&&l.removeEventListener("load",r),l.media=o||"all"}var d,a=e.document,l=a.createElement("link");if(t)d=t;else{var f=(a.body||a.getElementsByTagName("head")[0]).childNodes;d=f[f.length-1]}var s=a.styleSheets;l.rel="stylesheet",l.href=n,l.media="only x",i(function(){d.parentNode.insertBefore(l,t?d:d.nextSibling)});var u=function(e){for(var n=l.href,t=s.length;t--;)if(s[t].href===n)return e();setTimeout(function(){u(e)})};return l.addEventListener&&l.addEventListener("load",r),l.onloadcssdefined=u,u(r),l};"undefined"!=typeof exports?exports.loadCSS=n:e.loadCSS=n}("undefined"!=typeof global?global:this);
</script>
<script>
  !function(t){if(t.loadCSS){var e=loadCSS.relpreload={};if(e.support=function(){try{return t.document.createElement("link").relList.supports("preload")}catch(t){return!1}},e.poly=function(){for(var e=t.document.getElementsByTagName("link"),r=0;r<e.length;r++){var n=e[r];"preload"===n.rel&&"style"===n.getAttribute("as")&&(t.loadCSS(n.href,n,n.getAttribute("media")),n.rel=null)}},!e.support()){e.poly();var r=t.setInterval(e.poly,300);t.addEventListener&&t.addEventListener("load",function(){e.poly(),t.clearInterval(r)}),t.attachEvent&&t.attachEvent("onload",function(){t.clearInterval(r)})}}}(this);
</script>

<script>
    document.documentElement.className += " wf-active"
  </script>
<link rel="stylesheet"
	href="https://davidhellmann.com/assets/css/app.min.css">



<!-- humans.txt — http://humanstxt.org -->
<link type="text/plain" rel="author"
	href="https://davidhellmann.com/humans.txt" />
<link rel="alternate" type="application/rss+xml"
	title="Blog RSS Feed &mdash; David Hellmann — Digital Designer &amp; Developer"
	href="https://davidhellmann.com/blog/feed" />
<link rel="alternate" type="application/rss+xml"
	title="Work RSS Feed &mdash; David Hellmann — Digital Designer &amp; Developer"
	href="https://davidhellmann.com/work/feed" />

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/view/assets/img/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="57x57"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon-precomposed" sizes="60x60"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-60x60.png" />
<link rel="apple-touch-icon-precomposed" sizes="120x120"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon-precomposed" sizes="76x76"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon-precomposed" sizes="152x152"
	href="https://davidhellmann.com/assets/images/favicon/apple-touch-icon-152x152.png" />
<link rel="icon" type="image/png"
	href="https://davidhellmann.com/assets/images/favicon/favicon-196x196.png"
	sizes="196x196" />	
<link rel="icon" type="image/png"
	href="/resources/view/assets/img/logo/3.png"
	sizes="96x96" />
<link rel="icon" type="image/png"
	href="/resources/view/assets/img/logo/3.png"
	sizes="32x32" />
<link rel="icon" type="image/png"
	href="/resources/view/assets/img/logo/3.png"
	sizes="16x16" />
<link rel="icon" type="image/png"
	href="/resources/view/assets/img/logo/3.png"
	sizes="128x128" />
<link rel="icon"
	href="/resources/view/assets/img/favicon.ico">
<meta name="application-name"
	content="David Hellmann — Digital Designer &amp; Developer" />
<meta name="msapplication-TileColor" content="#111111" />
<meta name="msapplication-TileImage"
	content="https://davidhellmann.com/assets/images/favicon/mstile-144x144.png" />
<meta name="msapplication-square70x70logo"
	content="https://davidhellmann.com/assets/images/favicon/mstile-70x70.png" />
<meta name="msapplication-square150x150logo"
	content="https://davidhellmann.com/assets/images/favicon/mstile-150x150.png" />
<meta name="msapplication-wide310x150logo"
	content="https://davidhellmann.com/assets/images/favicon/mstile-310x150.png" />
<meta name="msapplication-square310x310logo"
	content="https://davidhellmann.com/assets/images/favicon/mstile-310x310.png" />




<title>해줘~할게!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="referrer" content="no-referrer-when-downgrade" />
<meta name="robots" content="all" />
<meta name="keywords"
	content="Art Director, Designer, Developer, HTML, CSS, Sass, WordPress, Craft CMS, Red Bull, Creative, Coding, Salzburg, Frontend Development, Sketch, Photoshop" />
<meta name="description"
	content="David is a self-taught Digital Designer &amp; Developer with over nine years work experience. Currently he is working @fredmansky " />
<meta name="generator" content="SEOmatic" />
<link rel="canonical" href="https://davidhellmann.com/404" />
<link rel="alternate" href="https://davidhellmann.com/404"
	hreflang="x-default" />
<meta name="geo.region" content="Linz" />
<meta name="dcterms.Identifier" content="https://davidhellmann.com/404" />
<meta name="dcterms.Format" content="text/html" />
<meta name="dcterms.Relation"
	content="David Hellmann — Digital Designer &amp; Developer" />
<meta name="dcterms.Language" content="en" />
<meta name="dcterms.Publisher"
	content="David Hellmann — Digital Designer &amp; Developer" />
<meta name="dcterms.Type" content="text/html" />
<meta name="dcterms.Coverage" content="https://davidhellmann.com/" />
<meta name="dcterms.Rights"
	content="Copyright &copy;2021 David Hellmann." />
<meta name="dcterms.Title" content="David Hellmann" />
<meta name="dcterms.Creator" content="David Hellmann" />
<meta name="dcterms.Subject"
	content="Art Director, Designer, Developer, HTML, CSS, Sass, WordPress, Craft CMS, Red Bull, Creative, Coding, Salzburg, Frontend Development, Sketch, Photoshop" />
<meta name="dcterms.Contributor"
	content="David Hellmann — Digital Designer &amp; Developer" />
<meta name="dcterms.Date" content="2021-12-07" />
<meta name="dcterms.Description"
	content="David is a self-taught Digital Designer &amp; Developer with over nine years work experience. Currently he is working @fredmansky " />
<meta property="fb:profile_id" content="295451872710" />
<meta property="og:type" content="website" />
<meta property="og:locale" content="en_US" />
<meta property="og:url" content="https://davidhellmann.com/404" />
<meta property="og:title"
	content="David Hellmann | David Hellmann — Digital Designer &amp; Developer" />
<meta property="og:description"
	content="David is a self-taught Digital Designer &amp; Developer with over nine years work experience. Currently he is working @fredmansky " />
<meta property="og:image"
	content="https://davidhellmann.com/uploads/images/_facebookShareImage/davidhellmann-og-image.png" />
<meta property="og:image:type" content="image/png" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta property="og:site_name"
	content="David Hellmann — Digital Designer &amp; Developer" />
<meta property="og:see_also" content="https://twitter.com/davidhellmann" />
<meta property="og:see_also"
	content="https://www.facebook.com/davidhellmann84" />
<meta property="og:see_also"
	content="https://plus.google.com/+davidhellmann1984" />
<meta property="og:see_also"
	content="https://www.linkedin.com/in/davidhellmann" />
<meta property="og:see_also"
	content="https://www.youtube.com/user/OSSiNATOR" />
<meta property="og:see_also"
	content="https://www.instagram.com/davidhellmann" />
<meta property="og:see_also"
	content="https://www.pinterest.com/davidhellmann" />
<meta property="og:see_also" content="https://github.com/davidhellmann" />
<meta property="og:see_also" content="https://vimeo.com/davidhellmann" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="@davidhellmann" />
<meta name="twitter:creator" content="@davidhellmann" />
<meta name="twitter:title"
	content="David Hellmann | David Hellmann — Digital Designer &amp; Developer" />
<meta name="twitter:description"
	content="David is a self-taught Digital Designer &amp; Developer with over nine years work experience. Currently he is working @fredmansky " />
<meta name="twitter:image"
	content="https://davidhellmann.com/uploads/images/_twitterShareImage/davidhellmann-twitter-image.png" />
<link rel="publisher" href="https://plus.google.com/+davidhellmann1984" />
<link type="text/plain" rel="author" href="/humans.txt" />
<meta name="google-site-verification"
	content="-fbyHJnH1IcRb9URcTscr8fCaEFNsN5tCzGqzMJdHhs" />
<script type="application/ld+json">{"@context":"http://schema.org","@type":"Person","name":"David Hellmann","alternateName":"davidhellmann","description":"Art Director &amp; Developer based in Linz. Currently working for fredmansky.","url":"http://davidhellmann.com","sameAs":["https://twitter.com/davidhellmann","https://www.facebook.com/davidhellmann84","https://plus.google.com/+davidhellmann1984","https://www.linkedin.com/in/davidhellmann","https://www.youtube.com/user/OSSiNATOR","https://www.instagram.com/davidhellmann","https://www.pinterest.com/davidhellmann","https://github.com/davidhellmann","https://vimeo.com/davidhellmann"],"email":"&#100;&#97;&#118;&#105;&#100;&#104;&#101;&#108;&#108;&#109;&#97;&#110;&#110;&#46;&#99;&#111;&#109;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;","address":{"@type":"PostalAddress","streetAddress":"Dinghoferstraße 28","addressLocality":"Linz","addressRegion":"Linz","postalCode":"4020","addressCountry":"Austria"},"gender":"Male","birthPlace":"05.07.1984"}</script>
<script type="application/ld+json">{"@context":"http://schema.org","@type":"WebSite","name":"David Hellmann — Digital Designer &amp; Developer","description":"David is a self-taught Digital Designer &amp; Developer with over nine years work experience. Currently he is working @fredmansky ","url":"https://davidhellmann.com","image":"https://davidhellmann.com/uploads/images/_facebookShareImage/davidhellmann-og-image.png","sameAs":["https://twitter.com/davidhellmann","https://www.facebook.com/davidhellmann84","https://plus.google.com/+davidhellmann1984","https://www.linkedin.com/in/davidhellmann","https://www.youtube.com/user/OSSiNATOR","https://www.instagram.com/davidhellmann","https://www.pinterest.com/davidhellmann","https://github.com/davidhellmann","https://vimeo.com/davidhellmann"],"copyrightHolder":{"@type":"Person","name":"David Hellmann","alternateName":"davidhellmann","description":"Art Director &amp; Developer based in Linz. Currently working for fredmansky.","url":"http://davidhellmann.com","sameAs":["https://twitter.com/davidhellmann","https://www.facebook.com/davidhellmann84","https://plus.google.com/+davidhellmann1984","https://www.linkedin.com/in/davidhellmann","https://www.youtube.com/user/OSSiNATOR","https://www.instagram.com/davidhellmann","https://www.pinterest.com/davidhellmann","https://github.com/davidhellmann","https://vimeo.com/davidhellmann"],"email":"&#100;&#97;&#118;&#105;&#100;&#104;&#101;&#108;&#108;&#109;&#97;&#110;&#110;&#46;&#99;&#111;&#109;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;","address":{"@type":"PostalAddress","streetAddress":"Dinghoferstraße 28","addressLocality":"Linz","addressRegion":"Linz","postalCode":"4020","addressCountry":"Austria"},"gender":"Male","birthPlace":"05.07.1984"},"author":{"@type":"Person","name":"David Hellmann","alternateName":"davidhellmann","description":"Art Director &amp; Developer based in Linz. Currently working for fredmansky.","url":"http://davidhellmann.com","sameAs":["https://twitter.com/davidhellmann","https://www.facebook.com/davidhellmann84","https://plus.google.com/+davidhellmann1984","https://www.linkedin.com/in/davidhellmann","https://www.youtube.com/user/OSSiNATOR","https://www.instagram.com/davidhellmann","https://www.pinterest.com/davidhellmann","https://github.com/davidhellmann","https://vimeo.com/davidhellmann"],"email":"&#100;&#97;&#118;&#105;&#100;&#104;&#101;&#108;&#108;&#109;&#97;&#110;&#110;&#46;&#99;&#111;&#109;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;","address":{"@type":"PostalAddress","streetAddress":"Dinghoferstraße 28","addressLocality":"Linz","addressRegion":"Linz","postalCode":"4020","addressCountry":"Austria"},"gender":"Male","birthPlace":"05.07.1984"},"creator":{"@type":"Person","name":"David Hellmann","alternateName":"davidhellmann","description":"Designer &amp; Developer based in Linz. Currently working for Fredmansky.","url":"https://davidhellmann.com/https//davidhellmann.com","email":"&#100;&#97;&#118;&#105;&#100;&#104;&#101;&#108;&#108;&#109;&#97;&#110;&#110;&#46;&#99;&#111;&#109;&#64;&#103;&#109;&#97;&#105;&#108;&#46;&#99;&#111;&#109;","address":{"@type":"PostalAddress","streetAddress":"Fanny von Lehnert Straße 35","addressLocality":"Linz","addressRegion":"Linz","postalCode":"4020","addressCountry":"Österreich"},"gender":"Male","birthPlace":"05.07.1984"}}</script>
<script type="application/ld+json">{"@context":"http://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":"1","item":{"@id":"https://davidhellmann.com","name":"Home"}}]}</script>





</head>
<body id="home">

	<a class="homeLink    " href="/"> ㅎ </a>
	<header class="appHeader">
		<a class="appHeader__homeLink   " href="/"> HeajoHalge </a>
	</header>
	<div class="searchForm js_searchBox">
		<div class="searchForm__form">
			<form action="https://davidhellmann.com/search/results">
				<svg class="svgSprite svgSprite--icon_search" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_search"></use>
</svg>
				<div class="js_searchForm">
					<svg class="svgSprite svgSprite--icon_close" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_close"></use>
</svg>
				</div>
				<input class="searchForm__input" type="search" name="q"
					placeholder="Search"> <input class="searchForm__submit"
					type="submit" value="Go">
			</form>
		</div>
	</div>
	<div class="preloader">
		<div class="preloader__inner"></div>
	</div>
	<div class="appWrapper">
		<section class="section">
			<div class="decoBigText  decoBigText--error404">
				<span>404</span>
			</div>
			<div class="section__inner">
				<h1>Page not found</h1>
				<p>
					The requested page: <strong>http://localhost:9081/404</strong> is
					missing, sorry.
				</p>
				<p>
					Go <a href="https://davidhellmann.com/">back to home</a>.
				</p>
			</div>
		</section>
		<footer class="appFooter">
			<div class="appFooter__inner">
				<div class="col col--01">
					<p>
						© 2006 &ndash; 2021<br> Built with <a target="_blank"
							href="https://www.eclipse.org">Eclipse</a><br> Made on an <a
							target="_blank" href="/">Hakuna matata</a><br>
						Hosted by <a target="_blank"
							href="http://all-inkl.com/?partner=190591">All-Inkl</a>
					</p>
				</div>
				<div class="col col--02">
					<div class="socialLinks">
						<ul class="socialLinks__list">
							<li class="socialLinks__item  socialLinks__item--instagram">
								<a class="socialLinks__link"
								href="https://www.instagram.com/davidhellmann/" target="_blank">
									<svg class="svgSprite  svgSprite--icon_instagram"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_instagram"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--twitter"><a
								class="socialLinks__link"
								href="https://twitter.com/davidhellmann" target="_blank"> <svg
										class="svgSprite  svgSprite--icon_twitter" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_twitter"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--pinterest">
								<a class="socialLinks__link"
								href="https://pinterest.com/davidhellmann/" target="_blank">
									<svg class="svgSprite  svgSprite--icon_pinterest"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_pinterest"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--facebook">
								<a class="socialLinks__link"
								href="https://www.facebook.com/linkstraeger" target="_blank">
									<svg class="svgSprite  svgSprite--icon_facebook"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_facebook"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--dribbble">
								<a class="socialLinks__link"
								href="https://dribbble.com/davidhellmann" target="_blank"> <svg
										class="svgSprite  svgSprite--icon_dribbble"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_dribbble"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--tumblr"><a
								class="socialLinks__link" href="http://superb.li"
								target="_blank"> <svg
										class="svgSprite  svgSprite--icon_tumblr" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_tumblr"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--vsco"><a
								class="socialLinks__link" href="http://vsco.co/davidhellmann"
								target="_blank"> <svg
										class="svgSprite  svgSprite--icon_vsco" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_vsco"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--medium"><a
								class="socialLinks__link"
								href="https://medium.com/@davidhellmann" target="_blank"> <svg
										class="svgSprite  svgSprite--icon_medium" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_medium"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--linkedin">
								<a class="socialLinks__link"
								href="https://de.linkedin.com/in/davidhellmann" target="_blank">
									<svg class="svgSprite  svgSprite--icon_linkedin"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_linkedin"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--xing"><a
								class="socialLinks__link"
								href="https://www.xing.com/profile/David_Hellmann2"
								target="_blank"> <svg
										class="svgSprite  svgSprite--icon_xing" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_xing"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--500px"><a
								class="socialLinks__link" href="https://500px.com/davidhellmann"
								target="_blank"> <svg
										class="svgSprite  svgSprite--icon_500px" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_500px"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--googleplus">
								<a class="socialLinks__link"
								href="https://plus.google.com/+davidhellmann1984"
								target="_blank"> <svg
										class="svgSprite  svgSprite--icon_googleplus"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_googleplus"></use>
</svg>
							</a>
							</li>
							<li class="socialLinks__item  socialLinks__item--behance"><a
								class="socialLinks__link"
								href="https://www.behance.net/davidhellmann/" target="_blank">
									<svg class="svgSprite  svgSprite--icon_behance"
										viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_behance"></use>
</svg>
							</a></li>
							<li class="socialLinks__item  socialLinks__item--github"><a
								class="socialLinks__link"
								href="https://github.com/davidhellmann" target="_blank"> <svg
										class="svgSprite  svgSprite--icon_github" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_github"></use>
</svg>
							</a></li>
						</ul>
					</div>
				</div>
				<svg class="svgSprite  svgSprite--icon_square" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_square"></use>
</svg>
			</div>
		</footer>
		<script type="text/javascript">WebFontConfig = {
    google: { families: [
      'Playfair+Display:900:latin',
      'Droid+Serif:400,700,400italic,700italic:latin',
      'Roboto:400,700:latin&display=swap'
    ]}
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })();</script>
		<script
			src="https://davidhellmann.com/assets/js/vendor/modernizr-custom.min.js"
			async></script>
		<script src="https://davidhellmann.com/assets/js/app.min.js" async></script>
		<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-1817569-2', 'auto');
        ga('send', 'pageview', '/404/?url=' + document.location.pathname + document.location.search + '&ref=' + document.referrer);</script>
	</div>
	<a href="#home" class="topLink"> <svg
			class="svgSprite svgSprite--arrowLeft" viewbox="0 0 133 95">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#arrowLeft"></use>
</svg> UP
	</a>
	<nav class="mobileNav">
		<ul class="mobileNav__list">
			<li class="mobileNav__item"><a href="https://davidhellmann.com/"
				class="mobileNav__link    "> <svg
						class="svgSprite svgSprite--icon_home" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_home"></use>
</svg> <span>Home</span>
			</a></li>
			<li class="mobileNav__item"><a
				href="https://davidhellmann.com/work" class="mobileNav__link    ">
					<svg class="svgSprite svgSprite--icon_work" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_work"></use>
</svg> <span>Work</span>
			</a></li>
			<li class="mobileNav__item"><a
				href="https://davidhellmann.com/blog" class="mobileNav__link    ">
					<svg class="svgSprite svgSprite--icon_blog" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_blog"></use>
</svg> <span>Blog</span>
			</a></li>
			<li class="mobileNav__item"><a
				href="https://davidhellmann.com/about" class="mobileNav__link    ">
					<svg class="svgSprite svgSprite--icon_about" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_about"></use>
</svg> <span>About</span>
			</a></li>
			<li class="mobileNav__item"><div
					class="mobileNav__link      js_searchForm">
					<svg class="svgSprite svgSprite--icon_search" viewbox="0 0 48 48">
<use xlink:href="/assets/images/svg/sprite/sprite.svg#icon_search"></use>
</svg>
					<span>search</span>
				</div></li>
		</ul>
	</nav>
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="pswp__bg"></div>
		<div class="pswp__scroll-wrap">
			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>
			<div class="pswp__ui pswp__ui--hidden">
				<div class="pswp__top-bar">
					<div class="pswp__counter"></div>
					<button class="pswp__button pswp__button--close"
						title="Close (Esc)"></button>
					<button class="pswp__button pswp__button--share" title="Share"></button>
					<button class="pswp__button pswp__button--fs"
						title="Toggle fullscreen"></button>
					<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
					<div class="pswp__share-tooltip"></div>
				</div>
				<button class="pswp__button pswp__button--arrow--left"
					title="Previous (arrow left)"></button>
				<button class="pswp__button pswp__button--arrow--right"
					title="Next (arrow right)"></button>
				<div class="pswp__caption">
					<div class="pswp__caption__center"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
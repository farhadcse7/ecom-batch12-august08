<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    @include('website.includes.meta')
    @include('website.includes.style')
</head>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">
    You are using an <strong>outdated</strong> browser. Please
    <a href="https://browsehappy.com/">upgrade your browser</a> to improve
    your experience and security.
</p>
<![endif]-->

@include('website.includes.header')
@yield('body')
@include('website.includes.footer')
@include('website.includes.script')
</body>

</html>

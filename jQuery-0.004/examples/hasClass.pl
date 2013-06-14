#!perl

use strict;
use jQuery;

my $html = do { local $/; <DATA> };

jQuery->new($html);

#print jQuery("p:first")->hasClass('selected');
jQuery("div#result1")->append(jQuery("p:first")->hasClass("selected"));
jQuery("div#result2")->append(jQuery("p:last")->hasClass("selected"));
jQuery("div#result3")->append(jQuery("p")->hasClass("selected"));


print jQuery->as_HTML;

__DATA__
<!DOCTYPE html>
<html>
<head>
  <style>
  p { margin: 8px; font-size:16px; }
  .selected { color:red; }
  </style>
</head>
<body>
  
  <p class="nn">This paragraph is black and is the first paragraph.</p>
  <p class="selected">This paragraph is red and is the second paragraph.</p>

  <div id="result1">First paragraph has selected class: </div>
  <div id="result2">Second paragraph has selected class: </div>
  <div id="result3">At least one paragraph has selected class: </div>


</body>
</html>

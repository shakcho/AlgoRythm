<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Music shop</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Changa+One|Open+Sans:400italic,700italic,400,700,800' rel='stylesheet' type='text/css'>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="skin/jplayer.blue.monday.css" type="text/css" media="screen">
        
        <script src="js/jquery.jplayer.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
              $("#jquery_jplayer_1").jPlayer({
                ready: function () {
                  $(this).jPlayer("setMedia", {
                    title: "Deadmau5 - Strobe",
                    oga:   "media/strobe.oga",
                    mp3:    "media/strobe.mp3"
                  });
                },
                swfPath: "/js",
                supplied: "oga,mp3"
              });
            });
          </script>
    </head>
    <body>
        <header>
            <div class="container">
                <a class="pull-left" href="index.jsp" id="logo">
                    <h1>Music ON Web</h1>
                    <h2>Beat Drops</h2>
                </a>
                
               <form class="col-lg-8 col-sm-8 pull-left" method="get" action="#">
    				<input class="searchbox" type="search" name="q" placeholder="Search any catagory">
    				<input class="searchbutton" type="submit" value="Search">
                 </form> 
                <aside class="hnav pull-right ">
                <ul class="nav nav-pills " role="tablist">
                    <li><a href="join.jsp">Join</a></li>
                    <li id="login"><a id="login-triger" href="#">Login</a> </li>  
                    <div class="logincontainer pull-right" style="display: none">
       <p style="text-align:center;color: #2B6D61;font-size: 20px;"> Please Login</p>
       <form method="post" action="login.do">
        	<fieldset id="inputs">
            	<input class="in" type="email" name="Email" placeholder="Your email address" required>  
            	<br><br>
            	<input class="in" type="password" name="Password" placeholder="Password" required>
            </fieldset>
				<a style="padding-left: 15px;" href="#">Forgot Password</a>
                                <input class="button" type="submit" id="submit" value="Log in">
          <p style="padding-left: 15px;">Don't have an account? <a href="join.jsp">Sign UP</a></p>
        </form>
        </div>  
      	<script>
        $("#login-triger" ).click(function() {
        $( ".logincontainer" ).toggle();
        });
        </script>                
                </ul>   
            </aside>
            </div>
        </header>
        <div class="headerbar"></div>
        <div class="container">  
            <nav>
                <ul class="nav nav-tabs" role="tablist">
                    <li><a href="#">Genre</a></li>
                    <li><a href="#">Top 100</a></li>
                    <li><a href="#">Messages</a></li>
                </ul>   
            </nav>
        </div>
        <jsp:include page="slider.jsp"/>
        <div class="container">
            <div class="col-lg-8 col-sm-8 audio player">
               <!-- <audio controls autoplay loop> 
                    <source src="media/youngandbeautiful.mp3" type="audio/mpeg">
                </audio>-->
               
                   <div id="jquery_jplayer_1" class="jp-jplayer"></div>
                   <div id="jp_container_1" class="jp-audio">
                     <div class="jp-type-single">
                       <div class="jp-gui jp-interface">
                         <ul class="jp-controls">
                           <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                           <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                           <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                           <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                           <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                           <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                         </ul>
                         <div class="jp-progress">
                           <div class="jp-seek-bar">
                             <div class="jp-play-bar"></div>
                           </div>
                         </div>
                         <div class="jp-volume-bar">
                           <div class="jp-volume-bar-value"></div>
                         </div>
                         <div class="jp-time-holder">
                           <div class="jp-current-time"></div>
                           <div class="jp-duration"></div>
                           <ul class="jp-toggles">
                             <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                             <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
                           </ul>
                         </div>
                       </div>
                       <div class="jp-details">
                         <ul>
                           <li><span class="jp-title"></span></li>
                         </ul>
                       </div>
                       <div class="jp-no-solution">
                         <span>Update Required</span>
                         To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                       </div>
                     </div>
                   </div>
                   <div class="pull-right">
                       <strong>Download Audio</strong>
                       <a href="media/strobe.mp3">Deadmau5-Strobe</a>
                   </div>
            </div>
            <div class="col-lg-4 col-sm-4">
                <div class="thumbnail">
                <div class="thumbnail">
                <img src="img/side1.jpg" alt="side bannar" class="img-responsive img-rounded">
                </div>
                <div class="thumbnail">
                <img src="img/side2.png" alt="side bannar" class="img-responsive img-rounded">
                </div>
                </div>
            </div>
        </div>
       <jsp:include page="view/footer.jsp"/>
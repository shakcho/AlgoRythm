<%-- 
    Document   : profile
    Created on : Aug 8, 2014, 9:31:08 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Changa+One|Open+Sans:400italic,700italic,400,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="skin/jplayer.blue.monday.css" type="text/css" media="screen">
        <script src="js/jquery.jplayer.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
              $("#jquery_jplayer_1").jPlayer({
                ready: function () {
                  $(this).jPlayer("setMedia", {
                    title: "Bubble",
                    m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
                    oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
                  });
                },
                swfPath: "/js",
                supplied: "m4a, oga"
              });
            });
            </script>
        
        <title>welcome</title>
    </head>
    <body>
        <header>
            <div class="container">
                <a class="pull-left" href="view/profile.jsp" id="logo">
                    <h1>Music ON Web</h1>
                    <h2>Beat Drops</h2>
                </a>
        
              <form class="col-lg-8 col-sm-sm-8 pull-left" method="get" action="#">
    				<input class="searchbox" type="search" name="q" placeholder="Search any catagory">
    				<input class="searchbutton" type="submit" value="Search">
                 </form>
           
            <aside class="hnav pull-right pull-l">
                <ul class="nav nav-pills " role="tablist">
                    <li>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Hi&nbsp;<%= request.getAttribute("a") %>
                           <span class="caret"></span> 
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="orders.jsp">Your Order</li>
                                <li><a href="logout.do">Logout</a></li>
                            </ul>
                        </a>
                    </li>
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
      <jsp:include page="../slider.jsp"/>
        <div class="container player">
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
    <jsp:include page="footer.jsp"/>
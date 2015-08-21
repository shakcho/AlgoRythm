<%-- 
    Document   : slider
    Created on : 16 Aug, 2014, 9:29:04 PM
    Author     : US$ER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <div class="container">
               <div class="margin">
                    <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
                    <!-- Carousel indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>   
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                         <div class="active item">
                             <img class="img-responsive" src="img/image3.jpg" alt="slide1">
                             <div class="carousel-caption">
                              <h2>Hear the world's sounds</h2>
                                <h3>Explore the largest community of artists, bands & DJ's</h3>
                             </div>
                         </div>
                        <div class="item">
                            <img class="img-responsive" src="img/image1.jpg" alt="slide2">
                            <div class="carousel-caption">
                              <h2>EDM  House or Trance what's your Choice?</h2>
                              <h3> Download the latest music in premium quality formats and listen to what the world's top DJs.</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="img/image2.jpg" alt="slide3">
                           
                            <div class="carousel-caption">
                              <h2>Bob Marley</h2>
                              <h3><quote>One good thing about music, when it hits you, you feel no pain.</quote></h3>
                            </div>
                        </div>
                    </div>
                        <!-- Carousel nav -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                </div>
            </div>
        </div>